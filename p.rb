class Song
    def initialize(song,artist)
        @song = song
        @artist = artist
    end
    
    def song
        @song
    end
    
    def artist
        @artist
    end
    
end


class Quiz
    @@songs = []
    
    def self.add_song(title)
        @@songs << title
    end
    
    def self.quiz_song(title)
        puts "Who sings #{title.song}?"
        answer = gets.chomp.to_s.capitalize
        
        if answer == title.artist
            puts "that is correct!"
        else
            puts "sorry, but #{title.artist} actually sings #{title.song}."
        end
        
    end
    
    def self.start_quiz
        @@songs.each do |title|
            self.quiz_song(title)
        end
        
        puts "Quiz is over!"
    end
    
end


Quiz.add_song(Song.new("Lyric1","Artist1"))
Quiz.add_song(Song.new("Lyric2","Artist2"))


Quiz.start_quiz