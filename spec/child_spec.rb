require 'spec_helper'
require_relative '../child'

describe Child do

  before(:context) do
    @child = Child.new("ruby",1,"female")
  end

  describe "Initialization" do
    it "is an instance of the Child class" do
      expect(@child).to be_instance_of(Child)
    end
    it "is assigned a name" do
      expect(@child.name).to eq("ruby")
    end
    it "is assigned an age" do
      expect(@child.age).to eq(1)
    end
    it "is assigned a gender" do
      expect(@child.gender).to eq("female")
    end
    it "is assigned a favColor" do
      expect(Child.colors.empty?).to be(false)
    end
    it "should increment the children variable by 1 when created" do
      expect(Child.children).to eq(1)
    end
    it "should increment the grandchildren variable by 1 when created" do
      expect(Child.grandchildren).to eq(1)
    end
  end

  describe "#growUp" do
    it "gets older by one year when the method is called" do
      expect(@child.grow_up).to eq(2)

    end
  end


  # BONUS
  # For now, to get these tests to pass, have the last line of your 'talking' method be the text you want to display
  # It is beyond the scope of this lab to try to use rspec to test what you 'puts' out so don't worry about that
  describe "Talking" do
    it "should return the message 'Wahhh!' if the child's age is <2 " do
      expect(@child.talk("hello")).to eq("Wahhh!!!")
    end
    it "should return a message and include the favorite color when the age is over 2" do
      expect(@child.talk).to include("#{@fav_color}")

    end
  end

end
