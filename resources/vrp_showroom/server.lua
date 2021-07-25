--[[
    FiveM Scripts
    Copyright C 2018  Sighmir
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.
z
    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("vrp_showroom", "cfg/showroom")

MySQL = module("vrp_mysql", "MySQL")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_showroom")

MySQL.createCommand("vRP/add_custom_vehicle","INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,vehicle_plate) VALUES(@user_id,@vehicle,@vehicle_plate)")
MySQL.createCommand("vRP/get_vehicle","SELECT vehicle FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")

function getPrice( category, model )
    for i,v in ipairs(vehshop.menu[category].buttons) do
      if v.model == model then
          return v.costs
      end
    end
    return nil 
end

-- SHOWROOM
RegisterServerEvent('veh_SR:CheckMoneyForVeh')
AddEventHandler('veh_SR:CheckMoneyForVeh', function(category, vehicle, price, isXZ, isDM)
  local user_id = tonumber(vRP.getUserId({source}))
	local player = vRP.getUserSource({user_id})
	
	MySQL.query("vRP/get_vehicle", {user_id = user_id, vehicle = vehicle}, function(pvehicle, affected)
		if #pvehicle > 0 then
			vRPclient.notify(player,{"~r~Vehicle already owned."})
		else
			local actual_price = getPrice( category, vehicle)
			if actual_price == nil then
				print( "Vehicle "..vehicle.." from the category "..category.." doesn't have aprice set in cfg/showroom.lua" )
				vRPclient.notify(player,{"~r~This car is out of stock"})
				return 
			end
			if  actual_price ~= price then
				print( "Player with ID "..user_id.. " is suspected of Cheat Engine.")
			end	
			if vRP.tryFullPayment({user_id,actual_price}) then
				vRP.getUserIdentity({user_id, function(identity)
                    MySQL.execute("vRP/add_custom_vehicle", {user_id = user_id, vehicle = vehicle, vehicle_plate = "P "..identity.registration})
                end})
				TriggerClientEvent('veh_SR:CloseMenu', player)
				vRPclient.notify(player,{"You paid ~r~$"..actual_price})
				vRPclient.notify(player,{"To pickup your vehicle please visit any garage."})
			else
				vRPclient.notify(player,{"~r~Not enough money."})
			end
		end
	end)
end)
