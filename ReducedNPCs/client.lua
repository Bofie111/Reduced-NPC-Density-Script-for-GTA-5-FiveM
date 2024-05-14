--                 ██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗ 
--                 ██╔══██╗██║██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
--                 ██║  ██║██║███████╗██║   ██║██████╔╝██║  ██║██║  ██║█████╗  ██████╔╝
--                 ██║  ██║██║╚════██║██║   ██║██╔══██╗██║  ██║██║  ██║██╔══╝  ██╔══██╗
--                 ██████╔╝██║███████║╚██████╔╝██║  ██║██████╔╝██████╔╝███████╗██║  ██║
--                 ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- Prevents the script from crashing

		-- Update vehicle and pedestrian densities every frame
		SetVehicleDensityMultiplierThisFrame(0.2) -- Reduces overall traffic density to 20%
		SetRandomVehicleDensityMultiplierThisFrame(0.6) -- Lowers the density of dynamically generated vehicles to 60%
		SetParkedVehicleDensityMultiplierThisFrame(0.3) -- Decreases parked vehicle density to 30%
		SetPedDensityMultiplierThisFrame(0.9) -- Sets pedestrian density to 90%
		SetGarbageTrucks(false) -- Prevents garbage trucks from spawning
		SetRandomBoats(false) -- Prevents random boats from appearing in the water
		SetCreateRandomCops(false) -- Disables the spawning of cops roaming randomly
		SetCreateRandomCopsNotOnScenarios(false) -- Prevents cops from randomly appearing outside of specific scenarios
		SetCreateRandomCopsOnScenarios(false) -- Stops cops from spawning within designated scenarios

	end
end)