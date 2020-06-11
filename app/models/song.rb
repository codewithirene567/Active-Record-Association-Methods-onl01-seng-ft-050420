class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    name = self.genre.name
    name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    if self.find_by_name = drake
      self.find(id) = drake
      drake = self.artist.new
    else
      drake = self.artist.new
    end
  end
end

it '#drake_made_this' do
  expect(@song.artist).to eq(nil)

  @song.drake_made_this

  expect(@song.artist).to be_a(Artist)
  expect(@song.artist.name).to eq("Drake")
