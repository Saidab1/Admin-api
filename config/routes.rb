Rails.application.routes.draw do
  resources :petty_cash_expenses
  resources :employees
  resources :expenses
  resources :incomes
  get "cashflows", to: "cash_flows#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
