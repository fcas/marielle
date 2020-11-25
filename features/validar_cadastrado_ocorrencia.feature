#language: pt

Funcionalidade: Validação dos dados de cadastro
Como um órgão governamental
Eu quero detectar dados inválidos que podem ser inseridos em cada campo cadastrado
De forma a impedir que dados incoerentes entrem na base de informação do sistema

Cenário: Cadastro de ocorrência com erro - sem data da ocorrência
Dado que estou na página de cadastro de ocorrência
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "rg" com "343825843"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar a data da ocorrência"

Cenário: Cadastro de ocorrência com erro - sem cidade
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20042020"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "rg" com "343825843"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar a cidade"

Cenário: Cadastro de ocorrência com erro - sem UF
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20042020"
E preencho o campo "cidade" com "Carapicuiba"
E preencho o campo "rg" com "343825843"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar a Unidade Federativa (UF)"

Cenário: Cadastro de ocorrência com erro - sem RG
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20042020"
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar o RG da vítima"

Cenário: Cadastro de ocorrência com erro - data da ocorrência com tamanho menor
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "2004202"
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "rg" com "343825843"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar a data da ocorrência"

Cenário: Cadastro de ocorrência com erro - RG com tamanho menor
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20042020"
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "rg" com "34382584"
E clico em salvar
Então deverei ver a mensagem de erro "É necessário informar o RG da vítima"


