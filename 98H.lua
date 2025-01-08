-- Gui to Lua
-- Version: 3.2

-- Instances:

local AdopChangeNam = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ResetTrade = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local buttons = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local minize = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Borderg = Instance.new("Frame")
local MakeName = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Whomade = Instance.new("TextLabel")
local Players = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local Title_2 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local Close_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local List = Instance.new("ScrollingFrame")
local UICorner_10 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UICorner_11 = Instance.new("UICorner")
local Sample = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local text = Instance.new("TextLabel")
local OpenPlayer = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_16 = Instance.new("UICorner")
local NamePlayersText = Instance.new("TextLabel")
local NamesValue = Instance.new("TextLabel")
local nicknameplr = Instance.new("TextLabel")
local TextPlayerBox = Instance.new("TextBox")
local UICorner_17 = Instance.new("UICorner")

--Properties:

AdopChangeNam.Name = "AdopChangeNam"
AdopChangeNam.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AdopChangeNam.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = AdopChangeNam
main.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.698869526, 0, 0.26517573, 0)
main.Size = UDim2.new(0, 196, 0, 254)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = main

ResetTrade.Name = "ResetTrade"
ResetTrade.Parent = main
ResetTrade.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
ResetTrade.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResetTrade.BorderSizePixel = 0
ResetTrade.Position = UDim2.new(0.0535714291, 0, 0.780206621, 0)
ResetTrade.Size = UDim2.new(0, 173, 0, 28)
ResetTrade.Font = Enum.Font.SourceSansBold
ResetTrade.Text = "reset trade"
ResetTrade.TextColor3 = Color3.fromRGB(0, 0, 0)
ResetTrade.TextScaled = true
ResetTrade.TextSize = 14.000
ResetTrade.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = ResetTrade

buttons.Name = "buttons"
buttons.Parent = main
buttons.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttons.BorderSizePixel = 0
buttons.Position = UDim2.new(0, 0, -0.00446431478, 0)
buttons.Size = UDim2.new(0, 196, 0, 32)

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = buttons

Close.Name = "Close"
Close.Parent = buttons
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.806122422, 0, 0.21875, 0)
Close.Size = UDim2.new(0, 26, 0, 25)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 15.000
Close.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Close

minize.Name = "minize"
minize.Parent = buttons
minize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minize.BorderSizePixel = 0
minize.Position = UDim2.new(0.642857134, 0, 0.21875, 0)
minize.Size = UDim2.new(0, 26, 0, 25)
minize.Font = Enum.Font.SourceSansBold
minize.Text = "-"
minize.TextColor3 = Color3.fromRGB(0, 0, 0)
minize.TextScaled = true
minize.TextSize = 14.000
minize.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = minize

TextLabel.Parent = buttons
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.151647091, 0)
TextLabel.Size = UDim2.new(0, 118, 0, 29)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Adopt Change name"
TextLabel.TextColor3 = Color3.fromRGB(135, 135, 135)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Borderg.Name = "Borderg"
Borderg.Parent = main
Borderg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Borderg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Borderg.BorderSizePixel = 0
Borderg.Position = UDim2.new(0, 0, 0.127029717, 0)
Borderg.Size = UDim2.new(0.142857149, 168, 0.0111839259, 0)

MakeName.Name = "MakeName"
MakeName.Parent = main
MakeName.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
MakeName.BorderColor3 = Color3.fromRGB(0, 0, 0)
MakeName.BorderSizePixel = 0
MakeName.Position = UDim2.new(0.0535714291, 0, 0.633998334, 0)
MakeName.Size = UDim2.new(0, 173, 0, 29)
MakeName.Font = Enum.Font.SourceSansBold
MakeName.Text = "Make name"
MakeName.TextColor3 = Color3.fromRGB(0, 0, 0)
MakeName.TextScaled = true
MakeName.TextSize = 14.000
MakeName.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = MakeName

Whomade.Name = "Whomade"
Whomade.Parent = main
Whomade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Whomade.BackgroundTransparency = 1.000
Whomade.BorderColor3 = Color3.fromRGB(0, 0, 0)
Whomade.BorderSizePixel = 0
Whomade.Position = UDim2.new(0.163265303, 0, 0.921277881, 0)
Whomade.Size = UDim2.new(0, 163, 0, 16)
Whomade.Font = Enum.Font.SourceSansBold
Whomade.Text = "Script made by: Ctepa_Ipad"
Whomade.TextColor3 = Color3.fromRGB(135, 135, 135)
Whomade.TextScaled = true
Whomade.TextSize = 14.000
Whomade.TextWrapped = true

