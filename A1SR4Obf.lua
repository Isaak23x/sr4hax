--god save me
--i should not have stayed up all night for this
--please help

local sr4gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local buttonFrame = Instance.new("Frame")
local starButton = Instance.new("TextButton")
local lvlButton = Instance.new("TextButton")
local help = Instance.new("TextLabel")
local stinky = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")
local help = Instance.new("TextLabel")
local helpFrame = Instance.new("Frame")
local starHelp = Instance.new("TextLabel")
local helpFrame2 = Instance.new("Frame")
local gemHelp = Instance.new("TextLabel")
local starRun = false
local lvlRun = false
local lvlCount = 0

--Properties:

sr4gui.Name = "sr4gui"
sr4gui.Parent = game.CoreGui

main.Name = "main"
main.Parent = sr4gui
main.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
main.BorderSizePixel = 5
main.Position = UDim2.new(0.680279315, 0, 0.851098895, 0)
main.Size = UDim2.new(0, 400, 0, 147)
main.Active = true
main.Draggable = true
UICorner.Parent = main

help.Name = "help"
help.Parent = main
help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
help.BackgroundTransparency = 100.000
help.BorderColor3 = Color3.fromRGB(0, 0, 0)
help.BorderSizePixel = 0
help.Position = UDim2.new(0.202999994, 0, 0.839999974, 0)
help.Size = UDim2.new(0, 237, 0, 20)
help.Font = Enum.Font.FredokaOne
help.Text = "right click buttons for help"
help.TextColor3 = Color3.fromRGB(255, 255, 255)
help.TextScaled = true
help.TextSize = 38.000
help.TextWrapped = true

stinky.Name = "stinky"
stinky.Parent = main
stinky.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stinky.BackgroundTransparency = 100.000
stinky.BorderColor3 = Color3.fromRGB(0, 0, 0)
stinky.BorderSizePixel = 0
stinky.Position = UDim2.new(0.202499986, 0, 0, 0)
stinky.Size = UDim2.new(0, 237, 0, 30)
stinky.Font = Enum.Font.FredokaOne
stinky.Text = "A1's Garbage SR4 Hax"
stinky.TextColor3 = Color3.fromRGB(255, 255, 255)
stinky.TextScaled = true
stinky.TextSize = 38.000
stinky.TextWrapped = true

buttonFrame.Name = "buttonFrame"
buttonFrame.Parent = main
buttonFrame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
buttonFrame.BorderSizePixel = 3
buttonFrame.Position = UDim2.new(0.0375000015, 0, 0.279069781, 0)
buttonFrame.Size = UDim2.new(0, 370, 0, 78)

starButton.Name = "starButton"
starButton.Parent = buttonFrame
starButton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
starButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
starButton.BorderSizePixel = 2
starButton.Position = UDim2.new(0.0293918923, 0, 0.131186455, 0)
starButton.Size = UDim2.new(0, 164, 0, 57)
starButton.Font = Enum.Font.SourceSansSemibold
starButton.Text = "Star Farm"
starButton.TextColor3 = Color3.fromRGB(255, 255, 255)
starButton.TextSize = 35.000
starButton.TextWrapped = true
starButton.MouseButton1Click:connect(function()
	if starButton.BackgroundColor3 == Color3.fromRGB(67,67,67) then
		starButton.BackgroundColor3 = Color3.fromRGB(0,255,50)
	else
		starButton.BackgroundColor3 = Color3.fromRGB(67,67,67)
	end

	if starRun == false then
		starRun = true
		while starRun == true do
			local args = {[1] = "Level 1"}
			game:GetService("ReplicatedStorage").GotStar:FireServer(unpack(args))
			wait(4)
		end
	else
		starRun = false
	end
end)
starButton.MouseButton2Click:connect(function()
	if helpFrame.Visible == false then
		helpFrame.Visible = true
	else
		helpFrame.Visible = false
	end
end)

lvlButton.Name = "lvlButton"
lvlButton.Parent = buttonFrame
lvlButton.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
lvlButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
lvlButton.BorderSizePixel = 2
lvlButton.Position = UDim2.new(0.529391885, 0, 0.131186455, 0)
lvlButton.Size = UDim2.new(0, 164, 0, 57)
lvlButton.Font = Enum.Font.SourceSansSemibold
lvlButton.Text = "Gem Farm"
lvlButton.TextColor3 = Color3.fromRGB(255, 255, 255)
lvlButton.TextSize = 35.000
lvlButton.TextWrapped = true
lvlButton.MouseButton1Click:connect(function()

	if lvlButton.BackgroundColor3 == Color3.fromRGB(67,67,67) then
		lvlButton.BackgroundColor3 = Color3.fromRGB(0,255,50)
	else
		lvlButton.BackgroundColor3 = Color3.fromRGB(67,67,67)
	end

	if lvlRun == false then
		lvlRun = true
		while lvlRun == true do
			local args = {}
			game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
			wait(0.25)

			lvlCount+=1
			if lvlCount == 30 then
				local args = {[1] = 0}
				game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
				lvlCount = 0
				wait(1)
			end
		end
	else
		lvlRun = false
	end

end)
lvlButton.MouseButton2Click:connect(function()
	if helpFrame2.Visible == false then
		helpFrame2.Visible = true
	else
		helpFrame2.Visible = false
	end
end)

closeButton.Name = "closeButton"
closeButton.Parent = main
closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundTransparency = 100.000
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(0.934999943, 0, 0.0155038759, 0)
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Font = Enum.Font.SourceSans
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextScaled = true
closeButton.TextSize = 14.000
closeButton.TextWrapped = true
closeButton.MouseButton1Click:connect(function()
	lvlRun = false
	starRun = false
	main:Destroy()
end)

helpFrame.Name = "helpFrame"
helpFrame.Parent = main
helpFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
helpFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
helpFrame.BorderSizePixel = 5
helpFrame.Position = UDim2.new(0.0646874979, 0, -0.667608738, 0)
helpFrame.Size = UDim2.new(0, 164, 0, 100)
helpFrame.Visible = false
helpFrame.ZIndex = 0

starHelp.Name = "starHelp"
starHelp.Parent = helpFrame
starHelp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
starHelp.BackgroundTransparency = 100.000
starHelp.Position = UDim2.new(0, 0, 0.100000001, 0)
starHelp.Size = UDim2.new(0, 164, 0, 78)
starHelp.Font = Enum.Font.SourceSans
starHelp.Text = "Gives 1 star every 4 seconds."
starHelp.TextColor3 = Color3.fromRGB(255, 255, 255)
starHelp.TextSize = 22.000
starHelp.TextWrapped = true

helpFrame2.Name = "helpFrame2"
helpFrame2.Parent = main
helpFrame2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
helpFrame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
helpFrame2.BorderSizePixel = 5
helpFrame2.Position = UDim2.new(0.527187526, 0, -0.667608738, 0)
helpFrame2.Size = UDim2.new(0, 164, 0, 100)
helpFrame2.Visible = false
helpFrame2.ZIndex = 0

gemHelp.Name = "gemHelp"
gemHelp.Parent = helpFrame2
gemHelp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gemHelp.BackgroundTransparency = 100.000
gemHelp.Position = UDim2.new(0, 0, 0.100000001, 0)
gemHelp.Size = UDim2.new(0, 163, 0, 79)
gemHelp.Font = Enum.Font.SourceSans
gemHelp.Text = "Skips all levels and auto-resets when game is completed."
gemHelp.TextColor3 = Color3.fromRGB(255, 255, 255)
gemHelp.TextSize = 22.000
gemHelp.TextWrapped = true
