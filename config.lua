-- Configuration file for the Fusion-Power mod

-- Enable pieces of the mod by  true  , disable pieces by  false  
-- Please not, the case matters, therefore True is not true.

-- Dependencies are noted, if a dependency is not fulfilled, the piece is not loaded.

config =
{
  fubelts =
  {
    alienBelt = true,
    alienSuperBelt = true,
  },

  fuconstruction =
  {
    alienConstructionRobot = true,
  },

  fudrill=
  {
    improvedDrill = true,
    alienDrill = true, -- Depends on improvedDrill
  },

  fufusion=
  {
    fusion = true,
    advancedFusion = true, -- Depends on fusion
  },

  fuoil=
  {
    coalOilPlant = true,
  },

  fuinserter=
  {
    fastLongInserter = true,
    alienInserter = true,
    alienSuperInserter = true, -- Depends on alien-inserter
  },

  futrain=
  {
    alienTrain = true,
  },

  fuweapon=
  {
    alienLaserTurret = true,
    securityZone = true,
    mobileSecurityZone = true,
  },
}