Players.Name = "Players"
Players.Parent = main
Players.AnchorPoint = Vector2.new(0.5, 0.5)
Players.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Players.BorderColor3 = Color3.fromRGB(0, 0, 0)
Players.BorderSizePixel = 0
Players.Position = UDim2.new(0.494897872, 0, 0.776299655, 0)
Players.Size = UDim2.new(0.882652879, 0, 1.17020166, 0)
Players.Visible = false
Players.ZIndex = 3

Title.Name = "Title"
Title.Parent = Players
Title.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, -5.84482152e-08, 0)
Title.Size = UDim2.new(1, 0, 0.134474114, 0)
Title.ZIndex = 3
Title.Font = Enum.Font.SourceSansSemibold
Title.Text = ""
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = Title

Title_2.Name = "Title"
Title_2.Parent = Title
Title_2.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0, 0, 1.16896433e-06, 0)
Title_2.Size = UDim2.new(0.517441869, 0, 0.999997616, 0)
Title_2.Font = Enum.Font.SourceSansSemibold
Title_2.Text = "PLAYERS"
Title_2.TextColor3 = Color3.fromRGB(135, 135, 135)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = Title_2

Close_2.Name = "Close"
Close_2.Parent = Title
Close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0.762986779, 0, 0.113940321, 0)
Close_2.Size = UDim2.new(0, 27, 0, 27)
Close_2.Font = Enum.Font.SourceSansBold
Close_2.Text = "X"
Close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Close_2.TextSize = 15.000
Close_2.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = Close_2

List.Name = "List"
List.Parent = Players
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.BorderSizePixel = 0
List.Position = UDim2.new(0, 0, 0.168656155, 0)
List.Size = UDim2.new(1, 0, 0.83134377, 0)
List.CanvasSize = UDim2.new(0, 0, 15, 0)
List.ScrollBarThickness = 6

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = List

UIListLayout.Parent = List
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

UICorner_11.CornerRadius = UDim.new(0, 4)
UICorner_11.Parent = Players

Sample.Name = "Sample"
Sample.Parent = Players
Sample.BackgroundColor3 = Color3.fromRGB(159, 159, 159)
Sample.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sample.BorderSizePixel = 0
Sample.Position = UDim2.new(0.0780000016, 0, 0.0199999996, 0)
Sample.Size = UDim2.new(0, 144, 0, 27)
Sample.Font = Enum.Font.SourceSans
Sample.Text = ""
Sample.TextColor3 = Color3.fromRGB(0, 0, 0)
Sample.TextSize = 14.000

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = Sample

text.Name = "text"
text.Parent = Sample
text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
text.BackgroundTransparency = 1.000
text.BorderColor3 = Color3.fromRGB(27, 42, 53)
text.Position = UDim2.new(-0.00581402238, 0, 0.109395348, 0)
text.Size = UDim2.new(1, 0, 0, 20)
text.Font = Enum.Font.SourceSansSemibold
text.Text = "UsernameHere"
text.TextColor3 = Color3.fromRGB(0, 0, 0)
text.TextScaled = true
text.TextSize = 14.000
text.TextWrapped = true

OpenPlayer.Name = "OpenPlayer"
OpenPlayer.Parent = main
OpenPlayer.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
OpenPlayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenPlayer.BorderSizePixel = 0
OpenPlayer.Position = UDim2.new(0.0535714291, 0, 0.186754286, 0)
OpenPlayer.Size = UDim2.new(0, 173, 0, 29)
OpenPlayer.Font = Enum.Font.SourceSansBold
OpenPlayer.Text = "Player List"
OpenPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenPlayer.TextScaled = true
OpenPlayer.TextSize = 14.000
OpenPlayer.TextWrapped = true
OpenPlayer.TextXAlignment = Enum.TextXAlignment.Left

UICorner_13.CornerRadius = UDim.new(0, 3)
UICorner_13.Parent = OpenPlayer

TextLabel_2.Parent = OpenPlayer
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.653179169, 0, 0, 0)
TextLabel_2.Rotation = -91.000
TextLabel_2.Size = UDim2.new(0, 31, 0, 29)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "<"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 27.000
TextLabel_2.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 3)
UICorner_14.Parent = TextLabel_2

