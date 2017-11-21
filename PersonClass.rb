class Person

	attr_accessor :personname, :personage

	def initialize(personname, personage)
		@personname = personname
		@personage = personage
	end

	def birthday
		personage += 1
	end

	def change_name(newname)
		personname = newname
	end
end

myProfile = Person.new("Aaron", 33)
myProfile.birthday
myProfile.change_name("King Ruby")
