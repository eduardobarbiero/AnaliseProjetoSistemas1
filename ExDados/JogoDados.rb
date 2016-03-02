class JogoDados	
  class Dado	    
    def self.infos		
      new().infos
    end
    
    def initialize
      @numbers = []
      i = -1
      for i in 1..7
    	@numbers.push(i)		     		   
      end		 	
      @numbers
    end
    
    def infos
      @numbers
    end
  end
  
  class Sortear < Dado	    
  	
    def self.sortear
      new().sortear
    end
    
    def initialize
      begin		    		    
        @number = super
      rescue => e
        e.to_s
      end
    end
      
    def sortear
       @number[Random.rand(@number.length)]		   		  
    end		
  end
  
  def self.jogar
    new().jogar
  end
  
  def jogar
    begin 
      jogo1 = JogoDados::Sortear.new
      jogo2 = JogoDados::Sortear.new
      if (jogo1.sortear + jogo2.sortear) == 7
        p 'Ganhou'
      else
        p 'Perdeu'		
      end	
	rescue	 	  
	  false
	else
	  true
	end  		
  end
end

class Main
  def initialize
    begin    
      JogoDados.jogar   	
	  jogo = gets
    rescue => e
      p e.to_s
    end  	
  end
end	

#Main.new #jogar



