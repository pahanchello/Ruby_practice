class Pifagore
   
    attr_accessor :str, :k

    def initialize (str,k)
        @str = str
        @k = k
    end


    def caesar_cipher()
        alphabet = ('a'..'z').to_a
        result = ""
        
        @str.split("").each {|c|
        if c != " "
            c_index = alphabet.index(c)
            new_pos = c_index + @k
            new_aplhabet_index = new_pos % 26
            result = result + alphabet[new_aplhabet_index]
        else
            result = result + " "
        end
        }
        return result
    end



    def caesar_decipher()
        alphabet = ('a'..'z').to_a 
        key = Hash[alphabet.zip(alphabet.rotate(k))]
        str.each_char.inject("") { |newtext, char| newtext + key[char] }
    end


end

    puts "write a string"
    str = gets.chomp()
    puts "write k"
    k = gets.chomp().to_i
    obj = Pifagore.new(str,k)
    puts obj.caesar_cipher()

    puts "write a cipher"
    str = gets.chomp()
    puts "write k"
    k = gets.chomp().to_i
    b = Pifagore.new(str,k)
    puts b.caesar_decipher()

