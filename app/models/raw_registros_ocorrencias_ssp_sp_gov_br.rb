class RawRegistrosOcorrenciasSspSpGovBr < ApplicationRecord
    validates :dataocorrencia, presence: { message: "É necessário informar a data da ocorrência" }
    validates :cidade, presence: { message: "É necessário informar a cidade" }
    validates :uf, presence: { message: "É necessário informar a Unidade Federativa (UF)" }
    validates :rg, presence: { message: "É necessário informar o RG da vítima" }
end
