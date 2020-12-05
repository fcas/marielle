#language: pt

Funcionalidade: Cadastrar grupo reflexivo
Como um cidadão eu quero poder cadastrar dados de contato
e localização de um grupo reflexivo,
de forma a disponibilizar esses dados para a população.

Cenário: Cadastro de grupo reflexivo
Dado que estou na página de cadastro de grupo reflexivo
Quando preencho o campo "telefone" com "1234567" do formulário do grupo reflexivo
E preencho o campo "logradouro" com "Avenida Paulista" do formulário do grupo reflexivo
E preencho o campo "numero" com "113" do formulário do grupo reflexivo
E preencho o campo "bairro" com "Cerqueira César" do formulário do grupo reflexivo
E preencho o campo "cidade" com "São Paulo" do formulário do grupo reflexivo
E seleciono a opção "SP" no campo "uf" do formulário do grupo reflexivo
E preencho o campo "nomegruporeflexivo" com "MEMOH" do formulário do grupo reflexivo
E clico em salvar
Então o grupo reflexivo deve ter sido salvo no banco de dados
E deverei ver a página de detalhamento do grupo reflexivo