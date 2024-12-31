--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local BackPackPSYCHOSCRIPTS = Instance.new("ScreenGui")
local backpack = Instance.new("Frame")
local PaperBackingBottom = Instance.new("ImageLabel")
local Stripes = Instance.new("ImageLabel")
local PaperBackingLeft = Instance.new("ImageLabel")
local Stripes_2 = Instance.new("ImageLabel")
local PaperBackingTop = Instance.new("ImageLabel")
local Stripes_3 = Instance.new("ImageLabel")
local PaperBackingRight = Instance.new("ImageLabel")
local Stripes_4 = Instance.new("ImageLabel")
local Shadow = Instance.new("ImageLabel")
local Foreground = Instance.new("ImageLabel")
local Body = Instance.new("Frame")
local ScrollComplex = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Content = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local pets = Instance.new("Frame")
local Row0 = Instance.new("Frame")
local add_more_pets = Instance.new("Frame")
local Button = Instance.new("ImageButton")
local Face = Instance.new("ImageLabel")
local Colors = Instance.new("Frame")
local Base = Instance.new("ImageLabel")
local Highlight = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Shadow_2 = Instance.new("ImageLabel")
local Colors_2 = Instance.new("Frame")
local Left = Instance.new("ImageLabel")
local Middle = Instance.new("ImageLabel")
local Right = Instance.new("ImageLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local ScrollbarBacking = Instance.new("ImageLabel")
local GradientFade = Instance.new("ImageLabel")
local UIPadding = Instance.new("UIPadding")
local Categories = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local favorites = Instance.new("ImageButton")
local Face_2 = Instance.new("ImageLabel")
local Colors_3 = Instance.new("Frame")
local Base_2 = Instance.new("ImageLabel")
local Highlight_2 = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local Shadow_3 = Instance.new("ImageLabel")
local Colors_4 = Instance.new("Frame")
local Left_2 = Instance.new("ImageLabel")
local Middle_2 = Instance.new("ImageLabel")
local Right_2 = Instance.new("ImageLabel")
local pets_2 = Instance.new("ImageButton")
local Face_3 = Instance.new("ImageLabel")
local Colors_5 = Instance.new("Frame")
local Base_3 = Instance.new("ImageLabel")
local Highlight_3 = Instance.new("ImageLabel")
local Icon_2 = Instance.new("ImageLabel")
local Shadow_4 = Instance.new("ImageLabel")
local Colors_6 = Instance.new("Frame")
local Left_3 = Instance.new("ImageLabel")
local Middle_3 = Instance.new("ImageLabel")
local Right_3 = Instance.new("ImageLabel")
local food = Instance.new("ImageButton")
local Face_4 = Instance.new("ImageLabel")
local Colors_7 = Instance.new("Frame")
local Base_4 = Instance.new("ImageLabel")
local Highlight_4 = Instance.new("ImageLabel")
local Icon_3 = Instance.new("ImageLabel")
local Shadow_5 = Instance.new("ImageLabel")
local Colors_8 = Instance.new("Frame")
local Left_4 = Instance.new("ImageLabel")
local Middle_4 = Instance.new("ImageLabel")
local Right_4 = Instance.new("ImageLabel")
local gifts = Instance.new("ImageButton")
local Face_5 = Instance.new("ImageLabel")
local Colors_9 = Instance.new("Frame")
local Base_5 = Instance.new("ImageLabel")
local Highlight_5 = Instance.new("ImageLabel")
local Icon_4 = Instance.new("ImageLabel")
local Shadow_6 = Instance.new("ImageLabel")
local Colors_10 = Instance.new("Frame")
local Left_5 = Instance.new("ImageLabel")
local Middle_5 = Instance.new("ImageLabel")
local Right_5 = Instance.new("ImageLabel")
local transport = Instance.new("ImageButton")
local Face_6 = Instance.new("ImageLabel")
local Colors_11 = Instance.new("Frame")
local Base_6 = Instance.new("ImageLabel")
local Highlight_6 = Instance.new("ImageLabel")
local Icon_5 = Instance.new("ImageLabel")
local Shadow_7 = Instance.new("ImageLabel")
local Colors_12 = Instance.new("Frame")
local Left_6 = Instance.new("ImageLabel")
local Middle_6 = Instance.new("ImageLabel")
local Right_6 = Instance.new("ImageLabel")
local strollers = Instance.new("ImageButton")
local Face_7 = Instance.new("ImageLabel")
local Colors_13 = Instance.new("Frame")
local Base_7 = Instance.new("ImageLabel")
local Highlight_7 = Instance.new("ImageLabel")
local Icon_6 = Instance.new("ImageLabel")
local Shadow_8 = Instance.new("ImageLabel")
local Colors_14 = Instance.new("Frame")
local Left_7 = Instance.new("ImageLabel")
local Middle_7 = Instance.new("ImageLabel")
local Right_7 = Instance.new("ImageLabel")
local pet_accessories = Instance.new("ImageButton")
local Face_8 = Instance.new("ImageLabel")
local Colors_15 = Instance.new("Frame")
local Base_8 = Instance.new("ImageLabel")
local Highlight_8 = Instance.new("ImageLabel")
local Icon_7 = Instance.new("ImageLabel")
local Shadow_9 = Instance.new("ImageLabel")
local Colors_16 = Instance.new("Frame")
local Left_8 = Instance.new("ImageLabel")
local Middle_8 = Instance.new("ImageLabel")
local Right_8 = Instance.new("ImageLabel")
local toys = Instance.new("ImageButton")
local Face_9 = Instance.new("ImageLabel")
local Colors_17 = Instance.new("Frame")
local Base_9 = Instance.new("ImageLabel")
local Highlight_9 = Instance.new("ImageLabel")
local Icon_8 = Instance.new("ImageLabel")
local Shadow_10 = Instance.new("ImageLabel")
local Colors_18 = Instance.new("Frame")
local Left_9 = Instance.new("ImageLabel")
local Middle_9 = Instance.new("ImageLabel")
local Right_9 = Instance.new("ImageLabel")
local UIGridLayout = Instance.new("UIGridLayout")
local UIPadding_2 = Instance.new("UIPadding")
local stickers = Instance.new("ImageButton")
local Face_10 = Instance.new("ImageLabel")
local Colors_19 = Instance.new("Frame")
local Base_10 = Instance.new("ImageLabel")
local Highlight_10 = Instance.new("ImageLabel")
local Icon_9 = Instance.new("ImageLabel")
local Shadow_11 = Instance.new("ImageLabel")
local Colors_20 = Instance.new("Frame")
local Left_10 = Instance.new("ImageLabel")
local Middle_10 = Instance.new("ImageLabel")
local Right_10 = Instance.new("ImageLabel")
local wings = Instance.new("ImageButton")
local Face_11 = Instance.new("ImageLabel")
local Colors_21 = Instance.new("Frame")
local Base_11 = Instance.new("ImageLabel")
local Highlight_11 = Instance.new("ImageLabel")
local Icon_10 = Instance.new("ImageLabel")
local Shadow_12 = Instance.new("ImageLabel")
local Colors_22 = Instance.new("Frame")
local Left_11 = Instance.new("ImageLabel")
local Middle_11 = Instance.new("ImageLabel")
local Right_11 = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Backing = Instance.new("ImageLabel")
local Glow = Instance.new("ImageLabel")
local Header = Instance.new("Frame")
local InsetSpace = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Search = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local Filter = Instance.new("Frame")
local FilterButton = Instance.new("ImageButton")
local Face_12 = Instance.new("ImageLabel")
local Colors_23 = Instance.new("Frame")
local Base_12 = Instance.new("ImageLabel")
local Highlight_12 = Instance.new("ImageLabel")
local Icon_11 = Instance.new("ImageLabel")
local Shadow_13 = Instance.new("ImageLabel")
local Colors_24 = Instance.new("Frame")
local Left_12 = Instance.new("ImageLabel")
local Middle_12 = Instance.new("ImageLabel")
local Right_12 = Instance.new("ImageLabel")
local Icon_12 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local ExitButton = Instance.new("ImageButton")
local Face_13 = Instance.new("ImageLabel")
local Colors_25 = Instance.new("Frame")
local Base_13 = Instance.new("ImageLabel")
local Highlight_13 = Instance.new("ImageLabel")
local Icon_13 = Instance.new("ImageLabel")
local Shadow_14 = Instance.new("ImageLabel")
local Colors_26 = Instance.new("Frame")
local Left_13 = Instance.new("ImageLabel")
local Middle_13 = Instance.new("ImageLabel")
local Right_13 = Instance.new("ImageLabel")
local Tooltip = Instance.new("Frame")
local List = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local dividerA = Instance.new("Frame")
local Line = Instance.new("ImageLabel")
local UIPadding_3 = Instance.new("UIPadding")
local title = Instance.new("Frame")
local ImageContainer = Instance.new("Frame")
local Border = Instance.new("ImageLabel")
local Icon_14 = Instance.new("ImageLabel")
local Favorited = Instance.new("ImageLabel")
local Titles = Instance.new("Frame")
local Header_2 = Instance.new("TextLabel")
local SubHeader = Instance.new("TextLabel")
local SubHeader2 = Instance.new("TextLabel")
local UIListLayout_5 = Instance.new("UIListLayout")
local dividerC = Instance.new("Frame")
local Line_2 = Instance.new("ImageLabel")
local UIPadding_4 = Instance.new("UIPadding")
local description = Instance.new("Frame")
local Scroll = Instance.new("ScrollingFrame")
local Template = Instance.new("TextLabel")
local UIListLayout_6 = Instance.new("UIListLayout")
local Template2 = Instance.new("TextLabel")
local Template4 = Instance.new("TextLabel")
local Background = Instance.new("ImageLabel")
local Shadow_15 = Instance.new("ImageLabel")
local Corner = Instance.new("ImageLabel")
local PetTemplate = Instance.new("Frame")
local Button_2 = Instance.new("ImageButton")
local Glow_2 = Instance.new("ImageLabel")
local Favorited_2 = Instance.new("ImageLabel")
local StackCount = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Locked = Instance.new("ImageLabel")
local Icon_15 = Instance.new("ImageLabel")
local ItemImageTemplate = Instance.new("ImageLabel")
local TagDisplayTemplate = Instance.new("Frame")
local neon = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local rideable = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local flyable = Instance.new("ImageLabel")
local TextLabel_6 = Instance.new("TextLabel")
local wearing = Instance.new("ImageLabel")
local Icon_16 = Instance.new("ImageLabel")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local mega_neon_old = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
local mega_neon = Instance.new("ImageLabel")
local TextLabel_8 = Instance.new("TextLabel")
local sticker = Instance.new("ImageLabel")
local Icon_17 = Instance.new("ImageLabel")
local ItemBorderIndicatorTemplate = Instance.new("ImageLabel")
local Pip = Instance.new("ImageLabel")
local Corner_2 = Instance.new("ImageLabel")
local FriendshipBorder = Instance.new("ImageLabel")
local FriendshipIcon = Instance.new("ImageLabel")
local TooltipClick = Instance.new("Frame")
local List_2 = Instance.new("Frame")
local UIListLayout_7 = Instance.new("UIListLayout")
local title_2 = Instance.new("Frame")
local ImageContainer_2 = Instance.new("Frame")
local Border_2 = Instance.new("ImageLabel")
local Icon_18 = Instance.new("ImageLabel")
local Favorited_3 = Instance.new("ImageLabel")
local Titles_2 = Instance.new("Frame")
local Header_3 = Instance.new("TextLabel")
local SubHeader_2 = Instance.new("TextLabel")
local SubHeader2_2 = Instance.new("TextLabel")
local UIListLayout_8 = Instance.new("UIListLayout")
local dividerA_2 = Instance.new("Frame")
local Line_3 = Instance.new("ImageLabel")
local UIPadding_5 = Instance.new("UIPadding")
local dividerB = Instance.new("Frame")
local Line_4 = Instance.new("ImageLabel")
local UIPadding_6 = Instance.new("UIPadding")
local description_2 = Instance.new("Frame")
local Scroll_2 = Instance.new("ScrollingFrame")
local UIListLayout_9 = Instance.new("UIListLayout")
local Template4_2 = Instance.new("TextLabel")
local Template_2 = Instance.new("TextLabel")
local actions = Instance.new("Frame")
local Row1 = Instance.new("Frame")
local UIListLayout_10 = Instance.new("UIListLayout")
local Equip = Instance.new("ImageButton")
local Face_14 = Instance.new("ImageLabel")
local Colors_27 = Instance.new("Frame")
local Base_14 = Instance.new("ImageLabel")
local Highlight_14 = Instance.new("ImageLabel")
local TextLabel_9 = Instance.new("TextLabel")
local Shadow_16 = Instance.new("ImageLabel")
local Colors_28 = Instance.new("Frame")
local Left_14 = Instance.new("ImageLabel")
local Middle_14 = Instance.new("ImageLabel")
local Right_14 = Instance.new("ImageLabel")
local Favorite = Instance.new("ImageButton")
local Face_15 = Instance.new("ImageLabel")
local Colors_29 = Instance.new("Frame")
local Base_15 = Instance.new("ImageLabel")
local Highlight_15 = Instance.new("ImageLabel")
local StarIcon = Instance.new("ImageLabel")
local Shadow_17 = Instance.new("ImageLabel")
local Colors_30 = Instance.new("Frame")
local Left_15 = Instance.new("ImageLabel")
local Middle_15 = Instance.new("ImageLabel")
local Right_15 = Instance.new("ImageLabel")
local EquipAlt = Instance.new("ImageButton")
local Face_16 = Instance.new("ImageLabel")
local Colors_31 = Instance.new("Frame")
local Base_16 = Instance.new("ImageLabel")
local Highlight_16 = Instance.new("ImageLabel")
local TextLabel_10 = Instance.new("TextLabel")
local Shadow_18 = Instance.new("ImageLabel")
local Colors_32 = Instance.new("Frame")
local Left_16 = Instance.new("ImageLabel")
local Middle_16 = Instance.new("ImageLabel")
local Right_16 = Instance.new("ImageLabel")
local Lock = Instance.new("ImageButton")
local Face_17 = Instance.new("ImageLabel")
local Colors_33 = Instance.new("Frame")
local Base_17 = Instance.new("ImageLabel")
local Highlight_17 = Instance.new("ImageLabel")
local LockIcon = Instance.new("ImageLabel")
local Shadow_19 = Instance.new("ImageLabel")
local Colors_34 = Instance.new("Frame")
local Left_17 = Instance.new("ImageLabel")
local Middle_17 = Instance.new("ImageLabel")
local Right_17 = Instance.new("ImageLabel")
local Row2 = Instance.new("Frame")
local UIListLayout_11 = Instance.new("UIListLayout")
local UIPadding_7 = Instance.new("UIPadding")
local UIListLayout_12 = Instance.new("UIListLayout")
local dividerC_2 = Instance.new("Frame")
local Line_5 = Instance.new("ImageLabel")
local UIPadding_8 = Instance.new("UIPadding")
local ExitButton_2 = Instance.new("ImageButton")
local Face_18 = Instance.new("ImageLabel")
local Colors_35 = Instance.new("Frame")
local Base_18 = Instance.new("ImageLabel")
local Highlight_18 = Instance.new("ImageLabel")
local Icon_19 = Instance.new("ImageLabel")
local Shadow_20 = Instance.new("ImageLabel")
local Colors_36 = Instance.new("Frame")
local Left_18 = Instance.new("ImageLabel")
local Middle_18 = Instance.new("ImageLabel")
local Right_18 = Instance.new("ImageLabel")
local Background_2 = Instance.new("ImageLabel")
local Shadow_21 = Instance.new("ImageLabel")
local Corner_3 = Instance.new("ImageLabel")
local BackpackTool = Instance.new("Frame")
local Hotbar = Instance.new("Frame")
local OpenBackpackContainer = Instance.new("Frame")
local OpenBackpack = Instance.new("ImageButton")
local InnerColor = Instance.new("ImageLabel")
local BackpackIcon = Instance.new("ImageLabel")
local UIScale = Instance.new("UIScale")
local XboxButton = Instance.new("ImageLabel")
local Shadow_22 = Instance.new("ImageLabel")
local UIPadding_9 = Instance.new("UIPadding")
local UIScale_2 = Instance.new("UIScale")

-- Properties

BackPackPSYCHOSCRIPTS.Name = "BackPack(PSYCHO-SCRIPTS)"
BackPackPSYCHOSCRIPTS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BackPackPSYCHOSCRIPTS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BackPackPSYCHOSCRIPTS.DisplayOrder = 6
BackPackPSYCHOSCRIPTS.ResetOnSpawn = false

backpack.Name = "backpack"
backpack.Parent = BackPackPSYCHOSCRIPTS
backpack.Active = true
backpack.AnchorPoint = Vector2.new(0.5, 1)
backpack.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
backpack.BackgroundTransparency = 1
backpack.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
backpack.Position = UDim2.new(0.5, 0, 1, -150)
backpack.Size = UDim2.new(0, 497, 0, 309)
backpack.Visible = false

PaperBackingBottom.Name = "PaperBackingBottom"
PaperBackingBottom.Parent = backpack
PaperBackingBottom.AnchorPoint = Vector2.new(1, 0)
PaperBackingBottom.BackgroundColor3 = Color3.new(1, 1, 1)
PaperBackingBottom.BackgroundTransparency = 1
PaperBackingBottom.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
PaperBackingBottom.Position = UDim2.new(1, -18, 1, 0)
PaperBackingBottom.Size = UDim2.new(0, 206, 0, 23)
PaperBackingBottom.Image = "rbxassetid://2584785002"
PaperBackingBottom.ImageColor3 = Color3.new(1, 0.603922, 0.894118)

Stripes.Name = "Stripes"
Stripes.Parent = PaperBackingBottom
Stripes.BackgroundColor3 = Color3.new(1, 1, 1)
Stripes.BackgroundTransparency = 1
Stripes.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Stripes.Size = UDim2.new(1, 0, 1, 0)
Stripes.Image = "rbxassetid://2584785006"
Stripes.ImageColor3 = Color3.new(1, 0.529412, 0.870588)

PaperBackingLeft.Name = "PaperBackingLeft"
PaperBackingLeft.Parent = backpack
PaperBackingLeft.AnchorPoint = Vector2.new(1, 1)
PaperBackingLeft.BackgroundColor3 = Color3.new(1, 1, 1)
PaperBackingLeft.BackgroundTransparency = 1
PaperBackingLeft.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
PaperBackingLeft.Position = UDim2.new(0, 0, 1, -18)
PaperBackingLeft.Size = UDim2.new(0, 11, 0, 99)
PaperBackingLeft.Image = "rbxassetid://2584789128"
PaperBackingLeft.ImageColor3 = Color3.new(1, 0.603922, 0.894118)

Stripes_2.Name = "Stripes"
Stripes_2.Parent = PaperBackingLeft
Stripes_2.BackgroundColor3 = Color3.new(1, 1, 1)
Stripes_2.BackgroundTransparency = 1
Stripes_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Stripes_2.Size = UDim2.new(1, 0, 1, 0)
Stripes_2.Image = "rbxassetid://2584789121"
Stripes_2.ImageColor3 = Color3.new(1, 0.529412, 0.870588)

PaperBackingTop.Name = "PaperBackingTop"
PaperBackingTop.Parent = backpack
PaperBackingTop.AnchorPoint = Vector2.new(0, 1)
PaperBackingTop.BackgroundColor3 = Color3.new(1, 1, 1)
PaperBackingTop.BackgroundTransparency = 1
PaperBackingTop.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
PaperBackingTop.Position = UDim2.new(0, 18, 0, 0)
PaperBackingTop.Size = UDim2.new(0, 270, 0, 31)
PaperBackingTop.Image = "rbxassetid://2584745693"
PaperBackingTop.ImageColor3 = Color3.new(1, 0.603922, 0.894118)

Stripes_3.Name = "Stripes"
Stripes_3.Parent = PaperBackingTop
Stripes_3.BackgroundColor3 = Color3.new(1, 1, 1)
Stripes_3.BackgroundTransparency = 1
Stripes_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Stripes_3.Size = UDim2.new(1, 0, 1, 0)
Stripes_3.Image = "rbxassetid://2584745695"
Stripes_3.ImageColor3 = Color3.new(1, 0.529412, 0.870588)

PaperBackingRight.Name = "PaperBackingRight"
PaperBackingRight.Parent = backpack
PaperBackingRight.BackgroundColor3 = Color3.new(1, 1, 1)
PaperBackingRight.BackgroundTransparency = 1
PaperBackingRight.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
PaperBackingRight.Position = UDim2.new(1, 0, 0, 18)
PaperBackingRight.Size = UDim2.new(0, 12, 0, 114)
PaperBackingRight.Image = "rbxassetid://2584760581"
PaperBackingRight.ImageColor3 = Color3.new(1, 0.603922, 0.894118)

Stripes_4.Name = "Stripes"
Stripes_4.Parent = PaperBackingRight
Stripes_4.BackgroundColor3 = Color3.new(1, 1, 1)
Stripes_4.BackgroundTransparency = 1
Stripes_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Stripes_4.Size = UDim2.new(1, 0, 1, 0)
Stripes_4.Image = "rbxassetid://2584760580"
Stripes_4.ImageColor3 = Color3.new(1, 0.529412, 0.870588)

Shadow.Name = "Shadow"
Shadow.Parent = backpack
Shadow.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow.BackgroundTransparency = 1
Shadow.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.ZIndex = 2
Shadow.Image = "rbxassetid://2577985667"
Shadow.ImageColor3 = Color3.new(0, 0, 0)
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(20, 20, 50, 50)

Foreground.Name = "Foreground"
Foreground.Parent = backpack
Foreground.AnchorPoint = Vector2.new(0.5, 0.5)
Foreground.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Foreground.BackgroundTransparency = 1
Foreground.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Foreground.Position = UDim2.new(0.5, 0, 0.5, 0)
Foreground.Size = UDim2.new(1, 0, 1, 0)
Foreground.ZIndex = 3
Foreground.Image = "rbxassetid://2577067554"
Foreground.ImageColor3 = Color3.new(1, 0.898039, 0.972549)
Foreground.ScaleType = Enum.ScaleType.Slice
Foreground.SliceCenter = Rect.new(10, 10, 19, 19)

Body.Name = "Body"
Body.Parent = backpack
Body.BackgroundColor3 = Color3.new(1, 1, 1)
Body.BackgroundTransparency = 1
Body.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Body.Position = UDim2.new(0, 0, 0, 40)
Body.Size = UDim2.new(1, 0, 1, -40)
Body.ZIndex = 4

ScrollComplex.Name = "ScrollComplex"
ScrollComplex.Parent = Body
ScrollComplex.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollComplex.BackgroundTransparency = 1
ScrollComplex.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ScrollComplex.BorderSizePixel = 0
ScrollComplex.Position = UDim2.new(0, 138, 0, 0)
ScrollComplex.Size = UDim2.new(1, -142, 1, 0)

ScrollingFrame.Parent = ScrollComplex
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Selectable = false
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.ZIndex = 2
ScrollingFrame.BottomImage = "rbxassetid://2577230880"
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 115)
ScrollingFrame.MidImage = "rbxassetid://2577230871"
ScrollingFrame.TopImage = "rbxassetid://2577230883"

