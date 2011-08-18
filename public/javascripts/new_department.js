$(document).ready(function() {

        $("#department_name").keyup(function() {
                delay(function() {
                        var name = $("#department_name").val();
                        validate_field('name', name, $("#department_name") );
                }, 600);
        });
        
        $("#department_email").keyup(function() {
                delay(function() {
                        var email = $("#deparment_email").val();
                        validate_field('email', email, $("#department_email") );
                }, 600);
        });
        
});

