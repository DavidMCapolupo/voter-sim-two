require './person.rb'

describe Person do
    it "is initialized with a name" do
        person = Person.new("John Doe")
        
        expect(person).to be_a(Person)
    end
    
    it "can report its name" do
        person = Person.new("John Doe")
        
        expect(person.name).to eq("John Doe")
    end
    
end

