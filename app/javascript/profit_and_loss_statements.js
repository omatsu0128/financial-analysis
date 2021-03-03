$(function(){

  $('.form').on('keyup', '.SamplePL1', function(){
    const data1 = $('.Form__inputText_PL1').val();
    const data2 = $('.Form__inputText_PL2').val();
    const data3 = parseInt(data1) - parseInt(data2);
    const data4 = $('.Form__inputText_PL4').val();
    const data5 = parseInt(data3) - parseInt(data4);
    const data6 = $('.Form__inputText_PL6').val();
    const data7 = $('.Form__inputText_PL7').val();
    const data8 = parseInt(data5) + parseInt(data6) - parseInt(data7);
    const data9 = $('.Form__inputText_PL9').val();
    const data10 = $('.Form__inputText_PL10').val();
    const data11 = parseInt(data8) + parseInt(data9) - parseInt(data10);
    const data12 = $('.Form__inputText_PL12').val();
    if(Number.isInteger(data3)){
      let formatter = new Intl.NumberFormat();
      $('.Value1_2').html(formatter.format(data1))
      $('.Value1_2').append('円')
      $('.Value2_2').html(formatter.format(data2))
      $('.Value2_2').append('円')
      $('.Value3_2').html(formatter.format(data3))
      $('.Value3_2').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value1_2').html(formatter.format(data1))
      $('.Value1_2').append('円')
      $('.Value2_2').html(formatter.format(data2))
      $('.Value2_2').append('円')
      $('.Value3_2').html('ー')
    }
    if(Number.isInteger(data5)){
      let formatter = new Intl.NumberFormat();
      $('.Value4_2').html(formatter.format(data4))
      $('.Value4_2').append('円')
      $('.Value5_2').html(formatter.format(data5))
      $('.Value5_2').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value4_2').html(formatter.format(data4))
      $('.Value4_2').append('円')
      $('.Value5_2').html('ー')
    }
    if(Number.isInteger(data8)){
      let formatter = new Intl.NumberFormat();
      $('.Value6_2').html(formatter.format(data6))
      $('.Value6_2').append('円')
      $('.Value7_2').html(formatter.format(data7))
      $('.Value7_2').append('円')
      $('.Value8_2').html(formatter.format(data8))
      $('.Value8_2').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value6_2').html(formatter.format(data6))
      $('.Value6_2').append('円')
      $('.Value7_2').html(formatter.format(data7))
      $('.Value7_2').append('円')
      $('.Value8_2').html('ー')
    }
    if(Number.isInteger(data11)){
      let formatter = new Intl.NumberFormat();
      $('.Value9_2').html(formatter.format(data9))
      $('.Value9_2').append('円')
      $('.Value10_2').html(formatter.format(data10))
      $('.Value10_2').append('円')
      $('.Value11_2').html(formatter.format(data11))
      $('.Value11_2').append('円')
    }
    else{
      let formatter = new Intl.NumberFormat();
      $('.Value9_2').html(formatter.format(data9))
      $('.Value9_2').append('円')
      $('.Value10_2').html(formatter.format(data10))
      $('.Value10_2').append('円')
      $('.Value11_2').html('ー')
    }
    let formatter = new Intl.NumberFormat();
    $('.Value12_2').html(formatter.format(data12))
    $('.Value12_2').append('円')
  })

  // $('.form').on('keyup', '.SamplePL2', function(){
  //   const data4 = $('.Form__inputText_PL4').val();
  //   const data5 = parseInt(data3) - parseInt(data4);
  //   if(Number.isInteger(data5)){
  //     let formatter = new Intl.NumberFormat();
  //     $('.Value4_2').html(formatter.format(data4))
  //     $('.Value4_2').append('円')
  //     $('.Value5_2').html(formatter.format(data5))
  //     $('.Value5_2').append('円')
  //   }
  //   else{
  //     let formatter = new Intl.NumberFormat();
  //     $('.Value4_2').html(formatter.format(data4))
  //     $('.Value4_2').append('円')
  //     $('.Value5_2').html('ー')
  //   }
  // })

  // $('.form').on('keyup', '.Sample2', function(){
  //   const data3 = $('.Form__inputText3').val();
  //   const data4 = $('.Form__inputText4').val();
  //   const data5 = $('.Form__inputText5').val();
  //   const data7 = parseInt(data3) + parseInt(data4) + parseInt(data5);
  //   if(Number.isInteger(data7)){
  //     let formatter = new Intl.NumberFormat();
  //     $('.Value3').html(formatter.format(data3))
  //     $('.Value3').append('円')
  //     $('.Value4').html(formatter.format(data4))
  //     $('.Value4').append('円')
  //     $('.Value5').html(formatter.format(data5))
  //     $('.Value5').append('円')
  //     $('.Value7').html(formatter.format(data7))
  //     $('.Value7').append('円')
  //   }
  //   else{
  //     let formatter = new Intl.NumberFormat();
  //     $('.Value3').html(formatter.format(data3))
  //     $('.Value3').append('円')
  //     $('.Value4').html(formatter.format(data4))
  //     $('.Value4').append('円')
  //     $('.Value5').html(formatter.format(data5))
  //     $('.Value5').append('円')
  //     $('.Value7').html('ー')
  //   }
  // })
  
});

