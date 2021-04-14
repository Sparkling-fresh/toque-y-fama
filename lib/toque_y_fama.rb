class ToqueFama

    def initialize(numeroSecreto)
        cambiarNumero()
        if numeroSecreto != nil then @numeroSecreto = numeroSecreto end
    end

    def validar(numero)
        if numero.to_s == @numeroSecreto.to_s then
            "YOU WIN"
        else
            mostrarToques(numero)
        end
    end

    def mostrarToques(numero)
        if numero == nil then return nil end
        toques = ""
        for i in 1..4
            if @numeroSecreto.to_s.include? numero.to_s[i].to_s
                toques += "*"
            end
        end       
        numero.to_s[i].to_s 
    end

    def cambiarNumero()
        @numeroSecreto = rand(1..9999)
    end

end