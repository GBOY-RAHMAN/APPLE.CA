// .d8888b.  .d8888b. 8888888888 
// d88P  Y88bd88P  Y88b      d88P 
// 888    888888    888     d88P  
// 888    888888    888    d88P   
// 888    888888    888 88888888  
// 888    888888    888  d88P     
// Y88b  d88PY88b  d88P d88P      
//  "Y8888P"  "Y8888P" d88P  

// setting the page title accross all the page

function setPageTitle(title){
    document.title = title;
}

// 
// jquery 
$('#rangestart').calendar({ type: 'date', endCalendar: $('#rangeend') }); $('#rangeend').calendar({ type: 'date', startCalendar: $('#rangestart') });

$.modal({
    title: 'Important Notice',
    class: 'mini',
    closeIcon: true,
    content: 'You will be logged out in 5 Minutes',
    actions: [{
      text: 'Alright, got it',
      class: 'green'
    }]
}).modal('show');