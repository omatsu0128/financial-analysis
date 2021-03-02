$(function(){

  $('.form').on('keyup', '.Sample1', function(){
    const data1 = $('.Form__inputText1').val();
    const data2 = $('.Form__inputText2').val();
    const data6 = parseInt(data1) + parseInt(data2);
    if(Number.isInteger(data6)){
      let formatter = new Intl.NumberFormat();
      $('.Value1').html(formatter.format(data1))
      $('.Value1').append('円')
      $('.Value2').html(formatter.format(data2))
      $('.Value2').append('円')
      $('.Value6').html(formatter.format(data6))
      $('.Value6').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value1').html(formatter.format(data1))
      $('.Value1').append('円')
      $('.Value2').html(formatter.format(data2))
      $('.Value2').append('円')
      $('.Value6').html('ー')
    }
  })

  $('.form').on('keyup', '.Sample2', function(){
    const data3 = $('.Form__inputText3').val();
    const data4 = $('.Form__inputText4').val();
    const data5 = $('.Form__inputText5').val();
    const data7 = parseInt(data3) + parseInt(data4) + parseInt(data5);
    if(Number.isInteger(data7)){
      let formatter = new Intl.NumberFormat();
      $('.Value3').html(formatter.format(data3))
      $('.Value3').append('円')
      $('.Value4').html(formatter.format(data4))
      $('.Value4').append('円')
      $('.Value5').html(formatter.format(data5))
      $('.Value5').append('円')
      $('.Value7').html(formatter.format(data7))
      $('.Value7').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value3').html(formatter.format(data3))
      $('.Value3').append('円')
      $('.Value4').html(formatter.format(data4))
      $('.Value4').append('円')
      $('.Value5').html(formatter.format(data5))
      $('.Value5').append('円')
      $('.Value7').html('ー')
    }
  })
  
});

