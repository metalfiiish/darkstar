-----------------------------------
-- Area: Chamber of Oracles
-- NPC:  Pedestal of Wind
-- Involved in Zilart Mission 7
-- !pos 199 -2 36 168
-------------------------------------
package.loaded["scripts/zones/Chamber_of_Oracles/TextIDs"] = nil;
-------------------------------------

require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/zones/Chamber_of_Oracles/TextIDs");

-------------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local ZilartStatus = player:getVar("ZilartStatus");

    if (player:getCurrentMission(ZILART) == THE_CHAMBER_OF_ORACLES) then
        if (player:hasKeyItem(WIND_FRAGMENT)) then
            player:delKeyItem(WIND_FRAGMENT);
            player:setVar("ZilartStatus",ZilartStatus + 128);
            player:messageSpecial(YOU_PLACE_THE,WIND_FRAGMENT);

            if (ZilartStatus == 255) then
                player:startEvent(1);
            end
        elseif (ZilartStatus == 255) then -- Execute cutscene if the player is interrupted.
            player:startEvent(1);
        else
            player:messageSpecial(IS_SET_IN_THE_PEDESTAL,WIND_FRAGMENT);
        end
    elseif (player:hasCompletedMission(ZILART,THE_CHAMBER_OF_ORACLES)) then
        player:messageSpecial(HAS_LOST_ITS_POWER,WIND_FRAGMENT);
    else
        player:messageSpecial(PLACED_INTO_THE_PEDESTAL);
    end

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u",csid);
    -- printf("onUpdate RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u",csid);
    -- printf("onFinish RESULT: %u",option);

    if (csid == 1) then
        player:addTitle(LIGHTWEAVER);
        player:setVar("ZilartStatus",0);
        player:addKeyItem(PRISMATIC_FRAGMENT);
        player:messageSpecial(KEYITEM_OBTAINED,PRISMATIC_FRAGMENT);
        player:completeMission(ZILART,THE_CHAMBER_OF_ORACLES);
        player:addMission(ZILART,RETURN_TO_DELKFUTTS_TOWER);
    end

end;
