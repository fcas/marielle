Dado('que estou na página de cadastro de ocorrência') do
    visit($BASE_URL)
    click_on 'Reportar'
end

Quando('preencho o campo {string} com {string}') do |campo, valor|
    find('input[name="' + campo + '"]').set(valor)
end

Quando('clico em salvar') do
    click_on 'Registrar'
end

Então('ela deve ter sido salva no banco de dados') do
    ocorrencia = RawRegistrosOcorrenciasSspSpGovBr.order("id").last
    expect(ocorrencia.dataocorrencia).to eq('20/04/2020') 
    expect(ocorrencia.horaocorrencia).to eq('15:30') 
    expect(ocorrencia.logradouro).to eq('Rua Antônio Guerra') 
    expect(ocorrencia.numero).to eq('166') 
    expect(ocorrencia.bairro).to eq('Jardim Tucunduva') 
    expect(ocorrencia.cidade).to eq('Carapicuíba') 
    expect(ocorrencia.uf).to eq('SP') 
    expect(ocorrencia.nomepessoa).to eq('Fedentina de Jesus') 
    expect(ocorrencia.rg).to eq('34.382.584-3') 
    expect(ocorrencia.nacionalidade).to eq('Brasileira') 
    expect(ocorrencia.sexo).to eq('Feminino') 
    expect(ocorrencia.datanascimento).to eq('20/04/1970') 
    expect(ocorrencia.estadocivil).to eq('Casado') 
    expect(ocorrencia.profissao).to eq('Atendente de loja') 
end

Então('deverei ver a ocorrência na página de listagem de ocorrências') do
    expect(page).to have_content('34.382.584-3') 
end