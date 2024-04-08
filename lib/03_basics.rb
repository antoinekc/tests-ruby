def who_is_bigger(a,b,c)
  #who is the biggest number
  if a.nil? || b.nil? || c.nil?
    return "nil detected"
  else 
    hash = { a => "a",
    b => "b",
    c => "c"
    }
      if a > b && a > c
        return "a is bigger"
      elsif b > a && b > c
        return "b is bigger"
      else 
      return "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(string)
  string = string.reverse
  string = string.upcase
  string= string.delete("LTA")
  return string
end

=begin
reverse_upcase_noLTA("Tries this at Home, Kids")
reverse_upcase_noLTA("Ponies loves carrots")
reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")
=end

def array_42(array)
  flattened_array = array.flatten
  flattened_array.include?(42) == true
end

=begin
array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])
=end

def magic_array(arrays)
  flattened_array = arrays.flatten
  flattened_array.reject! {| x | x % 3 == 0 } 
  flattened_array.map! { |element| element * 2 }
  flattened_array.uniq!
  flattened_array.sort!
end

