#Make the Robin class inherit from the Bird class

#Override the chirp method inherited from the Bird class in the Robin 
#class so that it now returns "tweet tweet"

require_relative("Bird.rb")
class Robin < Bird
	def chirp
		"tweet tweet"
	end
end