require "./world.rb"

describe World do
    it "reports that it is a world" do
        world = World.new()
        expect(world).to be_a(World)
    end
    
    it "can create voters" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        expect(world.voters.count).to eq(1)
    end
    
    it "can create politicians" do
        world = World.new()
        world.create_politician("John Doe", "Democrat")
        expect(world.politicians.count).to eq(1)
    end
    
    it "can list voters" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        expect(world.list_voters).to eq("Voter, John Doe, Neutral \n")
    end
    
    it "can list politicans" do
        world = World.new() 
        world.create_politician("John Doe", "Democrat")
        expect(world.list_politicians).to eq("Politician, John Doe, Democrat \n")
    end
    
    it "can update a voter record" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        world.update_voter("John Doe", "name", "Jane Doe")
        expect(world.list_voters).to eq("Voter, Jane Doe, Neutral \n")
    end
    
    it "can delete a voter" do
        world = World.new() 
        world.create_voter("John Doe", "Neutral")
        world.delete_voter("John Doe")
        expect(world.voters.count).to eq(0)
    end
end