local tcs = game:GetService("TextChatService") 

local connection

local function say(text) 
tcs.TextChannels.RBXGeneral:SendAsync(text) 
end 

game.Players.PlayerAdded:Connect(function(plr)
if connection then connection:Disconnect() end 
if plr.Name ~= plr.DisplayName then say(plr.DisplayName .. "/" .. plr.Name .. " has joined the game.") 
else 
connection = say(plr.Name .. " has joined the game.") 
end 
end) 

local newconnection

game.Players.PlayerRemoving:Connect(function(plr)
if newconnection then newconnection:Disconnect() end 
if plr.Name ~= plr.DisplayName then 
newconnection = say(plr.DisplayName .. "/" .. plr.Name .. " has left the game.") 
else 
say(plr.Name .. " has left the game.") 
end 
end)
