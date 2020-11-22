class RawRegistrosOcorrenciasSspSpGovBr < ApplicationRecord
    validates :dataocorrencia, presence: { message: "É necessário informar a data da ocorrência" }
    validates :cidade, presence: { message: "É necessário informar a cidade" }
    validates :uf, presence: { message: "É necessário informar a Unidade Federativa (UF)" }
    validates :rg, presence: { message: "É necessário informar o RG da vítima" }

    validates_length_of :dataocorrencia, minimum: 10, maximum: 10, allow_blank: false
    validates_length_of :uf, minimum: 2, maximum: 2, allow_blank: false
    validates_length_of :rg, minimum: 12, maximum: 12, allow_blank: false

    validates_length_of :horaocorrencia, maximum: 5, allow_blank: true
    validates_length_of :datanascimento, maximum: 10, allow_blank: true
end
