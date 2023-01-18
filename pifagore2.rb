# frozen_string_literal: true

# rubocop:disable Style/Documentation

class Pifagore
  attr_accessor :str, :shift

  def initialize(str, shift)
    @str = str
    @shift = shift
  end
  # rubocop:disable Metrics/MethodLength

  def caesar_cipher
    alphabet = ('a'..'z').to_a
    result = ''

    @str.split('').each do |c|
      if c != ' '
        c_index = alphabet.index(c)
        new_pos = c_index + @shift
        new_aplhabet_index = new_pos % 26
        result += alphabet[new_aplhabet_index]
      else
        result = "#{result} "
      end
    end
    result
  end
  # rubocop:enable Metrics/MethodLength

  def caesar_decipher
    alphabet = ('a'..'z').to_a
    key = Hash[alphabet.zip(alphabet.rotate(shift))]
    str.each_char.inject('') { |newtext, char| newtext + key[char] }
  end
end

# rubocop:enable Style/Documentation

puts 'write a string'
str = gets.chomp
puts 'write k'
shift = gets.chomp.to_i
obj = Pifagore.new(str, shift)
puts obj.caesar_cipher

puts 'write a cipher'
str = gets.chomp
puts 'write k'
shift = gets.chomp.to_i
b = Pifagore.new(str, shift)
puts b.caesar_decipher
