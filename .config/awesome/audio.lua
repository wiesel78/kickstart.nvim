local awful = require("awful")
local string = string

local command_base = "/usr/bin/pactl"


local function get_command_output(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

local pa_provider = {}

function pa_provider.get_default_sink()
    return get_command_output(command_base .. " get-default-sink")
end

function pa_provider.set_default_sink(sink)
    local command = string.format(
        "%s -- set-default-sink %s",
        command_base, sink
    )
    awful.util.spawn(command, false)
end

-- volume to a absolute value with 50%, 60% ... or 
-- with a relative value like +5%, -5%
function pa_provider.set_volume(volume)
    local command = string.format(
        "%s -- set-sink-volume %s %s",
        command_base, pa_provider.get_default_sink(), volume 
    )
    awful.util.spawn(command, false)
end

-- mute on, off or toggle
function pa_provider.set_mute(value)
    local command = string.format(
        "%s -- set-sink-mute %s %s",
        command_base, pa_provider.get_default_sink(), value
    )
    awful.util.spawn(command, false)
end



local provider = pa_provider
local audioctl = {}

function audioctl.get_default_sink()
    return provider.get_default_sink()
end


function audioctl.set_default_sink(sink)
    provider.set_default_sink(sink)
end

-- volume to a absolute value with 50%, 60% ... or 
-- with a relative value like +5%, -5%
function audioctl.set_volume(volume)
    provider.set_volume(volume)
end

-- mute on, off or toggle
function audioctl.set_mute(value)
    provider.set_mute(value)
end

return audioctl


