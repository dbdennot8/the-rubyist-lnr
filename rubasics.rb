require 'colorize'

=begin

# 1. puts, gets, chomps, interpolation

def greet
    print "Uniatwo? "
    name = gets.chomp
    print "#{name} nani? "
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

# 3. align puts value as desired

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

=begin

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
=end


=begin
# 8. Arrays iterate, no sort method [- each_index method -]

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
            words.push word
        end
    end
    words.each_index do |word_1|
        words.each_index do |word_2|
            if words[word_1] < words[word_2]
                words[word_1], words[word_2] = words[word_2], words[word_1]
            end
        end
    end
    puts "Here are the words you entered, sorted alphabetically\n#{words}\n"
end

many_words
=end


=begin
# 9. Using a hash, array, for-loop

def group_by_marks(marks, pass_marks)
    assess = {:Failed => [], :Passed => []}

    for key in marks.keys
        if marks[key] < pass_marks
            assess[:Failed].push [key.to_s, marks[key]]

        else
            assess[:Passed].push [key.to_s, marks[key]]
        end
    end
    return assess
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
puts
puts group_by_marks(marks, 30)
puts
=end

=begin
# 10. Working with the time class

def make_time
    puts "Oy, what year were you born?\n[enter whole year..like,, '1876' or something]".white
    year = gets.to_i
    puts "And the month?\n[Single digit...ok, two if you were born after September.]".white
    month = gets.to_i
    puts "Remember the exact day? No? Think harder..Enter the day!".white
    day = gets.to_i

    born = Time.mktime(year, month, day)
    billion = 1000000000
    turn_billion = born + billion 

    puts
    puts "You were born on ".white + "#{born}.".blue
    if turn_billion > Time.now
        puts "You will turn a billion on ".white + "#{turn_billion}.".blue + " A billion seconds, that is.".white
    else
        puts "You turned a billion on ".white + "#{turn_billion}.".blue + " A billion seconds, that is.".white
    end

    puts
    puts "Enter an age, in years, to find out when you will turn it, or when you turned it.".white

    age = gets.to_f
    age_secs = (age * (366 * 24 * 60 * 60)) # .round(-8) would round to the nearest hundred million secs

    year_turn = born + age_secs

    puts
    if year_turn > Time.now
        puts "You will turn ".white + "#{age}".blue + " on ".white + "#{year_turn}.".blue + "That's ".white + "#{age_secs}".blue + " seconds old.".white
    else
        puts "You turned ".white + "#{age}".blue + " on ".white + "#{year_turn}. ".blue + "That's ".white + "#{age_secs}".blue + " seconds old.".white
    end
    puts
end

make_time
=end

def maxmin_arr
    arr = []
    for i in 1..10
        arr << Random.rand(1000)
    end

    # using the `each` iterator
    max = arr[0].to_i
    arr.each do |i|
        if i > max
            max = i
        end
    end

    # using a for-loop
    min = arr[0].to_i
    for i in arr
        if i < min
            min = i
        end
    end
puts
puts "The array of random numbers is:\n#{arr}"
puts
puts "When sorted, the array of random numbers is:\n#{arr.sort.reverse}"
puts
puts "The maximum number in the array is: #{max}"
puts
puts "The minimum number in the array is: #{min}"
puts

end