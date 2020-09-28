#
# Encryption of a text using a Vigenère cipher over the specified alphabet
#

ALPHABET = ('a'.ord..'z'.ord)

# IN:
#   k       key (integer offset)
#   clear   character to encode/decode
# OUT:      mapped character
def transform_char(k, clear)
  res  = clear
  if ALPHABET.include?(clear)
    diff = clear - ALPHABET.first
    res = ALPHABET.first + (diff + k) % ALPHABET.size
  end
  #printf("%c --(%c %2d)--> %c\n", clear, (ALPHABET.first+k), k, res)
  res
end

# IN:   offset vector (from the key)
#       clear text as string
# OUT:  cipher text as string
def transform(offsets, input_text)
  offsets_as_letters = offsets.map{ |c| ALPHABET.first + c }.pack("C*")
  input_text
      .unpack("C*")
      .map.with_index { |c, i| transform_char(offsets[i % offsets.length], c) }
      .pack("C*")
end

# IN:
#   key         private key (string)
#   input_text  cleartext (string)
# OUT:          ciphertext (string)
def enc(key, input_text)
  offsets =
      key.unpack("C*")
          .select { |c| ALPHABET.include?(c) }
          .map    { |c| c - ALPHABET.first }
  transform(offsets, input_text)
end

# IN:
#   key         private key (string)
#   input_text  ciphertext (string)
# OUT:          cleartext (string)
def dec(key, input_text)
  reverse_offsets =
      key.unpack("C*")
          .select { |c| ALPHABET.include?(c) }
          .map    { |c| (ALPHABET.size - (c - ALPHABET.first)) % ALPHABET.size }
  transform(reverse_offsets, input_text)
end


input_text = $stdin.read
command  = ARGV[0] || "enc"
key      = ARGV[1] || "vigenere"

if command == "dec"
  clear = dec(key, input_text)
  puts(clear)
else
  cipher = enc(key, input_text)
  puts(cipher)
end
