//= require jquery
//= require maskedinput

jQuery(function($) {
    $(".date").mask("99/99/9999");
    $(".hour").mask("99:99");
    $(".rg").mask("99.999.999-9");
    $(".phone").mask("(99) 99999-9999");
})