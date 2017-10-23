require './person.rb'

class Voter < Person
    attr_reader :political_affiliation
    
    def initialize(name, political_affiliation)
        super(name)
        @political_affiliation = political_affiliation
    end
end