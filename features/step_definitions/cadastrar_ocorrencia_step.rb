Dado('que estou na página de cadastro de ocorrência') do
    visit '/raw_registros_ocorrencias_ssp_sp_gov_brs/new'
end

Quando('preencho o campo {string} com {string}') do |campo, valor|
    #fill_in "raw_registros_ocorrencias_ssp_sp_gov_br_" + campo, :with => valor
    #find('input[name="' + campo + '"]').set(valor)
    find('#raw_registros_ocorrencias_ssp_sp_gov_br_' + campo).send_keys(valor)
end

Quando('seleciono a opção {string} no campo {string}') do |valor, campo|
    find('#raw_registros_ocorrencias_ssp_sp_gov_br_' + campo)
        .find('option[value="' + valor + '"]').select_option
end

Quando('clico em salvar') do
    click_on 'Registrar'
end

Então(/ela deve ter sido salva no banco de dados.*/) do
    ocorrencia = RawRegistrosOcorrenciasSspSpGovBr.order("id").last
    expect(ocorrencia.dataocorrencia).to eq('20/04/2020') 
    expect(ocorrencia.horaocorrencia).to eq('15:30') 
    expect(ocorrencia.logradouro).to eq('Rua Antônio Guerra') 
    expect(ocorrencia.numero).to eq(166) 
    expect(ocorrencia.bairro).to eq('Jardim Tucunduva') 
    expect(ocorrencia.cidade).to eq('Carapicuiba') 
    expect(ocorrencia.uf).to eq('SP') 
    expect(ocorrencia.nomepessoa).to eq('Fedentina de Jesus') 
    expect(ocorrencia.rg).to eq('34.382.584-3') 
    expect(ocorrencia.nacionalidade).to eq('Brasileira') 
    expect(ocorrencia.sexo).to eq('Feminino') 
    expect(ocorrencia.datanascimento).to eq('20/04/1970') 
    expect(ocorrencia.estadocivil).to eq('Casado') 
    expect(ocorrencia.profissao).to eq('Atendente de loja') 
end

Então('deverei ver a mensagem de erro {string}') do |mensagem|
    expect(page).to have_content(mensagem) 
end