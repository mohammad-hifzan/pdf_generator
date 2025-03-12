Rails.application.routes.draw do
  root "hello#index"
  get 'hello/pdf_generator', to: 'hello#pdf_generator', defaults: { format: 'pdf' }
end
