=begin

# 1. puts, gets, chomps, interpolation

def greet
    print "Uniatwo? "
    name = gets.chomp
    print "#{name} nai? "
    name_2 = gets.chomp
    print "#{name} #{name_2}, unaishi wapi? "
    address = gets.chomp
    puts "#{name} #{name_2} wa #{address}, sande sana kwa kunijuza hayo."
end

greet
=end

=begin

# 2. puts, gets, chomps, interpolation, modify user input

def fav_no
    print "Oy, what be your favorite number? "
    fav_no = gets.chomp
    if fav_no.to_i != 10
        puts "Oh how ugly!!!? Have you ever considered #{fav_no.to_i + 1}? It is so more than #{fav_no}..."
    else
        puts "Brilliant!! #{fav_no} is my fav too! We should have dinner...\n..."
    end
end

fav_no
=end

=begin

# 3. allign puts value as desired

def table_of_contents
    linewidth = 60
    puts "Ruby: An Introduction".center(linewidth)
    puts "\n"
    print("Chapter 1: ".ljust(linewidth) + "Installations on Linux, et al".ljust(linewidth))
    puts "\n"
    print("Chapter 2: ".ljust(linewidth) + "Object-types, Basic Methods".ljust(linewidth))
    puts "\n"
    print("Chapter 3: ".ljust(linewidth) + "Let's Build Something!".ljust(linewidth))
    puts "\n"
    print("Conclusion".ljust(linewidth))
    puts "\n"
    puts "And now you're a rubyist...or getting there".center(linewidth)

end

table_of_contents
=end

=begin 

# 4. Using a while loop

def rhyme_flani
    i = 99
    while i >= 0
        puts "#{i} beer bottles standing on the Wall,"
        puts "#{i} beer bottles standing on the Wall,"
        puts "If one beer bottle should tumble down the wall,"
        puts "There will be...\n\n"
        i -= 1
    end
    puts "A catastrophe. That's what!"
end

rhyme_flani
=end

=begin 
# 5. gets, chomps, while loop with str

def deaf_grandma
    puts "GRAM : Hey Sonny! Been long!"

    me_says = gets.chomp
    
    while me_says != me_says.upcase
        puts "GRAM : WHAT?? I CAN'T HEAR YOU! SPEAK UP!"
        me_says = gets.chomp  
    end
    puts "GRAM : Hi, how you been boy?"
    response = gets.chomp
    while response != response.upcase
        puts "GRAM : SPEAK UP!!!!"
        response = gets.chomp
    end
    puts "ME : I saw you in a 1945 photo."
    puts "GRAM : Oh, yeah! 1938 was a hell of a time fo us! Haha"
    puts "ME : I didn't say 1938"
    puts "GRAM : Well...What did you say then??"

    me_respond = gets.chomp

    while me_respond != "BYE "*3
        puts "GRAM : I CAN'T HEAR YOU BOY! Did you say #{me_respond.to_i - rand(15)}?"
        me_respond = gets.chomp
    end
    puts "GRAM : You leaving? So soon? Alright see ya!"
end

deaf_grandma
=end

=begin

# 6. Logic, conditional flow, while loop, gets, chomps, puts

def leap_year_identify
    puts "\n" + "*"*60+ "\n"
    puts "This program identifies the leap years in a given period."
    puts "\n" + "*"*60 + "\n"

    puts "Enter a starting year : " 
    year = gets.chomp
    year = year.to_i

    count_all_years = 0
    count_leap_years = 0

    puts "From that year till : " 
    end_year = gets.chomp
    end_year = end_year.to_i

    while year <= end_year
        puts "\n"
        if year % 100 == 0 && year % 400 == 0            
            puts "|| #{year} || ==  ISSA centurial leap year!! \n\n"
            year += 1
            count_all_years += 1
            count_leap_years += 1

        elsif year % 100 == 0 && year % 400 != 0
            puts "#{year} ==  centurial, but NOT leap year :-( \n\n"
            year += 1
            count_all_years += 1
            
        elsif year % 4 == 0
            puts "|| #{year} || ==  ISSA leap year!! \n\n"
            year += 1
            count_all_years += 1
            count_leap_years += 1

        else
            puts "#{year} == NOT a leap year. :-( \n\n"
            year += 1 
            count_all_years += 1   
        end
    end
    puts "**"*30
    puts "Number of years in this period : #{count_all_years}"
    puts "Number of leap years in this period : #{count_leap_years}\n"
    puts "**"*30

end

leap_year_identify
=end



# 7. Arrays, while-loop, if conditional flow

def many_words
    words = []

    puts "Enter a word : "
    word = gets.chomp
    words << word

    while word != ""
        puts "And another : "
        word = gets.chomp
        if word == ""
            word.delete
        else
            words << word
        end
    end
    words = words.sort

    puts "Here are the words you entered, sorted alphabetically\n#{words}\n"
    # note : puts words would iterate thro the array and print each word in a new line
end

many_words


