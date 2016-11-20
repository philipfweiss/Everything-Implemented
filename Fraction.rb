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
    if v.is_a? Fraction
      Fraction.new(@n*v.n,@d*v.d)
    else
      Fraction.new(@n*v, @d)
    end
  end

  def /(v)
    if v.is_a? Fraction
      Fraction.new(@n*v.d,@d*v.n)
    else
      Fraction.new(@n, @d*v)
    end
  end

  def -(v)
    if v.is_a? Fraction
      Fraction.new(@n - @d*v.n, @d*v.d)
    else
      Fraction.new(@n - @d*v, @d)
    end
  end

  def +(v)
    v.is_a? Fraction ? Fraction.new(@n + @d*v.n, @d*v.d) : Fraction.new(@n + @d*v, @d)
  end

  def reduce
    gcd = gcd(@n, @d)
    @n /= gcd
    @d /= gcd
  end
  private

  def gcd(n,d)
    return n if d == 0
    gcd(d,n%d)
  end
end

