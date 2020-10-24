Dado('que estou na página sobre período de violências contra mulheres') do
  visit '/periods_of_violence'
end

Quando('faço nada') do
end

Então(/^a tabela "([^"]*)" contra mulheres é exibida$/) do |arg|
  pending
end