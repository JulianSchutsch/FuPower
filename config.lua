-- Configuration file for the Fusion-Power mod

-- Enable features of the mod by  true  , disable pieces by  false  
-- Please note that the case matters, therefore True is not true.

-- Dependencies are noted, if a dependency is not fulfilled, the feature is skipped.

config =
{
  fubelts =
  {
    extendedBelts = true,
    alienBelt = true,
    alienSuperBelt = true,
  },

  fuconstruction =
  {
    alienConstructionRobot = true,
    alienLogisticRobot = true,
  },

  fudrill=
  {
    improvedDrill = true,
    alienDrill = true, -- Depends on improvedDrill
  },

  fufusion=
  {
    deepWater = true,
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