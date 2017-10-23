require './records.rb'

describe Records do
    it "can create a voter and add it to a voter's array"  do
       records = Records.new
       records.create_voter("John Doe", "Liberal")
        
       expect(records.voters.count).to eq (1) 
        
    end
    
    it "can create a politician and add it to a politician's array" do
       records = Records.new
       records.create_politician("Jane Doe", "Democrat")
        
       expect(records.politicians.count).to eq(1)
    end
    
    it "can list all voters and politicians" do
        records = Records.new
        records.create_voter("John Doe", "Liberal")
        records.create_politician("Jane Doe", "Democrat")
        
        expected_result = "Voter, John Doe, Liberal \nPolitician, Jane Doe, Democrat"
        expect(records.list).to eq(expected_result)
    end
    
    it "can search for a voter by name" do
        records = Records.new
        
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Lindsay Lohan", "Socialist")
        records.create_voter("Taylor Swift", "Conservative")
        
        index_for_existing_voter = records.search_voter("Lindsay Lohan")
        index_for_nonexisting_voter = records.search_voter("James Bond")
        
        expect(index_for_existing_voter).to eq(1)
        expect(index_for_nonexisting_voter).to eq(nil)
    end
    
    it "can search for a politician by name" do
        records = Records.new
        
        records.create_politician("John Doe", "Democrat")
        records.create_politician("Lindsay Lohan", "Reputlican")
        records.create_politician("Taylor Swift", "Democrat")
        
        index_for_existing_politician = records.search_politician("Lindsay Lohan")
        index_for_nonexisting_politician = records.search_politician("James Bond")
        
        expect(index_for_existing_voter).to eq(1)
        expect(index_for_nonexisting_voter).to eq(nil)    
    end
    
    it "can update a voter" do
        records = Records.new
        
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Lindsday Lohan", "Socialist")
        
        records.update_voter("John Doe", "Jimmy John", "Neutral")
        
        expect(records.voters[0].name).to eq("Jimmy John")
        expect(records.voters[0].political_affiliation).to eq("Neutral")
    end
    
#     it "can update a politician"
#     #do same thing as voter, but change it to james bond and democrat 
#     #and change all to politician
   
    it "can delete a voter" do
        records = Records.new
        
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Lindsey Lohan", "Socialist")
        
        expect(records.voters.count).to eq(2)
        
        records.delete_voter("Lindsey Lohan")
        
        expect(records.voters.count).to eq(1)
        expect(records.search_voter("Lindsay Lohan")).to eq(nil)
        
    it "can delete a politician"

# end
# end