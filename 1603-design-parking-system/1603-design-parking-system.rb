class ParkingSystem

=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
    def initialize(big, medium, small)
        @slots = [[1, big], [2, medium], [3, small]].to_h
    end


=begin
    :type car_type: Integer
    :rtype: Boolean
=end
    def add_car(car_type)
        return false if @slots[car_type].zero?
        @slots[car_type] -= 1
        return true
    end


end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)