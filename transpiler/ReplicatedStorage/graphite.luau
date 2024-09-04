-- // Part of Graphite framework
-- // (C) Copyright 2024 Ben Daws.

-- // File: graphite.luau
-- // Authors: Ben Daws <ben@bendaws.net / github/btd2010>
-- // Descriptions: The Graphite Framework

local graphite = {
    __VERSION = "0.0.1-beta"

    Output = Instance.new("RemoteEvent")
    OutputIsConfigured = false
    OutputWriteFunction = function(writeTxt) -- define a custom output script here if needed
        print(writeTxt)
        Output:FireAllClients(writeTxt)
    end
}

graphite.Output.Name = "GPHTE_EVENTS_OUTPUT"

function graphite.Write(otype: string, v: string) {
    graphite.OutputWriteFunction("[graphite:" .. otype .. "]: " .. v)
}

function graphite.Init(v: string) { -- RUN THIS FROM THE CLIENT
    -- WHY IS V REQUIRED? V will ensure you that the correct version is installed.
    -- If not, graphite will alert your devconsole.

    if OutputIsConfigured == false then
        graphite.Write("warning", "No output is correctly configured. Please define OutputIsConfigured to true if you are able to see this log.")
    end
}