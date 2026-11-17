-- One-level helper call-graph (RingOfFear ActivateAvatar-style).
local REAL_DREAD_TYPE = 48001;
local FAKE_FRIGHT_TYPE = 48002;
local REAL_FRIGHT_TYPE = 48003;
local FAKE_TERROR_TYPE = 48004;
local REAL_TERROR_TYPE = 48005;

function ActivateAvatar(fakeId, realId)
	local npc = eq.get_entity_list():GetNPCByNPCTypeID(fakeId);
	if ( npc ) then
		eq.spawn2(realId, 0, 0, npc:GetX(), npc:GetY(), npc:GetZ(), npc:GetHeading());
		eq.depop(fakeId);
	end
end

function event_encounter_load(e)
	eq.register_npc_event("RingOfFear", Event.death, REAL_DREAD_TYPE, function()
		ActivateAvatar(FAKE_FRIGHT_TYPE, REAL_FRIGHT_TYPE);
	end);
	eq.register_npc_event("RingOfFear", Event.death, REAL_FRIGHT_TYPE, function()
		ActivateAvatar(FAKE_TERROR_TYPE, REAL_TERROR_TYPE);
	end);
end