TextLabel_3.Parent = OpenPlayer
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.768786132, 0, 0, 0)
TextLabel_3.Rotation = -91.000
TextLabel_3.Size = UDim2.new(0, 31, 0, 29)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "<"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 27.000
TextLabel_3.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 3)
UICorner_15.Parent = TextLabel_3

TextLabel_4.Parent = OpenPlayer
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.849711001, 0, 0, 0)
TextLabel_4.Rotation = -91.000
TextLabel_4.Size = UDim2.new(0, 31, 0, 29)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "<"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 27.000
TextLabel_4.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 3)
UICorner_16.Parent = TextLabel_4

NamePlayersText.Name = "NamePlayersText"
NamePlayersText.Parent = main
NamePlayersText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NamePlayersText.BackgroundTransparency = 1.000
NamePlayersText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NamePlayersText.BorderSizePixel = 0
NamePlayersText.Position = UDim2.new(0.0918367356, 0, 0.481802762, 0)
NamePlayersText.Size = UDim2.new(0, 163, 0, 19)
NamePlayersText.Font = Enum.Font.SourceSansBold
NamePlayersText.Text = "Name Player: "
NamePlayersText.TextColor3 = Color3.fromRGB(135, 135, 135)
NamePlayersText.TextScaled = true
NamePlayersText.TextSize = 14.000
NamePlayersText.TextWrapped = true

NamesValue.Name = "NamesValue"
NamesValue.Parent = main
NamesValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NamesValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
NamesValue.BorderSizePixel = 0
NamesValue.Position = UDim2.new(0.0133607397, 0, 0.0207667723, 0)
NamesValue.Size = UDim2.new(0, 6, 0, -2)
NamesValue.Visible = false
NamesValue.Font = Enum.Font.SourceSans
NamesValue.TextColor3 = Color3.fromRGB(0, 0, 0)
NamesValue.TextSize = 14.000

nicknameplr.Name = "nicknameplr"
nicknameplr.Parent = main
nicknameplr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nicknameplr.BackgroundTransparency = 1.000
nicknameplr.BorderColor3 = Color3.fromRGB(0, 0, 0)
nicknameplr.BorderSizePixel = 0
nicknameplr.Position = UDim2.new(0.0663265288, 0, 0.539580584, 0)
nicknameplr.Size = UDim2.new(0, 163, 0, 23)
nicknameplr.Font = Enum.Font.SourceSansBold
nicknameplr.Text = "??"
nicknameplr.TextColor3 = Color3.fromRGB(135, 135, 135)
nicknameplr.TextScaled = true
nicknameplr.TextSize = 14.000
nicknameplr.TextWrapped = true

TextPlayerBox.Name = "TextPlayerBox"
TextPlayerBox.Parent = main
TextPlayerBox.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
TextPlayerBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextPlayerBox.BorderSizePixel = 0
TextPlayerBox.Position = UDim2.new(0.0535714291, 0, 0.332423657, 0)
TextPlayerBox.Size = UDim2.new(0, 177, 0, 37)
TextPlayerBox.Visible = false
TextPlayerBox.Font = Enum.Font.SourceSansBold
TextPlayerBox.PlaceholderText = "Text for player"
TextPlayerBox.Text = ""
TextPlayerBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextPlayerBox.TextSize = 28.000
TextPlayerBox.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 4)
UICorner_17.Parent = TextPlayerBox

-- Scripts:

