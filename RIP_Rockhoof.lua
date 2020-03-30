RIP_Rockhoof = LibStub('AceAddon-3.0'):NewAddon('RIP_Rockhoof', 'AceEvent-3.0', 'AceConsole-3.0')

local options = {name = 'RIP_Rockhoof', handler = RIP_Rockhoof, type = 'group'}

local rip_phrases = {
    'can we get a battle rez on rockhoof',
    'someone ankh rockhoof',
    'can we get buffs on rockhoof, he died again',
    'someone get rockhoof up, he needs to bid on items',
    'does anyone have a repair bot, rockhoof needs one',
    '#neverforget',
    '#gonetooyoung',
    'who\'s rockhoof?',
    'rockhoof, where are you on the damage meters?',
}

function RIP_Rockhoof:CombatLogEvent()
    local _, event, _, _, _, _, _, _, destName = CombatLogGetCurrentEventInfo()
    if event == 'UNIT_DIED' and destName == 'Rockhoof' then
        if UnitInRaid('player') then
            SendChatMessage(rip_phrases[math.random(#rip_phrases)], 'RAID')
        elseif UnitInParty('player') then
            SendChatMessage(rip_phrases[math.random(#rip_phrases)], 'PARTY')
        end
    end
end

function RIP_Rockhoof:OnEnable()
    LibStub('AceConfig-3.0'):RegisterOptionsTable('RIP_Rockhoof', options)
    RIP_Rockhoof:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED', 'CombatLogEvent')
end
