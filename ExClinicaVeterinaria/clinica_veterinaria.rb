class Cliente
  attr_accessor :nome
end  

class Animal
  attr_accessor :cliente
  attr_accessor :nome
  
  def initialize
    @cliente = []
  end
end

class Procedimento
  attr_accessor :descricao
  attr_accessor :valor
end

class Consulta
  attr_accessor :tempo
  attr_accessor :animal
  attr_accessor :procedimento
  
  def initialize
    @procedimento = []
    @animal = []
  end
end  

class Pagamento
  attr_accessor :consulta
  attr_accessor :tipo 
  def initialize
    @consulta = []
  end
end