Content.Name = "Content"
Content.Parent = ScrollingFrame
Content.BackgroundColor3 = Color3.new(1, 1, 1)
Content.BackgroundTransparency = 1
Content.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Content.BorderSizePixel = 0
Content.Size = UDim2.new(1, -23, 1, 0)

UIListLayout.Parent = Content
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

pets.Name = "pets"
pets.Parent = Content
pets.BackgroundTransparency = 1
pets.LayoutOrder = 6
pets.Size = UDim2.new(1, 0, 0, 80)

Row0.Name = "Row0"
Row0.Parent = pets
Row0.BackgroundTransparency = 1
Row0.Size = UDim2.new(1, 0, 2.0849998, 80)

add_more_pets.Name = "add_more_pets"
add_more_pets.Parent = Row0
add_more_pets.BackgroundTransparency = 1
add_more_pets.LayoutOrder = 1
add_more_pets.Size = UDim2.new(0, 80, 0, 80)

Button.Name = "Button"
Button.Parent = add_more_pets
Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Button.BackgroundTransparency = 1
Button.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Button.LayoutOrder = -1
Button.Position = UDim2.new(0.5, 0, 0.5, 0)
Button.Size = UDim2.new(1, -2, 1, -2)

Face.Name = "Face"
Face.Parent = Button
Face.BackgroundColor3 = Color3.new(1, 1, 1)
Face.BackgroundTransparency = 1
Face.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face.Size = UDim2.new(1, 0, 0.899999976, 0)
Face.ZIndex = 2

Colors.Name = "Colors"
Colors.Parent = Face
Colors.BackgroundColor3 = Color3.new(1, 1, 1)
Colors.BackgroundTransparency = 1
Colors.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors.Size = UDim2.new(1, 0, 1, 0)

Base.Name = "Base"
Base.Parent = Colors
Base.BackgroundColor3 = Color3.new(1, 1, 1)
Base.BackgroundTransparency = 1
Base.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base.Size = UDim2.new(1, 0, 1, 0)
Base.Image = "rbxassetid://7445833582"
Base.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight.Name = "Highlight"
Highlight.Parent = Colors
Highlight.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight.BackgroundTransparency = 1
Highlight.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight.Size = UDim2.new(1, -2, 1, -2)
Highlight.ZIndex = 2
Highlight.Image = "rbxassetid://7445833936"
Highlight.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight.ScaleType = Enum.ScaleType.Slice
Highlight.SliceCenter = Rect.new(9, 9, 28, 20)

TextLabel.Parent = Face
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel.Size = UDim2.new(1, 0, 1, 8)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "+"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 80
TextLabel.TextWrapped = true

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Button
Shadow_2.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_2.BackgroundTransparency = 1
Shadow_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_2.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_2.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_2.Name = "Colors"
Colors_2.Parent = Shadow_2
Colors_2.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_2.BackgroundTransparency = 1
Colors_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_2.Size = UDim2.new(1, 0, 1, 0)

Left.Name = "Left"
Left.Parent = Colors_2
Left.BackgroundColor3 = Color3.new(1, 1, 1)
Left.BackgroundTransparency = 1
Left.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left.Size = UDim2.new(0, 16, 1, 0)
Left.ZIndex = 2
Left.Image = "rbxassetid://7445833791"
Left.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left.ScaleType = Enum.ScaleType.Slice
Left.SliceCenter = Rect.new(0, 7, 16, 21)

Middle.Name = "Middle"
Middle.Parent = Colors_2
Middle.AnchorPoint = Vector2.new(0, 1)
Middle.BackgroundColor3 = Color3.new(1, 1, 1)
Middle.BackgroundTransparency = 1
Middle.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle.Position = UDim2.new(0, 0, 1, 0)
Middle.Size = UDim2.new(1, 0, 1, 0)
Middle.Image = "rbxassetid://7445833582"
Middle.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle.ScaleType = Enum.ScaleType.Slice
Middle.SliceCenter = Rect.new(6, 6, 29, 21)

Right.Name = "Right"
Right.Parent = Colors_2
Right.AnchorPoint = Vector2.new(1, 0)
Right.BackgroundColor3 = Color3.new(1, 1, 1)
Right.BackgroundTransparency = 1
Right.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right.Position = UDim2.new(1, 0, 0, 0)
Right.Size = UDim2.new(0, 16, 1, 0)
Right.ZIndex = 2
Right.Image = "rbxassetid://7445834073"
Right.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right.ScaleType = Enum.ScaleType.Slice
Right.SliceCenter = Rect.new(0, 7, 16, 21)

UIListLayout_2.Parent = Row0
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

ScrollbarBacking.Name = "ScrollbarBacking"
ScrollbarBacking.Parent = ScrollComplex
ScrollbarBacking.AnchorPoint = Vector2.new(1, 0)
ScrollbarBacking.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollbarBacking.BackgroundTransparency = 1
ScrollbarBacking.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ScrollbarBacking.Position = UDim2.new(1, 4, 0, -4)
ScrollbarBacking.Size = UDim2.new(0, 20, 1, 8)
ScrollbarBacking.Image = "rbxassetid://2577234979"
ScrollbarBacking.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
ScrollbarBacking.ScaleType = Enum.ScaleType.Slice
ScrollbarBacking.SliceCenter = Rect.new(0, 10, 0, 25)

GradientFade.Name = "GradientFade"
GradientFade.Parent = ScrollComplex
GradientFade.AnchorPoint = Vector2.new(0, 1)
GradientFade.BackgroundColor3 = Color3.new(1, 0, 0)
GradientFade.BackgroundTransparency = 1
GradientFade.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
GradientFade.BorderSizePixel = 0
GradientFade.Position = UDim2.new(0, 0, 1, 0)
GradientFade.Size = UDim2.new(1, -23, 0, 35)
GradientFade.ZIndex = 4
GradientFade.Image = "rbxassetid://2592959299"
GradientFade.ImageColor3 = Color3.new(1, 0.898039, 0.972549)

UIPadding.Parent = Body
UIPadding.PaddingBottom = UDim.new(0, 6)
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.PaddingRight = UDim.new(0, 6)
UIPadding.PaddingTop = UDim.new(0, 6)

Categories.Name = "Categories"
Categories.Parent = Body
Categories.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Categories.BackgroundTransparency = 1
Categories.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Categories.Size = UDim2.new(0, 132, 1, 0)

Buttons.Name = "Buttons"
Buttons.Parent = Categories
Buttons.AnchorPoint = Vector2.new(0, 1)
Buttons.BackgroundColor3 = Color3.new(1, 1, 1)
Buttons.BackgroundTransparency = 1
Buttons.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Buttons.Position = UDim2.new(0, 0, 1, 0)
Buttons.Size = UDim2.new(1, 0, 1, -26)

favorites.Name = "favorites"
favorites.Parent = Buttons
favorites.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
favorites.BackgroundTransparency = 1
favorites.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
favorites.LayoutOrder = 1
favorites.Size = UDim2.new(1, 0, 0, 33)

Face_2.Name = "Face"
Face_2.Parent = favorites
Face_2.BackgroundColor3 = Color3.new(1, 1, 1)
Face_2.BackgroundTransparency = 1
Face_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_2.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_2.ZIndex = 2

Colors_3.Name = "Colors"
Colors_3.Parent = Face_2
Colors_3.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_3.BackgroundTransparency = 1
Colors_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_3.Size = UDim2.new(1, 0, 1, 0)

Base_2.Name = "Base"
Base_2.Parent = Colors_3
Base_2.BackgroundColor3 = Color3.new(1, 1, 1)
Base_2.BackgroundTransparency = 1
Base_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_2.Size = UDim2.new(1, 0, 1, 0)
Base_2.Image = "rbxassetid://7445833582"
Base_2.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_2.ScaleType = Enum.ScaleType.Slice
Base_2.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_2.Name = "Highlight"
Highlight_2.Parent = Colors_3
Highlight_2.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_2.BackgroundTransparency = 1
Highlight_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_2.Size = UDim2.new(1, -2, 1, -2)
Highlight_2.ZIndex = 2
Highlight_2.Image = "rbxassetid://7445833936"
Highlight_2.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_2.ScaleType = Enum.ScaleType.Slice
Highlight_2.SliceCenter = Rect.new(9, 9, 28, 20)

Icon.Name = "Icon"
Icon.Parent = Face_2
Icon.Active = true
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon.BackgroundTransparency = 1
Icon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon.Size = UDim2.new(0, 38, 0, 38)
Icon.Image = "rbxassetid://14433694804"

Shadow_3.Name = "Shadow"
Shadow_3.Parent = favorites
Shadow_3.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_3.BackgroundTransparency = 1
Shadow_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_3.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_3.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_4.Name = "Colors"
Colors_4.Parent = Shadow_3
Colors_4.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_4.BackgroundTransparency = 1
Colors_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_4.Size = UDim2.new(1, 0, 1, 0)

Left_2.Name = "Left"
Left_2.Parent = Colors_4
Left_2.BackgroundColor3 = Color3.new(1, 1, 1)
Left_2.BackgroundTransparency = 1
Left_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_2.Size = UDim2.new(0, 16, 1, 0)
Left_2.ZIndex = 2
Left_2.Image = "rbxassetid://7445833791"
Left_2.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_2.ScaleType = Enum.ScaleType.Slice
Left_2.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_2.Name = "Middle"
Middle_2.Parent = Colors_4
Middle_2.AnchorPoint = Vector2.new(0, 1)
Middle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_2.BackgroundTransparency = 1
Middle_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_2.Position = UDim2.new(0, 0, 1, 0)
Middle_2.Size = UDim2.new(1, 0, 1, 0)
Middle_2.Image = "rbxassetid://7445833582"
Middle_2.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_2.ScaleType = Enum.ScaleType.Slice
Middle_2.SliceCenter = Rect.new(6, 6, 29, 21)

Right_2.Name = "Right"
Right_2.Parent = Colors_4
Right_2.AnchorPoint = Vector2.new(1, 0)
Right_2.BackgroundColor3 = Color3.new(1, 1, 1)
Right_2.BackgroundTransparency = 1
Right_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_2.Position = UDim2.new(1, 0, 0, 0)
Right_2.Size = UDim2.new(0, 16, 1, 0)
Right_2.ZIndex = 2
Right_2.Image = "rbxassetid://7445834073"
Right_2.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_2.ScaleType = Enum.ScaleType.Slice
Right_2.SliceCenter = Rect.new(0, 7, 16, 21)

pets_2.Name = "pets"
pets_2.Parent = Buttons
pets_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
pets_2.BackgroundTransparency = 1
pets_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
pets_2.LayoutOrder = 2
pets_2.Size = UDim2.new(1, 0, 0, 33)

Face_3.Name = "Face"
Face_3.Parent = pets_2
Face_3.BackgroundColor3 = Color3.new(1, 1, 1)
Face_3.BackgroundTransparency = 1
Face_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_3.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_3.ZIndex = 2

Colors_5.Name = "Colors"
Colors_5.Parent = Face_3
Colors_5.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_5.BackgroundTransparency = 1
Colors_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_5.Size = UDim2.new(1, 0, 1, 0)

Base_3.Name = "Base"
Base_3.Parent = Colors_5
Base_3.BackgroundColor3 = Color3.new(1, 1, 1)
Base_3.BackgroundTransparency = 1
Base_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_3.Size = UDim2.new(1, 0, 1, 0)
Base_3.Image = "rbxassetid://7445833582"
Base_3.ImageColor3 = Color3.new(0.968627, 0.576471, 0.117647)
Base_3.ScaleType = Enum.ScaleType.Slice
Base_3.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_3.Name = "Highlight"
Highlight_3.Parent = Colors_5
Highlight_3.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_3.BackgroundTransparency = 1
Highlight_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_3.Size = UDim2.new(1, -2, 1, -2)
Highlight_3.ZIndex = 2
Highlight_3.Image = "rbxassetid://7445833936"
Highlight_3.ImageColor3 = Color3.new(0.984314, 0.690196, 0.231373)
Highlight_3.ScaleType = Enum.ScaleType.Slice
Highlight_3.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_2.Name = "Icon"
Icon_2.Parent = Face_3
Icon_2.Active = true
Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_2.BackgroundTransparency = 1
Icon_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_2.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_2.Size = UDim2.new(0, 38, 0, 38)
Icon_2.Image = "rbxassetid://14433695350"

Shadow_4.Name = "Shadow"
Shadow_4.Parent = pets_2
Shadow_4.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_4.BackgroundTransparency = 1
Shadow_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_4.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_4.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_6.Name = "Colors"
Colors_6.Parent = Shadow_4
Colors_6.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_6.BackgroundTransparency = 1
Colors_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_6.Size = UDim2.new(1, 0, 1, 0)

Left_3.Name = "Left"
Left_3.Parent = Colors_6
Left_3.BackgroundColor3 = Color3.new(1, 1, 1)
Left_3.BackgroundTransparency = 1
Left_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_3.Size = UDim2.new(0, 16, 1, 0)
Left_3.ZIndex = 2
Left_3.Image = "rbxassetid://7445833791"
Left_3.ImageColor3 = Color3.new(0.968627, 0.576471, 0.117647)
Left_3.ScaleType = Enum.ScaleType.Slice
Left_3.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_3.Name = "Middle"
Middle_3.Parent = Colors_6
Middle_3.AnchorPoint = Vector2.new(0, 1)
Middle_3.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_3.BackgroundTransparency = 1
Middle_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_3.Position = UDim2.new(0, 0, 1, 0)
Middle_3.Size = UDim2.new(1, 0, 1, 0)
Middle_3.Image = "rbxassetid://7445833582"
Middle_3.ImageColor3 = Color3.new(0.937255, 0.447059, 0.235294)
Middle_3.ScaleType = Enum.ScaleType.Slice
Middle_3.SliceCenter = Rect.new(6, 6, 29, 21)

Right_3.Name = "Right"
Right_3.Parent = Colors_6
Right_3.AnchorPoint = Vector2.new(1, 0)
Right_3.BackgroundColor3 = Color3.new(1, 1, 1)
Right_3.BackgroundTransparency = 1
Right_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_3.Position = UDim2.new(1, 0, 0, 0)
Right_3.Size = UDim2.new(0, 16, 1, 0)
Right_3.ZIndex = 2
Right_3.Image = "rbxassetid://7445834073"
Right_3.ImageColor3 = Color3.new(0.878431, 0.384314, 0.105882)
Right_3.ScaleType = Enum.ScaleType.Slice
Right_3.SliceCenter = Rect.new(0, 7, 16, 21)

food.Name = "food"
food.Parent = Buttons
food.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
food.BackgroundTransparency = 1
food.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
food.LayoutOrder = 5
food.Size = UDim2.new(1, 0, 0, 33)

Face_4.Name = "Face"
Face_4.Parent = food
Face_4.BackgroundColor3 = Color3.new(1, 1, 1)
Face_4.BackgroundTransparency = 1
Face_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_4.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_4.ZIndex = 2

Colors_7.Name = "Colors"
Colors_7.Parent = Face_4
Colors_7.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_7.BackgroundTransparency = 1
Colors_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_7.Size = UDim2.new(1, 0, 1, 0)

Base_4.Name = "Base"
Base_4.Parent = Colors_7
Base_4.BackgroundColor3 = Color3.new(1, 1, 1)
Base_4.BackgroundTransparency = 1
Base_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_4.Size = UDim2.new(1, 0, 1, 0)
Base_4.Image = "rbxassetid://7445833582"
Base_4.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_4.ScaleType = Enum.ScaleType.Slice
Base_4.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_4.Name = "Highlight"
Highlight_4.Parent = Colors_7
Highlight_4.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_4.BackgroundTransparency = 1
Highlight_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_4.Size = UDim2.new(1, -2, 1, -2)
Highlight_4.ZIndex = 2
Highlight_4.Image = "rbxassetid://7445833936"
Highlight_4.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_4.ScaleType = Enum.ScaleType.Slice
Highlight_4.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_3.Name = "Icon"
Icon_3.Parent = Face_4
Icon_3.Active = true
Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_3.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_3.BackgroundTransparency = 1
Icon_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_3.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_3.Size = UDim2.new(0, 38, 0, 38)
Icon_3.Image = "rbxassetid://14433694908"

