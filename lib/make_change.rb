class Fixnum

  define_method(:make_change) do
    # change_request = self

    if self >= 25
      quarters = self/25
      remainder = self.%(25)
      # remainder = self % 25
    end

  end

end
