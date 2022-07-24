def caesar_cipher(text, shift)
  (0...text.length).each do |i|
    char_code = text[i].ord

    (a, z) = case char_code
             when 97..122 then [97, 122] # a-z
             when 65..90 then [65, 90] # A-Z
             else next
             end

    rotate = shift > 0 ? 26 : -26

    char_code += shift
    char_code -= rotate unless char_code.between?(a, z)

    text[i] = char_code.chr
  end
end

puts 'Write message below: '
message = gets.chomp

caesar_cipher(message, 5) # To change encrypt to original change shift value to "-Value"

puts 'Here is your message: ' + message
puts 'That message is encrypted and you can get original message by shifting -5'

