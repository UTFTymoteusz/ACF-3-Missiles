local ACF = ACF

ACF.LaserSources   = ACF.LaserSources or {}
ACF.ActiveLasers   = ACF.ActiveLasers or {}
ACF.ActiveMissiles = ACF.ActiveMissiles or {}
ACF.ActiveRadars   = ACF.ActiveRadars or {}

ACF.FlareBurnMultiplier     = 0.025
ACF.FlareDistractMultiplier = 1 / 35
ACF.MaxDamageInaccuracy     = 1000
ACF.DefaultRadarSound       = "buttons/button16.wav"

game.AddParticles("particles/flares_fx.pcf")

PrecacheParticleSystem("ACFM_Flare")

if SERVER then
	resource.AddWorkshop("403587498")
end

do -- Discontinued registration functions
	function ACF_DefineRadarClass(ID)
		print("Attempted to register radar class " .. ID .. " with a discontinued function. Use ACF.RegisterSensorClass instead.")
	end

	function ACF_DefineRadar(ID)
		print("Attempted to register radar " .. ID .. " with a discontinued function. Use ACF.RegisterSensor instead.")
	end
end

do -- Update checker
	hook.Add("ACF_OnAddonLoaded", "ACF Missiles Checker", function()
		ACF.AddRepository("TwistedTail", "ACF-3-Missiles", "lua/acf/core/acfm_globals.lua")
	end)
end