Shadow_5.Name = "Shadow"
Shadow_5.Parent = food
Shadow_5.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_5.BackgroundTransparency = 1
Shadow_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_5.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_5.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_8.Name = "Colors"
Colors_8.Parent = Shadow_5
Colors_8.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_8.BackgroundTransparency = 1
Colors_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_8.Size = UDim2.new(1, 0, 1, 0)

Left_4.Name = "Left"
Left_4.Parent = Colors_8
Left_4.BackgroundColor3 = Color3.new(1, 1, 1)
Left_4.BackgroundTransparency = 1
Left_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_4.Size = UDim2.new(0, 16, 1, 0)
Left_4.ZIndex = 2
Left_4.Image = "rbxassetid://7445833791"
Left_4.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_4.ScaleType = Enum.ScaleType.Slice
Left_4.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_4.Name = "Middle"
Middle_4.Parent = Colors_8
Middle_4.AnchorPoint = Vector2.new(0, 1)
Middle_4.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_4.BackgroundTransparency = 1
Middle_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_4.Position = UDim2.new(0, 0, 1, 0)
Middle_4.Size = UDim2.new(1, 0, 1, 0)
Middle_4.Image = "rbxassetid://7445833582"
Middle_4.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_4.ScaleType = Enum.ScaleType.Slice
Middle_4.SliceCenter = Rect.new(6, 6, 29, 21)

Right_4.Name = "Right"
Right_4.Parent = Colors_8
Right_4.AnchorPoint = Vector2.new(1, 0)
Right_4.BackgroundColor3 = Color3.new(1, 1, 1)
Right_4.BackgroundTransparency = 1
Right_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_4.Position = UDim2.new(1, 0, 0, 0)
Right_4.Size = UDim2.new(0, 16, 1, 0)
Right_4.ZIndex = 2
Right_4.Image = "rbxassetid://7445834073"
Right_4.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_4.ScaleType = Enum.ScaleType.Slice
Right_4.SliceCenter = Rect.new(0, 7, 16, 21)

gifts.Name = "gifts"
gifts.Parent = Buttons
gifts.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
gifts.BackgroundTransparency = 1
gifts.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
gifts.LayoutOrder = 10
gifts.Size = UDim2.new(1, 0, 0, 33)

Face_5.Name = "Face"
Face_5.Parent = gifts
Face_5.BackgroundColor3 = Color3.new(1, 1, 1)
Face_5.BackgroundTransparency = 1
Face_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_5.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_5.ZIndex = 2

Colors_9.Name = "Colors"
Colors_9.Parent = Face_5
Colors_9.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_9.BackgroundTransparency = 1
Colors_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_9.Size = UDim2.new(1, 0, 1, 0)

Base_5.Name = "Base"
Base_5.Parent = Colors_9
Base_5.BackgroundColor3 = Color3.new(1, 1, 1)
Base_5.BackgroundTransparency = 1
Base_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_5.Size = UDim2.new(1, 0, 1, 0)
Base_5.Image = "rbxassetid://7445833582"
Base_5.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_5.ScaleType = Enum.ScaleType.Slice
Base_5.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_5.Name = "Highlight"
Highlight_5.Parent = Colors_9
Highlight_5.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_5.BackgroundTransparency = 1
Highlight_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_5.Size = UDim2.new(1, -2, 1, -2)
Highlight_5.ZIndex = 2
Highlight_5.Image = "rbxassetid://7445833936"
Highlight_5.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_5.ScaleType = Enum.ScaleType.Slice
Highlight_5.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_4.Name = "Icon"
Icon_4.Parent = Face_5
Icon_4.Active = true
Icon_4.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_4.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_4.BackgroundTransparency = 1
Icon_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_4.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_4.Size = UDim2.new(0, 38, 0, 38)
Icon_4.Image = "rbxassetid://14433695058"

Shadow_6.Name = "Shadow"
Shadow_6.Parent = gifts
Shadow_6.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_6.BackgroundTransparency = 1
Shadow_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_6.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_6.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_10.Name = "Colors"
Colors_10.Parent = Shadow_6
Colors_10.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_10.BackgroundTransparency = 1
Colors_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_10.Size = UDim2.new(1, 0, 1, 0)

Left_5.Name = "Left"
Left_5.Parent = Colors_10
Left_5.BackgroundColor3 = Color3.new(1, 1, 1)
Left_5.BackgroundTransparency = 1
Left_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_5.Size = UDim2.new(0, 16, 1, 0)
Left_5.ZIndex = 2
Left_5.Image = "rbxassetid://7445833791"
Left_5.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_5.ScaleType = Enum.ScaleType.Slice
Left_5.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_5.Name = "Middle"
Middle_5.Parent = Colors_10
Middle_5.AnchorPoint = Vector2.new(0, 1)
Middle_5.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_5.BackgroundTransparency = 1
Middle_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_5.Position = UDim2.new(0, 0, 1, 0)
Middle_5.Size = UDim2.new(1, 0, 1, 0)
Middle_5.Image = "rbxassetid://7445833582"
Middle_5.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_5.ScaleType = Enum.ScaleType.Slice
Middle_5.SliceCenter = Rect.new(6, 6, 29, 21)

Right_5.Name = "Right"
Right_5.Parent = Colors_10
Right_5.AnchorPoint = Vector2.new(1, 0)
Right_5.BackgroundColor3 = Color3.new(1, 1, 1)
Right_5.BackgroundTransparency = 1
Right_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_5.Position = UDim2.new(1, 0, 0, 0)
Right_5.Size = UDim2.new(0, 16, 1, 0)
Right_5.ZIndex = 2
Right_5.Image = "rbxassetid://7445834073"
Right_5.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_5.ScaleType = Enum.ScaleType.Slice
Right_5.SliceCenter = Rect.new(0, 7, 16, 21)

transport.Name = "transport"
transport.Parent = Buttons
transport.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
transport.BackgroundTransparency = 1
transport.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
transport.LayoutOrder = 6
transport.Size = UDim2.new(1, 0, 0, 33)

Face_6.Name = "Face"
Face_6.Parent = transport
Face_6.BackgroundColor3 = Color3.new(1, 1, 1)
Face_6.BackgroundTransparency = 1
Face_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_6.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_6.ZIndex = 2

Colors_11.Name = "Colors"
Colors_11.Parent = Face_6
Colors_11.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_11.BackgroundTransparency = 1
Colors_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_11.Size = UDim2.new(1, 0, 1, 0)

Base_6.Name = "Base"
Base_6.Parent = Colors_11
Base_6.BackgroundColor3 = Color3.new(1, 1, 1)
Base_6.BackgroundTransparency = 1
Base_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_6.Size = UDim2.new(1, 0, 1, 0)
Base_6.Image = "rbxassetid://7445833582"
Base_6.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_6.ScaleType = Enum.ScaleType.Slice
Base_6.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_6.Name = "Highlight"
Highlight_6.Parent = Colors_11
Highlight_6.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_6.BackgroundTransparency = 1
Highlight_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_6.Size = UDim2.new(1, -2, 1, -2)
Highlight_6.ZIndex = 2
Highlight_6.Image = "rbxassetid://7445833936"
Highlight_6.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_6.ScaleType = Enum.ScaleType.Slice
Highlight_6.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_5.Name = "Icon"
Icon_5.Parent = Face_6
Icon_5.Active = true
Icon_5.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_5.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_5.BackgroundTransparency = 1
Icon_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_5.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_5.Size = UDim2.new(0, 38, 0, 38)
Icon_5.Image = "rbxassetid://14433695765"

Shadow_7.Name = "Shadow"
Shadow_7.Parent = transport
Shadow_7.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_7.BackgroundTransparency = 1
Shadow_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_7.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_7.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_12.Name = "Colors"
Colors_12.Parent = Shadow_7
Colors_12.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_12.BackgroundTransparency = 1
Colors_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_12.Size = UDim2.new(1, 0, 1, 0)

Left_6.Name = "Left"
Left_6.Parent = Colors_12
Left_6.BackgroundColor3 = Color3.new(1, 1, 1)
Left_6.BackgroundTransparency = 1
Left_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_6.Size = UDim2.new(0, 16, 1, 0)
Left_6.ZIndex = 2
Left_6.Image = "rbxassetid://7445833791"
Left_6.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_6.ScaleType = Enum.ScaleType.Slice
Left_6.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_6.Name = "Middle"
Middle_6.Parent = Colors_12
Middle_6.AnchorPoint = Vector2.new(0, 1)
Middle_6.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_6.BackgroundTransparency = 1
Middle_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_6.Position = UDim2.new(0, 0, 1, 0)
Middle_6.Size = UDim2.new(1, 0, 1, 0)
Middle_6.Image = "rbxassetid://7445833582"
Middle_6.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_6.ScaleType = Enum.ScaleType.Slice
Middle_6.SliceCenter = Rect.new(6, 6, 29, 21)

Right_6.Name = "Right"
Right_6.Parent = Colors_12
Right_6.AnchorPoint = Vector2.new(1, 0)
Right_6.BackgroundColor3 = Color3.new(1, 1, 1)
Right_6.BackgroundTransparency = 1
Right_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_6.Position = UDim2.new(1, 0, 0, 0)
Right_6.Size = UDim2.new(0, 16, 1, 0)
Right_6.ZIndex = 2
Right_6.Image = "rbxassetid://7445834073"
Right_6.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_6.ScaleType = Enum.ScaleType.Slice
Right_6.SliceCenter = Rect.new(0, 7, 16, 21)

strollers.Name = "strollers"
strollers.Parent = Buttons
strollers.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
strollers.BackgroundTransparency = 1
strollers.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
strollers.LayoutOrder = 4
strollers.Size = UDim2.new(1, 0, 0, 33)

Face_7.Name = "Face"
Face_7.Parent = strollers
Face_7.BackgroundColor3 = Color3.new(1, 1, 1)
Face_7.BackgroundTransparency = 1
Face_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_7.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_7.ZIndex = 2

Colors_13.Name = "Colors"
Colors_13.Parent = Face_7
Colors_13.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_13.BackgroundTransparency = 1
Colors_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_13.Size = UDim2.new(1, 0, 1, 0)

Base_7.Name = "Base"
Base_7.Parent = Colors_13
Base_7.BackgroundColor3 = Color3.new(1, 1, 1)
Base_7.BackgroundTransparency = 1
Base_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_7.Size = UDim2.new(1, 0, 1, 0)
Base_7.Image = "rbxassetid://7445833582"
Base_7.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_7.ScaleType = Enum.ScaleType.Slice
Base_7.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_7.Name = "Highlight"
Highlight_7.Parent = Colors_13
Highlight_7.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_7.BackgroundTransparency = 1
Highlight_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_7.Size = UDim2.new(1, -2, 1, -2)
Highlight_7.ZIndex = 2
Highlight_7.Image = "rbxassetid://7445833936"
Highlight_7.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_7.ScaleType = Enum.ScaleType.Slice
Highlight_7.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_6.Name = "Icon"
Icon_6.Parent = Face_7
Icon_6.Active = true
Icon_6.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_6.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_6.BackgroundTransparency = 1
Icon_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_6.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_6.Size = UDim2.new(0, 38, 0, 38)
Icon_6.Image = "rbxassetid://14433695513"

Shadow_8.Name = "Shadow"
Shadow_8.Parent = strollers
Shadow_8.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_8.BackgroundTransparency = 1
Shadow_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_8.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_8.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_14.Name = "Colors"
Colors_14.Parent = Shadow_8
Colors_14.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_14.BackgroundTransparency = 1
Colors_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_14.Size = UDim2.new(1, 0, 1, 0)

Left_7.Name = "Left"
Left_7.Parent = Colors_14
Left_7.BackgroundColor3 = Color3.new(1, 1, 1)
Left_7.BackgroundTransparency = 1
Left_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_7.Size = UDim2.new(0, 16, 1, 0)
Left_7.ZIndex = 2
Left_7.Image = "rbxassetid://7445833791"
Left_7.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_7.ScaleType = Enum.ScaleType.Slice
Left_7.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_7.Name = "Middle"
Middle_7.Parent = Colors_14
Middle_7.AnchorPoint = Vector2.new(0, 1)
Middle_7.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_7.BackgroundTransparency = 1
Middle_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_7.Position = UDim2.new(0, 0, 1, 0)
Middle_7.Size = UDim2.new(1, 0, 1, 0)
Middle_7.Image = "rbxassetid://7445833582"
Middle_7.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_7.ScaleType = Enum.ScaleType.Slice
Middle_7.SliceCenter = Rect.new(6, 6, 29, 21)

Right_7.Name = "Right"
Right_7.Parent = Colors_14
Right_7.AnchorPoint = Vector2.new(1, 0)
Right_7.BackgroundColor3 = Color3.new(1, 1, 1)
Right_7.BackgroundTransparency = 1
Right_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_7.Position = UDim2.new(1, 0, 0, 0)
Right_7.Size = UDim2.new(0, 16, 1, 0)
Right_7.ZIndex = 2
Right_7.Image = "rbxassetid://7445834073"
Right_7.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_7.ScaleType = Enum.ScaleType.Slice
Right_7.SliceCenter = Rect.new(0, 7, 16, 21)

pet_accessories.Name = "pet_accessories"
pet_accessories.Parent = Buttons
pet_accessories.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
pet_accessories.BackgroundTransparency = 1
pet_accessories.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
pet_accessories.LayoutOrder = 3
pet_accessories.Size = UDim2.new(1, 0, 0, 33)

Face_8.Name = "Face"
Face_8.Parent = pet_accessories
Face_8.BackgroundColor3 = Color3.new(1, 1, 1)
Face_8.BackgroundTransparency = 1
Face_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_8.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_8.ZIndex = 2

Colors_15.Name = "Colors"
Colors_15.Parent = Face_8
Colors_15.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_15.BackgroundTransparency = 1
Colors_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_15.Size = UDim2.new(1, 0, 1, 0)

Base_8.Name = "Base"
Base_8.Parent = Colors_15
Base_8.BackgroundColor3 = Color3.new(1, 1, 1)
Base_8.BackgroundTransparency = 1
Base_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_8.Size = UDim2.new(1, 0, 1, 0)
Base_8.Image = "rbxassetid://7445833582"
Base_8.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_8.ScaleType = Enum.ScaleType.Slice
Base_8.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_8.Name = "Highlight"
Highlight_8.Parent = Colors_15
Highlight_8.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_8.BackgroundTransparency = 1
Highlight_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_8.Size = UDim2.new(1, -2, 1, -2)
Highlight_8.ZIndex = 2
Highlight_8.Image = "rbxassetid://7445833936"
Highlight_8.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_8.ScaleType = Enum.ScaleType.Slice
Highlight_8.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_7.Name = "Icon"
Icon_7.Parent = Face_8
Icon_7.Active = true
Icon_7.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_7.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_7.BackgroundTransparency = 1
Icon_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_7.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_7.Size = UDim2.new(0, 38, 0, 38)
Icon_7.Image = "rbxassetid://14433695213"

Shadow_9.Name = "Shadow"
Shadow_9.Parent = pet_accessories
Shadow_9.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_9.BackgroundTransparency = 1
Shadow_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_9.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_9.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_16.Name = "Colors"
Colors_16.Parent = Shadow_9
Colors_16.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_16.BackgroundTransparency = 1
Colors_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_16.Size = UDim2.new(1, 0, 1, 0)

Left_8.Name = "Left"
Left_8.Parent = Colors_16
Left_8.BackgroundColor3 = Color3.new(1, 1, 1)
Left_8.BackgroundTransparency = 1
Left_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_8.Size = UDim2.new(0, 16, 1, 0)
Left_8.ZIndex = 2
Left_8.Image = "rbxassetid://7445833791"
Left_8.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_8.ScaleType = Enum.ScaleType.Slice
Left_8.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_8.Name = "Middle"
Middle_8.Parent = Colors_16
Middle_8.AnchorPoint = Vector2.new(0, 1)
Middle_8.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_8.BackgroundTransparency = 1
Middle_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_8.Position = UDim2.new(0, 0, 1, 0)
Middle_8.Size = UDim2.new(1, 0, 1, 0)
Middle_8.Image = "rbxassetid://7445833582"
Middle_8.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_8.ScaleType = Enum.ScaleType.Slice
Middle_8.SliceCenter = Rect.new(6, 6, 29, 21)

Right_8.Name = "Right"
Right_8.Parent = Colors_16
Right_8.AnchorPoint = Vector2.new(1, 0)
Right_8.BackgroundColor3 = Color3.new(1, 1, 1)
Right_8.BackgroundTransparency = 1
Right_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_8.Position = UDim2.new(1, 0, 0, 0)
Right_8.Size = UDim2.new(0, 16, 1, 0)
Right_8.ZIndex = 2
Right_8.Image = "rbxassetid://7445834073"
Right_8.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_8.ScaleType = Enum.ScaleType.Slice
Right_8.SliceCenter = Rect.new(0, 7, 16, 21)

toys.Name = "toys"
toys.Parent = Buttons
toys.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
toys.BackgroundTransparency = 1
toys.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
toys.LayoutOrder = 7
toys.Size = UDim2.new(1, 0, 0, 33)

Face_9.Name = "Face"
Face_9.Parent = toys
Face_9.BackgroundColor3 = Color3.new(1, 1, 1)
Face_9.BackgroundTransparency = 1
Face_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_9.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_9.ZIndex = 2

Colors_17.Name = "Colors"
Colors_17.Parent = Face_9
Colors_17.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_17.BackgroundTransparency = 1
Colors_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_17.Size = UDim2.new(1, 0, 1, 0)

Base_9.Name = "Base"
Base_9.Parent = Colors_17
Base_9.BackgroundColor3 = Color3.new(1, 1, 1)
Base_9.BackgroundTransparency = 1
Base_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_9.Size = UDim2.new(1, 0, 1, 0)
Base_9.Image = "rbxassetid://7445833582"
Base_9.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_9.ScaleType = Enum.ScaleType.Slice
Base_9.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_9.Name = "Highlight"
Highlight_9.Parent = Colors_17
Highlight_9.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_9.BackgroundTransparency = 1
Highlight_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_9.Size = UDim2.new(1, -2, 1, -2)
Highlight_9.ZIndex = 2
Highlight_9.Image = "rbxassetid://7445833936"
Highlight_9.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_9.ScaleType = Enum.ScaleType.Slice
Highlight_9.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_8.Name = "Icon"
Icon_8.Parent = Face_9
Icon_8.Active = true
Icon_8.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_8.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_8.BackgroundTransparency = 1
Icon_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_8.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_8.Size = UDim2.new(0, 38, 0, 38)
Icon_8.Image = "rbxassetid://14433695628"

Shadow_10.Name = "Shadow"
Shadow_10.Parent = toys
Shadow_10.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_10.BackgroundTransparency = 1
Shadow_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_10.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_10.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_18.Name = "Colors"
Colors_18.Parent = Shadow_10
Colors_18.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_18.BackgroundTransparency = 1
Colors_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_18.Size = UDim2.new(1, 0, 1, 0)

