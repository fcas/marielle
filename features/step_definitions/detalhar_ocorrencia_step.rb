Dado('que estou na página de listagem de ocorrências') do
    visit '/raw_registros_ocorrencias_ssp_sp_gov_brs'
end

Quando('clico para detalhar a ocorrência que desejo visualizar') do
    first(:xpath, '//td[contains(text(),"34.382.584-3")]/parent::tr//img[contains(@class,"detalhar")]').click
end

Então('deverei ver a página de detalhamento da ocorrência') do
    expect(page).to have_content('20/04/2020') 
    expect(page).to have_content('15:30') 
    expect(page).to have_content('Rua Antônio Guerra') 
    expect(page).to have_content('Jardim Tucunduva') 
    expect(page).to have_content('Carapicuíba') 
    expect(page).to have_content('SP') 
    expect(page).to have_content('34.382.584-3') 
    expect(page).to have_content('Fedentina de Jesus') 
    expect(page).to have_content('Brasileira') 
    expect(page).to have_content('Feminino') 
    expect(page).to have_content('20/04/1970') 
    expect(page).to have_content('Casado') 
    expect(page).to have_content('Atendente de loja') 
end