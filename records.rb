require './voter.rb'
require './politician.rb'

class Records
    attr_reader :voters
    attr_reader :politicians
    def initialize
        @voters = []
        @politicians = []
    end
    
    def create_voter(name, political_affiliation)
        voter = Voter.new(name, political_affiliation)
        @voters.push(voter)
    end
    
    def create_politician(name, party_affiliation)
        politician = Politician.new(name, party_affiliation)
        @politicians.push(politician)
    end
    
    def list
        results = ""
        
        @voters.each do |voter|
            results += "Voter, #{voter.name}, #{voter.political_affiliation}\n"
        end
        
        @politicians.each do |politician|
            results += "Politician, #{politician.name}, #{politician.party_affiliation}\n"
        end
        
        return results 
    end
    
    def search(name)
        index = @voters.index{ |voter| voter.name ==name }    
    end
    
end
