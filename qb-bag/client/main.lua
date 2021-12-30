QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterNetEvent('qb-items:client:use:duffel-bag')
AddEventHandler('qb-items:client:use:duffel-bag', function(BagId)
	local player = PlayerPedId()
	if not clothingitem then
    QBCore.Functions.Progressbar("use_bag", "Putting on Bag", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
		RequestAnimDict(dict)
		TaskPlayAnim(player, "clothingtie", "try_tie_negative_a", 3.0, 3.0, 2000, 51, 0, false, false, false)
		Wait (600)
		ClearPedSecondaryTask(PlayerPedId())
		SetPedComponentVariation(PlayerPedId(), 5, 41, 0, 2)
		clothingitem = true
		TriggerServerEvent("inventory:server:OpenInventory", "stash", 'bag_'..BagId, {maxweight = 18000, slots = 9})
		TriggerEvent("inventory:client:SetCurrentStash", 'bag_'..BagId)
		end)
	elseif clothingitem then
		clothingitem = false
		RequestAnimDict(dict)
		TaskPlayAnim(player, "clothingtie", "try_tie_negative_a", 3.0, 3.0, 2000, 51, 0, false, false, false)
		Wait (600)
		ClearPedSecondaryTask(PlayerPedId())
		SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 2)
	end
	Citizen.Wait(1000)
end)

-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 
-- Created By Abhishek Trivedi 