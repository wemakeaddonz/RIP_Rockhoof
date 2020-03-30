-- std = "min"
globals = {
    'RIP_Rockhoof',
    'LibStub',
}
read_globals = {'SendChatMessage', 'CombatLogGetCurrentEventInfo', 'UnitInRaid', 'UnitInParty'}

max_line_length = 100
max_cyclomatic_complexity = 10

-- show warning codes on output
codes = true

self = false

exclude_files = {'Libs'}
