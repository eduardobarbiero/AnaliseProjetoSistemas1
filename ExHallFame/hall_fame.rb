class HallFame
  attr_accessor :player
  
  def initialize
    @player = []
  end	
  
  class Player    
    attr_accessor :nome
	attr_accessor :point
  end  
    
  def top_10    
	begin      
	  new_player = Player.new	  
	  new_player.nome = "Ninguem jogando"
	  player << new_player
	  player
	rescue => e
	  p e.to_s
    end
  end
  
  
end

class Main
  def initialize
    begin
      hall = HallFame.new
	  p hall.top_10
	  jogo = gets
    rescue => e
      p e.to_s
    end  	
  end
end	

Main.new #jogar
