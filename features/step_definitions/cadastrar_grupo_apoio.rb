Dado('que estou na página de cadastro de grupo apoio') do
    visit('/apoios/new')
end

Quando('preencho o campo {string} com {string} do formulário do grupo apoio') do |campo, valor|
    find('#apoio_' + campo).send_keys(valor)
end

Quando('clico em salvar grupo apoio') do
    click_on 'Create Apoio'
end

Então('o grupo apoio deve ter sido salvo no banco de dados') do
    apoio = Apoio.order("id").last
    expect(apoio.telefone).to eq('111111111')
    expect(apoio.logradouro).to eq('Avenida Paulista')
    expect(apoio.numero).to eq("113")
    expect(apoio.bairro).to eq('Cerqueira César')
    expect(apoio.cidade).to eq('São Paulo')
    expect(apoio.uf).to eq('SP')
    expect(apoio.nomegrupoapoio).to eq('Teste')
end

Então('deverei ver a página de detalhamento do grupo apoio') do
    apoio = RegistrosGruposReflexivo.order("id").last
    id = apoio.id
    visit('/apoios/' + id.to_s)
end