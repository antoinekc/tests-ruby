def echo(string)
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

def titleize(title)
  if title.split 
  little_words = %w{a an and the but or nor on at to by from of with}
  title_array = title.capitalize.split.map do |word|
    little_words.include?(word.downcase) ? word : word.capitalize
  end
  puts title_array.join(' ')
  return title_array.join(' ')
end

=begin
  string.capitalize.split.map do | word | 
    if little_words.include?
      word
    else
      word.capitalize
    end
  end.join(' ')
end
=end

titleize("jaws")
titleize("david copperfield")
titleize("war and peace")
titleize("the bridge over the river kwai")

=begin 
si dans la map il y a 1 seul mot 
alors tu capitalises
si il y a deux mots
alors tu capitalises
si il y a plusieurs 
alors tu vérifies dans l'array little_words
si le premier mot commence par un mot dans l'array little word alors tu capitalises ce premier mot


=begin
def reverse
  little_words = %w{a an and the but or for nor on at to by from of with in}
  title.capitalize.split.map { |word| little_words.include?(word.downcase) ? word : word.capitalize }.join(' ')
  return string.split.map(&:capitalize).join(' ')
end 
=end

