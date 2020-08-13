class Project
attr_accessor :name, :backers

def initialize(name)
@name = name
@backers = []
end

def add_backer(backer)
  @backers << backer
  backer.back_project(self) if backer.backed_projects.include?(self) == false
  
end

end