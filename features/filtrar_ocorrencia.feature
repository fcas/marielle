#language: pt

Funcionalidade: Filtrar lista de ocorrências
Como um órgão governamental
Eu quero conseguir filtrar a lista de ocorrências pelos campos existentes na lista
De forma a encontrar uma ocorrência específica

Cenário: Filtrar ocorrência pelo número do boletim
Dado que tenho uma ocorrência cadastrada com campo 'numero_boletim' preenchido com valor '1234'
E que tenho uma ocorrência cadastrada com campo 'numero_boletim' preenchido com valor '4321'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'numero_boletim' com '1234'
E clico em buscar
Então deverei ver a ocorrência com campo 'numero_boletim' de valor '1234'
E deverei não ver a ocorrência com campo 'numero_boletim' de valor '4321'

Cenário: Filtrar ocorrência pela data da ocorrência
Dado que tenho uma ocorrência cadastrada com campo 'dataocorrencia' preenchido com valor '18/04/2020'
E que tenho uma ocorrência cadastrada com campo 'dataocorrencia' preenchido com valor '20/04/2020'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'dataocorrencia' com '18/04/2020'
E clico em buscar
Então deverei ver a ocorrência com campo 'dataocorrencia' de valor '18/04/2020'
E deverei não ver a ocorrência com campo 'dataocorrencia' de valor '20/04/2020'

Cenário: Filtrar ocorrência pelo bairro
Dado que tenho uma ocorrência cadastrada com campo 'bairro' preenchido com valor 'Jacarei'
E que tenho uma ocorrência cadastrada com campo 'bairro' preenchido com valor 'Jardim Tucunduva'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'bairro' com 'Jacarei'
E clico em buscar
Então deverei ver a ocorrência com campo 'bairro' de valor 'Jacarei'
E deverei não ver a ocorrência com campo 'bairro' de valor 'Jardim Tucunduva'

Cenário: Filtrar ocorrência pela cidade
Dado que tenho uma ocorrência cadastrada com campo 'cidade' preenchido com valor 'Poa'
E que tenho uma ocorrência cadastrada com campo 'cidade' preenchido com valor 'Carapicuiba'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'cidade' com 'Poa'
E clico em buscar
Então deverei ver a ocorrência com campo 'cidade' de valor 'Poa'
E deverei não ver a ocorrência com campo 'cidade' de valor 'Carapicuiba'

Cenário: Filtrar ocorrência pela Unidade Federativa (UF)
Dado que tenho uma ocorrência cadastrada com campo 'uf' selecionado com valor 'RJ'
E que tenho uma ocorrência cadastrada com campo 'uf' selecionado com valor 'SP'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'uf' com 'RJ'
E clico em buscar
Então deverei ver a ocorrência com campo 'uf' de valor 'RJ'
E deverei não ver a ocorrência com campo 'uf' de valor 'SP'

Cenário: Filtrar ocorrência pelo RG da vítima
Dado que tenho uma ocorrência cadastrada com campo 'rg' preenchido com valor '13.036.974-3'
E que tenho uma ocorrência cadastrada com campo 'rg' preenchido com valor '34.382.584-3'
E que estou na página de listagem de ocorrências
Quando eu preencho o filtro de 'rg' com '13.036.974-3'
E clico em buscar
Então deverei ver a ocorrência com campo 'rg' de valor '13.036.974-3'
E deverei não ver a ocorrência com campo 'rg' de valor '34.382.584-3'