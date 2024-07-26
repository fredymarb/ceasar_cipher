def ceasar_cipher(string, shift_factor)
  shift_factor = shift_factor % 26

  encrypted_string = ""

  string.each_char do |char|
    if char.match?(/[a-z]/)
      new_char = (((char.ord - "a".ord + shift_factor) % 26) + "a".ord).chr
      encrypted_string += new_char
    elsif char.match?(/[A-Z]/)
      new_char = (((char.ord - "A".ord + shift_factor) % 26) + "A".ord).chr
      encrypted_string += new_char
    else
      encrypted_string += char
    end
  end

  encrypted_string
end

puts ceasar_cipher("what a string!", 5) #returns => bmfy f xywnsl!
puts ceasar_cipher("Hello, World!", 3) #returns => Khoor, Zruog!
