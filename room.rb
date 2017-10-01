# require_relative("song")
require_relative("guest")

class Room < Guest

  def initialize(fee, playlist, guests, capacity)
    @fee = fee
    @playlist = playlist
    @guests = guests
    @capacity = capacity
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

  def can_afford?(guest)
    if guest.get_money >= @fee
      return true
    else
      return "No bling, no sing"
    end
  end

  def space?()
    if @guests.length < @capacity
      return true
    else
      return "Sorry, room is full"
    end
  end

end
