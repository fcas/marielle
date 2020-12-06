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

    scope :filter_by_numero_boletim, -> (numero_boletim) { where numero_boletim: numero_boletim }
    scope :filter_by_dataocorrencia, -> (dataocorrencia) { where dataocorrencia: dataocorrencia }
    scope :filter_by_bairro, -> (bairro) { where bairro: bairro }
    scope :filter_by_cidade, -> (cidade) { where cidade: cidade }
    scope :filter_by_uf, -> (uf) { where uf: uf }
    scope :filter_by_rg, -> (rg) { where rg: rg }

    def self.as_csv
        CSV.generate do |data|
            data << column_names
            all.each do |item|
            data << item.attributes.values_at(*column_names)
            end
        end
    end
end
