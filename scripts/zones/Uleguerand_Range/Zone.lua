-----------------------------------
--
-- Zone: Uleguerand_Range (5)
--
-----------------------------------
package.loaded["scripts/zones/Uleguerand_Range/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Uleguerand_Range/TextIDs");
require("scripts/zones/Uleguerand_Range/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/missions");
require("scripts/globals/weather");
require("scripts/globals/zone");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(JORMUNGAND);
    GetMobByID(JORMUNGAND):setRespawnTime(math.random(86400, 259200));
end;

-----------------------------------
-- onConquestUpdate
-----------------------------------

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(363.025,16,-60,12);
    end
    if (player:getCurrentMission(COP) == DAWN and player:getVar("COP_louverance_story")== 1 ) then
      cs=17;
    end
    return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 17) then
        player:setVar("COP_louverance_story",2);
    end
end;

-----------------------------------
-- onZoneWeatherChange
-----------------------------------

function onZoneWeatherChange(weather)
    local waterfall = GetNPCByID(WATERFALL);
    if (weather == WEATHER_SNOW or weather == WEATHER_BLIZZARDS) then
        if (waterfall:getAnimation() ~= 9) then
            waterfall:setAnimation(9);
        end
    else
        if (waterfall:getAnimation() ~= 8) then
            waterfall:setAnimation(8);
        end
    end
end;
