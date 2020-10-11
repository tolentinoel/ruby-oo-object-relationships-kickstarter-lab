class Project

  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    result= ProjectBacker.all.collect do |person|
      if person.project == self
        person.backer 
      end
    end
    result.compact
  end


end