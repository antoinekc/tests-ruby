def echo(string)
  puts string
  return string
end

echo("Hello")

=begin
echo("should echo hello")
echo("should echo bye")
=end


def shout(string)
  s = string.upcase
  return s
end

def repeat(string,times=2)
  resultat= (string + " ") * times
  return resultat.strip
end

def start_of_word(string, nb=1)
  return string[0, nb]
end

def first_word(string)
  return string.split.first
end

def titleize(string)
  return string.split.map(&:capitalize).join(' ')
end

