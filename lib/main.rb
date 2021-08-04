class CaesarCipher

  def caesar_cipher(string, key = 13)
    mapping = Hash.new{ |_, y| y }.merge(Hash[["A".."Z", "a".."z"].
      flat_map { |x| x.zip(x.to_a.rotate key)}])
    string.each_char.map{ |x| mapping[x] }.join
  end
end