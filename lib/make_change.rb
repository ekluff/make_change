class Fixnum

  define_method(:make_change) do
    change_request = self

    if change_request >= 25
      quarters = change_request/25
    end
    
  end

end
