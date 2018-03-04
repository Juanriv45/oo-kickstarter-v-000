class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include(self) then
      backer.backed_projects << self
    end
  end
end
