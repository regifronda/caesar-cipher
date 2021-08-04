require './lib/main.rb'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it "returns letters replaced by a right shift" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "returns letters replaced by a left shift" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("What a string!", -5)).to eql("Rcvo v nomdib!")
    end

    it "returns a string replaced by a large right shift" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("Zebra!", 101)).to eql("Wbyox!")
    end

    it "returns a string replaced by a large left shift" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher("Zebra!", -101)).to eql("Cheud!")
    end
  end
end
