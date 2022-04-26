--[[
    This is the lua sided of OnTeleport injection.
    There is also a C++ sided which you need in your DLL.
    (If you are using krnl or any other exploit this wont work!)

    TODO: In your custom/skidded DLL source, go to your main .cpp file.
    Write a int function called loadinjection with 0 arguments.
    Inside of loadinjection, copy your scanning, etc code.
    Paste the code into loadinjection and after that,
    Register the function as loadinjection and build.
    Run this sample script to see if the steps are correct:
    if loadinjection then print("good!") else warn("your steps were wrong") end
    The output should be -> 'good!" otherwise you didnt follow a tsstep.
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
-- ~ Please follow the steps in the commented brick otherwise it wont work! ~ --
