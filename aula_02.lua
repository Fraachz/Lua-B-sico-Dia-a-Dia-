--[[

Questões:

1) Faça um programa que verifique as médias dos alunos, em 2 cursos, e retorne aprovado ou
reprovado baseado em média geral superior a 5.

2) Faça um programa que se repete até uma condição numérica retorne verdadeira, condição
essa superior a 10.

3) Faça um programa que imprima na tela, tipos de variáveis utilizando um for.

4) Faça um programa que muda o tipo de variáveis e imprima elas.

5) Faça um programa que leia o'que o usuário digitou e retorne na tela

--]]

-- 1) Resposta:

-- EU FIZ BASEADO NO PDF ;-; Se eu errei, pelo menos tentei :c

media = 5
nota_01 = 4
nota_02 = 9

if nota_01 >= 5 then
    print("Você foi aprovado no curso de Programação de Lua Básico, meus parabéns! (Seus acertos: "..nota_01..")")
else 
    print("Você foi reprovado no curso de Programação de Lua Básico! Tente novamente em outra turma. (Nossa média: "..media..")")
end

if nota_02 >= 5 then
    print("Você foi aprovado no curso de Programação de Lua Básico, meus parabéns! (Seus acertos: "..nota_02..")")
else 
    print("Você foi reprovado no curso de Programação de Lua Básico! Tente novamente em outra turma. (Nossa média: "..media..")")
end

--[[
========================================================
--]]

-- 2) Resposta:

for i = 1, 10, 1 do
    if i >= 10 then
        print("Verdadeiro! Valor: "..i)
    else
        print("Falso! Valor: "..i)
   end
end

-- OU

min = 0
max = 10

while min < max do
    min = min + 1
    print("Valor: "..min)
end

-- OU

min_02 = 0
max_02 = 10

repeat
    min_02 = min_02 + 1
    print("Valor: "..min_02)
until(min_02 == max_02)

--[[
========================================================
--]]

-- 3) Resposta:

-- Não entendi!

--[[
========================================================
--]]

-- 4) Resposta:

nome = "Fraachz"

if nome == "Fraachz" then
    nome = "Kleber"
    print("O "..nome.." comeu quem ta lendo! (Executou IF)")
else
    nome = "Cleiton"
    print("O "..nome.." comeu quem ta lendo! (Executou Else)")
end

--[[
-------------------------------------------------------------
--]]

idade_02 = 16
idade_01 = 15

if idade_01 == type(number) then
    idade_01 = tostring(idade_01)
    print("A variavel do tipo NUMBER, passou a ser do tipo STRING.")
    print("Valor: "..type(idade_01)..", String: "..idade_01)
    print(idade_01 + idade_02)
else
    idade_01 = tonumber(idade_01)
    print("A variavel do tipo STRING, passou a ser do tipo NUMBER.")
    print("Valor: "..type(idade_01)..", Número: "..idade_01)
    print(idade_01 + idade_02)
end

--[[
========================================================
--]]

-- 5) Resposta:

text = io.read()
print(text)
