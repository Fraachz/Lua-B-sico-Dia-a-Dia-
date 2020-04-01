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

cursos = {[1] = {},[2] = {},}
alunos = {[1] =  0, [2] = 0,}

function obter_notas(aluno)
    for a=1, #alunos do 
        for c=1, #cursos do 
            print("Digite a Nota do Aluno 0"..a.. " referente ao curso 0"..c)
            local notas = io.read()
            if #notas <= 2 then 
                alunos[a] = alunos[a] + notas
                table.insert(cursos[c], notas)
            end 
        end 
    end 
    calcular_medias()
end 

function calcular_medias()
    for i, notas in ipairs(alunos) do 
        local media = (alunos[i] / #cursos[i])
        if media >= 5 then 
            print("Aluno 0"..i.." Aprovado!")
        else 
            print("Aluno 0"..i.." Reprovado!")
        end 
    end 
end 

obter_notas()

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
