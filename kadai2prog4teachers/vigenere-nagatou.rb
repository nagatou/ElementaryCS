# Vigenere Chipher
# Mode: ruby

CODE_a = 97
CODE_z = 122
ALPHABET_SIZE =26

def letter2index (letter)
  return (letter - CODE_a)
end
def index2letter (index)
  return (index + CODE_a)
end
def transform(char,key)
  index = letter2index(char)
  c_index = (index + (letter2index(key))) % ALPHABET_SIZE
  return(index2letter(c_index))
end
def vigenere (key,message,chipher_text)
  for i in 0..(message.length-1)
    if CODE_a <= message[i] && message[i] <= CODE_z
       chipher_text[i] = transform(message[i],key[i % key.length])
    else
       chipher_text[i] = message[i]
    end
  end
end
def encipher(key, message)
  letters = message.unpack("C*")
  keys = key.unpack("C*")
  chipher_letters = Array.new(message.length)
  vigenere(keys,letters,chipher_letters)
  return (chipher_letters.pack("C*"))
end

hirabun = gets.chomp
angobun = encipher("vigenere", hirabun)
puts(angobun)
