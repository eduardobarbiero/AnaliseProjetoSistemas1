class CaixaEletronico
  class Operacoes
    def initialize args
      @valor = args[:valor] or raise 'Necessario ter um valor'
    end

    def self.saque args
      new(args).saque
    end

    def saque
      devolve_cedulas
    end

    private

    def devolve_cedulas
      begin
        if @valor < 50
          raise 'Valor deve ser superior a 50'
        else
          result = (@valor / 50) if ((@valor % 50) == 0)
          raise 'Valor deve ser multiplo de 50' if result.nil?
        end
      rescue => e
        p e.to_s
        false
      else
        true
      end
    end
  end
end

#CaixaEletronico::Operacoes.saque(:valor => 40)