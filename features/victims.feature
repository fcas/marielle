#language: pt

Funcionalidade: Visualizar dados das vítimas das ocorrências de violências contra mulheres
  Como um órgão governamental
  Para eu tomar conhecimento dos dados das vítimas das ocorrências de violências contra mulheres
  Eu quero um relatório para vítimas do sexo masculino e outro para vítimas do sexo feminino

  Cenário: Visualizar tabela com dados das vítimas do sexo feminino
    Dado que estou na página sobre as vítimas das ocorrências de violências contra mulheres
    Quando faço nada
    Então é exibida a tabela female_victims

  Cenário: Visualizar tabela com dados sobre sexo masculino
    Dado que estou na página sobre as vítimas das ocorrências de violências contra mulheres
    Quando faço nada
    Então é exibida a tabela male_victims