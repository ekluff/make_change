require('sinatra')
require('sinatra/reloader')
require('./lib/make_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do

  @coin_quantities = params.fetch('user_input').make_change()

  @quarters = coin_quantities.fetch('quarters')
  @dimes = coin_quantities.fetch('dimes')
  @nickels = coin_quantities.fetch('nickels')
  @pennies = coin_quantities.fetch('pennies')

  erb(:result)
end
