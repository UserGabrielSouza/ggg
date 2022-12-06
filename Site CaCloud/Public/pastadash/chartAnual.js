const ctx3 = document.getElementById('line-chartAnual').getContext('2d');
const myChart3 = new Chart(ctx3, {
    type: 'bar',
    data: {
        labels: ['2012', '2013', '2014', '2015','2016','2017','2018','2019','2020','2021','2022'],
        datasets: [{
            label: 'Anual',
            data: [10, 53, 60, 20,30,25,27,31,29,31,31],
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
