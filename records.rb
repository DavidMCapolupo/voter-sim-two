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
end
