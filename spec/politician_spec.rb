require './politician.rb'

describe Politician do
    it "is created with a name and party affiliation" do
        politician = Politician.new("Jane Doe", "Democrat")
        
        expect(politician).to be_a(Politician)
    end
    
    it "can report its name" do
        politician = Politician.new("Jane Doe", "Democrat")
        
        expect(politician.name).to eq("Jane Doe", "Democrat")
    end
        
    it "can report its party affiliation" do
    
    
    end    
        
end
