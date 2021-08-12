require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
        genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
        artist_count
  end
end

# need to return list of genres and the amount of songs in each of those genres. Rock => 1
# count has to increase by (+1) depending on the number of songs in that genre 
# genre_count needs to equal the amount of songs in genre 
# (xyz = Song.new) => makes a new object that contains song name, artist name, and genre
# take the amount of songs in the genre/ remove duplicates => then count the amount of songs in each genre
# how to create a new key in ruby**
# this is used when you've already counted the genres atleast once, and then with each additional one, you add "1" - this is for line 35**
# this is used when you're adding a unique "new" song to the hash. (creating a new "key") this is for line 37*