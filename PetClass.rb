class Pet

	attr_accessor :breed, :petname, :sound
	def initialize(breed, petname, sound)
		@breed = breed
		@petname = petname
		@sound = sound
	end

	def petSound
		return sound
	end
end