Left_9.Name = "Left"
Left_9.Parent = Colors_18
Left_9.BackgroundColor3 = Color3.new(1, 1, 1)
Left_9.BackgroundTransparency = 1
Left_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_9.Size = UDim2.new(0, 16, 1, 0)
Left_9.ZIndex = 2
Left_9.Image = "rbxassetid://7445833791"
Left_9.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_9.ScaleType = Enum.ScaleType.Slice
Left_9.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_9.Name = "Middle"
Middle_9.Parent = Colors_18
Middle_9.AnchorPoint = Vector2.new(0, 1)
Middle_9.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_9.BackgroundTransparency = 1
Middle_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_9.Position = UDim2.new(0, 0, 1, 0)
Middle_9.Size = UDim2.new(1, 0, 1, 0)
Middle_9.Image = "rbxassetid://7445833582"
Middle_9.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_9.ScaleType = Enum.ScaleType.Slice
Middle_9.SliceCenter = Rect.new(6, 6, 29, 21)

Right_9.Name = "Right"
Right_9.Parent = Colors_18
Right_9.AnchorPoint = Vector2.new(1, 0)
Right_9.BackgroundColor3 = Color3.new(1, 1, 1)
Right_9.BackgroundTransparency = 1
Right_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_9.Position = UDim2.new(1, 0, 0, 0)
Right_9.Size = UDim2.new(0, 16, 1, 0)
Right_9.ZIndex = 2
Right_9.Image = "rbxassetid://7445834073"
Right_9.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_9.ScaleType = Enum.ScaleType.Slice
Right_9.SliceCenter = Rect.new(0, 7, 16, 21)

UIGridLayout.Parent = Buttons
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 4, 0, 4)
UIGridLayout.CellSize = UDim2.new(0, 59, 0, 42)

UIPadding_2.Parent = Buttons
UIPadding_2.PaddingBottom = UDim.new(0, 5)
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingRight = UDim.new(0, 5)

stickers.Name = "stickers"
stickers.Parent = Buttons
stickers.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
stickers.BackgroundTransparency = 1
stickers.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
stickers.LayoutOrder = 12
stickers.Size = UDim2.new(1, 0, 0, 33)

Face_10.Name = "Face"
Face_10.Parent = stickers
Face_10.BackgroundColor3 = Color3.new(1, 1, 1)
Face_10.BackgroundTransparency = 1
Face_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_10.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_10.ZIndex = 2

Colors_19.Name = "Colors"
Colors_19.Parent = Face_10
Colors_19.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_19.BackgroundTransparency = 1
Colors_19.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_19.Size = UDim2.new(1, 0, 1, 0)

Base_10.Name = "Base"
Base_10.Parent = Colors_19
Base_10.BackgroundColor3 = Color3.new(1, 1, 1)
Base_10.BackgroundTransparency = 1
Base_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_10.Size = UDim2.new(1, 0, 1, 0)
Base_10.Image = "rbxassetid://7445833582"
Base_10.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_10.ScaleType = Enum.ScaleType.Slice
Base_10.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_10.Name = "Highlight"
Highlight_10.Parent = Colors_19
Highlight_10.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_10.BackgroundTransparency = 1
Highlight_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_10.Size = UDim2.new(1, -2, 1, -2)
Highlight_10.ZIndex = 2
Highlight_10.Image = "rbxassetid://7445833936"
Highlight_10.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_10.ScaleType = Enum.ScaleType.Slice
Highlight_10.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_9.Name = "Icon"
Icon_9.Parent = Face_10
Icon_9.Active = true
Icon_9.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_9.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_9.BackgroundTransparency = 1
Icon_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_9.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_9.Size = UDim2.new(0, 38, 0, 38)
Icon_9.Image = "rbxassetid://16637763264"

Shadow_11.Name = "Shadow"
Shadow_11.Parent = stickers
Shadow_11.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_11.BackgroundTransparency = 1
Shadow_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_11.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_11.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_20.Name = "Colors"
Colors_20.Parent = Shadow_11
Colors_20.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_20.BackgroundTransparency = 1
Colors_20.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_20.Size = UDim2.new(1, 0, 1, 0)

Left_10.Name = "Left"
Left_10.Parent = Colors_20
Left_10.BackgroundColor3 = Color3.new(1, 1, 1)
Left_10.BackgroundTransparency = 1
Left_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_10.Size = UDim2.new(0, 16, 1, 0)
Left_10.ZIndex = 2
Left_10.Image = "rbxassetid://7445833791"
Left_10.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_10.ScaleType = Enum.ScaleType.Slice
Left_10.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_10.Name = "Middle"
Middle_10.Parent = Colors_20
Middle_10.AnchorPoint = Vector2.new(0, 1)
Middle_10.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_10.BackgroundTransparency = 1
Middle_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_10.Position = UDim2.new(0, 0, 1, 0)
Middle_10.Size = UDim2.new(1, 0, 1, 0)
Middle_10.Image = "rbxassetid://7445833582"
Middle_10.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_10.ScaleType = Enum.ScaleType.Slice
Middle_10.SliceCenter = Rect.new(6, 6, 29, 21)

Right_10.Name = "Right"
Right_10.Parent = Colors_20
Right_10.AnchorPoint = Vector2.new(1, 0)
Right_10.BackgroundColor3 = Color3.new(1, 1, 1)
Right_10.BackgroundTransparency = 1
Right_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_10.Position = UDim2.new(1, 0, 0, 0)
Right_10.Size = UDim2.new(0, 16, 1, 0)
Right_10.ZIndex = 2
Right_10.Image = "rbxassetid://7445834073"
Right_10.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_10.ScaleType = Enum.ScaleType.Slice
Right_10.SliceCenter = Rect.new(0, 7, 16, 21)

wings.Name = "wings"
wings.Parent = Buttons
wings.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
wings.BackgroundTransparency = 1
wings.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
wings.LayoutOrder = 11
wings.Size = UDim2.new(1, 0, 0, 33)

Face_11.Name = "Face"
Face_11.Parent = wings
Face_11.BackgroundColor3 = Color3.new(1, 1, 1)
Face_11.BackgroundTransparency = 1
Face_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_11.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_11.ZIndex = 2

Colors_21.Name = "Colors"
Colors_21.Parent = Face_11
Colors_21.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_21.BackgroundTransparency = 1
Colors_21.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_21.Size = UDim2.new(1, 0, 1, 0)

Base_11.Name = "Base"
Base_11.Parent = Colors_21
Base_11.BackgroundColor3 = Color3.new(1, 1, 1)
Base_11.BackgroundTransparency = 1
Base_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_11.Size = UDim2.new(1, 0, 1, 0)
Base_11.Image = "rbxassetid://7445833582"
Base_11.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_11.ScaleType = Enum.ScaleType.Slice
Base_11.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_11.Name = "Highlight"
Highlight_11.Parent = Colors_21
Highlight_11.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_11.BackgroundTransparency = 1
Highlight_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_11.Size = UDim2.new(1, -2, 1, -2)
Highlight_11.ZIndex = 2
Highlight_11.Image = "rbxassetid://7445833936"
Highlight_11.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_11.ScaleType = Enum.ScaleType.Slice
Highlight_11.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_10.Name = "Icon"
Icon_10.Parent = Face_11
Icon_10.Active = true
Icon_10.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_10.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_10.BackgroundTransparency = 1
Icon_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_10.Position = UDim2.new(0.5, 1, 0.5, 1)
Icon_10.Size = UDim2.new(0, 38, 0, 38)
Icon_10.Image = "rbxassetid://14433695961"

Shadow_12.Name = "Shadow"
Shadow_12.Parent = wings
Shadow_12.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_12.BackgroundTransparency = 1
Shadow_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_12.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_12.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_22.Name = "Colors"
Colors_22.Parent = Shadow_12
Colors_22.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_22.BackgroundTransparency = 1
Colors_22.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_22.Size = UDim2.new(1, 0, 1, 0)

Left_11.Name = "Left"
Left_11.Parent = Colors_22
Left_11.BackgroundColor3 = Color3.new(1, 1, 1)
Left_11.BackgroundTransparency = 1
Left_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_11.Size = UDim2.new(0, 16, 1, 0)
Left_11.ZIndex = 2
Left_11.Image = "rbxassetid://7445833791"
Left_11.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_11.ScaleType = Enum.ScaleType.Slice
Left_11.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_11.Name = "Middle"
Middle_11.Parent = Colors_22
Middle_11.AnchorPoint = Vector2.new(0, 1)
Middle_11.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_11.BackgroundTransparency = 1
Middle_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_11.Position = UDim2.new(0, 0, 1, 0)
Middle_11.Size = UDim2.new(1, 0, 1, 0)
Middle_11.Image = "rbxassetid://7445833582"
Middle_11.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_11.ScaleType = Enum.ScaleType.Slice
Middle_11.SliceCenter = Rect.new(6, 6, 29, 21)

Right_11.Name = "Right"
Right_11.Parent = Colors_22
Right_11.AnchorPoint = Vector2.new(1, 0)
Right_11.BackgroundColor3 = Color3.new(1, 1, 1)
Right_11.BackgroundTransparency = 1
Right_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_11.Position = UDim2.new(1, 0, 0, 0)
Right_11.Size = UDim2.new(0, 16, 1, 0)
Right_11.ZIndex = 2
Right_11.Image = "rbxassetid://7445834073"
Right_11.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_11.ScaleType = Enum.ScaleType.Slice
Right_11.SliceCenter = Rect.new(0, 7, 16, 21)

Title.Name = "Title"
Title.Parent = Categories
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0, 0)
Title.Size = UDim2.new(1, -12, 0, 26)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "PETS"
Title.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Title.TextSize = 24
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Backing.Name = "Backing"
Backing.Parent = Categories
Backing.BackgroundColor3 = Color3.new(1, 1, 1)
Backing.BackgroundTransparency = 1
Backing.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Backing.Size = UDim2.new(1, 0, 1, 0)
Backing.ZIndex = -1
Backing.Image = "rbxassetid://2577318741"
Backing.ScaleType = Enum.ScaleType.Slice
Backing.SliceCenter = Rect.new(10, 10, 19, 19)

Glow.Name = "Glow"
Glow.Parent = Backing
Glow.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Glow.BackgroundTransparency = 1
Glow.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Glow.Position = UDim2.new(0, -5, 0, -5)
Glow.Size = UDim2.new(1, 10, 1, 10)
Glow.Image = "rbxassetid://2577263921"
Glow.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceCenter = Rect.new(15, 15, 30, 30)

Header.Name = "Header"
Header.Parent = backpack
Header.BackgroundColor3 = Color3.new(1, 1, 1)
Header.BackgroundTransparency = 1
Header.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Header.Size = UDim2.new(1, 0, 0, 40)
Header.ZIndex = 4

InsetSpace.Name = "InsetSpace"
InsetSpace.Parent = Header
InsetSpace.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
InsetSpace.BackgroundTransparency = 1
InsetSpace.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
InsetSpace.Position = UDim2.new(0, 185, 0, 0)
InsetSpace.Size = UDim2.new(1, -225, 1, 0)
InsetSpace.Image = "rbxassetid://2577092891"
InsetSpace.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
InsetSpace.ScaleType = Enum.ScaleType.Slice
InsetSpace.SliceCenter = Rect.new(40, 0, 53, 40)

UIListLayout_3.Parent = InsetSpace
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 4)

Search.Name = "Search"
Search.Parent = InsetSpace
Search.AnchorPoint = Vector2.new(0.5, 0.5)
Search.BackgroundColor3 = Color3.new(1, 1, 1)
Search.BackgroundTransparency = 1
Search.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Search.Position = UDim2.new(0.5, 16, 0.5, 0)
Search.Size = UDim2.new(0, 150, 0, 28)
Search.ZIndex = 3
Search.Image = "rbxassetid://7445833582"
Search.ImageColor3 = Color3.new(1, 0.898039, 0.972549)
Search.ScaleType = Enum.ScaleType.Slice
Search.SliceCenter = Rect.new(10, 10, 19, 19)

