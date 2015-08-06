require('rspec')
require('make_change')

describe('Fixnum#make_change') do

  it('returns the number of times an interger is divisible by 25') do
    expect(76.make_change()).to(eq(3))
  end

  it('returns remainder after calculating divisibility') do
      expect(76.make_change()).to(eq(1))
  end

  it('returns the number of times an interger is divisible by 10') do
    expect(10.make_change()).to(eq(1))
  end

  it('returns the number of times an interger is divisible by 5') do
    expect(5.make_change()).to(eq(1))
  end

end
