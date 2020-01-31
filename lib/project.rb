

class Project
    attr_reader :title, :backers

    @@all = []

    def initialize (title)
        @title = title
        @backers = []
        @@all << self
    end

    def self.all
        @@all 
    end

    def add_backer (backer)
        @backers << backer
        backer.backed_projects << self ## !single_source_of_truth
    end

    

end