TextBox.Parent = Search
TextBox.AnchorPoint = Vector2.new(0.5, 0)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextBox.ClipsDescendants = true
TextBox.Position = UDim2.new(0.5, 0, 0, 0)
TextBox.Size = UDim2.new(1, -12, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.new(1, 0.364706, 0.827451)
TextBox.PlaceholderText = "Enter Search..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 0.364706, 0.827451)
TextBox.TextSize = 25
TextBox.TextXAlignment = Enum.TextXAlignment.Left

Filter.Name = "Filter"
Filter.Parent = InsetSpace
Filter.BackgroundColor3 = Color3.new(1, 1, 1)
Filter.BackgroundTransparency = 1
Filter.BorderColor3 = Color3.new(0, 0, 0)
Filter.BorderSizePixel = 0
Filter.LayoutOrder = -1
Filter.Size = UDim2.new(0, 32, 0, 28)

FilterButton.Name = "FilterButton"
FilterButton.Parent = Filter
FilterButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
FilterButton.BackgroundTransparency = 1
FilterButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FilterButton.LayoutOrder = -1
FilterButton.Size = UDim2.new(0, 32, 0, 30)

Face_12.Name = "Face"
Face_12.Parent = FilterButton
Face_12.BackgroundColor3 = Color3.new(1, 1, 1)
Face_12.BackgroundTransparency = 1
Face_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_12.Size = UDim2.new(1, 0, 0.899999976, 0)
Face_12.ZIndex = 2

Colors_23.Name = "Colors"
Colors_23.Parent = Face_12
Colors_23.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_23.BackgroundTransparency = 1
Colors_23.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_23.Size = UDim2.new(1, 0, 1, 0)

Base_12.Name = "Base"
Base_12.Parent = Colors_23
Base_12.BackgroundColor3 = Color3.new(1, 1, 1)
Base_12.BackgroundTransparency = 1
Base_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_12.Size = UDim2.new(1, 0, 1, 0)
Base_12.Image = "rbxassetid://7445833582"
Base_12.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_12.ScaleType = Enum.ScaleType.Slice
Base_12.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_12.Name = "Highlight"
Highlight_12.Parent = Colors_23
Highlight_12.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_12.BackgroundTransparency = 1
Highlight_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_12.Size = UDim2.new(1, -2, 1, -2)
Highlight_12.ZIndex = 2
Highlight_12.Image = "rbxassetid://7445833936"
Highlight_12.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_12.ScaleType = Enum.ScaleType.Slice
Highlight_12.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_11.Name = "Icon"
Icon_11.Parent = Face_12
Icon_11.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_11.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_11.BackgroundTransparency = 1
Icon_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_11.Position = UDim2.new(0.5, 1, 0.5, 0)
Icon_11.Size = UDim2.new(0, 17, 0, 18)
Icon_11.Image = "rbxassetid://14699490568"

Shadow_13.Name = "Shadow"
Shadow_13.Parent = FilterButton
Shadow_13.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_13.BackgroundTransparency = 1
Shadow_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_13.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_13.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_24.Name = "Colors"
Colors_24.Parent = Shadow_13
Colors_24.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_24.BackgroundTransparency = 1
Colors_24.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_24.Size = UDim2.new(1, 0, 1, 0)

Left_12.Name = "Left"
Left_12.Parent = Colors_24
Left_12.BackgroundColor3 = Color3.new(1, 1, 1)
Left_12.BackgroundTransparency = 1
Left_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_12.Size = UDim2.new(0, 16, 1, 0)
Left_12.ZIndex = 2
Left_12.Image = "rbxassetid://7445833791"
Left_12.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_12.ScaleType = Enum.ScaleType.Slice
Left_12.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_12.Name = "Middle"
Middle_12.Parent = Colors_24
Middle_12.AnchorPoint = Vector2.new(0, 1)
Middle_12.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_12.BackgroundTransparency = 1
Middle_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_12.Position = UDim2.new(0, 0, 1, 0)
Middle_12.Size = UDim2.new(1, 0, 1, 0)
Middle_12.Image = "rbxassetid://7445833582"
Middle_12.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_12.ScaleType = Enum.ScaleType.Slice
Middle_12.SliceCenter = Rect.new(6, 6, 29, 21)

Right_12.Name = "Right"
Right_12.Parent = Colors_24
Right_12.AnchorPoint = Vector2.new(1, 0)
Right_12.BackgroundColor3 = Color3.new(1, 1, 1)
Right_12.BackgroundTransparency = 1
Right_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_12.Position = UDim2.new(1, 0, 0, 0)
Right_12.Size = UDim2.new(0, 16, 1, 0)
Right_12.ZIndex = 2
Right_12.Image = "rbxassetid://7445834073"
Right_12.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_12.ScaleType = Enum.ScaleType.Slice
Right_12.SliceCenter = Rect.new(0, 7, 16, 21)

Icon_12.Name = "Icon"
Icon_12.Parent = Header
Icon_12.AnchorPoint = Vector2.new(0, 0.5)
Icon_12.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_12.BackgroundTransparency = 1
Icon_12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_12.Position = UDim2.new(0, 8, 0.5, 0)
Icon_12.Size = UDim2.new(0, 29, 0, 27)
Icon_12.Image = "rbxassetid://2592962031"
Icon_12.ImageColor3 = Color3.new(1, 0.364706, 0.827451)

TextLabel_2.Parent = Header
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_2.Position = UDim2.new(0, 45, 0, 0)
TextLabel_2.Size = UDim2.new(0, 130, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "BACKPACK"
TextLabel_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

ExitButton.Name = "ExitButton"
ExitButton.Parent = Header
ExitButton.AnchorPoint = Vector2.new(1, 0.5)
ExitButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
ExitButton.BackgroundTransparency = 1
ExitButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ExitButton.Position = UDim2.new(0.99999994, -3, 0.499999851, 0)
ExitButton.Selectable = false
ExitButton.Size = UDim2.new(0, 34, 0, 34)
ExitButton.Modal = true

Face_13.Name = "Face"
Face_13.Parent = ExitButton
Face_13.BackgroundColor3 = Color3.new(1, 1, 1)
Face_13.BackgroundTransparency = 1
Face_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_13.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_13.ZIndex = 2

Colors_25.Name = "Colors"
Colors_25.Parent = Face_13
Colors_25.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_25.BackgroundTransparency = 1
Colors_25.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_25.Size = UDim2.new(1, 0, 1, 0)

Base_13.Name = "Base"
Base_13.Parent = Colors_25
Base_13.BackgroundColor3 = Color3.new(1, 1, 1)
Base_13.BackgroundTransparency = 1
Base_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_13.Size = UDim2.new(1, 0, 1, 0)
Base_13.Image = "rbxassetid://7445833582"
Base_13.ImageColor3 = Color3.new(0.847059, 0.164706, 0.247059)
Base_13.ScaleType = Enum.ScaleType.Slice
Base_13.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_13.Name = "Highlight"
Highlight_13.Parent = Colors_25
Highlight_13.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_13.BackgroundTransparency = 1
Highlight_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_13.Size = UDim2.new(1, -2, 1, -2)
Highlight_13.ZIndex = 2
Highlight_13.Image = "rbxassetid://7445833936"
Highlight_13.ImageColor3 = Color3.new(0.94902, 0.305882, 0.305882)
Highlight_13.ScaleType = Enum.ScaleType.Slice
Highlight_13.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_13.Name = "Icon"
Icon_13.Parent = Face_13
Icon_13.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_13.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_13.BackgroundTransparency = 1
Icon_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_13.Position = UDim2.new(0.5, 1, 0.5, 0)
Icon_13.Size = UDim2.new(0, 17, 0, 17)
Icon_13.Image = "rbxassetid://2577460528"
Icon_13.ImageColor3 = Color3.new(1, 0.92549, 0.980392)

Shadow_14.Name = "Shadow"
Shadow_14.Parent = ExitButton
Shadow_14.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_14.BackgroundTransparency = 1
Shadow_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_14.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_14.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_26.Name = "Colors"
Colors_26.Parent = Shadow_14
Colors_26.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_26.BackgroundTransparency = 1
Colors_26.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_26.Size = UDim2.new(1, 0, 1, 0)

Left_13.Name = "Left"
Left_13.Parent = Colors_26
Left_13.BackgroundColor3 = Color3.new(1, 1, 1)
Left_13.BackgroundTransparency = 1
Left_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_13.Size = UDim2.new(0, 16, 1, 0)
Left_13.ZIndex = 2
Left_13.Image = "rbxassetid://7445833791"
Left_13.ImageColor3 = Color3.new(0.847059, 0.164706, 0.247059)
Left_13.ScaleType = Enum.ScaleType.Slice
Left_13.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_13.Name = "Middle"
Middle_13.Parent = Colors_26
Middle_13.AnchorPoint = Vector2.new(0, 1)
Middle_13.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_13.BackgroundTransparency = 1
Middle_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_13.Position = UDim2.new(0, 0, 1, 0)
Middle_13.Size = UDim2.new(1, 0, 1, 0)
Middle_13.Image = "rbxassetid://7445833582"
Middle_13.ImageColor3 = Color3.new(0.686275, 0.0901961, 0.219608)
Middle_13.ScaleType = Enum.ScaleType.Slice
Middle_13.SliceCenter = Rect.new(6, 6, 29, 21)

Right_13.Name = "Right"
Right_13.Parent = Colors_26
Right_13.AnchorPoint = Vector2.new(1, 0)
Right_13.BackgroundColor3 = Color3.new(1, 1, 1)
Right_13.BackgroundTransparency = 1
Right_13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_13.Position = UDim2.new(1, 0, 0, 0)
Right_13.Size = UDim2.new(0, 16, 1, 0)
Right_13.ZIndex = 2
Right_13.Image = "rbxassetid://7445834073"
Right_13.ImageColor3 = Color3.new(0.607843, 0.054902, 0.2)
Right_13.ScaleType = Enum.ScaleType.Slice
Right_13.SliceCenter = Rect.new(0, 7, 16, 21)

Tooltip.Name = "Tooltip"
Tooltip.Parent = BackPackPSYCHOSCRIPTS
Tooltip.Active = true
Tooltip.BackgroundColor3 = Color3.new(1, 1, 1)
Tooltip.BackgroundTransparency = 1
Tooltip.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Tooltip.Position = UDim2.new(0.370129883, 0, 0.673876882, -150)
Tooltip.Size = UDim2.new(0, 220, 0, 90)
Tooltip.Visible = false

List.Name = "List"
List.Parent = Tooltip
List.BackgroundColor3 = Color3.new(1, 1, 1)
List.BackgroundTransparency = 1
List.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
List.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_4.Parent = List
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

dividerA.Name = "dividerA"
dividerA.Parent = List
dividerA.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
dividerA.BackgroundTransparency = 1
dividerA.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dividerA.BorderSizePixel = 0
dividerA.LayoutOrder = 3
dividerA.Size = UDim2.new(1, 0, 0, 8)

Line.Name = "Line"
Line.Parent = dividerA
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.new(1, 1, 1)
Line.BackgroundTransparency = 1
Line.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.5, 0, 0.5, 0)
Line.Size = UDim2.new(1, 0, 1, 0)
Line.Image = "rbxassetid://6508047582"
Line.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Line.ScaleType = Enum.ScaleType.Slice
Line.SliceCenter = Rect.new(2, 0, 9, 2)

UIPadding_3.Parent = dividerA
UIPadding_3.PaddingBottom = UDim.new(0, 3)
UIPadding_3.PaddingLeft = UDim.new(0, 5)
UIPadding_3.PaddingRight = UDim.new(0, 5)
UIPadding_3.PaddingTop = UDim.new(0, 3)

title.Name = "title"
title.Parent = List
title.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
title.BackgroundTransparency = 1
title.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
title.BorderSizePixel = 0
title.LayoutOrder = 2
title.Size = UDim2.new(1, 0, 0, 72)

ImageContainer.Name = "ImageContainer"
ImageContainer.Parent = title
ImageContainer.BackgroundColor3 = Color3.new(1, 1, 1)
ImageContainer.BackgroundTransparency = 1
ImageContainer.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ImageContainer.Position = UDim2.new(0, 4, 0, 4)
ImageContainer.Size = UDim2.new(0, 64, 0, 64)

Border.Name = "Border"
Border.Parent = ImageContainer
Border.AnchorPoint = Vector2.new(0.5, 0.5)
Border.BackgroundColor3 = Color3.new(1, 1, 1)
Border.BackgroundTransparency = 1
Border.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(0.5, 0, 0.5, 0)
Border.Size = UDim2.new(1, 2, 1, 2)
Border.Image = "rbxassetid://6508046380"
Border.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Border.ScaleType = Enum.ScaleType.Slice
Border.SliceCenter = Rect.new(6, 6, 19, 19)

Icon_14.Name = "Icon"
Icon_14.Parent = ImageContainer
Icon_14.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_14.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_14.BackgroundTransparency = 1
Icon_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_14.BorderSizePixel = 0
Icon_14.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_14.Size = UDim2.new(1, -12, 1, -12)
Icon_14.ZIndex = 0

Favorited.Name = "Favorited"
Favorited.Parent = ImageContainer
Favorited.BackgroundColor3 = Color3.new(1, 1, 1)
Favorited.BackgroundTransparency = 1
Favorited.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Favorited.Size = UDim2.new(1, 0, 1, 0)
Favorited.Visible = false
Favorited.ZIndex = -1
Favorited.Image = "rbxassetid://6534823428"

Titles.Name = "Titles"
Titles.Parent = title
Titles.BackgroundColor3 = Color3.new(1, 1, 1)
Titles.BackgroundTransparency = 1
Titles.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Titles.Position = UDim2.new(0, 72, 0, 4)
Titles.Size = UDim2.new(1, -76, 1, -8)

Header_2.Name = "Header"
Header_2.Parent = Titles
Header_2.BackgroundColor3 = Color3.new(1, 1, 1)
Header_2.BackgroundTransparency = 1
Header_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Header_2.BorderSizePixel = 0
Header_2.Size = UDim2.new(1, 0, 0, 40)
Header_2.Font = Enum.Font.SourceSansBold
Header_2.Text = "Garden Egg"
Header_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Header_2.TextScaled = true
Header_2.TextSize = 30
Header_2.TextWrapped = true
Header_2.TextXAlignment = Enum.TextXAlignment.Left
Header_2.TextYAlignment = Enum.TextYAlignment.Top

SubHeader.Name = "SubHeader"
SubHeader.Parent = Titles
SubHeader.AnchorPoint = Vector2.new(1, 0)
SubHeader.BackgroundColor3 = Color3.new(1, 1, 1)
SubHeader.BackgroundTransparency = 1
SubHeader.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
SubHeader.BorderSizePixel = 0
SubHeader.Position = UDim2.new(1, -4, 0, 34)
SubHeader.Size = UDim2.new(1, 0, 0, 22)
SubHeader.Font = Enum.Font.SourceSansBold
SubHeader.Text = "◆"
SubHeader.TextColor3 = Color3.new(1, 0.364706, 0.827451)
SubHeader.TextSize = 24
SubHeader.TextWrapped = true
SubHeader.TextXAlignment = Enum.TextXAlignment.Left

SubHeader2.Name = "SubHeader2"
SubHeader2.Parent = SubHeader
SubHeader2.AnchorPoint = Vector2.new(1, 0)
SubHeader2.BackgroundColor3 = Color3.new(1, 1, 1)
SubHeader2.BackgroundTransparency = 1
SubHeader2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
SubHeader2.BorderSizePixel = 0
SubHeader2.Position = UDim2.new(1, -4, -1.5454545, 34)
SubHeader2.Size = UDim2.new(0.791666687, 0, 0.0409462675, 22)
SubHeader2.Font = Enum.Font.SourceSansBold
SubHeader2.Text = "Legendary"
SubHeader2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
SubHeader2.TextSize = 24
SubHeader2.TextWrapped = true
SubHeader2.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_5.Parent = Titles
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

dividerC.Name = "dividerC"
dividerC.Parent = List
dividerC.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
dividerC.BackgroundTransparency = 1
dividerC.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dividerC.BorderSizePixel = 0
dividerC.LayoutOrder = 9
dividerC.Size = UDim2.new(1, 0, 0, 18)

Line_2.Name = "Line"
Line_2.Parent = dividerC
Line_2.AnchorPoint = Vector2.new(0.5, 0.5)
Line_2.BackgroundColor3 = Color3.new(1, 1, 1)
Line_2.BackgroundTransparency = 1
Line_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Line_2.Size = UDim2.new(1, 0, 1, 0)
Line_2.Image = "rbxassetid://6508047582"
Line_2.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Line_2.ScaleType = Enum.ScaleType.Slice
Line_2.SliceCenter = Rect.new(2, 0, 9, 2)

UIPadding_4.Parent = dividerC
UIPadding_4.PaddingBottom = UDim.new(0, 4)
UIPadding_4.PaddingLeft = UDim.new(0, 5)
UIPadding_4.PaddingRight = UDim.new(0, 18)
UIPadding_4.PaddingTop = UDim.new(0, 12)

description.Name = "description"
description.Parent = List
description.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
description.BackgroundTransparency = 1
description.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
description.BorderSizePixel = 0
description.LayoutOrder = 7
description.Position = UDim2.new(0, 0, 0.888888538, 0)
description.Size = UDim2.new(1, 0, 0.450009167, 4)

Scroll.Name = "Scroll"
Scroll.Parent = description
Scroll.Active = true
Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll.BackgroundColor3 = Color3.new(1, 1, 1)
Scroll.BackgroundTransparency = 1
Scroll.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
Scroll.Size = UDim2.new(1, -14, 1, -4)
Scroll.BottomImage = "rbxassetid://2577230880"
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.MidImage = "rbxassetid://2577230871"
Scroll.TopImage = "rbxassetid://2577230883"

Template.Name = "Template"
Template.Parent = Scroll
Template.BackgroundColor3 = Color3.new(1, 1, 1)
Template.BackgroundTransparency = 1
Template.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Template.BorderSizePixel = 0
Template.LayoutOrder = 2
Template.Position = UDim2.new(0.233009711, 0, 1.1201278, 0)
Template.Size = UDim2.new(0.970873773, 0, -0.287853807, 28)
Template.ZIndex = 3
Template.Font = Enum.Font.SourceSansBold
Template.Text = " Age: Newborn"
Template.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Template.TextSize = 18
Template.TextWrapped = true
Template.TextXAlignment = Enum.TextXAlignment.Left
Template.TextYAlignment = Enum.TextYAlignment.Top

UIListLayout_6.Parent = Scroll
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 6)

Template2.Name = "Template2"
Template2.Parent = Scroll
Template2.BackgroundColor3 = Color3.new(1, 1, 1)
Template2.BackgroundTransparency = 1
Template2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Template2.BorderSizePixel = 0
Template2.Position = UDim2.new(0, 0, -2.77432537e-06, 0)
Template2.Size = UDim2.new(0.970873773, 0, -0.287853807, 28)
Template2.Visible = false
Template2.ZIndex = 3
Template2.Font = Enum.Font.SourceSansBold
Template2.Text = " RP Name: ..."
Template2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Template2.TextSize = 18
Template2.TextWrapped = true
Template2.TextXAlignment = Enum.TextXAlignment.Left
Template2.TextYAlignment = Enum.TextYAlignment.Top

Template4.Name = "Template4"
Template4.Parent = Scroll
Template4.BackgroundColor3 = Color3.new(1, 1, 1)
Template4.BackgroundTransparency = 1
Template4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Template4.BorderSizePixel = 0
Template4.LayoutOrder = 2
Template4.Position = UDim2.new(0.233009711, 0, 1.1201278, 0)
Template4.Size = UDim2.new(0.970873773, 0, -0.287853807, 28)
Template4.ZIndex = 4
Template4.Font = Enum.Font.SourceSansBold
Template4.Text = " Can Fly, Can Ride, Mega, Neon"
Template4.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Template4.TextScaled = true
Template4.TextSize = 18
Template4.TextWrapped = true
Template4.TextXAlignment = Enum.TextXAlignment.Left
Template4.TextYAlignment = Enum.TextYAlignment.Top

Background.Name = "Background"
Background.Parent = Tooltip
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.BackgroundTransparency = 1
Background.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Background.Position = UDim2.new(0, -10, 0, -1)
Background.Size = UDim2.new(1, 19, 1.66556501, 10)
Background.ZIndex = 0
Background.Image = "rbxassetid://6526575266"
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(28, 38, 64, 54)

Shadow_15.Name = "Shadow"
Shadow_15.Parent = Tooltip
Shadow_15.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_15.BackgroundTransparency = 1
Shadow_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_15.Position = UDim2.new(0, -10, 0, -1)
Shadow_15.Size = UDim2.new(1, 19, 1.66556501, 10)
Shadow_15.ZIndex = -1
Shadow_15.Image = "rbxassetid://6508046540"
Shadow_15.ImageColor3 = Color3.new(0, 0, 0)
Shadow_15.ScaleType = Enum.ScaleType.Slice
Shadow_15.SliceCenter = Rect.new(28, 38, 64, 54)

Corner.Name = "Corner"
Corner.Parent = Tooltip
Corner.AnchorPoint = Vector2.new(1, 1)
Corner.BackgroundColor3 = Color3.new(1, 1, 1)
Corner.BackgroundTransparency = 1
Corner.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Corner.Position = UDim2.new(1, 0, 1.60566378, 0)
Corner.Size = UDim2.new(0, 19, 0, 42)
Corner.ZIndex = 2
Corner.Image = "rbxassetid://6526575638"

PetTemplate.Name = "PetTemplate"
PetTemplate.Parent = game.StarterGui["BackPack(PSYCHO-SCRIPTS)"].LocalScript.Handler
PetTemplate.BackgroundTransparency = 1
PetTemplate.LayoutOrder = 2
PetTemplate.Position = UDim2.new(0, 80, 0, 0)
PetTemplate.Size = UDim2.new(0, 80, 0, 80)

Button_2.Name = "Button"
Button_2.Parent = PetTemplate
Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
Button_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Button_2.BackgroundTransparency = 1
Button_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Button_2.LayoutOrder = 2
Button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Button_2.Size = UDim2.new(1, -4, 1, -4)
Button_2.ZIndex = 456456
Button_2.Image = "rbxassetid://2577318741"
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(10, 10, 19, 19)

Glow_2.Name = "Glow"
Glow_2.Parent = Button_2
Glow_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Glow_2.BackgroundTransparency = 1
Glow_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Glow_2.Position = UDim2.new(0, -5, 0, -5)
Glow_2.Size = UDim2.new(1, 10, 1, 10)
Glow_2.Image = "rbxassetid://2577263921"
Glow_2.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Glow_2.ScaleType = Enum.ScaleType.Slice
Glow_2.SliceCenter = Rect.new(15, 15, 30, 30)

Favorited_2.Name = "Favorited"
Favorited_2.Parent = Button_2
Favorited_2.BackgroundColor3 = Color3.new(1, 1, 1)
Favorited_2.BackgroundTransparency = 1
Favorited_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Favorited_2.BorderSizePixel = 0
Favorited_2.Size = UDim2.new(1, 0, 1, 0)
Favorited_2.Visible = false
Favorited_2.Image = "rbxassetid://6526575742"

StackCount.Name = "StackCount"
StackCount.Parent = Button_2
StackCount.BackgroundColor3 = Color3.new(1, 1, 1)
StackCount.BackgroundTransparency = 1
StackCount.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
StackCount.BorderSizePixel = 0
StackCount.Size = UDim2.new(0, 36, 0, 14)
StackCount.Visible = false
StackCount.ZIndex = 3
StackCount.Image = "rbxassetid://6553506945"
StackCount.ImageColor3 = Color3.new(1, 0.333333, 1)
StackCount.ScaleType = Enum.ScaleType.Slice
StackCount.SliceCenter = Rect.new(7, 2, 12, 12)

