require('rspec')
require('make_change')

describe('Fixnum#make_change') do

  it('returns the number of times an interger is divisible by 25') do
    expect(76.make_change()).to(eq(3))
  end


end
