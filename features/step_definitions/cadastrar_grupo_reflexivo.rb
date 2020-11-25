Dado('que estou na página de cadastro de grupo reflexivo') do
    visit('/registros_grupos_reflexivos/new')
end

Quando('preencho o campo {string} com {string} do formulário do grupo reflexivo') do |campo, valor|
  find('#grupo_reflexivo_' + campo).send_keys(valor)
end

Quando('seleciono a opção {string} no campo {string} do formulário do grupo reflexivo') do |campo, valor|
    find('#grupo_reflexivo_' + valor)
        .find('option[value="' + campo + '"]').select_option
end

Quando('clico em salvar') do
    click_on 'Registrar'
end

Então('o grupo reflexivo deve ter sido salvo no banco de dados') do
    grupo_reflexivo = RawGrupoReflexivo.order("id").last
    expect(grupo_reflexivo.telefone).to eq('1234567')
    expect(grupo_reflexivo.logradouro).to eq('Avenida Paulista')
    expect(grupo_reflexivo.numero).to eq(113)
    expect(grupo_reflexivo.bairro).to eq('Cerqueira César')
    expect(grupo_reflexivo.cidade).to eq('São Paulo')
    expect(grupo_reflexivo.uf).to eq('SP')
    expect(grupo_reflexivo.nomegruporeflexivo).to eq('MEMOH')
end

Então('o grupo reflexivo deve ter sido salvo no banco de dados') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('deverei ver a página de detalhamento do grupo reflexivo') do
    pending # Write code here that turns the phrase above into concrete actions
end