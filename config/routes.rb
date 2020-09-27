Rails.application.routes.draw do
  resources :raw_registros_ocorrencias_ssp_sp_gov_brs
  root 'welcome#index'
end
