function homeOptionBtnClick(btn,params){
    if(typeof(params)==="undefined"){
        document.getElementById("homeIframe").src= btn.id;
    }

}
function editQuestion(id){
    document.getElementById("homeIframe").src= 'question\\edit\\'+id;
}
function getQuestionForEdit(id){
    document.getElementById("homeIframe").src= 'question\\getEditQuestion\\'+id;
}
function deleteQuestion(id){
    document.getElementById("homeIframe").src= 'question\\delete\\'+id;
}
function checkAnswer(rightAnswer,chosenAnswer,e){
   if(rightAnswer===chosenAnswer){
        changeElementColorAndDisplayNext(e,'#57b846',true);
   }
   else{
       changeElementColorAndDisplayNext(e,'tomato',false);
   }
}
function changeElementColorAndDisplayNext(obj,color,displayNext)
{
   var orig = obj.style.backgroundColor;
   obj.style.backgroundColor = color;
   setTimeout(function(){
        obj.style.backgroundColor = orig;
        if(displayNext){
            document.getElementById("homeIframe").src= "question/get";
        }
   }, 1000);
}
$(function(){
        
	$('#slide-submenu').on('click',function() {			        
        $(this).closest('.list-group').fadeOut('slide',function(){
        	$('.mini-submenu').fadeIn();	
        });
        
      });

	$('.mini-submenu').on('click',function(){		
        $(this).next('.list-group').toggle('slide');
        $('.mini-submenu').hide();
	});
});
(function ($) {
    "use strict";

    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })

    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    

})(jQuery);