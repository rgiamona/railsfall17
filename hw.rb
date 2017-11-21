# homework intro to ruby
# Homework #1
#puts "Enter your favorate color:"
#color = gets.chomp
#puts color.reverse.upcase

# Homework #2
#puts "Enter your mood:"
#mood = gets.chomp
#len = mmod.length
#puts "meow" + mood

# Homework #3
#puts "Enter your first number:"
#num1 = gets.chomp
#puts "Enter your second number:"
#num2 = gets.chomp
#puts "The sum is " + (num1.to_i + num2.to_i).to_s
#puts "The difference is " + (num1.to_i - num2.to_i).to_s
#puts "The product is " + (num1.to_i * num2.to_i).to_s
#puts "The quotient is " + (num1.to_i / num2.to_i).to_s

# Homework #4
#puts "Enter a sentence:"
#sen = gets.chomp
#puts "Enter your favorite word within your sentence:"
#wd = gets.chomp
#puts "The location of your favorite word within your sentence is " + sen.index(wd)

# Homework #5
#puts "Enter the cost of your meal:"
#cost = gets.chomp.to_f
#tip = cost * 0.18
#printf("The tip of 18%% is $%2.2f", tip)

# Homework #6
# Is this a leap year function
# parameter is the year to check
def isThisALeapYear(theYear)
	(((theYear % 4) == 0) && (((theYear % 100) != 0) || ((theYear % 400) == 0)))
end

# calculate the day of the year
def calcDayOfTheYear(theMonth, theDay, theYear)
	daysPerMonth = [31, isThisALeapYear(theYear) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	theYearDay = 0
	for i in 0..11
		if i == (theMonth - 1) 
			theYearDay += theDay
			break
		end
		theYearDay += daysPerMonth[i]
	end
	return theYearDay
end


# get the dob and parse it
puts "Enter your dob in the following format (mm/dd/yyyy):"
str = gets.chomp
arr = str.split("/")
month = arr[0].to_i
day = arr[1].to_i
year = arr[2].to_i
puts "Is this your dob: #{month}/#{day}/#{year}"

# get the current date and parse it
puts "Enter that current date in the following format (mm/dd/yyyy):"
str2 = gets.chomp
arr2 = str2.split("/")
cMonth = arr2[0].to_i
cDay = arr2[1].to_i
cYear = arr2[2].to_i
puts "Is this the current date: #{cMonth}/#{cDay}/#{cYear}"

# calculate the age
age = cYear - year
puts "Is this your age: #{age}"

# check if dob month is before the current month to adjust age
age -= 1 if (cMonth - month) < 0
puts "Or is this your age: #{age}"

# calculate age in seconds
ageInSecs = age * 60 * 60 * 24 * 365.25
puts "Here is your age in seconds: #{ageInSecs}"

# calculate the day of the current year
cYearDay = calcDayOfTheYear(cMonth, cDay, cYear)
puts "The day of the year for the current day is #{cYearDay}"

# calculate the day of the dob year
yearDay = calcDayOfTheYear(month, day, year)
puts "The day of the year for your birthday is #{yearDay}"

# calculate the day of the year difference
yearDayDiff = cYearDay - yearDay
puts "The difference between year days is #{yearDayDiff}"

# calculate the age in seconds for the difference
ageInSecsForDayDiff = yearDayDiff * 60 * 60 * 24
puts "The age in seconds for year days difference is #{ageInSecsForDayDiff}"

# update the age in seconds for the difference
ageInSecs += ageInSecsForDayDiff
puts "Here is your age in seconds including year days difference is #{ageInSecs}"

# hash for days per year by planet from https://www.exploratorium.edu/ronh/age/
daysPerYearByPlanet = {
	"Mercury" => 87.97, 
	"Venus" => 244.7,
	"Earth" => 365.256,
	"Mars" => 686.68,
	"Jupiter" => 4331.94,
	"Saturn" => 10760.44,
	"Uranus" => 30685.16,
	"Neptune" => 60190.54,
	"Pluto" => 90798.99
}

# calculate and display the age on the different planets
puts "Here is your age on Mercury #{age*daysPerYearByPlanet["Mercury"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Venus #{age*daysPerYearByPlanet["Venus"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Earth #{age*daysPerYearByPlanet["Earth"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Mars #{age*daysPerYearByPlanet["Mars"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Jupiter #{age*daysPerYearByPlanet["Jupiter"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Saturn #{age*daysPerYearByPlanet["Saturn"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Uranus #{age*daysPerYearByPlanet["Uranus"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Neptune #{age*daysPerYearByPlanet["Neptune"]/daysPerYearByPlanet["Earth"]}"
puts "Here is your age on Pluto #{age*daysPerYearByPlanet["Pluto"]/daysPerYearByPlanet["Earth"]}"
