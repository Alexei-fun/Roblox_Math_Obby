local work = game.Workspace
local plr = game:GetService("Players")
local answers = work.Answers

for _, stand in answers:GetChildren() do
	stand.Touched:Connect(function(part)
		if part.Parent:FindFirstChild("Humanoid") then
			local player = plr:GetPlayerFromCharacter(part.Parent)
			if player then
				local ans = stand.Name
				player.Chatted:Connect(function(msg)
					if string.match(msg, ans) then
						local wall = stand:GetChildren()[1]
						wall.CanCollide = false
						wall.Transparency = 1
					end
				end)
			end
		end
	end)
end