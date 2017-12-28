/*
===========================================================================
  Copyright (c) 2010-2015 Darkstar Dev Teams
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/
  This file is part of DarkStar-server source code.
===========================================================================
*/


/* All recipes located in gardening_recipes.sql */
namespace gardenutils
{
    enum FED_CRYSTALS
    {
        NONE        = 0,
        FIRE        = 1,
        EARTH       = 2,
        WATER       = 3,
        WIND        = 4,
        ICE         = 5,
        LIGHTNING   = 6,
        LIGHT       = 7,
        DARK        = 8
    };

    enum SEEDS
    {
        GRAIN_SEEDS         = 0,
        VEGETABLE_SEEDS     = 1,
        HERB_SEEDS          = 2,
        WILDGRASS_SEEDS     = 3,
        FRUIT_SEEDS         = 4,
        TREE_CUTTINGS       = 5,
        TREE_SAPLINGS       = 6,
        CACTUS_STEMS        = 7
    };

    enum SEED_TYPES
    {
        FLOWER_SEEDS        = 0,
        TREE_SEEDS          = 1
    };
        
    enum POTS
    {
        CERAMIC_FLOWERPOT   = 0,
        EARTHEN_FLOWERPOT   = 1,
        BRASS_FLOWERPOT     = 2,
        PORCELAIN_FLOWERPOT = 3,
        ARCANE_FLOWERPOT    = 4,
        WOODEN_FLOWERPOT    = 5
    };
        
    enum GARDENING_RESULT
    {
        SYNTHESIS_FAIL      = 0,
        SYNTHESIS_SUCCESS   = 1,
        SYNTHESIS_HQ        = 2
    };
};



