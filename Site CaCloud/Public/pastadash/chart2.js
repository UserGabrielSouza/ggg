
const ctx2 = document.getElementById('mensal').getContext('2d');
const myChart2 = new Chart(ctx2, {
    type: 'line',
    data: {
        labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
        datasets: [{
            label: 'Mensal',
            data: [30, 32, 29, 31,27,31,23,25,30,21,34,27],
            backgroundColor: [
                'rgba(3, 195, 3, 0.2)'
                
            ],
            borderColor: [
                'rgba(3, 195, 3, 0.2)'
                
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

