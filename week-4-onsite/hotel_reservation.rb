# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
  
room = HotelReservation.new({customer_name:"Joe", date: "April 2nd", room_number:42})
room.room_number = 88 

# The add_a_fridge method

room.add_a_fridge
# The add_a_crib method

room.add_a_crib

# The add_a_custom_amenity method

room.add_a_custom_amenity("Pillows")

p room




