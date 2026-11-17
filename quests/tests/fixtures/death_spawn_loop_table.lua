-- Loop-variable NPC ids over a local int array (BlackOoze-style).
local BROWN_TYPES = {
	48089,
	48383,
	48398,
};

function event_encounter_load(e)
	for _, id in ipairs(BROWN_TYPES) do
		eq.register_npc_event("BlackOoze", Event.death, id, function(e)
			if ( math.random(1, 2) == 1 ) then
				eq.spawn2(48371, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
			end
		end);
	end
end
