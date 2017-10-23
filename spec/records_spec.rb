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
    
    it "can search for a politician by name"
    it "can update a voter"
    it "can update a politician"
    it "can delete a voter"
    it "can delete a politician"

# end
# end