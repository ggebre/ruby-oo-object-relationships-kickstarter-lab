class Backer
    attr_reader :name
    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def project_backers 
        # get project_backers associated with this instant backer
        ProjectBacker.all.select {|project_backer| project_backer.backer == self}
    end

    def backed_projects
        # return the all the backers associated to this backer
        project_backers.map{|project_backer| project_backer.project}
    end

end