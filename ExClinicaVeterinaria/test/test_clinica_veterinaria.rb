require "rubygems"
require "test/unit"
#require 'factory_girl'
require 'faker'
require_relative '../clinica_veterinaria'
#require_relative 'factory_clinica_veterinaria'

class FirstTest < Test::Unit::TestCase
  
  def test_consulta
    # cliente    
    @cliente = return_cliente
    
    # animal tem um cliente    
    @animal = return_animal @cliente  
        
    # consulta possui um animal    
    @consulta = return_consulta @animal, [return_procedimento, return_procedimento]       
    
    # pagamento paga uma consulta que tem dois procedimentos
    @pagamento = return_pagamento @consulta, :tipo => "Dinheiro", :comando => "Recibo"     
  end
  
  def test_consulta_dois_animais
    # cliente    
    @cliente = return_cliente
    
    # animal tem um cliente    
    @animal = return_animal @cliente  
    @animal2 = return_animal @cliente    
        
    @consulta = return_consulta [@animal, @animal2], return_procedimento               
    
    @pagamento = return_pagamento @consulta, :tipo => "Boleto", :comando => "Fatura"       
  
    assert("Boleto", @pagamento.tipo)
    assert("Fatura", @pagamento.comando)    
  end
  
  
  private 
  
  def return_cliente
    cliente = Cliente.new
    cliente.nome = Faker::Name.name
    return cliente
  end  
  
  def return_animal cliente = []
    animal = Animal.new
    animal.nome = Faker::Name.name
    animal.cliente << cliente
    return animal
  end  
  
  def return_procedimento
    procedimento = Procedimento.new
    procedimento.descricao = Faker::Commerce.product_name
    procedimento.valor = Faker::Number.decimal(3)
    return procedimento
  end
  
  def return_consulta animal = [], procedimento = []
    consulta = Consulta.new    
    consulta.animal << animal
    consulta.procedimento << procedimento
    consulta.tempo = Faker::Time.between(2.days.ago, Date.today, :all)
    return consulta
  end
  
  def return_pagamento consulta, params
    pagamento = Pagamento.new
    pagamento.tipo = params[:tipo]
    pagamento.comando = params[:comando]
    pagamento.consulta = consulta
    return pagamento
  end  

end