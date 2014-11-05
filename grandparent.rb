class Grandparent
	attr_accessor :name, :age, :gender
	@@family = []
	@@grandchildren = 0
	def initialize (name,age,gender)
		@name = name
		@age = age
		@gender = gender
		@@family << self
	end

	def self.family
		@@family
	end

	def self.grandchildren
		@@grandchildren
	end

  def self.show_family
  family_hash = []
  @@family.each do |value| 
    member_hash = {
    relation: value.class.name,
    name: value.name,
    age: value.age
  }
  family_hash << member_hash
  end
end

end