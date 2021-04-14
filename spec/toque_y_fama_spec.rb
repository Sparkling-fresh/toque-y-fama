require './lib/toque_y_fama.rb'

describe ToqueFama do

    it "numero correcto" do
        toqueFama = ToqueFama.new(2153)
        expect(toqueFama.validar(2153)).to eq "YOU WIN"
    end

    it "numero sin toques" do
        toqueFama = ToqueFama.new(2153)
        expect(toqueFama.validar(4678)).to eq ""
    end

    it "numero dos toques" do
        toqueFama = ToqueFama.new(2153)
        expect(toqueFama.validar(2416)).to eq "**"
    end

    it "numero cuatro toques" do
        toqueFama = ToqueFama.new(2153)
        expect(toqueFama.validar(3521)).to eq "****"
    end

    it "cambia numero" do
        toqueFama = ToqueFama.new(2153)
        toqueFama.cambiarNumero()
        numero = 0
        for i in 1..9999
            if toqueFama.validar(i) == "YOU WIN" then numero = i end
        end
        expect(toqueFama.validar(numero)).to eq "YOU WIN"
    end

end