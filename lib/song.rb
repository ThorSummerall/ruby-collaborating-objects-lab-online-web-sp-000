class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  
  def self.new_by_filename(filename)
    
  end

  def artist_name=(name)
    if name = Artist.find(name)
      name.add_song(self)
    else 
      Artist.find_or_create_by_name(self)
    end
  end
end
