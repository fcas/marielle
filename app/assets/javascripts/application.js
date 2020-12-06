//= require jquery
//= require maskedinput

jQuery(function($) {
    $(".date").mask("99/99/9999");
    $(".hour").mask("99:99");
    $(".rg").mask("99.999.999-9");
    $(".phone").mask("(99) 99999-9999");
})

$(document).ready(function() {
    var download_csv_path = '/raw_registros_ocorrencias_ssp_sp_gov_brs.csv'
    var parameters = window.location.href.split('?')
    if(parameters.length > 1) {
        var parameters_clean = parameters[1].split('&commit')
        download_csv_path += ('?' + parameters_clean[0])
    }

    $("#download_csv_link").attr("href", download_csv_path);
    console.log(download_csv_path)
})