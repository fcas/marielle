require "database_cleaner"

Quando('que originalmente não haviam ocorrências na listagem') do
    DatabaseCleaner.clean
end

Quando('eu filtro por {string} com {string}') do |campo, valor|
    steps %Q{
        Quando eu preencho o filtro de "#{campo}" com "#{valor}"
        E clico em buscar
        Então deverei ver a ocorrência com campo "#{campo}" de valor "#{valor}"
    }
end

Quando('clico em exportar') do
    click_on 'Exportar'
end

# Estamos só garantindo que a URL correta é chamada
# ver https://ardesco.lazerycode.com/testing/webdriver/2012/07/25/how-to-download-files-with-selenium-and-why-you-shouldnt.html
Então('deverei fazer download de um arquivo CSV sem filtros') do
    expect(page).to have_link('Exportar', href: '/raw_registros_ocorrencias_ssp_sp_gov_brs.csv' )
end

Então('deverei fazer download de um arquivo CSV filtrando por {string} com valor {string}') do |campo, valor|
    filters = [ "numero_boletim", "dataocorrencia", "bairro", "cidade", "uf", "rg" ]
    link = "/raw_registros_ocorrencias_ssp_sp_gov_brs.csv?"
    filters.each_with_index do |filter, index|
        if index != 0
            link += '&'
        end
        link += "#{filter}="
        if filter == campo
            link += "#{valor}"
        end
    end
    expect(page).to have_link('Exportar', href: link)
end