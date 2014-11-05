require_relative 'grandparent'

class Parent < Grandparent
	@@children = 0
	attr_accessor :name, :age, :gender
	def initialize (name,age,gender)
		super(name,age,gender)
	end

	# GETTER
	def self.children
		@@children
	end
end
