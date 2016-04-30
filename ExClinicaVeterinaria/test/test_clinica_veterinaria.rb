require "rubygems"
require "test/unit"
require 'factory_girl'
require 'faker'

class FirstTest < Test::Unit::TestCase

  def setup    
    FactoryGirl.define do
      factory :cliente, class: Cliente do
        nome Faker::Name.name
      end
  
      factory :animal, class: Animal do
        cliente build(:cliente)
        nome Faker::Name.name
      end
      
      factory :consulta, class: Consulta do
        tempo Faker::Time.between(2.days.ago, Date.today, :all)
        animal build(:animal)
        procedimento build(:procedimento)
      end
      
      factory :procedimento, class: Procedimento do
        descricao Faker::Commerce.product_name
        valor Faker::Number.decimal(3)
      end
      
      factory :pagamento, class: Pagamento do
        consulta build(:consulta) 
        tipo ""              
      end  
    end
  end
  

  def test_consulta
    # cliente    
    cliente = build(:cliente)
    
    # animal tem um cliente
    animal = build(:animal, :cliente => cliente)
    
    # cria dois procedimentos
    procedimento1 = build(:procedimento)
    procedimento2 = build(:procedimento)
    
    # consulta possui um animal
    consulta = build(:consulta, :animal => animal, :procedimento => [])
    
    # a consulta terá dois procedimentos
    consulta.procedimento << procedimento
    consulta.procedimento << procedimento1
    
    # pagamento paga uma consulta que tem dois procedimentos
    pagamento = build(:pagamento, :tipo => "Dinheiro", :comando => "Recibo", :consulta => consulta)
    
    
       
  end
end