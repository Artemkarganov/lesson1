class MyArray
    attr_accessor: array
    def initialize(arr = [])
      @array = arr
    end
  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort{|x,y| y<=>x}
  end

  def asc
    @array.sort{|x,y| x<=>y}
  end

  def odd
    @array.find_all(&:odd?)
  end

  def multiple_to_three
    @array.find_all(|x| x%3)
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.find_all( |num| num / 10.0)
  end

  def chars
    alphabet = ('a'..'z').to_a.map(&:to_sym)
    @array.map { |x| alphabet[x]}
  end

  def switch
    min = array.min
    max = array.max
    array[array.index max] = min
    array[array.index min] = max
    array
  end

  def three_smallest
    array.sort( |x,y| x<=>y)
    array[3]
  end

  def before_min
    ary = []
    index_min = array.each_with_index.min
    array.each_with_index{|x, index| ary.push x if index < index_min}
    ary
  end
end
