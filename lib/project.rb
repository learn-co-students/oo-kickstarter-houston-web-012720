require 'pry'

class Project


    @@all = []

# When a Project instance is initialized, it should be initialized with a @backers variable set to an empty array. Instances of the Project class should have an attr_reader for backers. This way, a project can report on who its backers are.

    attr_reader :backers, :title

    def initialize(title)
        @title = title
        @backers = []

        @@all << self        
    end

# Similarly, write a method on the Project class called add_backer() that takes in a Backer instance and adds the backer to its @backers attribute.
# Similarly, whenever add_backer() is called to update @backers, the backer should also update its `@backedprojects` list_

    def add_backer(this_backer)
        @backers << this_backer
        Backer.all.find{|backer| backer. == this_backer}.backed_projects << self
    end

    def self.all
        @@all
    end

end

# binding.pry
0
