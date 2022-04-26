--[[
    This is the lua sided of OnTeleport injection.
    There is also a C++ sided which you need in your DLL.
    (If you are using krnl or any other exploit this wont work!)
]]

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(state) --> A teleport for the LocalPlayer was requested
    if state == Enum.TeleportState.InProgress then --> If the game is teleporting the LocalPlayer
        print("Teleport request issued! Injection will restart in a moment")
        loadinjection() --> Re-inject the DLL due to the teleport breaking the execution
      else
        --> No teleport was requested
    end
end)

-- ~ Suggested to paste this inside of your Auto Execute folder or script ~ --
