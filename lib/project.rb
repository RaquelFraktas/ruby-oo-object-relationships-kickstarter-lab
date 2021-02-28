class Project
    require 'pry'
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       temp_var = ProjectBacker.all.select { |backer| backer.project == self}
        temp_var.map do |project|
           project.backer
        end
    end

end