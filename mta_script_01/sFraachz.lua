--[[

		:::::::::: :::::::::      :::         :::      ::::::::  :::    ::: :::::::::            
		:+:        :+:    :+:   :+: :+:     :+: :+:   :+:    :+: :+:    :+:      :+:             
		+:+        +:+    +:+  +:+   +:+   +:+   +:+  +:+        +:+    +:+     +:+              
		:#::+::#   +#++:++#:  +#++:++#++: +#++:++#++: +#+        +#++:++#++    +#+               
		+#+        +#+    +#+ +#+     +#+ +#+     +#+ +#+        +#+    +#+   +#+                
		#+#        #+#    #+# #+#     #+# #+#     #+# #+#    #+# #+#    #+#  #+#                 
		###        ###    ### ###     ### ###     ###  ########  ###    ### ######### ########## 

                                    » CopyRight © 2020
                            » Script feito por » Fraachz_#9999

]]--

local marker_01 = createMarker(1527.19, -1647.308, 13.383 -1, "cylinder", 2, 0, 255, 0, 100)
local marker_02 = createMarker(1531.748, -1647.335, 13.383 -1, "cylinder", 2, 255, 0, 0, 100)
local blip_02 = createBlip(1527.19, -1647.308, 13.383, 16, 4, 255, 255, 255, 255)

Spawns = {        
    [1] = {1537.742, -1630.246, 13.383},
    [2] = {1530.361, -1629.937, 13.383},
    [3] = {1522.916, -1629.776, 13.547},
}

Cars = {
    [1] = {429}, 
    [2] = {445},
}

local marker1 = createMarker(1537.742, -1630.246, 13.383 -1, "cylinder", 5, 0, 0, 255, 100)
local marker2 = createMarker(1530.361, -1629.937, 13.383 -1, "cylinder", 5, 0, 0, 255, 100)
local marker3 = createMarker(1522.916, -1629.776, 13.547 -1, "cylinder", 5, 0, 0, 255, 100)

veh = {}

function pegarCarro(player)
local carr = math.random(#Cars)
local pos = math.random(#Spawns)   
local x, y, z = Spawns[pos][1], Spawns[pos][2], Spawns[pos][3]
local car = Cars[carr][1], Cars[carr][2]
    if getElementType(player) == "player" then
        if isElementWithinMarker(player, marker_01) then
            if not veh[player] then
                veh[player] = createVehicle(car, x, y, z)
                warpPedIntoVehicle(player, veh[player])
            end
        else
            outputChatBox("#0037FF✘#ffffffINFO#0037FF✘➺ #ffffffVocê já tem um veículo criado!", player, 255, 255, 255, true)
        end
    end
end
addEventHandler("onMarkerHit", marker_01, pegarCarro)

function destruirCarro(player)
    if veh[player] and isElement(veh[player]) then
        destroyElement(veh[player])
        veh = {}
    end
end
addEventHandler("onMarkerHit", marker_02, destruirCarro)
