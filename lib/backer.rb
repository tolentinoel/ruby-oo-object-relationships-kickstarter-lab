class Backer

  attr_reader :name, :project
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    x = ProjectBacker.all.collect do |proj|
      if proj.backer == self
        proj.project
      end
    end

    x.compact
  end

end
