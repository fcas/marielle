Dado('que tenho uma ocorrência cadastrada com campo cidade preenchido com valor {string}') do |valor|
    steps %Q{
        Dado que estou na página de cadastro de ocorrência
        E preencho o campo "dataocorrencia" com "20/04/2020"
        E preencho o campo "cidade" com "#{valor}"
        E seleciono a opção "SP" no campo "uf"
        E preencho o campo "rg" com "34.382.584-3"
        E clico em salvar
        Então deverei estar na página de detalhamento da ocorrência
    }
end

Dado('que tenho uma ocorrência cadastrada com campo {string} preenchido com valor {string}') do |campo, valor|
    steps %Q{
        Dado que estou na página de cadastro de ocorrência
        Quando preencho o campo "#{campo}" com "#{valor}"
        E preencho o campo "dataocorrencia" com "20/04/2020"
        E preencho o campo "cidade" com "Carapicuiba"
        E seleciono a opção "SP" no campo "uf"
        E preencho o campo "rg" com "34.382.584-3"
        E clico em salvar
        Então deverei estar na página de detalhamento da ocorrência
    }
end

Dado('que tenho uma ocorrência cadastrada com campo {string} selecionado com valor {string}') do |campo, valor|
    steps %Q{
        Dado que estou na página de cadastro de ocorrência
        Quando preencho o campo "dataocorrencia" com "20/04/2020"
        E preencho o campo "cidade" com "Carapicuiba"
        E seleciono a opção "SP" no campo "uf"
        E preencho o campo "rg" com "34.382.584-3"
        E seleciono a opção "#{valor}" no campo "#{campo}"
        E clico em salvar
        Então deverei estar na página de detalhamento da ocorrência
    }
end

Quando('eu preencho o filtro de {string} com {string}') do |campo, valor|
    find('#' + campo).send_keys(valor)
end

Quando('clico em buscar') do
    click_on 'Buscar'
end

Então('deverei ver a ocorrência com campo {string} de valor {string}') do |campo, valor|
    expect(page).to have_content(valor) 
end

Então('deverei não ver a ocorrência com campo {string} de valor {string}') do |campo, valor|
    expect(page).to have_no_content(valor) 
end