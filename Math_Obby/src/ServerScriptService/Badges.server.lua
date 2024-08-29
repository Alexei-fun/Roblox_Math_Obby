local badges = game.Workspace.Badges
local badgeServ = game:GetService("BadgeService")
local plr = game:GetService("Players")

for _, badge in badges:GetChildren() do
	badge.Touched:Connect(function(part)
		if part.Parent:FindFirstChild("Humanoid") then
			local player = plr:GetPlayerFromCharacter(part.Parent)
			if player then
				badgeServ:AwardBadge(player.UserId, badge:GetChildren()[1].Name)
			end
		end
	end)
end