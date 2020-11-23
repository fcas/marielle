#language: pt

Funcionalidade: Limitação dos dados de cadastro
Como um órgão governamental
Eu quero limitar os dados que podem ser inseridos em cada campo cadastrado
De forma a impedir que dados incoerentes entrem na base de informação do sistema

Cenário: Cadastro de ocorrência com RG, data e hora passando do tamanho limite do campo
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "20/04/20209"
E preencho o campo "horaocorrencia" com "15:309"
E preencho o campo "logradouro" com "Rua Antônio Guerra"
E preencho o campo "numero" com "166"
E preencho o campo "bairro" com "Jardim Tucunduva"
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "nomepessoa" com "Fedentina de Jesus"
E preencho o campo "rg" com "34.382.584-39"
E preencho o campo "nacionalidade" com "Brasileira"
E seleciono a opção "Feminino" no campo "sexo"
E preencho o campo "datanascimento" com "20/04/19709"
E seleciono a opção "Casado" no campo "estadocivil"
E preencho o campo "profissao" com "Atendente de loja"
E clico em salvar
Então ela deve ter sido salva no banco de dados com os dados aparados em seus tamanhos máximos
E deverei ver a página de detalhamento da ocorrência

Cenário: Cadastro de ocorrência com RG, data e hora alfanuméricos sem máscara
Dado que estou na página de cadastro de ocorrência
Quando preencho o campo "dataocorrencia" com "200X42020"
E preencho o campo "horaocorrencia" com "15X30"
E preencho o campo "logradouro" com "Rua Antônio Guerra"
E preencho o campo "numero" com "166"
E preencho o campo "bairro" com "Jardim Tucunduva"
E preencho o campo "cidade" com "Carapicuiba"
E seleciono a opção "SP" no campo "uf"
E preencho o campo "nomepessoa" com "Fedentina de Jesus"
E preencho o campo "rg" com "34382X5843"
E preencho o campo "nacionalidade" com "Brasileira"
E seleciono a opção "Feminino" no campo "sexo"
E preencho o campo "datanascimento" com "200X41970"
E seleciono a opção "Casado" no campo "estadocivil"
E preencho o campo "profissao" com "Atendente de loja"
E clico em salvar
Então ela deve ter sido salva no banco de dados sem letras e com máscara
E deverei ver a página de detalhamento da ocorrência