# Create Song class with 3 attributes (song_title, duration, genre)
class Song
    # create attributes
    attr_accessor :song_title, :duration, :genre

    # initialize instance attributes
    def initialize(options={})
        @title = options[:song_title]
        @duration = options[:duration]
        @genre = options[:genre]
    end

    # print song title, duration, genre in a single line
    def display_song
        return "Title: #{song_title}, Duration: #{duration}, Genre: #{genre}"
    end
end

song1 = Song.new({song_title: "Come Together", duration: 3.30, genre:"Pop Rock"})
song2 = Song.new({song_title: "Bohemian Rhapsody", genre: "Pop Rock", duration: 5.57})
song3 = Song.new({song_title:"Beat It", duration: 5.57, genre: "Pop"})

p song1.display_song
p song2.display_song
p song3.display_song

# Create Album class with 3 attributes (album title, release date and songs)
class Album
    # create attributes
    attr_accessor :album_title, :release_date, :songs

    # initialize instance attributes
    def initialize(options={})
        @songs = options[:songs]
        @title = options[:album_title]
        @release_date = options[:release_date]
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

Album1 = Album.new({album_title: "Abbey Road", release_date:"26 September 1969", songs: [song1]})
song4 = Song.new({album_title: "Here Comes the Sun", duration: 3.05, genre:"Pop Rock"})
Album1.add_song(song1)
Album1.add_song(song4)
# puts Album1.songs.to_s
# puts "Number of songs in Album 1 : #{Album1.number_of_songs}"

Album2 = Album.new({album_title: "A Night at the Opera", release_date: "21 November 1975", songs:[]})
Album2.add_song(song2)
puts Album2.songs
# puts "Number of songs in Album 2 : #{Album2.number_of_songs}"

Album3 = Album.new({album_title: "Thriller", release_date: "30 November 1982", songs:[song3]})

# Create Artist class with 2 attributes (artist name and albums)
class Artist

    # create the instance attributes
    attr_accessor :artist_name, :albums

    # initialize with instance attributes
    def initialize(options={})
        @artist_name = options[:artist_name]
        @albums =options[:albums]
    end

    # add album - first check if album exists
    def add_album(new_album)
        @albums.include?(new_album) ? (puts "The album has already been added") : @albums.push(new_album)
    end

    # return number of albums for each artist
    def number_of_albums()
        return albums.length
    end
end

artist1 = Artist.new({artist_name: "Beatles", albums: [Album1]})
artist1.add_album(Album1)
Album4 = Album.new({album_title:"Sgt. Pepper's Lonely Hearts Club Band",release_date:"2 June 1967", songs: []})
artist1.add_album(Album4)
puts artist1.albums.to_s
puts "#{artist1.artist_name} has #{artist1.number_of_albums} albums"

# Create BillBoardTop 10 class with 2 attributes (year and artists)
class BillboardTop10
    # create the instance attributes
    attr_accessor :year, :artists

    # initialize instance attributes
    def initialize(options={})
        @year = options[:year]
        @artists = options[:artists]
    end

    # add artist to Top 10 and check if number of artist is not more than 10
    def add_artist(new_artist)
     @artists.length > 10 ?  @artists.shift :  @artists.push(new_artist)
    end

    # return number of artists in Top 10
    def number_of_artists
        return @artists.length
    end
end

Top10 = BillboardTop10.new({year: 1980, artists:["Beatles"]})
artist2 = Artist.new({artist_name: "Michael Jackson", albums:[]})
Top10.add_artist(artist2)
puts "artists : #{Top10.number_of_artists}"
