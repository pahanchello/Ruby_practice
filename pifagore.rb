# frozen_string_literal: true

class Pifagore
  def caesar_cipher(str, k)
    alphabet = ('a'..'z').to_a
    result = ''
    str.split('').each do |c|
      if c != ' '
        c_index = alphabet.index(c)
        new_pos = c_index + k
        new_aplhabet_index = new_pos % 26
        result += alphabet[new_aplhabet_index]
      else
        result = "#{result} "
      end
    end
    result
  end

  def caesar_decipher(str, k)
    alphabet = ('a'..'z').to_a
    result = ''
    str.split('').each do |c|
      if c != ' '
        c_index = alphabet.index(c)
        new_pos = c_index - k
        new_aplhabet_index = new_pos % 26
        result += alphabet[new_aplhabet_index]
      else
        result = "#{result} "
      end
    end
    result
  end
end

def main
  a = Pifagore.new
  puts 'write a string'
  string = gets.chomp
  puts 'write k'
  num1 = gets.chomp.to_i
  puts "your cipher is : #{a.caesar_cipher(string, num1)}"

  b = Pifagore.new
  puts 'write a cipher'
  cypher = gets.chomp
  puts 'write k'
  num2 = gets.chomp.to_i
  puts "your string is: #{b.caesar_decipher(cypher, num2)}"
end
main
