Rails.application.routes.draw do

  get '/factorials/:number', to: 'factorials#calculate', constraints: { number: /[^\/]+/ }

end
