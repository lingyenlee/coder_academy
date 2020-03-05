
class Song
    attr_accessor :title, :duration, :genre

    def initialize(title, duration, genre)
        @title = title
        @duration = duration
        @genre = genre
    end

    def display_song
        return "Title: #{title}, Duration: #{duration}, Genre: #{genre}"
    end

end

song1 = Song.new("Come Together", 3.30, "Pop Rock")
song2 = Song.new("Bohemian Rhapsody", 5.57, "Pop Rock")
song3 = Song.new("Beat It", 5.57, "Pop")

# p song1.display_song
# p song2.display_song
# p song3.display_song

class Album
    attr_accessor :title, :release_date, :songs

    def initialize(title, release_date, songs)
        @songs = songs
        @title = title
        @release_date = release_date
    end


   def add_song(new_song)
        if @songs.include?(new_song)
            puts "The song has already been added"
        else
            # Song.new(new_song)
            @songs.push(new_song)
            # return @songs
        end
   end

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


class Artist
    attr_accessor :name, :albums

    def initialize(name, albums)
        @name = name
        @albums = albums
    end

    def add_album(new_album)
        if @albums.include?(new_album)
            puts "The album has already been added"
        else
            @albums.push(new_album)
        end
    end

    def number_of_albums()
        return albums.length
    end
end

artist1 = Artist.new("Beatles", [Album1])
artist1.add_album(Album1)
Album4 = Album.new("Sgt. Pepper's Lonely Hearts Club Band","2 June 1967", [])
artist1.add_album(Album4)
puts artist1.albums.to_s
puts "#{artist1.name} has #{artist1.number_of_albums} albums"


class BillboardTop10
    attr_accessor :year, :artists

    def initialize(year, artists)
        @year = year
        @artists = artists
    end

    def add_artist(new_artist)
        if @artists.length > 10
            @artists.shift
        else 
            @artists.push(new_artist)
        end
    end

    def number_of_artists
        return @artists.length
    end
end

Top10 = BillboardTop10.new(1980, ["Beatles"])
artist2 = Artist.new("Michael Jackson", [])
Top10.add_artist(artist2)
puts "artists : #{Top10.number_of_artists}"
