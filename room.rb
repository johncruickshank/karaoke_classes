# require_relative("song")
# require_relative("guest")

class Room

  def initialize(name, playlist, guests)
    @name = name
    @playlist = playlist
    @guests = guests
  end

  def add_song(song)
    return @playlist << song
  end

  def add_guest(guest)
    return @guests << guest
  end

  def remove_guest(guest)
    for people in @guests
      if people == guest
        @guests.delete(guest)
      end
    end
  end






end
