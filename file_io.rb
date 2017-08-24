file = File.new('textfile.txt', 'w')

file.puts"I am beginning to think...
Dreams oughta be the stuff of the bedroom
And must be left there when one rises
For only then can you survive reality.

\n\nSounds like I'm quiting, don't it?
Walk a mile in these shoes and you'll understand."

file.close

file = File.new('textfile.txt', 'r+')

while line = file.gets
    puts "Line #{file.lineno} is:>> #{line}"
end

file.close