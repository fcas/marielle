#language: pt

Funcionalidade: Exportar lista de ocorrências em CSV
Como um órgão governamental
Eu quero conseguir exportar todas as informações das ocorrências que aparecem na listagem filtrada de ocorrências
De forma a obter um arquivo em formato CSV com essas informações

Cenário: Exportar lista de ocorrências em CSV sem filtros
Dado que tenho uma ocorrência cadastrada com campo "numero_boletim" preenchido com valor "1234"
E que tenho uma ocorrência cadastrada com campo "numero_boletim" preenchido com valor "4321"
E que estou na página de listagem de ocorrências
Quando clico em exportar
Então deverei fazer download de um arquivo CSV sem filtros

Cenário: Exportar lista de ocorrências em CSV com filtros
Dado que tenho uma ocorrência cadastrada com campo "numero_boletim" preenchido com valor "1234"
E que tenho uma ocorrência cadastrada com campo "numero_boletim" preenchido com valor "4321"
E que estou na página de listagem de ocorrências
Quando eu filtro por "numero_boletim" com "1234"
E clico em exportar
Então deverei fazer download de um arquivo CSV filtrando por "numero_boletim" com valor "1234"