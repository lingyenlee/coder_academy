# Create Song class with 3 attributes (song_title, duration, genre)
class Song
    # create attributes
    attr_accessor :song_title, :duration, :genre

    # initialize instance attributes
    def initialize(song_title, duration, genre)
        @song_title = song_title
        @duration = duration
        @genre = genre
    end

    # print song title, duration, genre in a single line
    def display_song
        return "Title: #{song_title}, Duration: #{duration}, Genre: #{genre}"
    end

end

song1 = Song.new("Come Together", 3.30, "Pop Rock")
song2 = Song.new("Bohemian Rhapsody", 5.57, "Pop Rock")
song3 = Song.new("Beat It", 5.57, "Pop")

# p song1.display_song
# p song2.display_song
# p song3.display_song

# Create Album class with 3 attributes (album title, release date and songs)
class Album
    # create attributes
    attr_accessor :album_title, :release_date, :songs

    # initialize instance attributes
    def initialize(album_title, release_date, songs)
        @songs = songs
        @album_title = album_title
        @release_date = release_date
    end

  # add song to album -> first check to see if song is in album
    def add_song(new_song)
        @songs.include?(new_song) ? (puts "The song has already been added") : @songs.push(new_song)
   end

   # return number of songs   
   def number_of_songs()
        return songs.length
   end

end


Album1 = Album.new("Abbey Road","26 September 1969", [song1])
song4 = Song.new("Here Comes the Sun", 3.05, "Pop Rock")
Album1.add_song(song1)
Album1.add_song(song4)
# puts Album1.songs.to_s
# puts "Number of songs in Album 1 : #{Album1.number_of_songs}"

Album2 = Album.new("A Night at the Opera", "21 November 1975", [song2])
# puts "Number of songs in Album 2 : #{Album2.number_of_songs}"

Album3 = Album.new("Thriller", "30 November 1982", song3)

# Create Artist class with 2 attributes (artist name and albums)
class Artist
 # create the instance attributes
    attr_accessor :artist_name, :albums

    # initialize instance attributes
    def initialize(artist_name, albums)
        @artist_name = artist_name
        @albums = albums
    end

      # add album - first check if album exists
    def add_album(new_album)
        if @albums.include?(new_album)
            puts "The album has already been added"
        else
            @albums.push(new_album)
        end
    end

    # return number of albums for each artist
    def number_of_albums()
        return albums.length
    end
end

artist1 = Artist.new("Beatles", [Album1])
artist1.add_album(Album1)
Album4 = Album.new("Sgt. Pepper's Lonely Hearts Club Band","2 June 1967", [])
artist1.add_album(Album4)
puts artist1.albums.to_s
puts "#{artist1.artist_name} has #{artist1.number_of_albums} albums"


# Create BillBoardTop 10 class with 2 attributes (year and artists)
class BillboardTop10
    # create the instance attributes
    attr_accessor :year, :artists

    # initialize instance attributes
    def initialize(year, artists)
        @year = year
        @artists = artists
    end

      # add artist to Top 10 and check if number of artist is not more than 10
    def add_artist(new_artist)
        if @artists.length > 10
            @artists.shift
        else 
            @artists.push(new_artist)
        end
    end

    # return number of artists in Top 10
    def number_of_artists
        return @artists.length
    end
end

Top10 = BillboardTop10.new(1980, ["Beatles"])
artist2 = Artist.new("Michael Jackson", [])
Top10.add_artist(artist2)
puts "artists : #{Top10.number_of_artists}"