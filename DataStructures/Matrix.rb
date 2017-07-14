## TODO: Implement Matrix Class / Algo

class Matrix
  def initialize (n,m, options={})
      init_val = 0
      if options[:init_val]
        init_val = options[:init_val]
      end
      @matrix = Array.new(m, Array.new(n,init_val))
  end

  ## Sets coordinates starting from top left corner of the matrix.
  def set_coord (x,y,val)
    @matrix[x][y] = val
  end

  def get_coord (x,y)
    @matrix[x][y]
  end

  def inspect
    @matrix.each do |entry|
      puts entry.inspect
    end
  end
end

matrix = Matrix.new(10,3, :init_val => 33)
matrix.set_coord(2,2,5)
matrix.inspect
