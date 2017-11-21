5.times do
        puts "I think I can"
end

count = 0
10.times do
	puts count * count
	count += 1
end

puts "Enter a number between 1 and 10:"
#num = gets.chomp.to_i
until num > 10
	puts num * 2
	num += 1
end

puts "Enter a number between 1 and 10:"
#num = gets.chomp.to_i
until num == 0
	puts num * 2
	num -= 1
end

resp = ""
#until resp == "YES"
#	puts "Can we go to Itchy and Scratchy land (or Mt. Splashmore)?"
#	resp = gets.chomp.upcase
#end

name = ""
#while name != "Jacob"
#	puts "Enter student's name:"
#	name = gets.chomp
#end

num = 0
while num != 7
	num = rand(1..10)
	puts num
end

arr = ["tiger", "lion", "bear", "wolf", "cougar", "fish"]
arr.each do |animal|
	if animal == "fish"
		puts "I love #{animal}!"
	else
		puts "No, I don't care for #{animal}."
	end
end

if arr.include? "fish"
	puts "I love fish!"
else
	puts "No, I don't care for those."
end

for i in 0..11
	puts "Enter a name:"
	name = gets.chomp
	if name == ""
		break
	end
	puts "Enter their age:"
	age = gets.chomp.to_i
	puts "Enter where they are from:"
	home = gets.chomp
	puts "Enter their favorite food:"
	food = gets.chomp

	hash = {name: name, age: age, home: home, food: food}
end

hash.each do |key, value|
	case key
	when ":name"
		puts "This is #{value}."
	when ":age"
		puts "They are #{value} years old."
	when ":home"
		puts "Their home town is #{value}."
	when ":food"
		puts "Their favorite food is #{value}."
	end
end