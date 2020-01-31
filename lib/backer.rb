require 'pry'

class Backer
# When a Backer instance is initialized, it should be initialized with a @backed_projects variable set to an empty array. Instances of the Backer class should have an attr_reader for backed projects. This way, a backer can report on the projects they back.

    @@all = []

    attr_reader :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects = []

        @@all << self
    end

# Once both classes have their attributes and readers set up, write a method on the Backer class called back_project() that takes in a Project instance and adds the project to its @backed_projects attribute.
# Whenever back_project() is called to update @backed_projects, the project should alsoupdate its @backers list

    def back_project(this_project)
        @backed_projects << this_project
        Project.all.find{|project| project == this_project}.backers << self
    end

    def self.all
        @@all
    end

end

# binding.pry
0