TextLabel_3.Parent = StackCount
TextLabel_3.AnchorPoint = Vector2.new(1, 0.5)
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_3.Position = UDim2.new(1, -7, 0.5, -1)
TextLabel_3.Size = UDim2.new(1, -14, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "x99"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Locked.Name = "Locked"
Locked.Parent = Button_2
Locked.BackgroundColor3 = Color3.new(1, 1, 1)
Locked.BackgroundTransparency = 1
Locked.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Locked.BorderSizePixel = 0
Locked.Size = UDim2.new(0, 30, 0, 18)
Locked.Visible = false
Locked.ZIndex = 4
Locked.Image = "rbxassetid://6553506945"
Locked.ImageColor3 = Color3.new(1, 0.333333, 1)
Locked.ScaleType = Enum.ScaleType.Slice
Locked.SliceCenter = Rect.new(7, 2, 12, 12)

Icon_15.Name = "Icon"
Icon_15.Parent = Locked
Icon_15.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_15.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_15.BackgroundTransparency = 1
Icon_15.BorderColor3 = Color3.new(0, 0, 0)
Icon_15.BorderSizePixel = 0
Icon_15.Position = UDim2.new(0.5, -1, 0.5, 0)
Icon_15.Size = UDim2.new(0, 12, 0, 14)
Icon_15.Image = "rbxassetid://14262048037"

ItemImageTemplate.Name = "ItemImageTemplate"
ItemImageTemplate.Parent = Button_2
ItemImageTemplate.AnchorPoint = Vector2.new(0.5, 0.5)
ItemImageTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
ItemImageTemplate.BackgroundTransparency = 1
ItemImageTemplate.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ItemImageTemplate.Position = UDim2.new(0.5, 0, 0.5, 0)
ItemImageTemplate.Size = UDim2.new(1, -6, 1, -6)
ItemImageTemplate.ZIndex = 2
ItemImageTemplate.Image = "rbxassetid://3200646599"

TagDisplayTemplate.Name = "TagDisplayTemplate"
TagDisplayTemplate.Parent = Button_2
TagDisplayTemplate.AnchorPoint = Vector2.new(0, 1)
TagDisplayTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
TagDisplayTemplate.BackgroundTransparency = 1
TagDisplayTemplate.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TagDisplayTemplate.Position = UDim2.new(0, 3, 1, -3)
TagDisplayTemplate.Size = UDim2.new(1, -6, 0, 15)
TagDisplayTemplate.ZIndex = 5

neon.Name = "neon"
neon.Parent = TagDisplayTemplate
neon.BackgroundColor3 = Color3.new(1, 1, 1)
neon.BackgroundTransparency = 1
neon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
neon.LayoutOrder = 1
neon.Position = UDim2.new(0, 3, 0, 3)
neon.Size = UDim2.new(1, 0, 1, 0)
neon.SizeConstraint = Enum.SizeConstraint.RelativeYY
neon.Visible = false
neon.ZIndex = 2
neon.Image = "rbxassetid://3459132849"
neon.ImageColor3 = Color3.new(0.54902, 0.776471, 0.247059)

TextLabel_4.Parent = neon
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "N"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

rideable.Name = "rideable"
rideable.Parent = TagDisplayTemplate
rideable.BackgroundColor3 = Color3.new(1, 1, 1)
rideable.BackgroundTransparency = 1
rideable.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
rideable.LayoutOrder = 3
rideable.Position = UDim2.new(0, 3, 0, 3)
rideable.Size = UDim2.new(1, 0, 1, 0)
rideable.SizeConstraint = Enum.SizeConstraint.RelativeYY
rideable.Visible = false
rideable.ZIndex = 2
rideable.Image = "rbxassetid://3459132849"
rideable.ImageColor3 = Color3.new(0.929412, 0.172549, 0.47451)

TextLabel_5.Parent = rideable
TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_5.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_5.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "R"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

flyable.Name = "flyable"
flyable.Parent = TagDisplayTemplate
flyable.BackgroundColor3 = Color3.new(1, 1, 1)
flyable.BackgroundTransparency = 1
flyable.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
flyable.LayoutOrder = 2
flyable.Position = UDim2.new(0, 3, 0, 3)
flyable.Size = UDim2.new(1, 0, 1, 0)
flyable.SizeConstraint = Enum.SizeConstraint.RelativeYY
flyable.Visible = false
flyable.ZIndex = 2
flyable.Image = "rbxassetid://3459132849"
flyable.ImageColor3 = Color3.new(0.184314, 0.596078, 0.8)

TextLabel_6.Parent = flyable
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_6.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_6.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
TextLabel_6.Font = Enum.Font.Unknown
TextLabel_6.Text = "F"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

wearing.Name = "wearing"
wearing.Parent = TagDisplayTemplate
wearing.BackgroundColor3 = Color3.new(1, 1, 1)
wearing.BackgroundTransparency = 1
wearing.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
wearing.LayoutOrder = 4
wearing.Position = UDim2.new(0, 3, 0, 3)
wearing.Size = UDim2.new(1, 0, 1, 0)
wearing.SizeConstraint = Enum.SizeConstraint.RelativeYY
wearing.Visible = false
wearing.ZIndex = 2
wearing.Image = "rbxassetid://3459132849"
wearing.ImageColor3 = Color3.new(0.552941, 0.254902, 0.839216)

Icon_16.Name = "Icon"
Icon_16.Parent = wearing
Icon_16.Active = true
Icon_16.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_16.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_16.BackgroundTransparency = 1
Icon_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_16.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_16.Size = UDim2.new(0, 11, 0, 11)
Icon_16.Image = "rbxassetid://4884329465"

UIGridLayout_2.Parent = TagDisplayTemplate
UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellPadding = UDim2.new(0, 2, 0, 0)
UIGridLayout_2.CellSize = UDim2.new(0, 15, 0, 15)

mega_neon_old.Name = "mega_neon_old"
mega_neon_old.Parent = TagDisplayTemplate
mega_neon_old.BackgroundColor3 = Color3.new(1, 0.458824, 0.188235)
mega_neon_old.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
mega_neon_old.LayoutOrder = 1
mega_neon_old.Position = UDim2.new(0, 3, 0, 3)
mega_neon_old.Size = UDim2.new(1, 0, 1, 0)
mega_neon_old.SizeConstraint = Enum.SizeConstraint.RelativeYY
mega_neon_old.Visible = false
mega_neon_old.ZIndex = 2
mega_neon_old.Image = "rbxassetid://3459132849"
mega_neon_old.ImageColor3 = Color3.new(1, 0.458824, 0.188235)

TextLabel_7.Parent = mega_neon_old
TextLabel_7.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_7.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_7.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "M"
TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

mega_neon.Name = "mega_neon"
mega_neon.Parent = TagDisplayTemplate
mega_neon.BackgroundColor3 = Color3.new(1, 1, 1)
mega_neon.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
mega_neon.BorderSizePixel = 0
mega_neon.LayoutOrder = 1
mega_neon.Position = UDim2.new(0, 3, 0, 3)
mega_neon.Size = UDim2.new(1, 0, 1, 0)
mega_neon.SizeConstraint = Enum.SizeConstraint.RelativeYY
mega_neon.Visible = false
mega_neon.ZIndex = 2
mega_neon.ImageColor3 = Color3.new(0.611765, 0.388235, 1)

TextLabel_8.Parent = mega_neon
TextLabel_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_8.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_8.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
TextLabel_8.Font = Enum.Font.Unknown
TextLabel_8.Text = "M"
TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true

sticker.Name = "sticker"
sticker.Parent = TagDisplayTemplate
sticker.BackgroundColor3 = Color3.new(1, 1, 1)
sticker.BackgroundTransparency = 1
sticker.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
sticker.LayoutOrder = 5
sticker.Position = UDim2.new(0, 3, 0, 3)
sticker.Size = UDim2.new(1, 0, 1, 0)
sticker.SizeConstraint = Enum.SizeConstraint.RelativeYY
sticker.Visible = false
sticker.ZIndex = 2
sticker.Image = "rbxassetid://3459132849"
sticker.ImageColor3 = Color3.new(0.537255, 0.278431, 0.835294)

Icon_17.Name = "Icon"
Icon_17.Parent = sticker
Icon_17.Active = true
Icon_17.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_17.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Icon_17.BackgroundTransparency = 1
Icon_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_17.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_17.Size = UDim2.new(0, 11, 0, 11)
Icon_17.Image = "rbxassetid://16894831886"

ItemBorderIndicatorTemplate.Name = "ItemBorderIndicatorTemplate"
ItemBorderIndicatorTemplate.Parent = Button_2
ItemBorderIndicatorTemplate.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
ItemBorderIndicatorTemplate.BackgroundTransparency = 1
ItemBorderIndicatorTemplate.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ItemBorderIndicatorTemplate.Size = UDim2.new(1, 0, 1, 0)
ItemBorderIndicatorTemplate.Visible = false
ItemBorderIndicatorTemplate.ZIndex = 4
ItemBorderIndicatorTemplate.Image = "rbxassetid://4737143313"
ItemBorderIndicatorTemplate.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
ItemBorderIndicatorTemplate.ScaleType = Enum.ScaleType.Slice
ItemBorderIndicatorTemplate.SliceCenter = Rect.new(8, 24, 9, 25)

Pip.Name = "Pip"
Pip.Parent = ItemBorderIndicatorTemplate
Pip.AnchorPoint = Vector2.new(1, 0)
Pip.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Pip.BackgroundTransparency = 1
Pip.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Pip.Position = UDim2.new(1, -2, 0, 2)
Pip.Size = UDim2.new(0, 10, 0, 10)
Pip.Visible = false
Pip.ZIndex = 2
Pip.Image = "rbxassetid://4737143398"
Pip.SliceCenter = Rect.new(8, 24, 9, 25)

Corner_2.Name = "Corner"
Corner_2.Parent = ItemBorderIndicatorTemplate
Corner_2.AnchorPoint = Vector2.new(1, 0)
Corner_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Corner_2.BackgroundTransparency = 1
Corner_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Corner_2.Position = UDim2.new(1, 0, 0, 0)
Corner_2.Size = UDim2.new(0, 24, 0, 24)
Corner_2.Visible = false
Corner_2.Image = "rbxassetid://4737143368"
Corner_2.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Corner_2.SliceCenter = Rect.new(8, 24, 9, 25)

FriendshipBorder.Name = "FriendshipBorder"
FriendshipBorder.Parent = ItemBorderIndicatorTemplate
FriendshipBorder.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
FriendshipBorder.BackgroundTransparency = 1
FriendshipBorder.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FriendshipBorder.Size = UDim2.new(1, 0, 1, 0)
FriendshipBorder.Visible = false
FriendshipBorder.ZIndex = 5
FriendshipBorder.Image = "rbxassetid://13619902657"
FriendshipBorder.ScaleType = Enum.ScaleType.Slice
FriendshipBorder.SliceCenter = Rect.new(11, 11, 11, 11)

FriendshipIcon.Name = "FriendshipIcon"
FriendshipIcon.Parent = ItemBorderIndicatorTemplate
FriendshipIcon.AnchorPoint = Vector2.new(0.5, 0.5)
FriendshipIcon.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
FriendshipIcon.BackgroundTransparency = 1
FriendshipIcon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FriendshipIcon.Position = UDim2.new(0.5, 0, 0, 3)
FriendshipIcon.Size = UDim2.new(0, 15, 0, 13)
FriendshipIcon.Visible = false
FriendshipIcon.ZIndex = 6
FriendshipIcon.Image = "rbxassetid://13619902790"
FriendshipIcon.SliceCenter = Rect.new(8, 24, 9, 25)

TooltipClick.Name = "TooltipClick"
TooltipClick.Parent = BackPackPSYCHOSCRIPTS
TooltipClick.Active = true
TooltipClick.BackgroundColor3 = Color3.new(1, 1, 1)
TooltipClick.BackgroundTransparency = 1
TooltipClick.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TooltipClick.Position = UDim2.new(0.370129883, 0, 0.673876882, -150)
TooltipClick.Size = UDim2.new(0, 220, 0, 90)
TooltipClick.Visible = false

List_2.Name = "List"
List_2.Parent = TooltipClick
List_2.BackgroundColor3 = Color3.new(1, 1, 1)
List_2.BackgroundTransparency = 1
List_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
List_2.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_7.Parent = List_2
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder

title_2.Name = "title"
title_2.Parent = List_2
title_2.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
title_2.BackgroundTransparency = 1
title_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
title_2.BorderSizePixel = 0
title_2.LayoutOrder = 2
title_2.Size = UDim2.new(1, 0, 0, 72)

ImageContainer_2.Name = "ImageContainer"
ImageContainer_2.Parent = title_2
ImageContainer_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageContainer_2.BackgroundTransparency = 1
ImageContainer_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ImageContainer_2.Position = UDim2.new(0, 4, 0, 4)
ImageContainer_2.Size = UDim2.new(0, 64, 0, 64)

Border_2.Name = "Border"
Border_2.Parent = ImageContainer_2
Border_2.AnchorPoint = Vector2.new(0.5, 0.5)
Border_2.BackgroundColor3 = Color3.new(1, 1, 1)
Border_2.BackgroundTransparency = 1
Border_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Border_2.BorderSizePixel = 0
Border_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Border_2.Size = UDim2.new(1, 2, 1, 2)
Border_2.Image = "rbxassetid://6508046380"
Border_2.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Border_2.ScaleType = Enum.ScaleType.Slice
Border_2.SliceCenter = Rect.new(6, 6, 19, 19)

Icon_18.Name = "Icon"
Icon_18.Parent = ImageContainer_2
Icon_18.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_18.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_18.BackgroundTransparency = 1
Icon_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_18.BorderSizePixel = 0
Icon_18.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_18.Size = UDim2.new(1, -12, 1, -12)
Icon_18.ZIndex = 0

Favorited_3.Name = "Favorited"
Favorited_3.Parent = ImageContainer_2
Favorited_3.BackgroundColor3 = Color3.new(1, 1, 1)
Favorited_3.BackgroundTransparency = 1
Favorited_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Favorited_3.Size = UDim2.new(1, 0, 1, 0)
Favorited_3.Visible = false
Favorited_3.ZIndex = -1
Favorited_3.Image = "rbxassetid://6534823428"

Titles_2.Name = "Titles"
Titles_2.Parent = title_2
Titles_2.BackgroundColor3 = Color3.new(1, 1, 1)
Titles_2.BackgroundTransparency = 1
Titles_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Titles_2.Position = UDim2.new(0, 72, 0, 4)
Titles_2.Size = UDim2.new(1, -76, 1, -8)

Header_3.Name = "Header"
Header_3.Parent = Titles_2
Header_3.BackgroundColor3 = Color3.new(1, 1, 1)
Header_3.BackgroundTransparency = 1
Header_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Header_3.BorderSizePixel = 0
Header_3.Size = UDim2.new(0.715277791, 0, 0, 40)
Header_3.Font = Enum.Font.SourceSansBold
Header_3.Text = "Garden Egg"
Header_3.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Header_3.TextScaled = true
Header_3.TextSize = 30
Header_3.TextWrapped = true
Header_3.TextXAlignment = Enum.TextXAlignment.Left
Header_3.TextYAlignment = Enum.TextYAlignment.Top

SubHeader_2.Name = "SubHeader"
SubHeader_2.Parent = Titles_2
SubHeader_2.AnchorPoint = Vector2.new(1, 0)
SubHeader_2.BackgroundColor3 = Color3.new(1, 1, 1)
SubHeader_2.BackgroundTransparency = 1
SubHeader_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
SubHeader_2.BorderSizePixel = 0
SubHeader_2.Position = UDim2.new(1, -4, 0, 34)
SubHeader_2.Size = UDim2.new(1, 0, 0, 22)
SubHeader_2.Font = Enum.Font.SourceSansBold
SubHeader_2.Text = "◆"
SubHeader_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
SubHeader_2.TextSize = 24
SubHeader_2.TextWrapped = true
SubHeader_2.TextXAlignment = Enum.TextXAlignment.Left

SubHeader2_2.Name = "SubHeader2"
SubHeader2_2.Parent = SubHeader_2
SubHeader2_2.AnchorPoint = Vector2.new(1, 0)
SubHeader2_2.BackgroundColor3 = Color3.new(1, 1, 1)
SubHeader2_2.BackgroundTransparency = 1
SubHeader2_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
SubHeader2_2.BorderSizePixel = 0
SubHeader2_2.Position = UDim2.new(1, -4, -1.5454545, 34)
SubHeader2_2.Size = UDim2.new(0.791666687, 0, 0.0409462675, 22)
SubHeader2_2.Font = Enum.Font.SourceSansBold
SubHeader2_2.Text = "Legendary"
SubHeader2_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
SubHeader2_2.TextSize = 24
SubHeader2_2.TextWrapped = true
SubHeader2_2.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_8.Parent = Titles_2
UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder

dividerA_2.Name = "dividerA"
dividerA_2.Parent = List_2
dividerA_2.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
dividerA_2.BackgroundTransparency = 1
dividerA_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dividerA_2.BorderSizePixel = 0
dividerA_2.LayoutOrder = 3
dividerA_2.Size = UDim2.new(1, 0, 0, 8)

Line_3.Name = "Line"
Line_3.Parent = dividerA_2
Line_3.AnchorPoint = Vector2.new(0.5, 0.5)
Line_3.BackgroundColor3 = Color3.new(1, 1, 1)
Line_3.BackgroundTransparency = 1
Line_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Line_3.BorderSizePixel = 0
Line_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Line_3.Size = UDim2.new(1, 0, 1, 0)
Line_3.Image = "rbxassetid://6508047582"
Line_3.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Line_3.ScaleType = Enum.ScaleType.Slice
Line_3.SliceCenter = Rect.new(2, 0, 9, 2)

UIPadding_5.Parent = dividerA_2
UIPadding_5.PaddingBottom = UDim.new(0, 3)
UIPadding_5.PaddingLeft = UDim.new(0, 5)
UIPadding_5.PaddingRight = UDim.new(0, 5)
UIPadding_5.PaddingTop = UDim.new(0, 3)

dividerB.Name = "dividerB"
dividerB.Parent = List_2
dividerB.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
dividerB.BackgroundTransparency = 1
dividerB.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dividerB.BorderSizePixel = 0
dividerB.LayoutOrder = 6
dividerB.Size = UDim2.new(1, 0, 0, 8)

Line_4.Name = "Line"
Line_4.Parent = dividerB
Line_4.AnchorPoint = Vector2.new(0.5, 0.5)
Line_4.BackgroundColor3 = Color3.new(1, 1, 1)
Line_4.BackgroundTransparency = 1
Line_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Line_4.BorderSizePixel = 0
Line_4.Position = UDim2.new(0.5, 0, 0.5, 0)
Line_4.Size = UDim2.new(1, 0, 1, 0)
Line_4.Image = "rbxassetid://6508047582"
Line_4.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Line_4.ScaleType = Enum.ScaleType.Slice
Line_4.SliceCenter = Rect.new(2, 0, 9, 2)

UIPadding_6.Parent = dividerB
UIPadding_6.PaddingBottom = UDim.new(0, 3)
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingRight = UDim.new(0, 5)
UIPadding_6.PaddingTop = UDim.new(0, 3)

description_2.Name = "description"
description_2.Parent = List_2
description_2.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
description_2.BackgroundTransparency = 1
description_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
description_2.BorderSizePixel = 0
description_2.LayoutOrder = 7
description_2.Position = UDim2.new(0, 0, 1.4666667, 0)
description_2.Size = UDim2.new(1, 0, 0.445396602, 4)

Scroll_2.Name = "Scroll"
Scroll_2.Parent = description_2
Scroll_2.Active = true
Scroll_2.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll_2.BackgroundColor3 = Color3.new(1, 1, 1)
Scroll_2.BackgroundTransparency = 1
Scroll_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Scroll_2.BorderSizePixel = 0
Scroll_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Scroll_2.Size = UDim2.new(1, -14, 1, -4)
Scroll_2.BottomImage = "rbxassetid://2577230880"
Scroll_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll_2.MidImage = "rbxassetid://2577230871"
Scroll_2.TopImage = "rbxassetid://2577230883"

UIListLayout_9.Parent = Scroll_2
UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_9.Padding = UDim.new(0, 6)

Template4_2.Name = "Template4"
Template4_2.Parent = Scroll_2
Template4_2.BackgroundColor3 = Color3.new(1, 1, 1)
Template4_2.BackgroundTransparency = 1
Template4_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Template4_2.BorderSizePixel = 0
Template4_2.LayoutOrder = 2
Template4_2.Position = UDim2.new(0.233009711, 0, 1.1201278, 0)
Template4_2.Size = UDim2.new(0.970873773, 0, -0.287853807, 28)
Template4_2.ZIndex = 4
Template4_2.Font = Enum.Font.SourceSansBold
Template4_2.Text = " Can Fly, Can Ride, Mega, Neon"
Template4_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Template4_2.TextScaled = true
Template4_2.TextSize = 18
Template4_2.TextWrapped = true
Template4_2.TextXAlignment = Enum.TextXAlignment.Left
Template4_2.TextYAlignment = Enum.TextYAlignment.Top

Template_2.Name = "Template"
Template_2.Parent = Scroll_2
Template_2.BackgroundColor3 = Color3.new(1, 1, 1)
Template_2.BackgroundTransparency = 1
Template_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Template_2.BorderSizePixel = 0
Template_2.LayoutOrder = 2
Template_2.Position = UDim2.new(0.233009711, 0, 1.1201278, 0)
Template_2.Size = UDim2.new(0.970873773, 0, -0.287853807, 28)
Template_2.ZIndex = 3
Template_2.Font = Enum.Font.SourceSansBold
Template_2.Text = " Age: Newborn"
Template_2.TextColor3 = Color3.new(1, 0.364706, 0.827451)
Template_2.TextSize = 18
Template_2.TextWrapped = true
Template_2.TextXAlignment = Enum.TextXAlignment.Left
Template_2.TextYAlignment = Enum.TextYAlignment.Top

actions.Name = "actions"
actions.Parent = List_2
actions.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
actions.BackgroundTransparency = 1
actions.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
actions.BorderSizePixel = 0
actions.LayoutOrder = 4
actions.Size = UDim2.new(1, 0, 0, 44)

Row1.Name = "Row1"
Row1.Parent = actions
Row1.BackgroundColor3 = Color3.new(1, 1, 1)
Row1.BackgroundTransparency = 1
Row1.BorderColor3 = Color3.new(0, 0, 0)
Row1.BorderSizePixel = 0
Row1.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_10.Parent = Row1
UIListLayout_10.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_10.Padding = UDim.new(0, 3)

Equip.Name = "Equip"
Equip.Parent = Row1
Equip.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Equip.BackgroundTransparency = 1
Equip.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Equip.Size = UDim2.new(0.600000024, -10, 1, 0)

Face_14.Name = "Face"
Face_14.Parent = Equip
Face_14.BackgroundColor3 = Color3.new(1, 1, 1)
Face_14.BackgroundTransparency = 1
Face_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_14.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_14.ZIndex = 2

Colors_27.Name = "Colors"
Colors_27.Parent = Face_14
Colors_27.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_27.BackgroundTransparency = 1
Colors_27.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_27.Size = UDim2.new(1, 0, 1, 0)

Base_14.Name = "Base"
Base_14.Parent = Colors_27
Base_14.BackgroundColor3 = Color3.new(1, 1, 1)
Base_14.BackgroundTransparency = 1
Base_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_14.Size = UDim2.new(1, 0, 1, 0)
Base_14.Image = "rbxassetid://7445833582"
Base_14.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_14.ScaleType = Enum.ScaleType.Slice
Base_14.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_14.Name = "Highlight"
Highlight_14.Parent = Colors_27
Highlight_14.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_14.BackgroundTransparency = 1
Highlight_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_14.Size = UDim2.new(1, -2, 1, -2)
Highlight_14.ZIndex = 2
Highlight_14.Image = "rbxassetid://7445833936"
Highlight_14.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_14.ScaleType = Enum.ScaleType.Slice
Highlight_14.SliceCenter = Rect.new(9, 9, 28, 20)

TextLabel_9.Parent = Face_14
TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_9.Position = UDim2.new(0, 1, 0, 1)
TextLabel_9.Size = UDim2.new(1, -2, 1, -2)
TextLabel_9.Font = Enum.Font.SourceSansBold
TextLabel_9.Text = "Equip"
TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14
TextLabel_9.TextWrapped = true

Shadow_16.Name = "Shadow"
Shadow_16.Parent = Equip
Shadow_16.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_16.BackgroundTransparency = 1
Shadow_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_16.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_16.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_28.Name = "Colors"
Colors_28.Parent = Shadow_16
Colors_28.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_28.BackgroundTransparency = 1
Colors_28.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_28.Size = UDim2.new(1, 0, 1, 0)

Left_14.Name = "Left"
Left_14.Parent = Colors_28
Left_14.BackgroundColor3 = Color3.new(1, 1, 1)
Left_14.BackgroundTransparency = 1
Left_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_14.Size = UDim2.new(0, 16, 1, 0)
Left_14.ZIndex = 2
Left_14.Image = "rbxassetid://7445833791"
Left_14.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_14.ScaleType = Enum.ScaleType.Slice
Left_14.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_14.Name = "Middle"
Middle_14.Parent = Colors_28
Middle_14.AnchorPoint = Vector2.new(0, 1)
Middle_14.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_14.BackgroundTransparency = 1
Middle_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_14.Position = UDim2.new(0, 0, 1, 0)
Middle_14.Size = UDim2.new(1, 0, 1, 0)
Middle_14.Image = "rbxassetid://7445833582"
Middle_14.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_14.ScaleType = Enum.ScaleType.Slice
Middle_14.SliceCenter = Rect.new(6, 6, 29, 21)

Right_14.Name = "Right"
Right_14.Parent = Colors_28
Right_14.AnchorPoint = Vector2.new(1, 0)
Right_14.BackgroundColor3 = Color3.new(1, 1, 1)
Right_14.BackgroundTransparency = 1
Right_14.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_14.Position = UDim2.new(1, 0, 0, 0)
Right_14.Size = UDim2.new(0, 16, 1, 0)
Right_14.ZIndex = 2
Right_14.Image = "rbxassetid://7445834073"
Right_14.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_14.ScaleType = Enum.ScaleType.Slice
Right_14.SliceCenter = Rect.new(0, 7, 16, 21)

Favorite.Name = "Favorite"
Favorite.Parent = Row1
Favorite.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Favorite.BackgroundTransparency = 1
Favorite.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Favorite.LayoutOrder = 3
Favorite.Size = UDim2.new(0.200000003, 0, 1, 0)

Face_15.Name = "Face"
Face_15.Parent = Favorite
Face_15.BackgroundColor3 = Color3.new(1, 1, 1)
Face_15.BackgroundTransparency = 1
Face_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_15.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_15.ZIndex = 2

Colors_29.Name = "Colors"
Colors_29.Parent = Face_15
Colors_29.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_29.BackgroundTransparency = 1
Colors_29.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_29.Size = UDim2.new(1, 0, 1, 0)

Base_15.Name = "Base"
Base_15.Parent = Colors_29
Base_15.BackgroundColor3 = Color3.new(1, 1, 1)
Base_15.BackgroundTransparency = 1
Base_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_15.Size = UDim2.new(1, 0, 1, 0)
Base_15.Image = "rbxassetid://7445833582"
Base_15.ImageColor3 = Color3.new(0.968627, 0.576471, 0.117647)
Base_15.ScaleType = Enum.ScaleType.Slice
Base_15.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_15.Name = "Highlight"
Highlight_15.Parent = Colors_29
Highlight_15.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_15.BackgroundTransparency = 1
Highlight_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_15.Size = UDim2.new(1, -2, 1, -2)
Highlight_15.ZIndex = 2
Highlight_15.Image = "rbxassetid://7445833936"
Highlight_15.ImageColor3 = Color3.new(0.984314, 0.690196, 0.231373)
Highlight_15.ScaleType = Enum.ScaleType.Slice
Highlight_15.SliceCenter = Rect.new(9, 9, 28, 20)

StarIcon.Name = "StarIcon"
StarIcon.Parent = Face_15
StarIcon.AnchorPoint = Vector2.new(0.5, 0.5)
StarIcon.BackgroundColor3 = Color3.new(1, 1, 1)
StarIcon.BackgroundTransparency = 1
StarIcon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
StarIcon.Position = UDim2.new(0.5, 1, 0.5, 1)
StarIcon.Size = UDim2.new(0, 22, 0, 20)
StarIcon.Image = "rbxassetid://6508046583"

Shadow_17.Name = "Shadow"
Shadow_17.Parent = Favorite
Shadow_17.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_17.BackgroundTransparency = 1
Shadow_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_17.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_17.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_30.Name = "Colors"
Colors_30.Parent = Shadow_17
Colors_30.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_30.BackgroundTransparency = 1
Colors_30.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_30.Size = UDim2.new(1, 0, 1, 0)

Left_15.Name = "Left"
Left_15.Parent = Colors_30
Left_15.BackgroundColor3 = Color3.new(1, 1, 1)
Left_15.BackgroundTransparency = 1
Left_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_15.Size = UDim2.new(0, 16, 1, 0)
Left_15.ZIndex = 2
Left_15.Image = "rbxassetid://7445833791"
Left_15.ImageColor3 = Color3.new(0.968627, 0.576471, 0.117647)
Left_15.ScaleType = Enum.ScaleType.Slice
Left_15.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_15.Name = "Middle"
Middle_15.Parent = Colors_30
Middle_15.AnchorPoint = Vector2.new(0, 1)
Middle_15.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_15.BackgroundTransparency = 1
Middle_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_15.Position = UDim2.new(0, 0, 1, 0)
Middle_15.Size = UDim2.new(1, 0, 1, 0)
Middle_15.Image = "rbxassetid://7445833582"
Middle_15.ImageColor3 = Color3.new(0.937255, 0.447059, 0.235294)
Middle_15.ScaleType = Enum.ScaleType.Slice
Middle_15.SliceCenter = Rect.new(6, 6, 29, 21)

Right_15.Name = "Right"
Right_15.Parent = Colors_30
Right_15.AnchorPoint = Vector2.new(1, 0)
Right_15.BackgroundColor3 = Color3.new(1, 1, 1)
Right_15.BackgroundTransparency = 1
Right_15.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_15.Position = UDim2.new(1, 0, 0, 0)
Right_15.Size = UDim2.new(0, 16, 1, 0)
Right_15.ZIndex = 2
Right_15.Image = "rbxassetid://7445834073"
Right_15.ImageColor3 = Color3.new(0.878431, 0.384314, 0.105882)
Right_15.ScaleType = Enum.ScaleType.Slice
Right_15.SliceCenter = Rect.new(0, 7, 16, 21)

EquipAlt.Name = "EquipAlt"
EquipAlt.Parent = Row1
EquipAlt.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
EquipAlt.BackgroundTransparency = 1
EquipAlt.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
EquipAlt.LayoutOrder = 1
EquipAlt.Size = UDim2.new(0.600000024, -10, 1, 0)
EquipAlt.Visible = false

Face_16.Name = "Face"
Face_16.Parent = EquipAlt
Face_16.BackgroundColor3 = Color3.new(1, 1, 1)
Face_16.BackgroundTransparency = 1
Face_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_16.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_16.ZIndex = 2

Colors_31.Name = "Colors"
Colors_31.Parent = Face_16
Colors_31.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_31.BackgroundTransparency = 1
Colors_31.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_31.Size = UDim2.new(1, 0, 1, 0)

Base_16.Name = "Base"
Base_16.Parent = Colors_31
Base_16.BackgroundColor3 = Color3.new(1, 1, 1)
Base_16.BackgroundTransparency = 1
Base_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_16.Size = UDim2.new(1, 0, 1, 0)
Base_16.Image = "rbxassetid://7445833582"
Base_16.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_16.ScaleType = Enum.ScaleType.Slice
Base_16.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_16.Name = "Highlight"
Highlight_16.Parent = Colors_31
Highlight_16.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_16.BackgroundTransparency = 1
Highlight_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_16.Size = UDim2.new(1, -2, 1, -2)
Highlight_16.ZIndex = 2
Highlight_16.Image = "rbxassetid://7445833936"
Highlight_16.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_16.ScaleType = Enum.ScaleType.Slice
Highlight_16.SliceCenter = Rect.new(9, 9, 28, 20)

TextLabel_10.Parent = Face_16
TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_10.Position = UDim2.new(0, 1, 0, 1)
TextLabel_10.Size = UDim2.new(1, -2, 1, -2)
TextLabel_10.Font = Enum.Font.SourceSansBold
TextLabel_10.Text = "Equip Alt"
TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14
TextLabel_10.TextWrapped = true

Shadow_18.Name = "Shadow"
Shadow_18.Parent = EquipAlt
Shadow_18.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_18.BackgroundTransparency = 1
Shadow_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_18.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_18.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_32.Name = "Colors"
Colors_32.Parent = Shadow_18
Colors_32.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_32.BackgroundTransparency = 1
Colors_32.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_32.Size = UDim2.new(1, 0, 1, 0)

Left_16.Name = "Left"
Left_16.Parent = Colors_32
Left_16.BackgroundColor3 = Color3.new(1, 1, 1)
Left_16.BackgroundTransparency = 1
Left_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_16.Size = UDim2.new(0, 16, 1, 0)
Left_16.ZIndex = 2
Left_16.Image = "rbxassetid://7445833791"
Left_16.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_16.ScaleType = Enum.ScaleType.Slice
Left_16.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_16.Name = "Middle"
Middle_16.Parent = Colors_32
Middle_16.AnchorPoint = Vector2.new(0, 1)
Middle_16.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_16.BackgroundTransparency = 1
Middle_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_16.Position = UDim2.new(0, 0, 1, 0)
Middle_16.Size = UDim2.new(1, 0, 1, 0)
Middle_16.Image = "rbxassetid://7445833582"
Middle_16.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_16.ScaleType = Enum.ScaleType.Slice
Middle_16.SliceCenter = Rect.new(6, 6, 29, 21)

Right_16.Name = "Right"
Right_16.Parent = Colors_32
Right_16.AnchorPoint = Vector2.new(1, 0)
Right_16.BackgroundColor3 = Color3.new(1, 1, 1)
Right_16.BackgroundTransparency = 1
Right_16.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_16.Position = UDim2.new(1, 0, 0, 0)
Right_16.Size = UDim2.new(0, 16, 1, 0)
Right_16.ZIndex = 2
Right_16.Image = "rbxassetid://7445834073"
Right_16.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_16.ScaleType = Enum.ScaleType.Slice
Right_16.SliceCenter = Rect.new(0, 7, 16, 21)

Lock.Name = "Lock"
Lock.Parent = Row1
Lock.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Lock.BackgroundTransparency = 1
Lock.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Lock.LayoutOrder = 2
Lock.Size = UDim2.new(0.200000003, 0, 1, 0)

Face_17.Name = "Face"
Face_17.Parent = Lock
Face_17.BackgroundColor3 = Color3.new(1, 1, 1)
Face_17.BackgroundTransparency = 1
Face_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_17.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_17.ZIndex = 2

Colors_33.Name = "Colors"
Colors_33.Parent = Face_17
Colors_33.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_33.BackgroundTransparency = 1
Colors_33.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_33.Size = UDim2.new(1, 0, 1, 0)

Base_17.Name = "Base"
Base_17.Parent = Colors_33
Base_17.BackgroundColor3 = Color3.new(1, 1, 1)
Base_17.BackgroundTransparency = 1
Base_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_17.Size = UDim2.new(1, 0, 1, 0)
Base_17.Image = "rbxassetid://7445833582"
Base_17.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Base_17.ScaleType = Enum.ScaleType.Slice
Base_17.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_17.Name = "Highlight"
Highlight_17.Parent = Colors_33
Highlight_17.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_17.BackgroundTransparency = 1
Highlight_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_17.Size = UDim2.new(1, -2, 1, -2)
Highlight_17.ZIndex = 2
Highlight_17.Image = "rbxassetid://7445833936"
Highlight_17.ImageColor3 = Color3.new(0.54902, 0.847059, 0.392157)
Highlight_17.ScaleType = Enum.ScaleType.Slice
Highlight_17.SliceCenter = Rect.new(9, 9, 28, 20)

LockIcon.Name = "LockIcon"
LockIcon.Parent = Face_17
LockIcon.AnchorPoint = Vector2.new(0.5, 0.5)
LockIcon.BackgroundColor3 = Color3.new(1, 1, 1)
LockIcon.BackgroundTransparency = 1
LockIcon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
LockIcon.Position = UDim2.new(0.5, 1, 0.5, 1)
LockIcon.Size = UDim2.new(0, 17, 0, 20)
LockIcon.Image = "rbxassetid://14262047765"

Shadow_19.Name = "Shadow"
Shadow_19.Parent = Lock
Shadow_19.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_19.BackgroundTransparency = 1
Shadow_19.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_19.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_19.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_34.Name = "Colors"
Colors_34.Parent = Shadow_19
Colors_34.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_34.BackgroundTransparency = 1
Colors_34.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_34.Size = UDim2.new(1, 0, 1, 0)

Left_17.Name = "Left"
Left_17.Parent = Colors_34
Left_17.BackgroundColor3 = Color3.new(1, 1, 1)
Left_17.BackgroundTransparency = 1
Left_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_17.Size = UDim2.new(0, 16, 1, 0)
Left_17.ZIndex = 2
Left_17.Image = "rbxassetid://7445833791"
Left_17.ImageColor3 = Color3.new(0.290196, 0.776471, 0.333333)
Left_17.ScaleType = Enum.ScaleType.Slice
Left_17.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_17.Name = "Middle"
Middle_17.Parent = Colors_34
Middle_17.AnchorPoint = Vector2.new(0, 1)
Middle_17.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_17.BackgroundTransparency = 1
Middle_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_17.Position = UDim2.new(0, 0, 1, 0)
Middle_17.Size = UDim2.new(1, 0, 1, 0)
Middle_17.Image = "rbxassetid://7445833582"
Middle_17.ImageColor3 = Color3.new(0.168627, 0.647059, 0.270588)
Middle_17.ScaleType = Enum.ScaleType.Slice
Middle_17.SliceCenter = Rect.new(6, 6, 29, 21)

Right_17.Name = "Right"
Right_17.Parent = Colors_34
Right_17.AnchorPoint = Vector2.new(1, 0)
Right_17.BackgroundColor3 = Color3.new(1, 1, 1)
Right_17.BackgroundTransparency = 1
Right_17.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_17.Position = UDim2.new(1, 0, 0, 0)
Right_17.Size = UDim2.new(0, 16, 1, 0)
Right_17.ZIndex = 2
Right_17.Image = "rbxassetid://7445834073"
Right_17.ImageColor3 = Color3.new(0.12549, 0.54902, 0.207843)
Right_17.ScaleType = Enum.ScaleType.Slice
Right_17.SliceCenter = Rect.new(0, 7, 16, 21)

Row2.Name = "Row2"
Row2.Parent = actions
Row2.BackgroundColor3 = Color3.new(1, 1, 1)
Row2.BackgroundTransparency = 1
Row2.BorderColor3 = Color3.new(0, 0, 0)
Row2.BorderSizePixel = 0
Row2.Size = UDim2.new(1, 0, 0.5, 0)
Row2.Visible = false

UIListLayout_11.Parent = Row2
UIListLayout_11.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_11.Padding = UDim.new(0, 3)

UIPadding_7.Parent = actions
UIPadding_7.PaddingBottom = UDim.new(0, 4)
UIPadding_7.PaddingLeft = UDim.new(0, 7)
UIPadding_7.PaddingRight = UDim.new(0, 7)
UIPadding_7.PaddingTop = UDim.new(0, 4)

UIListLayout_12.Parent = actions
UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_12.Padding = UDim.new(0, 3)

dividerC_2.Name = "dividerC"
dividerC_2.Parent = List_2
dividerC_2.BackgroundColor3 = Color3.new(0.960784, 0.960784, 0.960784)
dividerC_2.BackgroundTransparency = 1
dividerC_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dividerC_2.BorderSizePixel = 0
dividerC_2.LayoutOrder = 9
dividerC_2.Size = UDim2.new(1, 0, 0, 18)

Line_5.Name = "Line"
Line_5.Parent = dividerC_2
Line_5.AnchorPoint = Vector2.new(0.5, 0.5)
Line_5.BackgroundColor3 = Color3.new(1, 1, 1)
Line_5.BackgroundTransparency = 1
Line_5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Line_5.BorderSizePixel = 0
Line_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Line_5.Size = UDim2.new(1, 0, 1, 0)
Line_5.Image = "rbxassetid://6508047582"
Line_5.ImageColor3 = Color3.new(1, 0.364706, 0.827451)
Line_5.ScaleType = Enum.ScaleType.Slice
Line_5.SliceCenter = Rect.new(2, 0, 9, 2)

UIPadding_8.Parent = dividerC_2
UIPadding_8.PaddingBottom = UDim.new(0, 4)
UIPadding_8.PaddingLeft = UDim.new(0, 5)
UIPadding_8.PaddingRight = UDim.new(0, 18)
UIPadding_8.PaddingTop = UDim.new(0, 12)

ExitButton_2.Name = "ExitButton"
ExitButton_2.Parent = TooltipClick
ExitButton_2.AnchorPoint = Vector2.new(1, 0)
ExitButton_2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
ExitButton_2.BackgroundTransparency = 1
ExitButton_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ExitButton_2.Position = UDim2.new(1, -4, 0, 6)
ExitButton_2.Selectable = false
ExitButton_2.Size = UDim2.new(0, 34, 0, 34)
ExitButton_2.Modal = true

Face_18.Name = "Face"
Face_18.Parent = ExitButton_2
Face_18.BackgroundColor3 = Color3.new(1, 1, 1)
Face_18.BackgroundTransparency = 1
Face_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Face_18.Size = UDim2.new(1, 0, 0.800000012, 0)
Face_18.ZIndex = 2

Colors_35.Name = "Colors"
Colors_35.Parent = Face_18
Colors_35.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_35.BackgroundTransparency = 1
Colors_35.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_35.Size = UDim2.new(1, 0, 1, 0)

Base_18.Name = "Base"
Base_18.Parent = Colors_35
Base_18.BackgroundColor3 = Color3.new(1, 1, 1)
Base_18.BackgroundTransparency = 1
Base_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Base_18.Size = UDim2.new(1, 0, 1, 0)
Base_18.Image = "rbxassetid://7445833582"
Base_18.ImageColor3 = Color3.new(0.847059, 0.164706, 0.247059)
Base_18.ScaleType = Enum.ScaleType.Slice
Base_18.SliceCenter = Rect.new(6, 6, 29, 21)

Highlight_18.Name = "Highlight"
Highlight_18.Parent = Colors_35
Highlight_18.BackgroundColor3 = Color3.new(1, 1, 1)
Highlight_18.BackgroundTransparency = 1
Highlight_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Highlight_18.Size = UDim2.new(1, -2, 1, -2)
Highlight_18.ZIndex = 2
Highlight_18.Image = "rbxassetid://7445833936"
Highlight_18.ImageColor3 = Color3.new(0.94902, 0.305882, 0.305882)
Highlight_18.ScaleType = Enum.ScaleType.Slice
Highlight_18.SliceCenter = Rect.new(9, 9, 28, 20)

Icon_19.Name = "Icon"
Icon_19.Parent = Face_18
Icon_19.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_19.BackgroundColor3 = Color3.new(1, 1, 1)
Icon_19.BackgroundTransparency = 1
Icon_19.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Icon_19.Position = UDim2.new(0.5, 1, 0.5, 0)
Icon_19.Size = UDim2.new(0, 17, 0, 17)
Icon_19.Image = "rbxassetid://2577460528"
Icon_19.ImageColor3 = Color3.new(1, 0.92549, 0.980392)

Shadow_20.Name = "Shadow"
Shadow_20.Parent = ExitButton_2
Shadow_20.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_20.BackgroundTransparency = 1
Shadow_20.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_20.Position = UDim2.new(0, 0, 0.200000003, 0)
Shadow_20.Size = UDim2.new(1, 0, 0.800000012, 0)

Colors_36.Name = "Colors"
Colors_36.Parent = Shadow_20
Colors_36.BackgroundColor3 = Color3.new(1, 1, 1)
Colors_36.BackgroundTransparency = 1
Colors_36.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Colors_36.Size = UDim2.new(1, 0, 1, 0)

Left_18.Name = "Left"
Left_18.Parent = Colors_36
Left_18.BackgroundColor3 = Color3.new(1, 1, 1)
Left_18.BackgroundTransparency = 1
Left_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Left_18.Size = UDim2.new(0, 16, 1, 0)
Left_18.ZIndex = 2
Left_18.Image = "rbxassetid://7445833791"
Left_18.ImageColor3 = Color3.new(0.847059, 0.164706, 0.247059)
Left_18.ScaleType = Enum.ScaleType.Slice
Left_18.SliceCenter = Rect.new(0, 7, 16, 21)

Middle_18.Name = "Middle"
Middle_18.Parent = Colors_36
Middle_18.AnchorPoint = Vector2.new(0, 1)
Middle_18.BackgroundColor3 = Color3.new(1, 1, 1)
Middle_18.BackgroundTransparency = 1
Middle_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Middle_18.Position = UDim2.new(0, 0, 1, 0)
Middle_18.Size = UDim2.new(1, 0, 1, 0)
Middle_18.Image = "rbxassetid://7445833582"
Middle_18.ImageColor3 = Color3.new(0.686275, 0.0901961, 0.219608)
Middle_18.ScaleType = Enum.ScaleType.Slice
Middle_18.SliceCenter = Rect.new(6, 6, 29, 21)

Right_18.Name = "Right"
Right_18.Parent = Colors_36
Right_18.AnchorPoint = Vector2.new(1, 0)
Right_18.BackgroundColor3 = Color3.new(1, 1, 1)
Right_18.BackgroundTransparency = 1
Right_18.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Right_18.Position = UDim2.new(1, 0, 0, 0)
Right_18.Size = UDim2.new(0, 16, 1, 0)
Right_18.ZIndex = 2
Right_18.Image = "rbxassetid://7445834073"
Right_18.ImageColor3 = Color3.new(0.607843, 0.054902, 0.2)
Right_18.ScaleType = Enum.ScaleType.Slice
Right_18.SliceCenter = Rect.new(0, 7, 16, 21)

Background_2.Name = "Background"
Background_2.Parent = TooltipClick
Background_2.BackgroundColor3 = Color3.new(1, 1, 1)
Background_2.BackgroundTransparency = 1
Background_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Background_2.Position = UDim2.new(0, -10, 0, -1)
Background_2.Size = UDim2.new(1, 19, 2.22778702, 10)
Background_2.ZIndex = 0
Background_2.Image = "rbxassetid://6526575266"
Background_2.ScaleType = Enum.ScaleType.Slice
Background_2.SliceCenter = Rect.new(28, 38, 64, 54)

Shadow_21.Name = "Shadow"
Shadow_21.Parent = TooltipClick
Shadow_21.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_21.BackgroundTransparency = 1
Shadow_21.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_21.Position = UDim2.new(0, -10, 0, -1)
Shadow_21.Size = UDim2.new(1, 19, 2.22778702, 10)
Shadow_21.ZIndex = -1
Shadow_21.Image = "rbxassetid://6508046540"
Shadow_21.ImageColor3 = Color3.new(0, 0, 0)
Shadow_21.ScaleType = Enum.ScaleType.Slice
Shadow_21.SliceCenter = Rect.new(28, 38, 64, 54)

Corner_3.Name = "Corner"
Corner_3.Parent = TooltipClick
Corner_3.AnchorPoint = Vector2.new(1, 1)
Corner_3.BackgroundColor3 = Color3.new(1, 1, 1)
Corner_3.BackgroundTransparency = 1
Corner_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Corner_3.Position = UDim2.new(1, 0, 2.11728549, 0)
Corner_3.Size = UDim2.new(0, 19, 0, 28)
Corner_3.ZIndex = 2
Corner_3.Image = "rbxassetid://6526575638"

BackpackTool.Name = "BackpackTool"
BackpackTool.Parent = BackPackPSYCHOSCRIPTS
BackpackTool.AnchorPoint = Vector2.new(0.5, 1)
BackpackTool.BackgroundColor3 = Color3.new(1, 1, 1)
BackpackTool.BackgroundTransparency = 1
BackpackTool.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
BackpackTool.Position = UDim2.new(0.5, 0, 1, 0)
BackpackTool.Size = UDim2.new(1, 0, 1, 0)
BackpackTool.Visible = false
BackpackTool.ZIndex = 999999999

Hotbar.Name = "Hotbar"
Hotbar.Parent = BackpackTool
Hotbar.AnchorPoint = Vector2.new(0.5, 1)
Hotbar.BackgroundColor3 = Color3.new(1, 1, 1)
Hotbar.BackgroundTransparency = 1
Hotbar.BorderColor3 = Color3.new(0, 0, 0)
Hotbar.BorderSizePixel = 0
Hotbar.LayoutOrder = 2
Hotbar.Position = UDim2.new(0.5, 0, 1, -7)
Hotbar.Size = UDim2.new(0, 0, 0, 100)

OpenBackpackContainer.Name = "OpenBackpackContainer"
OpenBackpackContainer.Parent = Hotbar
OpenBackpackContainer.BackgroundColor3 = Color3.new(1, 1, 1)
OpenBackpackContainer.BackgroundTransparency = 1
OpenBackpackContainer.BorderColor3 = Color3.new(0, 0, 0)
OpenBackpackContainer.BorderSizePixel = 0
OpenBackpackContainer.LayoutOrder = -1
OpenBackpackContainer.Size = UDim2.new(0, 100, 0, 100)

OpenBackpack.Name = "OpenBackpack"
OpenBackpack.Parent = OpenBackpackContainer
OpenBackpack.AnchorPoint = Vector2.new(0.5, 0.5)
OpenBackpack.BackgroundColor3 = Color3.new(1, 1, 1)
OpenBackpack.BackgroundTransparency = 1
OpenBackpack.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
OpenBackpack.LayoutOrder = 1
OpenBackpack.Position = UDim2.new(0.5, 0, 0.5, 0)
OpenBackpack.Selectable = false
OpenBackpack.Size = UDim2.new(0, 100, 0, 100)
OpenBackpack.Image = "rbxassetid://2601369711"

InnerColor.Name = "InnerColor"
InnerColor.Parent = OpenBackpack
InnerColor.AnchorPoint = Vector2.new(0.5, 0.5)
InnerColor.BackgroundColor3 = Color3.new(1, 1, 1)
InnerColor.BackgroundTransparency = 1
InnerColor.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
InnerColor.Position = UDim2.new(0.5, 0, 0.5, 0)
InnerColor.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
InnerColor.ZIndex = 2
InnerColor.Image = "rbxassetid://2601369711"
InnerColor.ImageColor3 = Color3.new(1, 0.364706, 0.827451)

BackpackIcon.Name = "BackpackIcon"
BackpackIcon.Parent = OpenBackpack
BackpackIcon.AnchorPoint = Vector2.new(0.5, 0.5)
BackpackIcon.BackgroundColor3 = Color3.new(1, 1, 1)
BackpackIcon.BackgroundTransparency = 1
BackpackIcon.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
BackpackIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
BackpackIcon.Size = UDim2.new(0, 48, 0, 44)
BackpackIcon.ZIndex = 3
BackpackIcon.Image = "rbxassetid://2601403477"

UIScale.Parent = OpenBackpack

XboxButton.Name = "XboxButton"
XboxButton.Parent = OpenBackpack
XboxButton.AnchorPoint = Vector2.new(0.5, 0.5)
XboxButton.BackgroundColor3 = Color3.new(1, 1, 1)
XboxButton.BackgroundTransparency = 1
XboxButton.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
XboxButton.Position = UDim2.new(0.829999983, 0, 0.829999983, 0)
XboxButton.Size = UDim2.new(0, 40, 0, 40)
XboxButton.Visible = false
XboxButton.ZIndex = 4

Shadow_22.Name = "Shadow"
Shadow_22.Parent = OpenBackpack
Shadow_22.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow_22.BackgroundColor3 = Color3.new(1, 1, 1)
Shadow_22.BackgroundTransparency = 1
Shadow_22.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Shadow_22.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow_22.Size = UDim2.new(2, 0, 2, 0)
Shadow_22.Image = "rbxassetid://2601382019"
Shadow_22.ImageColor3 = Color3.new(0, 0, 0)

UIPadding_9.Parent = BackpackTool
UIPadding_9.PaddingBottom = UDim.new(0, 10)

UIScale_2.Parent = BackpackTool

-- Module Scripts

local fake_module_scripts = {}

do -- nil.Handler
	local script = Instance.new('ModuleScript', nil)
	script.Name = "Handler"
	local function module_script()
		local handler = {
			AllPets = {},
			PetsToLoad = { 
				
				{ 
					Key = "birthday_2024_butterfly", 
					Info = { 
						Potions = {  -- You can write in any order! the script will set everything correctly as in the original game.
							"flyable", -- fly pet
							"rideable", -- ride pet
							"neon",  -- Mega Pet
							 --[[
							  if you want to put something like sticker, wearing, or an old mega icon, 
							then there are lines below on how to do this
							]]
							--[[
							"mega_neon_old",
							"neon",
							"sticker",
							"wearing",
							]]
						};
						Rare = "ultra_rare",
						Age = "Newborn", -- Newborn,  Junior,  PreTeen, Teen, PostTeen, FullGrown 
						-- All the labels will be like in the original game and have Pre-teen, Full Grown and so on.
						-- Age is not necessary to add, but if you want, then write what I wrote above.
		
					};
				},
				
				{
					Key = "birthday_2024_butterfly", Info = {};
				}, -- DEFAULT PET WITHOUT INFO
		
		
			}
		}
		
		handler.LoadAllPets = function()
			local contents = require(script.Contens)
			handler.AllPets = {}
			for _, petData in ipairs(handler.PetsToLoad) do
				local petKey = petData.Key
				local petInfo = petData.Info
				local petData = contents.Pets[petKey]
				if petData then
					table.insert(handler.AllPets, {
						Key = petKey,
						Name = petData.Name or "SERVER ERROR: PetData.Name NOT FOUND",
						Rare = petInfo.Rare or petData.Rare,
						Age = petInfo.Age or petData.Age or "SERVER ERROR: PetData.Age NOT FOUND",
						Potions = petInfo.Potions or {},
						Image = petData.Image,
					})
				end
			end
		end
		
		handler.LoadPetsToFrame = function()
			local inputService = game:GetService("UserInputService")
			local contents = require(script.Contens)
			local tooltip = script.Parent.Parent.Tooltip
			local tooltipClick = script.Parent.Parent.TooltipClick
			local isTooltipClickOpen = false
			for _, pet in ipairs(handler.AllPets) do
				local templateFrame = script.PetTemplate
				local newFrame = templateFrame:Clone()
				newFrame.Parent = script.Parent.Parent.backpack.Body.ScrollComplex.ScrollingFrame.Content.pets.Row0
				newFrame.Name = pet.Key
				newFrame.Button.ItemImageTemplate.Image = pet.Image
				for _, potion in ipairs(pet.Potions) do
					local potionFrame = newFrame.Button.TagDisplayTemplate:FindFirstChild(potion)
					if potionFrame then
						potionFrame.Visible = true
					end
				end
				local button = newFrame.Button
				local function InitTooltip(petData)
					button.MouseEnter:Connect(function()
						if isTooltipClickOpen then return end 
						tooltip.Visible = true
						tooltip.List.title.Titles.SubHeader.TextColor3 = contents.Rares[petData.Rare].color
						tooltip.List.title.Titles.SubHeader.SubHeader2.Text = contents.Rares[petData.Rare].name
						tooltip.List.title.Titles.Header.Text = contents.Pets[petData.Key].Name
						tooltip.List.description.Scroll.Template.Text = "Age: " .. contents.Ages[petData.Age].name 
						local potionOrder = { "flyable", "rideable", "mega_neon", "neon", "mega_neon_old", "sticker", "wearing" }
						local potionDescriptions = {}
						for _, potionName in ipairs(potionOrder) do
							if table.find(petData.Potions, potionName) then
								local potionData = contents.Potions[potionName]
								if potionData and potionData.text then
									table.insert(potionDescriptions, potionData.text)
								end
							end
						end
						tooltip.List.description.Scroll.Template4.Text = table.concat(potionDescriptions, " ")
						tooltip.List.title.ImageContainer.Icon.Image = petData.Image
					end)
					button.Activated:Connect(function()
						isTooltipClickOpen = true
						tooltip.Visible = false
						tooltipClick.Visible = true
						tooltipClick.Position = UDim2.new(0, inputService:GetMouseLocation().X, 0, inputService:GetMouseLocation().Y)
						tooltipClick.List.title.Titles.SubHeader.TextColor3 = contents.Rares[petData.Rare].color
						tooltipClick.List.title.Titles.SubHeader.SubHeader2.Text = contents.Rares[petData.Rare].name
						tooltipClick.List.title.Titles.Header.Text = contents.Pets[petData.Key].Name
						tooltipClick.List.title.ImageContainer.Icon.Image = petData.Image
						local potionOrder = { "flyable", "rideable", "mega_neon", "neon", "mega_neon_old", "sticker", "wearing" }
						local potionDescriptions = {}
						for _, potionName in ipairs(potionOrder) do
							if table.find(petData.Potions, potionName) then
								local potionData = contents.Potions[potionName]
								if potionData and potionData.text then
									table.insert(potionDescriptions, potionData.text)
								end
							end
						end
						tooltipClick.List.description.Scroll.Template.Text = "Age: " .. contents.Ages[petData.Age].name 
						tooltipClick.List.description.Scroll.Template4.Text = table.concat(potionDescriptions, " ")
						
					end)
					button.MouseLeave:Connect(function()
						if isTooltipClickOpen then return end
						tooltip.Visible = false
					end)
					button.MouseMoved:Connect(function(x, y)
						if isTooltipClickOpen then return end
						tooltip.Position = UDim2.new(0, x, 0, y)
					end)
				end
				InitTooltip(pet)
		
				newFrame.Visible = true
			end
		
		end
		
		
		return handler
		
	end
	fake_module_scripts[script] = module_script
end
do -- nil.Contens
	local script = Instance.new('ModuleScript', nil)
	script.Name = "Contens"
	local function module_script()
		local Contens = {}
		Contens.Rares = {
			common = {
				name = "Common";
				color = Color3.new(0, 0, 1);
				Layout = 1;
			};
			uncommon = {
				name = "Uncommon";
				color = Color3.new(0.3764705882352941, 0, 1);
				Layout = 2;
			};
			rare = {
				name = "Rare";
				color = Color3.new(0.23137254901960785, 0.7568627450980392, 0);
				Layout = 3;
			};
			ultra_rare = {
				name = "Ultra-Rare";
				color = Color3.new(1, 0, 0);
				Layout = 4;
			};
			legendary = {
				name = "Legendary";
				color = Color3.new(0, 0, 0);
				Layout = 5;
			};
		}
		
		Contens.Potions = {
			flyable = {
				name = "flyable";
				text = "Can Fly,"
			};
			rideable = {
				name = "rideable";
				text = "Can Ride,"
			};
			mega_neon = {
				name = "mega neon";
				text = "Mega"
			};
			mega_neon_old = {
				name = "mega neon old";
				text = "Mega"
			};
			neon = {
				name = "neon";
				text = "Neon,"
			};
			sticker = {
				name = "sticker";
			};
			wearing = {
				name = "wearing";
			};
			
		
		}
		
		Contens.Ages = {
			Newborn = {
				name = "Newborn";
			};
			Junior = {
				name = "Junior";
			};
			PreTeen = {
				name = "Pre-Teen";
			};
			Teen = {
				name = "Teen";
			};
			PostTeen = {
				name = "Post-Teen";
			};
			FullGrown = {
				name = "Full Grown";
			};	
		}
		
		Contens.Pets = {
			birthday_2024_butterfly = {
				Name = "Birthday Butterfly 2024",
				Rare = "uncommon",
				Age = "FullGrown",
				Image = "rbxassetid://" .. "18223359092",
			},
			
		}
		
		return Contens
	end
	fake_module_scripts[script] = module_script
end


-- Scripts

local function EAUK_fake_script() -- BackPackPSYCHOSCRIPTS.LocalScript 
	local script = Instance.new('LocalScript', BackPackPSYCHOSCRIPTS)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	
	
	game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.F and not gameProcessed then
			script.Parent.backpack.Visible = not script.Parent.backpack.Visible
			require(script.Handler).LoadAllPets()
			require(script.Handler).LoadPetsToFrame()
		end
	end)
	
	
end
coroutine.wrap(EAUK_fake_script)()
local function MYQHJQ_fake_script() -- ExitButton_2.LocalScript 
	local script = Instance.new('LocalScript', ExitButton_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.Activated:Connect(function()
		script.Parent.Parent.Parent.TooltipClick.Visible = false
	
	end)
end
coroutine.wrap(MYQHJQ_fake_script)()
local function ABFLZXA_fake_script() -- OpenBackpack.LocalScript 
	local script = Instance.new('LocalScript', OpenBackpack)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.Activated:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.backpack.Visible = not script.Parent.Parent.Parent.Parent.Parent.backpack.Visible
	end)
end
coroutine.wrap(ABFLZXA_fake_script)()
