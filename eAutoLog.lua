-- =============================================================================
--
--       Filename:  eAutoLog.lua
--
--    Description:  Automatically starts the combat log
--                  upon entering a raid instance.
--
--        Version:  5.0.1
--
--         Author:  Mathias Jost (mail@mathiasjost.com)
--
-- =============================================================================


-- -----------------------------------------------------------------------------
-- Create the addon frame
-- -----------------------------------------------------------------------------
local eAutoLog = CreateFrame("Frame")


-- -----------------------------------------------------------------------------
-- Register events
-- -----------------------------------------------------------------------------
eAutoLog:RegisterEvent("PLAYER_ENTERING_WORLD")
eAutoLog:RegisterEvent("RAID_INSTANCE_WELCOME")


-- -----------------------------------------------------------------------------
-- Event Handler
-- -----------------------------------------------------------------------------
eAutoLog:SetScript("OnEvent", function()

	-- gets the instance type
	local IsInstance, InstanceType = IsInInstance()

	-- check if player is in instance and if the instance is a raid
	if IsInstance and InstanceType == "raid" then
		LoggingCombat(true)
	else
		LoggingCombat(false)
	end

end) -- eAutoLog:SetScript("OnEvent", function()
