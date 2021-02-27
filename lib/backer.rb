class Backer
    require 'pry'
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select do |project|
        project.backer == self
        end
        # binding.pry
    end

   
end