local guiName = "Z33NHUB"

local oldGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild(guiName)
if oldGui then
    oldGui:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = guiName
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "z33nhub"
title.TextColor3 = Color3.fromRGB(157, 193, 131)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 40
title.Parent = frame

local description = Instance.new("TextLabel")
description.Size = UDim2.new(1, 0, 0, 30)
description.Position = UDim2.new(0, 0, 0.25, 0)
description.BackgroundTransparency = 1
description.Text = "Making Roblox fun again."
description.TextColor3 = Color3.fromRGB(157, 193, 131)
description.Font = Enum.Font.SourceSans
description.TextSize = 18
description.Parent = frame

local description2 = Instance.new("TextLabel")
description2.Size = UDim2.new(1, 0, 0, 100)
description2.Position = UDim2.new(0, 0, 0.25, 0)
description2.BackgroundTransparency = 1
description2.Text = "Jailbreak Autorob"
description2.TextColor3 = Color3.fromRGB(157, 193, 131)
description2.Font = Enum.Font.SourceSansBold
description2.TextSize = 18
description2.Parent = frame

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0, 60, 0, 30)
toggle.Position = UDim2.new(0.5, -30, 0.75, -15)
toggle.Text = "OFF"
toggle.TextColor3 = Color3.fromRGB(157, 193, 131)
toggle.Font = Enum.Font.SourceSansBold
toggle.TextSize = 18
toggle.Parent = frame

local toggleState = Instance.new("BoolValue")
toggleState.Name = "ToggleState"
toggleState.Value = false
toggleState.Parent = frame

local function handleToggle()
    local currentState = toggleState.Value
    toggleState.Value = not currentState

    if toggleState.Value then
        toggle.Text = "ON"
        print("Enabled")
    else
        toggle.Text = "OFF"
        print("Disabled")
    end
end

local plrUtils = game:GetService("ReplicatedStorage").Game.PlayerUtils
local oldHasKey = require(plrUtils).hasKey
require(plrUtils).hasKey = function() 
    return true
end

toggle.MouseButton1Click:Connect(handleToggle)
