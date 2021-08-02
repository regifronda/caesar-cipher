class CaesarCipher
  Alphabet = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

  def caesar_cipher(string, key)
    dup_alphabet = Alphabet.dup
    to_alphabet = dup_alphabet + dup_alphabet.slice!(0, key * 2) 
    string.tr(Alphabet, to_alphabet)
  end
end

p caesar_cipher("What a string!", 5)
p caesar_cipher("ZzZ!", 5)