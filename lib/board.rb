class Board 
  attr_accessor :cells
  
  def initialize 
    reset!
  end
  
  def reset!
    @cells = Array.new(9, " ")
  end
  
  def display 
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(num)
    number = num.to_i - 1 
    if number.between?(0,8) 
      @cells[number]
    end
  end
  
  def full?
    @cells.all?{|s| s != " "}
  end
  
  def turn_count 
    @cells.count{|s| s != " "}
  end
  
  def taken?(num)
    number = num.to_i - 1
    if @cells[number] != " "
      true 
    else
      false 
    end
  end
  
  def valid_move?(num)
    if num.to_i.between?(1, 9) && !taken?(num)
      true
    else
      false 
    end
  end
  
  def update(num, player)
    if valid_move?(num)
      number = num.to_i - 1 
      @cells[number] = player.token
    end
  end
      
  
end