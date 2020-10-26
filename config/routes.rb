Rails.application.routes.draw do
  resources :raw_registros_ocorrencias_ssp_sp_gov_brs
  root 'welcome#index'
  namespace :reports do
    get "periods_of_violence", to: "reports/periods_of_violence"
  end
end
