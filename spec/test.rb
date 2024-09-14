require_relative "../script"

describe CeasarCipher do
  let(:cipher) { CeasarCipher.new }

  describe "#encrypt" do
    it "encrypts a message with a positive shift" do
      expect(cipher.encrypt("Hello, World!", 3)).to eq("Khoor, Zruog!")
    end

    it "encrypts a message with a negative shift" do
      expect(cipher.encrypt("Hello, World!", -3)).to eq("Ebiil, Tloia!")
    end

    it "keeps special characters unchanged" do
      expect(cipher.encrypt("Hello, World!", 3)).to eq("Khoor, Zruog!")
      expect(cipher.encrypt("Hello, World!", 5)).to eq("Mjqqt, Btwqi!")
    end

    it "encrypts a message with a shift of 0 (no shift)" do
      expect(cipher.encrypt("Hello, World!", 0)).to eq("Hello, World!")
    end

    it "wraps around for large shifts" do
      expect(cipher.encrypt("Hello, World!", 29)).to eq("Khoor, Zruog!") # equivalent to shift of 3
    end

    it "handles lowercase letters correctly" do
      expect(cipher.encrypt("abc", 2)).to eq("cde")
    end

    it "handles uppercase letters correctly" do
      expect(cipher.encrypt("ABC", 2)).to eq("CDE")
    end
  end
end
