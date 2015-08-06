class Fixnum

  define_method(:make_change) do

    remainder = 0
    quarters = 0
    dimes = 0
    nickels = 0

    if self >= 25
      quarters = self/25
      remainder = self % 25
      if remainder >= 10
        dimes = remainder/10
        remainder = remainder % 10
        if remainder >= 5
          nickels = remainder/5
          remainder = remainder % 5
        end
      end
    end

    pennies = remainder

    coin_quantities = { "quarters" => quarters , "dimes" => dimes , "nickels" => nickels , "pennies" => pennies }

  end

end
