local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local NamaButton = "Zett"

local OldGui =
LocalPlayer.PlayerGui:FindFirstChild(NamaButton)

if OldGui then

    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "ZETT 😈",
            Text = "GUI SUDAH ADA 😭💕",
            Duration = 3
        }
    )

    return
end

-- GUI 😈

local Gui = Instance.new("ScreenGui")
Gui.Parent = LocalPlayer.PlayerGui
Gui.Name = NamaButton
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
-- BUTTON OPEN 😈

local btn = Instance.new("TextButton")
btn.Parent = Gui

btn.Size = UDim2.new(0,300,0,20)
btn.AnchorPoint = Vector2.new(0.5, 0)
btn.Position = UDim2.new(0.5, 0, 0, 0)

btn.Text = "ZETT."
btn.Font = Enum.Font.GothamBold
btn.TextSize = 20

btn.TextColor3 = Color3.fromRGB(0,0,0)
btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

btn.Active = true

local btnCorner = Instance.new("UICorner")
  btnCorner.Parent = btn
  btnCorner.CornerRadius = UDim.new(0,50)
  
  
-- GRADIENT

local btnGradient = Instance.new("UIGradient")
btnGradient.Parent = btn
btnGradient.Rotation = 360

btnGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(
		0,
		Color3.fromRGB(169, 169, 169)
	),

	ColorSequenceKeypoint.new(
		1,
		Color3.fromRGB(0, 0, 139)
	)
}

-- OUTLINE RGB 😈

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Parent = btn
BtnStroke.Thickness = 4

task.spawn(function()

	while true do
		
		for i = 0,1,0.01 do
			
			BtnStroke.Color =
				Color3.fromHSV(i,1,1)

			task.wait(0.03)
		end
	end
end)
local TweenService =
    game:GetService("TweenService")

local Frame = Instance.new("Frame")
Frame.Parent = Gui
Frame.AnchorPoint = btn.AnchorPoint -- 😈 samain
Frame.Position = btn.Position
Frame.Size = btn.Size
Frame.Visible = false

local Dragging = false
local Open = false -- status buka/tutup 😈

btn.MouseButton1Click:Connect(function()

    local Info = TweenInfo.new(0.4)

    if not Open then
        -- BUKA 😈
        Frame.Visible = true

        local Goal = {
            
            Position =
                UDim2.new(0.5,0,0.5,-200),

            Size =
                UDim2.new(0,450,0,320)
        }

        local Tween =
            TweenService:Create(
                Frame,
                Info,
                Goal
            )

        Tween:Play()

        Open = true

    else
        -- TUTUP 😈
        local Goal = {
            Position = btn.Position,
            Size = btn.Size
        }

        local Tween =
            TweenService:Create(
                Frame,
                Info,
                Goal
            )

        Tween:Play()

        Tween.Completed:Wait()
        Frame.Visible = false

        Open = false
    end
end)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.Active = true

Frame.ClipsDescendants = false

local FrameCorner = Instance.new("UICorner")
FrameCorner.Parent = Frame
FrameCorner.CornerRadius = UDim.new(0,20)

local Stroke = Instance.new("UIStroke")
Stroke.Parent = Frame
Stroke.Thickness = 3

task.spawn(function()

while true do  
	  
	for i = 0,1,0.01 do  
		  
		Stroke.Color = Color3.fromHSV(i,1,1)  
		  
		task.wait(0.03)  
		  
	end  
	  
end

end)

-- TOPBAR
local TopBar = Instance.new("Frame")
TopBar.Parent = Frame

TopBar.Size = UDim2.new(1,-5,0,20)

TopBar.BackgroundColor3 = Color3.fromRGB(35,35,35)
TopBar.BackgroundTransparency = 1

TopBar.Active = true

local TopCorner = Instance.new("UICorner")
TopCorner.Parent = TopBar
TopCorner.CornerRadius = UDim.new(0,5)

-- TITLE
local Title = Instance.new("TextLabel")
Title.Parent = TopBar

Title.Size = UDim2.new(1,-60,1,0)
Title.Position = UDim2.new(0,15,0,5)

Title.BackgroundTransparency = 1

Title.Text = "ZETTOMAISSZE"

Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

Title.TextColor3 = Color3.fromRGB(255,255,255)

Title.TextXAlignment = Enum.TextXAlignment.Left

task.spawn(function()

while true do  
	  
	for i = 0,1,0.01 do  
		  
		Title.TextColor3 = Color3.fromHSV(i,1,1)  
		  
		task.wait(0.03)  
		  
	end  
	  
end

end)


