require_relative 'spec_helper'
require_relative '../grandparent'

describe Grandparent do

  before(:context) do
    @grandparent = Grandparent.new("marcia",60,"female")
  end

  describe "Initialization" do
    it "is an instance of the Grandparent class" do
      expect(@grandparent).to be_instance_of(Grandparent)
    end
    it "is assigned a name" do
      expect(@grandparent.name).to eq("marcia")
    end
    it "is assigned an age" do
      expect(@grandparent.age).to eq(60)
    end
    it "is assigned a gender" do
      expect(@grandparent.gender).to eq("female")
    end
  end

  describe "class methods" do
    it "should have a way to access the family variable" do
      expect(Grandparent.family.size).to eq(3)
    end
    it "should have a way to access the grandchildren" do
      expect(Grandparent.grandchildren).to eq(1)
    end
  end

  describe "Adding to the family" do
    it "gets added to the family" do
      expect(Grandparent.family).to include(@grandparent)

    end
  end

  describe "Show family" do
    it "Should return an array" do
      expect(Grandparent.show_family).to be_instance_of(Array)
    end

    # BONUS
    # Loop over the array returned by Grandparent.showFamily and see
    # if the number of instance variables at each index is >= 3
    it "Should have at least three instance variables at every index of the array" do


    end
  end
end