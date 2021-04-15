class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      artist_name = self.artist.name
    end

  end

  def artist_name=(name)
    if !name.empty?
      self.artist = Artist.find_or_create_by(name: name)
    end
  end
end
