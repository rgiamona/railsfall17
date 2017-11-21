#puts "What's your name?"
#name = gets.chomp
#puts "Oh, hi " + name

#puts "Are you a cat or dog or something else?"
#animal = gets.chomp
#if animal == "cat"
#	puts "meow"
#elsif animal == "dog"
#	puts "bark"
#elsif animal -- "mouse"
#	puts "squeak"
#else
#	puts "unknown animal"
#end

puts "Enter a number between 1 and 100:"
num1 = gets.chomp
num2 = 23
if num1.to_i == num2
	puts "Wow!"
elsif num1.to_i >= (num2-5) && num1.to_i <= (num2+5)
	puts "So Close!"
else
	puts "Nope!"
end

#puts "Enter your grade:"
#grade = gets.chomp
#if grade.to_i >= 60
#	puts "You passed!"
#else
#	puts "You failed."
#end