require('sinatra')
require('sinatra/reloader')
require('./lib/make_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do

  @coin_quantities = params.fetch('user_input').make_change()

  @quarters = @coin_quantities.fetch('quarters')
  @dimes = @coin_quantities.fetch('dimes')
  @nickels = @coin_quantities.fetch('nickels')
  @pennies = @coin_quantities.fetch('pennies')

  @coin_phrase_array = []


    if @quarters > 0
      @coin_phrase_array.push(if @quarters == 1
        @quarters.to_s.concat(" quarter, ")
      else
        @quarters.to_s.concat(" quarters, ")
      end)
    end
    if @dimes > 0
      @coin_phrase_array.push(if @dimes == 1
        @dimes.to_s.concat(" dime, ")
      else
        @dimes.to_s.concat(" dimes, ")
      end)
    end
    if @nickels > 0
      @coin_phrase_array.push(if @nickels == 1
        @nickels.to_s.concat(" nickel, ")
      else
        @nickels.to_s.concat(" nickels, ")
      end)
    end
    if @pennies > 0
      @coin_phrase_array.push(if @pennies == 1
        @pennies.to_s.concat(" penny.")
      else
        @pennies.to_s.concat(" pennies.")
      end)
    end

    @coin_phrase = @coin_phrase_array.join()

  erb(:result)
end
