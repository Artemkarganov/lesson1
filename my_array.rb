class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    # TODO
    @array.size
  end

  def reverse
    # TODO
    @array.reverse
  end

  def max
    # TODO
    @array.max
  end

  def min
    # TODO
    @array.min
  end

  def desc
    # TODO
    @array.sort{|x,y| y<=>x}
  end

  def asc
    # TODO
    @array.sort{|x,y| x<=>y}
  end

  def odd
    # TODO
    @array.select(&:odd?)
  end

  def multiple_to_three
    # TODO
    @array.find_all{|x| (x%3).zero?}
  end

  def uniq
    # TODO
    @array.uniq
  end

  def devide_on_ten
    # TODO
    @array.map{ |num| num / 10.0}
  end

  def chars
    # TODO
    alphabet = ('a'..'z').to_a.map(&:to_sym)
    @array.map{|x| alphabet[x-1]}
  end

  def switch
    # TODO
    min = array.min
    max = array.max
    array[array.index max] = min
    array[array.index min] = max
    array
  end

  def before_min
    # TODO
    ary = []
    index_min = array.index array.min
    array.each_with_index{|x, index| ary.push x if index < index_min}
    ary
  end

  def three_smallest
    # TODO
    clone = array.clone
    ary = []
    while ary.size < 3
      min = clone.min
      ary.push min
      clone.delete min
    end
    ary
  end
end
