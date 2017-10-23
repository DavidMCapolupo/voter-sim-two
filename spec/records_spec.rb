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
        
       expect(records.politicians.count) to eq(1)
    end
    
    it "can list all voters and politicians" do
        records = Records.new
        records.create_voter("John Doe", "Liberal")
        records.create_politician("Jane Doe", "Democrat")
        
#         Voter, John Doe, Liberal \n
#         Politician, Jane Doe, Democrat \n
#         this should be output, a string w/ new line char
        expected_result = "Voter, John Doe, Liberal \nPolitician, Jane Doe, Democrat"
        expect(records.list).to eq(expected_result)
    end
    
    it "can search for a voter by name"
    it "can search for a politician by name"
    it "can update a voter"
    it "can update a politician"
    it "can delete a voter"
    it "can delete a politician"
end
