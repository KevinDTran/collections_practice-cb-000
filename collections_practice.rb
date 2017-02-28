def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b<=>a
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements (array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  return array
end

def reverse_array (array)
  array.reverse
end

def kesha_maker (array)
  array.each do |item|
    item[2] = "$"
  end
end

def find_a (array)
  a_container = []
  array.each do |x|
    if x.start_with?("a")
      a_container << x
    else
      #pass
    end
  end
  a_container
end

def sum_array (array)
  array.inject(0) {|sum, element| sum + element}
end

def add_s (array)
  new_array = array.each_with_index.collect do |element, index|
    if index == 1
      element
    else
      element.to_s << "s"
    end
  end
end
