local plr = game:GetService("Players")
local hazards = game.Workspace.Hazardparts

for _, hzrd in hazards:GetChildren() do
	hzrd.Touched:Connect(function(part)
		if part.Parent:FindFirstChild("Humanoid") then
			local player = plr:GetPlayerFromCharacter(part.Parent)
			if player then
				player.Character.Humanoid.Health = 0
			end
		end
	end)
end