-- Inline anonymous death handlers (RingOfSlime-style).
function event_encounter_load(e)
	eq.register_npc_event("RingOfSlime", Event.death, 48041, function(e)
		eq.spawn2(48374, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
	end);
	eq.register_npc_event("RingOfSlime", Event.death, 48374, function(e)
		eq.spawn2(48373, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
	end);
	eq.register_npc_event("RingOfSlime", Event.death, 48373, function(e)
		eq.spawn2(48389, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
	end);
end
