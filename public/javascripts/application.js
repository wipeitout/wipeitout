// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({
    'beforeSend': function(xhr) {
        xhr.setRequestHeader("Accept", "text/javascript");
    }
});

jQuery.fn.submitWithAjax = function() {
    this.submit(function() {
        $.post(this.action, $(this).serialize(), null, "script");
        return false;
        // redirect to email writing page
    });
    return this;
};

$(document).ready(function() {
    $("#new_supporter").submitWithAjax();
});

$(document).ready(function() {
    $("#new_supporter").validate({
        errorPlacement: function(error, element) {
            var firstChild = $(element).parent().children()[0];
            error.insertAfter(firstChild);
        }
    });

    $("#supporter_name").rules("add", {
        required: true,
        minlength: 2,
        messages: {
            required: "Name required",
            minlength: jQuery.format("Name min length - {0}")
        }
    });

    $("#supporter_postcode").rules("add", {
        regex: "[0-9]{4}" ,
        messages: {
            regex: "Valid postcode required"
        }
    });

    $.validator.addMethod("regex",
            function(value, element, regexp) {
                //var check = false;
                var re = new RegExp(regexp);
                return this.optional(element) || re.test(value);
            },
            "Please check your input."
            );


});


