alphabet = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

def caesar_cipher(string, key)
  dup_alphabet = alphabet.dup
  to_alphabet = dup_alphabet + dup_alphabet.slice(0, key * 2) 
end

caesar_cipher("4", 5)