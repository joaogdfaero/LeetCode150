def plus_one(digits)
    # faz um loop reverso nos digitos
    (digits.length - 1).downto(0) do |i|
        # se o último digito ñ for 9, soma 1 a ele e retorna o array
        if digits[i] != 9
            digits[i] += 1
            break
        else
            # se for 9, torna ele 0 e olha o próximo
            digits[i] = 0

            # se não houver próximo depois do 9, adiciona 1 ao início do array
            if i == 0
                digits.unshift(1)  
            end
        end
    end
    return digits  
end

#digits = [9,9,9]
digits =[4,3,2,2]

p plus_one(digits)