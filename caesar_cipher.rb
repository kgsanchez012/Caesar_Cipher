def caesar_cipher(string, shift)
  characters = string.split("")
  result = ""
  
  for i in characters
    if (i>="A" && i<="Z") || (i>="a" && i<="z")
      x = (i.ord + shift.to_i) 
      
      if ((i>="A" && i<="Z") && (x>90)) || ((i>="a" && i<="z") && (x>122))
        x -= 26
      end
      x = x.chr
      result += x
    else
      result += i
    end
  end
  puts result
end

caesar_cipher("What a string!", 5)