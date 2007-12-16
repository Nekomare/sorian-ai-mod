#***************************************************************************
#*
#**  File     :  /lua/ai/SorianEconomyUpgradeBuilders.lua
#**
#**  Summary  : Default economic builders for skirmish
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local BBTmplFile = '/lua/basetemplates.lua'
local BuildingTmpl = 'BuildingTemplates'
local BaseTmpl = 'BaseTemplates'
local ExBaseTmpl = 'ExpansionBaseTemplates'
local Adj2x2Tmpl = 'Adjacency2x2'
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local MIBC = '/lua/editor/MiscBuildConditions.lua'
local MABC = '/lua/editor/MarkerBuildConditions.lua'
local IBC = '/lua/editor/InstantBuildConditions.lua'
local OAUBC = '/lua/editor/OtherArmyUnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'
local PCBC = '/lua/editor/PlatoonCountBuildConditions.lua'
local SAI = '/lua/ScenarioPlatoonAI.lua'
local TBC = '/lua/editor/ThreatBuildConditions.lua'
local PlatoonFile = '/lua/platoon.lua'

BuilderGroup {
    BuilderGroupName = 'SorianTime Exempt Extractor Upgrades Expansion',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian T1 Mass Extractor Upgrade Timeless Single Expansion',
        PlatoonTemplate = 'T1MassExtractorUpgrade',
        InstanceCount = 2,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 4, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 2, 'MASSEXTRACTION TECH2', 'MASSEXTRACTION' } },
            { UCBC, 'UnitsGreaterAtLocation', { 'MAIN', 3, 'MASSEXTRACTION TECH2', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian T2 Mass Extractor Upgrade Timeless Single Expansion',
        PlatoonTemplate = 'T2MassExtractorUpgrade',
        InstanceCount = 2,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 20, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 2, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },
            { UCBC, 'UnitsGreaterAtLocation', { 'MAIN', 3, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },    
    Builder {
        BuilderName = 'Sorian T2 Mass Extractor Upgrade Timeless Multiple Expansion',
        PlatoonTemplate = 'T2MassExtractorUpgrade',
        InstanceCount = 4,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 40, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 3, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },
            { UCBC, 'UnitsGreaterAtLocation', { 'MAIN', 3, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },       
}
   
BuilderGroup {
    BuilderGroupName = 'SorianTime Exempt Extractor Upgrades',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian T1 Mass Extractor Upgrade Timeless Single',
        PlatoonTemplate = 'T1MassExtractorUpgrade',
        InstanceCount = 1,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 2, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'MASSEXTRACTION TECH2', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },

    Builder {
        BuilderName = 'Sorian T1 Mass Extractor Upgrade Timeless Two',
        PlatoonTemplate = 'T1MassExtractorUpgrade',
        InstanceCount = 2,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 4, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 2, 'MASSEXTRACTION TECH2', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },

    Builder {
        BuilderName = 'Sorian T1 Mass Extractor Upgrade Timeless LOTS',
        PlatoonTemplate = 'T1MassExtractorUpgrade',
        InstanceCount = 4,
        Priority = 200,
        BuilderConditions = {
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconIncome',  { 8, 10}},
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.6, 1.2 }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 4, 'MASSEXTRACTION TECH2', 'MASSEXTRACTION' } },
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },    
    Builder {
        BuilderName = 'Sorian T2 Mass Extractor Upgrade Timeless',
        PlatoonTemplate = 'T2MassExtractorUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
            #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'ENERGYPRODUCTION TECH2, ENERGYPRODUCTION TECH3' } },
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },            
            { EBC, 'GreaterThanEconIncome', { 12, 50 } },
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.8, 1.2 }},
            { UCBC, 'HaveGreaterThanUnitsWithCategory', { 5, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3' }},
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },  
    
    Builder {
        BuilderName = 'Sorian T2 Mass Extractor Upgrade Timeless Multiple',
        PlatoonTemplate = 'T2MassExtractorUpgrade',
        Priority = 200,
        InstanceCount = 3,
        BuilderConditions = {
            #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'ENERGYPRODUCTION TECH2, ENERGYPRODUCTION TECH3' } },
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 5, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3' }},
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 3, 'MASSEXTRACTION TECH3', 'MASSEXTRACTION' } },
            { EBC, 'GreaterThanEconIncome', { 36, 50 } },
            { IBC, 'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 0.8, 1.2 }},            
        },
        FormRadius = 10000,
        BuilderType = 'Any',
    },      
}

# ================================= #
#     BALANCED FACTORY UPGRADES
# ================================= #
BuilderGroup {
    BuilderGroupName = 'SorianT1BalancedUpgradeBuilders',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian Balanced T1 Land Factory Upgrade Initial',
        PlatoonTemplate = 'T1LandFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsWithCategory', { 1, 'FACTORY TECH2 LAND, FACTORY TECH3 LAND'}},
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH2, FACTORY TECH3' } },
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2 LAND, FACTORY TECH3 LAND' } },		            
                { EBC, 'GreaterThanEconIncome',  { 3.5, 30}},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian BalancedT1AirFactoryUpgradeInitial',
        PlatoonTemplate = 'T1AirFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        FormDebugFunction = nil,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsWithCategory', { 1, 'FACTORY TECH2 AIR, FACTORY TECH3 AIR'}},
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH2, FACTORY TECH3' } },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2 AIR, FACTORY TECH3 AIR' } },
                { EBC, 'GreaterThanEconIncome',  { 3.5, 30}},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T1 Land Factory Upgrade',
        PlatoonTemplate = 'T1LandFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'FACTORY LAND TECH1' }},
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2 LAND, FACTORY TECH3 LAND' } },
                { EBC, 'GreaterThanEconIncome',  { 3.5, 30}},
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
                { IBC, 'BrainNotLowPowerMode', {} },
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian BalancedT1AirFactoryUpgrade',
        PlatoonTemplate = 'T1AirFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        FormDebugFunction = nil,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'FACTORY AIR TECH1' }},
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2 AIR, FACTORY TECH3 AIR' } },
                { EBC, 'GreaterThanEconIncome',  { 3.5, 30}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T1 Sea Factory Upgrade',
        PlatoonTemplate = 'T1SeaFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'NAVAL FACTORY TECH1' } },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 NAVAL, FACTORY TECH2 NAVAL' } },
                { EBC, 'GreaterThanEconIncome',  { 4.5, 30}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
            },
        BuilderType = 'Any',
    },
}

