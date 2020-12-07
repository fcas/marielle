#language: pt

Funcionalidade: Cadastrar grupo apoio
Como um cidadão eu quero poder cadastrar dados de contato
e localização de um grupo apoio,
de forma a disponibilizar esses dados para a população.

Cenário: Cadastro de grupo apoio
Dado que estou na página de cadastro de grupo apoio
Quando preencho o campo "telefone" com "111111111" do formulário do grupo apoio
E preencho o campo "logradouro" com "Avenida Paulista" do formulário do grupo apoio
E preencho o campo "numero" com "113" do formulário do grupo apoio
E preencho o campo "bairro" com "Cerqueira César" do formulário do grupo apoio
E preencho o campo "cidade" com "São Paulo" do formulário do grupo apoio
E preencho o campo "uf" com "SP" do formulário do grupo apoio
E preencho o campo "nomegrupoapoio" com "Teste" do formulário do grupo apoio
E clico em salvar grupo apoio
Então o grupo apoio deve ter sido salvo no banco de dados
E deverei ver a página de detalhamento do grupo apoio