class Fraction
  attr_accessor :n, :d

  def initialize(n, d)
    @n = n
    @d = d
    raise "Cannot Divide by Zero" if d == 0
  end

  def to_s
    "#{@n}/#{@d}"
  end

  def *(v)
    if v.is_a Fraction
      Fraction.new(@n*v.n,@d*v.d)
    else
      Fraction.new(@n*v, d)
    end
  end

  def -(v)

  end

  def reduce

  end


  def divide

  end

end

fraction = Fraction.new(5,1)
