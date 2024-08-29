local plr = game:GetService("Players")
local spawn = game.Workspace.First_Spawn

plr.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		char:WaitForChild("HumanoidRootPart").CFrame = spawn.CFrame + Vector3.new(0, 3, 0)
	end)
end)