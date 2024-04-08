def ftoc(farhenheit)
  celsius = ((farhenheit - 32) / (9.0/5.0)) 
  #puts celsius.round
  return celsius.round
end

=begin
ftoc(212)
ftoc(98.6)
ftoc(68)
=end

def ctof(celsius)
  farhenheit = ((celsius) * 9.0/5.0) + 32
  return farhenheit
end


