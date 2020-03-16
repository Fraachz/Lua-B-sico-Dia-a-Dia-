--[[

● Acordar e sair para o trabalho.

01. Abrir os olhos; - Feito
02. Olhar o relógio; - Feito
03. Levantar da cama; - Feito
04. Ir ao banheiro; - Feito
05. Sair do quarto, e ir a cozinha; - Feito
06. Preparar o café da manhã; - Feito
07. Sentar a mesa; -- Feito
08. Comer o café da manhã; - Feito
09. Lavar a louça do café da manhã; - Feito
10. voltar ao quarto; - Feito
11. Vestir a roupa - Feito
12. Sair do Apartamento; - Feito
13. Descer o elevador; - feito
14. Entrar no carro; - feito 
15. Ir ao trabalho. - feito

--]]

local hora = "6:30"
local dia = "Sexta"
local olhos = "sim"
local levante = "não"
local dentes = "escovar"
local cozinhar = "ss"
local sentar = "ss"
local sair = "saindo"
local ir = "indo"

local trabalho = true

    if olhos ~= "sim" then
        print("Opa, acabei de acordar e vou ver que dia é hoje e que horas são.")
        -- Ele abriu os olhos e vai ver que horas são.
        if dia ~= "Domingo" and "Sábado" then
            print("Opa, hoje é dia de trabalhar!")
            -- Hoje não é nem sábado nem domingo, então ele vai trabalhar.
            if hora ~= "6:30" then
                print("Opa, agora é 6:30, hora de levantar!")
                -- Ele acordou na hora exata, 6:30
                if levante ~= "sim" then
                    print("Opa, vou me levantar e ir ao banheiro.")
                    -- Ele se levantou e vai ao banheiro
                    if dentes ~= "escovar" then
                        print("Opa, vou escovar meus dentes e ficar com bom hálito.")
                        -- Ele escovou seus dentes e está com a boca cherosinha :3
                        if levante ~= "sim" then
                            print("Estou indo na cozinha.")
                            -- Ele vai a cozinha (Usei a msm variável do levantar.)
                            if cozinhar or sentar ~= "ss" then
                                print("Acabei de cozinhar e sentar na cadeira.")
                                -- Ele sentou e cozinhou (Pika)
                                if sair ~= "saindo" then
                                    print("Fiz tudo que precisava dentro de casa e vou sair.")
                                    -- Ele lavou a loça, comeu o café, trocou de roupa, etc..
                                    if ir ~= "indo" then
                                        print("cheguei na empresa!")
                                        -- ele fez tudo, desceu o elevador pegou seu carro e pinba.
                                    else
                                        print("Eu nem queria ir msm")
                                        trabalho = false
                                        -- Foi demoted denovo burro. (Não quis sair do apartamento)
                                    end
                                else
                                    print("não vou sair hoje.")
                                    trabalho = false
                                    -- Demoted (Nao quis voltar ao quarto)
                                end
                            else
                                print("Não fui a cozinha e nem sentei em uma cadeira.")
                                trabalho = false
                                -- Ele n cozinhou e nem se sentou em uma cadeira e morreu (Foi demitido memo)
                            end
                        else
                            print("Eu nem quero ir a cozinha")
                            trabalho = false
                            -- Ele n vai a cozinha e perdeu o emprego pois n chegou no trabalho (Morreu de fome no caminho).
                        end
                    else
                        print("Ah nem vou escovar meus dentes, fouda-se")
                        trabalho = false
                        -- Não escovou e o patrão demitiu
                    end
                else
                    print("Ah nem vou levantar, FOUDA-SE")
                    trabalho = false
                    -- Ele não quer se levantar e vai ser demitido.
                end
            elseif hora < "6:29" then
                print("Opa, acordei mais cedo! Vou esperar até dar 6:30.")
                -- Ele acordou mais cedo, pois o horário ainda não ultrapassou 6:30
            elseif hora > "6:31" then
                print("Opa, perdi o horário de sair de casa! Infelizmente hoje eu não vou trabalhar.")
                trabalho = false
                -- Ele perdeu o horario, pois o horário ultrapassou 6:30
            end
        else
            print("Hoje é dia de ficar em casa!")
            -- Hoje é final de semana, então ele irá ficar em casa.
        end
    else
        print("ZZzzZZZzz....")
        trabalho = false
        -- Ele ainda está com os olhos fechados, por isso ele não irá ao trabalho nada.
    end