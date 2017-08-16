# This converts temp from a given scale to a desired scale.

def convert_temp()
    # i.e, input scale and output_sclae defaulted to celcius and kelvin rspvly
    puts "Enter temp : "
    temp = gets.chomp.to_f
    converted = 0 

    puts "\nWhat scale is that in?\nCarefully type one of the following: 'celcius', 'farenheit', or 'kelvin'"
    input_scale = gets.chomp.downcase
  
    if input_scale == 'celcius' || input_scale == 'farenheit' || input_scale == 'kelvin' 
        puts "\nAnd you'd like that converted to?"
        output_scale = gets.chomp

        if output_scale == 'celcius' || input_scale || 'farenheit' || input_scale == 'kelvin'

            if input_scale == output_scale
                puts "\n\nYour temp was not converted because you entered same input and output scales"
            
            else
                # from farenheit
                if input_scale == 'farenheit' && output_scale == 'celcius'
                    converted = (temp - 32) * 5/9

                elsif input_scale == 'farenheit' && output_scale == 'kelvin'
                    converted = ((temp - 32) * 5/9) + 273.5

                # from celcius
                elsif input_scale == 'celcius' && output_scale == 'farenheit'
                    converted = (temp * 9/5) + 32

                elsif input_scale == 'celcius' && output_scale == 'kelvin'
                    converted = temp + 273.5

                # from kelvin
                elsif input_scale == 'kelvin' && output_scale == 'farenheit'
                    converted = ((temp - 273.5) * 9/5) + 32

                elsif input_scale == 'kelvin' && output_scale == 'celcius'
                    converted = temp - 273.5

                end

            # after converting
            puts "\n\n#{temp.to_s} degrees #{input_scale.capitalize} in #{output_scale.capitalize} is #{converted.to_s} degrees #{output_scale.capitalize}"
            end

        else
            puts "\nSorry,that output scale is unknown to me.Please try again"
        end  
    else
        puts "\nSorry, than input scale is foreign to me."
    end
end

convert_temp


