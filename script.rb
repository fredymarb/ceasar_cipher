def ceasar_cipher(string, shift_factor)
  # ensure shift_factor is within 0 - 26 range
  shift_factor = shift_factor % 26

  encrypted_string = ""

  string.each_char do |char|
    if char.match?(/[a-z]/) # shift lowercase alphabets
      new_char = (((char.ord - "a".ord + shift_factor) % 26) + "a".ord).chr
      encrypted_string += new_char
    elsif char.match?(/[A-Z]/) # shift uppercase alphabets
      new_char = (((char.ord - "A".ord + shift_factor) % 26) + "A".ord).chr
      encrypted_string += new_char
    else
      # leave non-alphabet character untouched
      encrypted_string += char
    end
  end

  encrypted_string
end

puts ceasar_cipher("what a string!", 5) #returns => bmfy f xywnsl!
puts ceasar_cipher("Hello, World!", 3) #returns => Khoor, Zruog!