BuilderGroup {
    BuilderGroupName = 'SorianT2BalancedUpgradeBuilders',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian Balanced T2 Land Factory Upgrade',
        PlatoonTemplate = 'T2LandFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, 'MASSEXTRACTION TECH3'}},
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 LAND, FACTORY TECH2 LAND' } },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 LAND' } },
                { UCBC, 'UnitsGreaterAtLocation', { 'LocationType', 7, 'MOBILE LAND'}},
                { EBC, 'GreaterThanEconIncome',  { 7, 180}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.9, 1.2 }},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T2 Air Factory Upgrade',
        PlatoonTemplate = 'T2AirFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 AIR, FACTORY TECH2 AIR' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, 'MASSEXTRACTION TECH3'} },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 AIR' } },
                { EBC, 'GreaterThanEconIncome',  { 7, 180}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.5, 1.2 }},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T2 Sea Factory Upgrade',
        PlatoonTemplate = 'T2SeaFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 NAVAL, FACTORY TECH2 NAVAL' } },
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, 'MASSEXTRACTION TECH3'} },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 NAVAL' } },
                { EBC, 'GreaterThanEconIncome',  { 7, 250}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.9, 1.2 }},
            },
        BuilderType = 'Any',
    },
}

# ============================================ #
#     BALANCED FACTORY UPGRADES EXPANSIONS
# ============================================ #
BuilderGroup {
    BuilderGroupName = 'SorianT1BalancedUpgradeBuildersExpansion',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian Balanced T1 Land Factory Upgrade Expansion',
        PlatoonTemplate = 'T1LandFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'FACTORY LAND TECH1' }},
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH2'}},
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2 LAND, FACTORY TECH3 LAND' } },
                { EBC, 'GreaterThanEconIncome',  { 3, 30}},
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
                { IBC, 'BrainNotLowPowerMode', {} },
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian BalancedT1AirFactoryUpgrade Expansion',
        PlatoonTemplate = 'T1AirFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        FormDebugFunction = nil,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'FACTORY AIR TECH1' }},
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 1, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH2, FACTORY TECH3' } },
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH2'}},
                { EBC, 'GreaterThanEconIncome',  { 3, 30}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T1 Sea Factory Upgrade Expansion',
        PlatoonTemplate = 'T1SeaFactoryUpgrade',
        Priority = 200,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3'}},
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 1, 'NAVAL FACTORY TECH1' } },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 NAVAL, FACTORY TECH2 NAVAL' } },
                { EBC, 'GreaterThanEconIncome',  { 4.5, 30}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.85, 1.4} },
                { UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH2'}},
            },
        BuilderType = 'Any',
    },
}

BuilderGroup {
    BuilderGroupName = 'SorianT2BalancedUpgradeBuildersExpansion',
    BuildersType = 'PlatoonFormBuilder',
    Builder {
        BuilderName = 'Sorian Balanced T2 Land Factory Upgrade Expansion',
        PlatoonTemplate = 'T2LandFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, 'MASSEXTRACTION TECH3'}},
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 LAND, FACTORY TECH2 LAND' } },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 LAND' } },
                { UCBC, 'UnitsGreaterAtLocation', { 'LocationType', 7, 'MOBILE LAND'}},
                { EBC, 'GreaterThanEconIncome',  { 7, 180}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.9, 1.2 }},
				{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH3'}},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T2 Air Factory Upgrade Expansion',
        PlatoonTemplate = 'T2AirFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 AIR, FACTORY TECH2 AIR' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, 'MASSEXTRACTION TECH3'} },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 AIR' } },
                { EBC, 'GreaterThanEconIncome',  { 7, 180}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.5, 1.2 }},
				{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH3'}},
            },
        BuilderType = 'Any',
    },
    Builder {
        BuilderName = 'Sorian Balanced T2 Sea Factory Upgrade Expansion',
        PlatoonTemplate = 'T2SeaFactoryUpgrade',
        Priority = 300,
        InstanceCount = 1,
        BuilderConditions = {
                { UCBC, 'FactoryGreaterAtLocation', { 'LocationType', 2, 'FACTORY TECH3 NAVAL, FACTORY TECH2 NAVAL' } },
                { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, 'FACTORY TECH3, FACTORY TECH2' } },
                #{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, 'MASSEXTRACTION TECH3'} },
                { UCBC, 'LocationFactoriesBuildingLess', { 'LocationType', 1, 'FACTORY TECH3 NAVAL' } },
                { EBC, 'GreaterThanEconIncome',  { 7, 250}},
                { IBC, 'BrainNotLowPowerMode', {} },
                #{ EBC, 'GreaterThanEconEfficiencyOverTime', { 0.9, 1.2 }},
				{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 3, 'FACTORY TECH3'}},
            },
        BuilderType = 'Any',
    },
}