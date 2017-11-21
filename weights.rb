#weights.rb

#create arrays
plates = [45, 35, 25, 15, 10, 5]
noOfPlates = [0, 0, 0, 0, 0, 0]

#loop for the calculation of the number of each plates needed
def loopForPlates(weight, plates, no, idx)
	while weight > 0
		if (weight - (plates[idx] * 2)) < 0 #can the weight handle 2 more of this sized plate
			break
		end
		weight -= (plates[idx] * 2) #if it can, process the pair of plates
		no[idx] += 2
	end
	return weight
end

#calculate the plates
def calculateThePlates(weight, plates, no)
	theWeight = 0
	newWeight = weight - 45 #bar weight
	for i in 0..(plates.length - 1) #loop through each size plate
		newWeight = loopForPlates(newWeight, plates, no, i)
		theWeight += no[i] * plates[i]
		if newWeight <= 0 #can't be negative and exit if 0
			break
		end
	end
	return theWeight + 45
end

#start main loop
resp = 1
while resp != 0
	for i in 0..(plates.length - 1) #initialize the noOfPlates array
		noOfPlates[i] = 0
	end

	puts "\nWelcome to the Weights Calculator:"
	print "Please enter the weight you want to lift (or 0 to quit): "
	weight = gets.chomp.to_i
	if weight == 0 #exit
		break
	elsif weight < 45 #can't be less than 45#s
		puts "The barbell weighs 45 pounds so the weight needs to be at least 45 pounds.  Please try again."
		next
	end

	calcWeight = calculateThePlates(weight, plates, noOfPlates)
	if weight != calcWeight #unable to reach the weight requested
		puts "\nSorry, I could not match that weight exactly: #{weight}."
	end

	for i in 0..(plates.length - 1) #print out the number of each size plate
		puts "You will need #{noOfPlates[i]} of the #{plates[i]}" + '#' + " size plates, #{(noOfPlates[i]/2)} per side of the barbell."
	end
	
	puts "For a total weight of #{calcWeight}.\n\n"
end
