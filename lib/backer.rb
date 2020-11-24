class Backer
attr_accessor :name

def initialize(name)
    @name = name
end

def back_project(project)
    ProjectBacker.new(project, self)
end

def backed_projects
    investors = ProjectBacker.all.select do |backers|
      backers.backer == self
    end
    investors.map do |backers|
      backers.project
    end
end
end