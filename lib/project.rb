class Project
    attr_reader :title
    def initialize (title)
        @title = title
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end
    def project_backers 
        # get project_backers associated with this instant project
        ProjectBacker.all.select {|project_backer| project_backer.project == self}
    end
    def backers
        # return the all the backers associated to this project 
        project_backers.map {|project_backer| project_backer.backer} 
    end
end