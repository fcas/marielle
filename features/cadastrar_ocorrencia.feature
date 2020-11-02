#language: pt

Funcionalidade: Cadastrar ocorrências
Como um cidadão que foi alvo de violência
Para que as autoridades consigam consultar a minha ocorrência
Eu queuro reportar o ocorrido

Cenário: Cadastro de ocorrência com sucesso
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20/04/2020"
E preencho o campo "horaocorrencia" com "15:30"
E preencho o campo "logradouro" com "Rua Antônio Guerra"
E preencho o campo "numero" com "166"
E preencho o campo "bairro" com "Jardim Tucunduva"
E preencho o campo "cidade" com "Carapicuíba"
E preencho o campo "uf" com "SP"
E preencho o campo "nomepessoa" com "Fedentina de Jesus"
E preencho o campo "rg" com "34.382.584-3"
E preencho o campo "nacionalidade" com "Brasileira"
E preencho o campo "sexo" com "Feminino"
E preencho o campo "datanascimento" com "20/04/1970"
E preencho o campo "estadocivil" com "Casado"
E preencho o campo "profissao" com "Atendente de loja"
E clico em salvar
Então ela deve ter sido salva no banco de dados
E deverei ver a página de detalhamento da ocorrência

Cenário: Cadastro de ocorrência com RG, data e hora passando do tamanho limite do campo
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20/04/2020X"
E preencho o campo "horaocorrencia" com "15:30X"
E preencho o campo "logradouro" com "Rua Antônio Guerra"
E preencho o campo "numero" com "166"
E preencho o campo "bairro" com "Jardim Tucunduva"
E preencho o campo "cidade" com "Carapicuíba"
E preencho o campo "uf" com "SP"
E preencho o campo "nomepessoa" com "Fedentina de Jesus"
E preencho o campo "rg" com "34.382.584-3X"
E preencho o campo "nacionalidade" com "Brasileira"
E preencho o campo "sexo" com "Feminino"
E preencho o campo "datanascimento" com "20/04/1970X"
E preencho o campo "estadocivil" com "Casado"
E preencho o campo "profissao" com "Atendente de loja"
E clico em salvar
Então ela deve ter sido salva no banco de dados com os dados aparados em seus tamanhos máximos
E deverei ver a página de detalhamento da ocorrência