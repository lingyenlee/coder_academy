class Song
    attr_accessor :title, :duration
    
    def initialize(title, duration)
        @title = title
        @duration = duration
    end
end

class Album
    attr_accessor :name, :songs
    
    def intialize(name, songs)
        @name = name
        @songs = songs
    end
end


songs_list = [
    Song.new("Happy Birthday", "30"),
    Song.new("Holiday", "200")
]

my_album = Album.new("Mike's album", songs_list)
puts my_album.songs[0].title