local function HGLLCD_fake_script() -- buttons.DraggableGUI 
	local script = Instance.new('LocalScript', buttons)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local frame2 = script.Parent.Parent.Parent.main
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame2, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame2.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(HGLLCD_fake_script)()
local function LGDH_fake_script() -- Players.Main 
	local script = Instance.new('LocalScript', Players)

	local plrList = script.Parent.List
	local sample = script.Parent.Sample
	local button = script.Parent.Parent.OpenPlayer
	local NamePlayers = script.Parent.Parent.nicknameplr
	local nameplayervalue = ""
	local changenameswhile = false
	
	
	button.MouseButton1Click:Connect(function() 
		script.Parent.Parent.Players.Visible = true
	end)
	
	
	
	function clearList()
		for _, item in pairs(plrList:GetChildren()) do
			if item:IsA("TextLabel") then
				item:Destroy()
			end
		end
	end
	
	function fillList()
		clearList()
		for _, player in pairs(game.Players:GetChildren()) do
			if not plrList:FindFirstChild(player.Name) then
				local new = sample:Clone()
				new.Name = player.Name
				new.text.Text = player.Name
				new.Parent = plrList
				
				new.MouseButton1Click:Connect(function() 
					nameplayervalue = player.Name
				end)
				new.MouseButton1Click:Connect(function() 
					NamePlayers.Text = player.Name
				end)
				new.MouseButton1Click:Connect(function() 
					local changenameswhile = false
				end)
			end
		end
		
	end
	
	fillList()
	
	game.Players.PlayerAdded:Connect(fillList)
	game.Players.PlayerRemoving:Connect(fillList)
	
	
	--[[local GetPlayer = game:GetService("Players")
	local changenameswhile = false
	
	script.Parent.Parent.MakeName.MouseButton1Click:Connect(function() 
		local changenameswhile = true
		
		while changenameswhile do
			GetPlayer.LocalPlayer.PlayerGui.TradeApp.Frame.NegotiationFrame.Header.PartnerFrame.NameLabel.Text = nameplayervalue
			GetPlayer.LocalPlayer.PlayerGui.TradeApp.Frame.ConfirmationFrame.PartnerLabel.Text = nameplayervalue
			wait(0.000000001)
		end
		
	end)
	
	script.Parent.Parent.ResetTrade.MouseButton1Click:Connect(function() 
		local changenameswhile = false
		print("True!")
	end)]]
	
	-- Get the Players service
	local Players = game:GetService("Players")
	
	-- Initialize the 'changenameswhile' variable
	
	-- Connect the 'MouseButton1Click' event for the 'MakeName' button
	script.Parent.Parent.MakeName.MouseButton1Click:Connect(function()
		-- Change the 'changenameswhile' variable to true
		changenameswhile = true
	
		-- Start the 'while' loop
		while changenameswhile do
			-- Update the name label for the partner
			Players.LocalPlayer.PlayerGui.TradeApp.Frame.NegotiationFrame.Header.PartnerFrame.NameLabel.Text = nameplayervalue
			Players.LocalPlayer.PlayerGui.TradeApp.Frame.ConfirmationFrame.PartnerLabel.Text = nameplayervalue
	
			-- Wait a very short time to prevent excessive CPU usage
			wait(0.000000001)
		end
	
		-- Change the 'changenameswhile' variable to false to stop the loop
		changenameswhile = false
	end)
	
	-- Connect the 'MouseButton1Click' event for the 'ResetTrade' button
	script.Parent.Parent.ResetTrade.MouseButton1Click:Connect(function()
		-- Change the 'changenameswhile' variable to false
		changenameswhile = false
		-- Print "True!" to the console
		print("True!")
	end)
end
coroutine.wrap(LGDH_fake_script)()
local function NDFVHYF_fake_script() -- AdopChangeNam.LocalScript 
	local script = Instance.new('LocalScript', AdopChangeNam)

	
	
	
	local main = script.Parent.main
	local buttons = main.buttons
	
	buttons.minize.MouseButton1Click:Connect(function() 
		if main.Borderg.Visible == true then
	
			main.Borderg.Visible = false
			main.MakeName.Visible = false
			main.MakeName.Visible = false
			main.ResetTrade.Visible = false
			main.OpenPlayer.Visible = false
			main.Players.Visible = false
			main.NamePlayersText.Visible = false
			main.nicknameplr.Visible = false
			main.Whomade.Visible = false
		--	main.TextPlayerBox.Visible = false
			main.BackgroundTransparency = 1
			main.buttons.minize.Text = "+"
	
		else
	
			main.Borderg.Visible = true
			main.nicknameplr.Visible = true
			main.MakeName.Visible = true
			main.MakeName.Visible = true
			main.ResetTrade.Visible = true
			main.NamePlayersText.Visible = true
			main.OpenPlayer.Visible = true
			main.Players.Visible = false
			main.Whomade.Visible = true
			--main.TextPlayerBox.Visible = true
			main.BackgroundTransparency = 0
			main.buttons.minize.Text = "-"
	
		
		end
	end)
	
	buttons.Close.MouseButton1Click:Connect(function() 
		print("SCRIPT DESTROY!")
		script.Parent.Parent.AdopChangeNam:Destroy()
	end)
	
	main.Players.Title.Close.MouseButton1Click:Connect(function() 
		main.Players.Visible = false
	end)
	
end
coroutine.wrap(NDFVHYF_fake_script)()
