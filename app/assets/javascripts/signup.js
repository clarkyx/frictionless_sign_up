$(function(){
  $('#emailfield').on('submit', function(){
    event.preventDefault();

    if($('#email').val() === ''){
      $('#information').trigger('reset');
      return false;
    };

    $.ajax({
      url:'/email',
      data: {email: $('#email').val()},
      method: "post",
      dataType: 'json'
    }).done(function(response){
      console.log(response);
      if(!response){
        $('#information').trigger('reset');
      }else{
        $('#emailresult').val(response.person.email);
        $('#firstname').val(response.person.name.givenName);
        $('#lastname').val(response.person.name.familyName);
        $('#role').val(response.person.employment.title);
        $('#companyname').val(response.person.employment.name);
      };
    });
  });
});
