require_relative 'grandparent'
require_relative 'parent'

@@fav_colors = ["red", "orange", "yellow", "green", "blue", "purple"]

class Child < Parent
	def initialize(name, age, gender)
		super(name, age, gender)
		@fav_color = @@fav_colors.sample
		@@family << self
		@@children +=1
		@@grandchildren +=1
	end

# GETTER
	def self.colors
		@@fav_colors
	end

	def grow_up
		@age +=1
	end

	def talk(text=nil)
		if @age >= 2
			puts "#{text} and my favorite color is #{@fav_color}!"
		else
			puts "Wahhh!!!"
		end
	end


end

