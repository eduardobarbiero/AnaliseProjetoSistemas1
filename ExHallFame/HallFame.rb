class HallFame
  class Player    
    attr_accessor :nome
  end  
  
  class << self 
    def initialize
	  @player = []
      top_10
	end 
	
	def top_10      
	  new_player = Player.new
	  new_player.nome = "Ninguem jogando"
	  @player << new_player	  
	  @player.nome
    end   
  end
end

class Main
  def initialize
    begin    
      p HallFame.top_10
	  jogo = gets
    rescue => e
      p e.to_s
    end  	
  end
end	

Main.new #jogar
