local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

if CoreGui:FindFirstChild("TY0_Update") then CoreGui.TY0_Update:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TY0_Update"
ScreenGui.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 280, 0, 130)
Main.Position = UDim2.new(0.5, -140, 0.4, 0)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true -- Simple drag
Main.Parent = ScreenGui

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(255, 69, 0)
Stroke.Thickness = 2
Stroke.Parent = Main

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 6)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "🚨 SYSTEM OUTDATED"
Title.TextColor3 = Color3.fromRGB(255, 69, 0)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.Parent = Main

local Desc = Instance.new("TextLabel")
Desc.Size = UDim2.new(1, -20, 0, 40)
Desc.Position = UDim2.new(0, 10, 0, 35)
Desc.BackgroundTransparency = 1
Desc.Text = "Please visit our website to get the latest TaskYield0 updates."
Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
Desc.Font = Enum.Font.SourceSans
Desc.TextSize = 15
Desc.TextWrapped = true
Desc.Parent = Main

local CopyBtn = Instance.new("TextButton")
CopyBtn.Size = UDim2.new(0, 200, 0, 30)
CopyBtn.Position = UDim2.new(0.5, -100, 0, 85)
CopyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CopyBtn.Text = "COPY WEBSITE LINK"
CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyBtn.Font = Enum.Font.SourceSansBold
CopyBtn.TextSize = 14
CopyBtn.BorderSizePixel = 0
CopyBtn.Parent = Main

Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 4)

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Position = UDim2.new(1, -30, 0, 5)
Close.BackgroundTransparency = 1
Close.Text = "✕"
Close.TextColor3 = Color3.fromRGB(100, 100, 100)
Close.TextSize = 20
Close.Parent = Main

CopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://taskyield0.carrd.co/")
    CopyBtn.Text = "COPIED TO CLIPBOARD!"
    CopyBtn.TextColor3 = Color3.fromRGB(0, 255, 100)
    task.wait(2)
    CopyBtn.Text = "COPY WEBSITE LINK"
    CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
