
local modDetected_Belts = findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended")~=nil

function modPresent_Belts()
  return modDetected_Belts
end