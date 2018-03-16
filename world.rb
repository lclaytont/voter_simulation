require "./person.rb"
require "./voter.rb"
require "./politician.rb"

class World 
    attr_accessor :voters, :politicians 
    
    def initialize
        @voters = []
        @politicians = []
    end
    
    def create_voter(name, politics)
        person = Voter.new(name, politics)
        @voters.push(person) 
    end
    
    def create_politician(name, party)
        person = Politician.new(name, party)
        @politicians.push(person)
    end
    
    def list_voters
        result = ""
        @voters.each do |v|
            result += "Voter, #{v.name}, #{v.politics} \n"
        end
        result
    end
    
    def list_politicians
        result = ""
        @politicians.each do |p|
            result += "Politician, #{p.name}, #{p.party} \n"
        end
        result
    end
    
    def update_voter(name, val_to_change, new_val)
        person = nil
        @voters.each do |v|
            if v.name == name
                person = v
            end
        end
            
        if person.nil? 
            return "That voter is not in our records"
        else 
            case val_to_change
                when "name"
                    person.name = new_val 
                when "politics"
                    person.politics = new_val
            end
        end
    end
    
    def delete_voter(name)
        person = nil
        @voters.each do |v|
            if v.name == name 
                person = v
            end
        end
        
        if person.nil? 
           return "That voter is not in our records"
        else 
            @voters.delete(person)
        end
    end
    
    
end