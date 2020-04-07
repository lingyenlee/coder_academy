class Song
    attr_accessor :title, :duration
    
    def initialize(title, duration)
        @title = title
        @duration = duration
    end
end

class Album
    attr_accessor :name, :songs
    
    def initialize(name, songs)
        @name = name
        @songs = songs
    end
end


class Artist
    attr_accessor :name, :albums
    def initialize(name, albums)
        @name = name
        @albums = albums
    end
end


songs_list = [
    Song.new("Happy Birthday", "30"),
    Song.new("Holiday", "200")
]

my_album = Album.new("Mike's album", songs_list)
my_artist = Artist.new("Mike", [
    Album.new("Mike's album", songs_list),
    Album.new("Mike's 2nd album", songs_list)
])

puts my_artist.albums[0].songs[0].title 


