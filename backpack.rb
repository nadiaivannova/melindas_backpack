class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def everyday_basics
    @items << 'pants'
    @items << 'shirt'
  end

  def rainy
    weather = @attributes[:weather]
    if weather== 'rainy'
    @items << 'umbrella'
    end
  end

  def cold
    weather = @attributes[:weather]
    if weather == 'cold'
    @items << 'jacket'
    end
  end

  def gym_shoes_on_gym_days
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def lunch_on_weekdays
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
    @items << 'packed lunch'
    end
  end

  def prepare
    everyday_basics
    rainy
    cold
    gym_shoes_on_gym_days
    lunch_on_weekdays
    end

  def summary_of_packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
