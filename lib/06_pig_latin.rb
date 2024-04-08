def translate(sent)
  sent = sent.downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  words = sent.split(' ')
  result = []

words.each_with_index do |word, i|
  translation = ''
  qu = false
  if vowels.include? word[0]
      translation = word + 'ay'
      result.push(translation)
  else
      word = word.split('')
      count = 0
      word.each_with_index do |char, index|
          if vowels.include? char
              # handle words that start with 'qu'
              if char == 'u' and translation[-1] == 'q'
                  qu = true
                  translation = words[i][count + 1..words[i].length] + translation + 'uay'
                  result.push(translation)
                  next
              end
              break
          else
              # handle words with 'qu' in middle
              if char == 'q' and word[i+1] == 'u'
                  qu = true
                  translation = words[i][count + 2..words[i].length] + 'quay'
                  result.push(translation)
                  next
              else
                  translation += char
              end
              count += 1
          end
      end
      # translation of consonant words without qu
      if not qu
          translation = words[i][count..words[i].length] + translation + 'ay'
          result.push(translation)
      end
  end

end
result.join(' ')
end


translate("apple")

=begin
pseudo code
array = liste des voyelles
si la premiere lettre appartien à cette array alors 
le mot + ay
si la première lettre n'appartient pas à cette array alors
mot.reverse + "ay"
si les deux premières lettres commencent avec des lettres différentes de l'array voyelles alors
tu prends les deux première lettres et tu les mets à la fin du mot puis tu rajoutes ay
si il y a deux mots alors
pour chaque mot tu rajoutes ay à la fin du mot 
si il y a trois consonnes alors 
tu fais un array avec les trois premières consonnes et tu les mets à la fin du mot, puis tu rajoutes ay
si
=end