local mod = RegisterMod("JamesJetski", 1)
local game = Game()

local JamesJetski = {
    costume = Isaac.GetCostumeIdByPath("gfx/characters/costume_james_jetski.anm2")
}

function mod:initCharacter(player)
    if (player:GetName() == "James Jetski") then
        player:AddNullCostume(JamesJetski.costume)
    end
end

mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, mod.initCharacter)