// Simple line chart using Chart.js
const ctx = document.getElementById("lineChart").getContext("2d");

new Chart(ctx, {
    type: "line",
    data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
        datasets: [{
            label: "Active Users",
            data: [1200, 1400, 1100, 1600, 1800, 2000],
            borderColor: "#3b82f6",
            borderWidth: 3,
            fill: false
        }]
    },
    options: {
        responsive: true,
        tension: 0.4,
        plugins: {
            legend: { display: false }
        }
    }
});
