class Cipher
    def cipher_look_up 
        {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
         'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
         'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
         'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
         'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
         'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
         'y' => 'l', 'z' => 'm'
        }
    end

    def encrypt_message
        puts "\nEnter message : \n"
        message = gets.chomp.downcase.split('')

        encrypted = [] 
        # message.collect do |letter|
        #     encrypted.push(cipher_look_up[letter], rand(0..999))
        message.each do |letter|
            encrypted.push(cipher_look_up[letter], rand(0..999))
        end
        puts "\n#{encrypted.join}\n" 
        puts
    end

    def decrypt_message
        puts "\nEnter encrypted message : \n"
        # ciphered = gets.chomp.downcase.scan(/\d+ | [a-z]+ /)
        ciphered = gets.chomp.downcase.split(/\d+/)

        decrypted = []
        ciphered.each do |letter|
            decrypted.push(cipher_look_up[letter])
        end

        puts "\n#{decrypted.join}\n"
    end


end

test = Cipher.new
test.encrypt_message
test.decrypt_message