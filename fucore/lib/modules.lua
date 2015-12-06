
local modDetected_Belts = findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended")~=nil
local modDetected_Advanced_Inserter = findEntry(data, "inserter", "super-inserter")

function modPresent_Belts()
  return modDetected_Belts
end

function modPresent_Advanced_Inserter()
  return modDetected_Advanced_Inserter
end