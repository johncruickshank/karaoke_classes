# require_relative("song")
require_relative("guest")

class Room

  def initialize(fee, playlist, guests, capacity)
    @fee = fee
    @playlist = playlist
    @guests = guests
    @capacity = capacity
  end

  def guests()
    return @guests
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
    (guest.get_money >= @fee)
  end

  def space?()
    @guests.length < @capacity
  end
  
end
