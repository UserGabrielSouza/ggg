const ctx = document.getElementById('line-chart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Hectare-1', 'Hectare-2', 'Hectare-3', 'Hectare-4'],
        datasets: [{
            label: 'Top-4',
            data: [10, 53, 60, 20],
            backgroundColor: [
                'rgba(3, 195, 3, 0.2)'
                
            ],
            borderColor: [
                'rgba(3, 195, 3)'
                
            ],width: [
                '30px'
            ],
            borderWidth: 1
        }]
    },
    options: {
        responsive: true
    }
});
