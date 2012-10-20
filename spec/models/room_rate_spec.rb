require 'spec_helper'

describe RoomRate do
  it "requires a name" do
    debugger;1
    subject.should_not be_valid #Affirms that lack of input is not valid
    subject.name = "Samantha" #sets a valid input
    subject.should be_valid #Affirms input is valid
  end
  
  it "requires a floor" do
    debugger;1
    subject.should_not be_valid #Affirms that lack of input is not valid
    subject.floor = "a" #sets an invalid input
    subject.should_not be_valid #Affirms that input is invalid
    #subject.floor = "12345" #sets an invalid input
    #subject.should_not be_valid #Affirms that input is invalid
   # subject.floor = "" #sets an invalid input
    #subject.should_not be_valid #Affirms that input is invalid
    subject.floor = "1" #sets a valid input
    subject.should be_valid #Affirms input is valid
  end
  
  it "requires a building" do
    debugger;1
    subject.should_not be_valid #Affirms that lack of input is not valid
    subject.building = "Harrison" #sets a valid input
    subject.should be_valid #Affirms input is valid
  end

  it "requires a room number" do
    debugger;1
    subject.should_not be_valid #Affirms that lack of input is not valid
    subject.roomnumber = "abc" #sets an invalid input
    #subject.should_not be_valid #Affirms input is not valid
    #subject.roomnumber = "" #sets an invalid input
    subject.should_not be_valid #Affirms that input is invalid
    subject.roomnumber = "1715" #Sets a valid input
    subject.should be_valid #Affirms that input is valid
  end
  
   it "requires a layout" do
    debugger;1
    subject.should_not be_valid #Affirms that lack of input is not valid
    subject.layout = "" #sets a valid input
    subject.should be_valid #Affirms input is valid
  end
end
