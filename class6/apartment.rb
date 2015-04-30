class Apartment
  attr_accessor :renters

  def initialize(name, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def availability
    if @renters.any?
      'not available'
    else
      'available'
    end
  end

  def to_s
    "#{@name} with #{@sqft} is #{availability}"
  end
end