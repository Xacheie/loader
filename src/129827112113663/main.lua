--[[
    PROSPECTING AUTOMATION SUITE
    "Because manual labor is a capitalist conspiracy"

    [ CORE MODULES ]
    - Pathfinding ("Oops I fell through the map again" edition)
    - Auto-Dig/Wash ("Legit" mode sponsored by placebo effect)
    - Inventory Manager (Now with 20% more math errors)

    [ FEATURES ]
    Self-destruct button (For legal reasons: does nothing)
    Overengineered GUI (Because why use 1 button when 20 will do?)
    Panic mode (Randomly disables when you need it most)

    [ KNOWN BUGS ]
    - Sometimes thinks water is lava (It's a feature really)
    - Merchant detection fails if NPC wears sunglasses or a very cool hat
    - May develop sentience after prolonged use
    - 1% chance to summon Cthulhu during full moons

    [ DISCLAIMERS ]
    - Not liable for broken keyboards
    - May cause sudden urge to become a goat farmer
    - "It works on my machine" clause applies

    [ CREDITS ]
    Lead Developer: Xacheie
    QA Team: a very disappointed plant
    Testers: [  ] -- yes.

    [ USER MANUAL ]
    1. Click stuff
    2. Pretend you understand the code
    3. ???
    4. Blame Roblox when it fails

    [ EMERGENCY PROTOCOLS ]
    ALT+F4 -> womp womp -> Submit bug report -> Repeat
]] --



-- Legit WIP | Someone help me through this please.
--[[
local function LegitDig()
    local pan = equipPan()
    if not pan then return end

    local ToggleShovelEvent = pan:WaitForChild("Scripts"):WaitForChild("ToggleShovelEvent")
    local digLine = ToolUI.DigBar:WaitForChild("Line")
    local digFrame = ToolUI.DigBar:WaitForChild("Frame")

    -- SOME FUCKUNG HOW, synthetic mousebutton1down here

    -- we don't need while do here, it'll never work
    -- Use Heartbeat monitor maybe?

    while true do
        local lineY = digLine.Position.Y.Scale
        local frameMin = digFrame.Position.Y.Scale
        local frameMax = frameMin + digFrame.Size.Y.Scale

        if lineY >= frameMin and lineY <= frameMax then
            ToggleShovelEvent:FireServer(false)
            -- SOME FUCKiNG HOW, synthetic mousebutton1up here
            break
        end

        task.wait()
    end
end
--]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local a1B2c3D4E5 = function()
	local X9y8Z7 = _G
	local H4J8k3L = X9y8Z7.__HANDSHAKE
	local T0Q7r5Z = type

	if not H4J8k3L then return false end

	local function F6G5H4(a, b) return a == b end
	local function N1M0P2()
		local x = 0
		for i = 1, 4 do x = x + (i * 0) end
		return x
	end

	local function C7V6X3(hh)
		if T0Q7r5Z(hh) ~= "table" then return false end
		local L2Q9w0 = true
		local dummyZ = {}
		for i = 1, 5 do
			dummyZ[i] = i * 0
		end
		repeat
			if not (T0Q7r5Z(hh.Func) == "function" and T0Q7r5Z(hh.Key) == "string" and T0Q7r5Z(hh.Time) == "number" and T0Q7r5Z(hh.Salt) == "string") then
				L2Q9w0 = false
				break
			end
			for i, v in pairs(dummyZ) do L2Q9w0 = L2Q9w0 and (v == v or true) end
			L2Q9w0 = L2Q9w0 and true
		until true
		return L2Q9w0
	end

	local function E5T4R8(Hh)
		local F1S0, H7K2, T4P7, K6Q1 = Hh.Func, Hh.Salt, Hh.Time, Hh.Key
		local J0B2 = (T4P7 % 101) - (T4P7 % 101)
		local val = F1S0(T4P7 + J0B2, H7K2)
		for i = 1, 3 do val = val .. "" end
		return F6G5H4(val, K6Q1)
	end

	local function Z3U2Y9()
		X9y8Z7.__HANDSHAKE = nil
		return true
	end

	local function M8P5L2()
		local s = 0
		for i = 1, 10 do s = s + N1M0P2() end
		return s % 2
	end

	local ST1 = (function()
		if not C7V6X3(H4J8k3L) then return 0 end
		if E5T4R8(H4J8k3L) then return 1 end
		local junk = {}
		for i = 1, 5 do junk[i] = i * 0 end
		return 2
	end)()

	for i = 1, M8P5L2() do end

	if ST1 == 1 or ST1 == 0 then
		Z3U2Y9()
		return ST1 == 1
	end
	Z3U2Y9()
	return false
end

if not a1B2c3D4E5() then               -- 太阳落ちるとき, 月が輝き 별이 춤춘다
	local p = Players.LocalPlayer      -- パンが空から降る, 나무が笑う
	local g = p:WaitForChild("PlayerGui") -- 空に浮かぶ城, 바람과 함께 雲が追いかける
	local s = Instance.new("ScreenGui")
	s.IgnoreGuiInset = true
	s.ResetOnSpawn = false
	s.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	s.DisplayOrder = 9999
	s.Parent = g -- 猫が空を飛ぶ, 나무が 춤추다, 星が輝く
	local f_ = Instance.new("Frame")
	f_.Size = UDim2.new(0.25, 0, 0.08, 0)
	f_.Position = UDim2.new(0.375, 0, 0.05, 0)
	f_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	f_.BorderSizePixel = 0
	f_.BackgroundTransparency = 0
	f_.ZIndex = 9999
	f_.Parent = s -- 雨の中で, 狐と熊が 춤을 춘다
	local c_ = Instance.new("UICorner")
	c_.CornerRadius = UDim.new(0, 12)
	c_.Parent = f_ -- 夢の中で, 猫とウサギが 하늘을 날다
	local l = Instance.new("TextLabel")
	l.Size = UDim2.new(1, -20, 1, -10)
	l.Position = UDim2.new(0, 10, 0, 5)
	l.BackgroundTransparency = 1
	l.Text = "⚠ Please use the loader — it handles prerequisites."
	l.TextColor3 = Color3.fromRGB(235, 235, 235)
	l.TextScaled = true
	l.Font = Enum.Font.GothamSemibold
	l.TextWrapped = true
	l.TextXAlignment = Enum.TextXAlignment.Center
	l.TextYAlignment = Enum.TextYAlignment.Center
	l.ZIndex = 9999
	l.Parent = f_       -- 花が笑っている, 月が囁きながら 바람이 속삭인다
	f_.BackgroundTransparency = 1
	l.TextTransparency = 1 -- 魚が音楽を奏で, 星が跳ねながら 하늘을 수놓는다
	local ti = TweenService:Create(f_, TweenInfo.new(0.4), { BackgroundTransparency = 0 })
	local tli = TweenService:Create(l, TweenInfo.new(0.4), { TextTransparency = 0 })
	ti:Play()
	tli:Play() -- 猫が空を飛んで虹の上で踊りながら 바나나를 먹는다
	task.delay(6,
		function()
			local to = TweenService:Create(f_, TweenInfo.new(0.5), { BackgroundTransparency = 1 })
			local tlo = TweenService:Create(l, TweenInfo.new(0.5), { TextTransparency = 1 })
			to:Play()
			tlo:Play()
			to.Completed:Connect(function() s:Destroy() end)
		end) -- 太阳落下的时候, 風が吹き抜ける街路で 별이 빛난다
end    -- パンが空から降ってきて, 鳥들이 춤추며 노래한다


local TaskManager = {
	mainTask = nil,
	currentSubTask = nil,
	nextSubTask = nil,
	taskQueue = {},
	isRunning = false
}

function TaskManager:requestTask(taskName, priority)
	priority = priority or 1
	if self.mainTask == taskName then
		return false
	end
	table.insert(self.taskQueue, {
		name = taskName,
		priority = priority,
		timestamp = tick()
	})
	table.sort(self.taskQueue, function(a, b)
		if a.priority == b.priority then
			return a.timestamp < b.timestamp
		end
		return a.priority > b.priority
	end)
	return true
end

function TaskManager:startTask(taskName)
	if self.mainTask and self.mainTask ~= taskName then
		return false
	end
	self.mainTask = taskName
	self.isRunning = true
	return true
end

function TaskManager:finishTask(taskName)
	if self.mainTask == taskName then
		self.mainTask = nil
		self.currentSubTask = nil
		self.nextSubTask = nil
		self.isRunning = false
		if # self.taskQueue > 0 then
			local nextTask = table.remove(self.taskQueue, 1)
			task.wait(1)
		end
	end
end

function TaskManager:pauseTask(taskName)
	if self.mainTask == taskName then
		self.isPaused = true
		return true
	end
	return false
end

function TaskManager:resumeTask(taskName)
	if self.mainTask == taskName then
		self.isPaused = false
		return true
	end
	return false
end

function TaskManager:canRun(taskName)
	return (not self.isRunning or self.mainTask == taskName) and not self.isPaused
end

function TaskManager:waitForTurn(taskName, maxWait)
	maxWait = maxWait or 30
	local startTime = tick()
	while not self:canRun(taskName) and (tick() - startTime) < maxWait do
		task.wait(1)
	end
	return self:canRun(taskName)
end

function TaskManager:setCurrentTask(subtask)
	self.currentSubTask = subtask
end

function TaskManager:setNextTask(subtask)
	self.nextSubTask = subtask
end

function TaskManager:getCurrentTask()
	return self.currentSubTask
end

function TaskManager:getNextTask()
	return self.nextSubTask
end

function TaskManager:getMainTask()
	return self.mainTask
end

function TaskManager:clearSubTasks()
	self.currentSubTask = nil
	self.nextSubTask = nil
end

-- ================================================


local guiName = "ProspectingGUI"

local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local oldGui = playerGui:FindFirstChild(guiName)
if oldGui then
	oldGui:Destroy()
end

local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")

local cframes = {
	Sand = nil,
	Water = nil
}
local openDropdowns = {}

local gui = Instance.new("ScreenGui")
gui.Name = guiName
gui.ResetOnSpawn = false
gui.Parent = playerGui

-- gonna use this helper everywhere instead of repeating Instance.new
local function createElement(className, props)
	local element = Instance.new(className)
	for prop, value in pairs(props) do
		element[prop] = value
	end
	return element
end

local function createTween(object, duration, props, style, direction)
	return TweenService:Create(object,
		TweenInfo.new(duration, style or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out), props)
end


-- tool tip + truncation
local sharedTooltip

local function truncateWithTooltip(label, fullText, maxWidth)
	maxWidth = maxWidth or (label.AbsoluteSize.X - 20)

	local function getTooltip()
		if sharedTooltip and sharedTooltip.Parent then
			return sharedTooltip
		end

		local screen = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChildOfClass(
			"ScreenGui")
		if not screen then
			return
		end

		sharedTooltip = createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 30),
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BackgroundTransparency = 0,
			ZIndex = 1001,
			Visible = false,
			Parent = screen
		})

		createElement("UICorner", {
			CornerRadius = UDim.new(0, 4),
			Parent = sharedTooltip
		})
		createElement("UIStroke", {
			Thickness = 1,
			Color = Color3.fromRGB(80, 80, 80),
			Parent = sharedTooltip
		})

		createElement("TextLabel", {
			Name = "Content",
			Size = UDim2.new(1, -8, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			TextSize = 14,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 1002,
			Parent = sharedTooltip
		})

		return sharedTooltip
	end

	label.Text = fullText
	if label.TextBounds.X <= maxWidth then
		return
	end

	local text = fullText
	repeat
		text = string.sub(text, 1, # text - 1)
		label.Text = text .. "..."
	until label.TextBounds.X <= maxWidth or # text <= 3

	local showThread = nil

	label.MouseEnter:Connect(function()
		showThread = task.delay(0.2, function()
			local tooltip = getTooltip()
			if not tooltip then
				return
			end

			tooltip.Content.Text = fullText
			tooltip.Content.Font = label.Font
			tooltip.Content.TextSize = label.TextSize

			local textWidth = tooltip.Content.TextBounds.X + 12
			local mouse = UserInputService:GetMouseLocation()

			tooltip.Position = UDim2.new(0, mouse.X - textWidth / 2, 0, mouse.Y - 35)
			tooltip.Size = UDim2.new(0, textWidth, 0, 30)
			tooltip.Visible = true

			createTween(tooltip, 0.15, {
				BackgroundTransparency = 0
			}):Play()
		end)
	end)

	label.MouseLeave:Connect(function()
		if showThread then
			task.cancel(showThread)
		end
		if sharedTooltip then
			local fadeOut = createTween(sharedTooltip, 0.1, {
				BackgroundTransparency = 1
			})
			fadeOut:Play()
			fadeOut.Completed:Connect(function()
				sharedTooltip.Visible = false
			end)
		end
	end)
end

-- notification system because users need feedback (duh)
local notifFrame = createElement("Frame", {
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 10),
	Size = UDim2.new(0, 300, 1, 0),
	BackgroundTransparency = 1,
	Parent = gui
})

createElement("UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 5),
	Parent = notifFrame
})

local function createNotification(msg, duration)
	duration = duration or 3
	local maxWidth = notifFrame.AbsoluteSize.X - 20
	local textSize = TextService:GetTextSize(msg, 16, Enum.Font.SourceSansBold, Vector2.new(maxWidth, math.huge))
	local targetHeight = textSize.Y + 20
	local notif = createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = Color3.fromRGB(15, 15, 15),
		BackgroundTransparency = 0.65,
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		ZIndex = 20,
		Parent = notifFrame
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 200, 200),
		Parent = notif
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = notif
	})
	local label = createElement("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -10, 1, 0),
		Position = UDim2.new(0, 5, 0, 0),
		Font = Enum.Font.SourceSansBold,
		TextSize = 16,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		TextStrokeTransparency = 0.7,
		Text = msg,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 21,
		Parent = notif
	})
	notif.BackgroundTransparency = 1
	label.TextTransparency = 1
	createTween(notif, 0.3, {
		BackgroundTransparency = 0.6,
		Size = UDim2.new(1, 0, 0, targetHeight)
	}):Play()
	createTween(label, 0.3, {
		TextTransparency = 0
	}):Play()
	task.delay(duration, function()
		createTween(notif, 0.3, {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0)
		}):Play()
		createTween(label, 0.3, {
			TextTransparency = 1
		}):Play()
		task.wait(0.3)
		notif:Destroy()
	end)
end

local viewportHeight = workspace.CurrentCamera.ViewportSize.Y

local mainContainer = createElement("Frame", {
	Name = "MainContainer",
	AnchorPoint = Vector2.new(1, 0),
	Position = UDim2.new(1, -20, 0, 100),
	Size = UDim2.new(0, 400, 0, viewportHeight * 0.8),
	BackgroundTransparency = 1,
	ClipsDescendants = false,
	Parent = gui
})

-- holy over engineering
local wasScrolling = false
local function createCollapsibleContainer(parent, maxHeight)
	maxHeight = maxHeight or 300
	local container = createElement("Frame", {
		Name = "CollapsibleContainer",
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundColor3 = Color3.fromRGB(15, 15, 15),
		BackgroundTransparency = 0.25,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = 5,
		Parent = parent
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		Parent = container
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = container
	})
	local dragArea = createElement("Frame", {
		Size = UDim2.new(1, -30, 0, 40),
		BackgroundTransparency = 1,
		ZIndex = 6,
		Parent = container
	})
	local toggleBtn = createElement("TextButton", {
		Size = UDim2.new(0, 30, 0, 40),
		Position = UDim2.new(1, -30, 0, 0),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 6,
		Parent = container
	})
	local label = createElement("TextLabel", {
		Size = UDim2.new(1, -10, 1, 0),
		Position = UDim2.new(0, 10, 0, 0),
		BackgroundTransparency = 1,
		Text = "Prospecting",
		Font = Enum.Font.SourceSansBold,
		TextSize = 18,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 6,
		Parent = dragArea
	})
	local arrow = createElement("ImageLabel", {
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(0.5, -10, 0.5, -10),
		BackgroundTransparency = 1,
		Image = "rbxassetid://3926305904",
		ImageRectOffset = Vector2.new(564, 284),
		ImageRectSize = Vector2.new(36, 36),
		Rotation = -90,
		ZIndex = 6,
		Parent = toggleBtn
	})
	local contentFrame = createElement("ScrollingFrame", {
		Size = UDim2.new(1, -20, 0, 0),
		Position = UDim2.new(0, 10, 0, 40),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 0,
		ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
		ScrollBarImageTransparency = 1,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		CanvasSize = UDim2.new(0, 0, 0, 0),
		ScrollingEnabled = false,
		ClipsDescendants = true,
		ZIndex = 4,
		Parent = container
	})
	createElement("UIPadding", {
		PaddingTop = UDim.new(0, 5),
		PaddingBottom = UDim.new(0, 10),
		Parent = contentFrame
	})
	local list = createElement("UIListLayout", {
		Padding = UDim.new(0, 5),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Parent = contentFrame
	})
	local isExpanded = false
	local isAnimating = false
	local isDragging = false
	local dragStart = nil
	local startPos = nil
	local dragConnection = nil
	local releaseConnection = nil
	local UserInputService = game:GetService("UserInputService")
	local function startDrag(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			isDragging = true
			dragStart = Vector2.new(input.Position.X, input.Position.Y)
			startPos = parent.Position
			dragConnection = UserInputService.InputChanged:Connect(function(inputChanged)
				if (inputChanged.UserInputType == Enum.UserInputType.MouseMovement or inputChanged.UserInputType == Enum.UserInputType.Touch) and isDragging then
					local currentPos = Vector2.new(inputChanged.Position.X, inputChanged.Position.Y)
					local delta = currentPos - dragStart
					parent.Position = UDim2.new(
						startPos.X.Scale, startPos.X.Offset + delta.X,
						startPos.Y.Scale, startPos.Y.Offset + delta.Y
					)
				end
			end)
			releaseConnection = UserInputService.InputEnded:Connect(function(inputEnded)
				if inputEnded.UserInputType == Enum.UserInputType.MouseButton1 or inputEnded.UserInputType == Enum.UserInputType.Touch then
					isDragging = false
					if dragConnection then
						dragConnection:Disconnect()
						dragConnection = nil
					end
					if releaseConnection then
						releaseConnection:Disconnect()
						releaseConnection = nil
					end
				end
			end)
		end
	end
	dragArea.InputBegan:Connect(startDrag)
	local function computeHeights()
		local baseHeight = list.AbsoluteContentSize.Y + 15
		local extra = 0

		for _, d in ipairs(contentFrame:GetDescendants()) do
			if d:IsA("Frame") and d.Name == "OptionsMenu" and d.Visible then
				local menuBottom = d.AbsolutePosition.Y + d.AbsoluteSize.Y
				local baseBottom = contentFrame.AbsolutePosition.Y + baseHeight
				local overflow = math.max(0, menuBottom - baseBottom)
				if overflow > extra then
					extra = overflow
				end
			end
		end
		local totalContentHeight = baseHeight
		local needsScrolling = totalContentHeight > maxHeight
		local displayHeight = needsScrolling and maxHeight or totalContentHeight
		local contentHeight = isExpanded and displayHeight or 0
		local containerHeight = 40 + contentHeight + 5
		if not isExpanded then
			containerHeight = 40
		end
		return contentHeight, containerHeight, needsScrolling, totalContentHeight
	end
	local function applyHeights(immediate)
		local contentH, containerH, needsScrolling, totalContentHeight = computeHeights()
		contentFrame.ScrollingEnabled = needsScrolling
		contentFrame.ScrollBarImageTransparency = needsScrolling and 0.3 or 1
		contentFrame.CanvasSize = UDim2.new(0, 0, 0, totalContentHeight)
		if needsScrolling and not wasScrolling and isExpanded then
			createNotification("Max container height reached, scrolling is active now", 5)
		elseif not needsScrolling and wasScrolling and isExpanded then
			createNotification("Container height reduced, scrolling disabled", 5)
		end
		wasScrolling = needsScrolling
		contentFrame.Size = UDim2.new(1, -20, 0, contentH)
		local info = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		if immediate then
			container.Size = UDim2.new(1, 0, 0, containerH)
			parent.Size = UDim2.new(0, 400, 0, containerH)
		else
			TweenService:Create(container, info, {
				Size = UDim2.new(1, 0, 0, containerH)
			}):Play()
			TweenService:Create(parent, info, {
				Size = UDim2.new(0, 400, 0, containerH)
			}):Play()
		end
	end

	local function hookOptionsMenu(m)
		if not (m and m:IsA("Frame") and m.Name == "OptionsMenu") then
			return
		end
		m:GetPropertyChangedSignal("Visible"):Connect(function()
			if isExpanded then
				applyHeights(false)
			end
		end)
		m:GetPropertyChangedSignal("Size"):Connect(function()
			if isExpanded and m.Visible then
				applyHeights(false)
			end
		end)
	end

	for _, d in ipairs(contentFrame:GetDescendants()) do
		hookOptionsMenu(d)
	end

	contentFrame.ChildAdded:Connect(function()
		applyHeights(true)
	end)

	contentFrame.ChildRemoved:Connect(function()
		applyHeights(true)
	end)

	contentFrame.DescendantAdded:Connect(function(d)
		if d.Name == "OptionsMenu" then
			hookOptionsMenu(d)
		end
		if isExpanded then
			applyHeights(true)
		end
	end)

	list:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		if isExpanded then
			applyHeights(false)
		end
	end)

	local function toggleContainer()
		if isAnimating then
			return
		end
		isAnimating = true
		isExpanded = not isExpanded
		TweenService:Create(arrow, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
			Rotation = isExpanded and 0 or -90
		}):Play()
		applyHeights(false)
		task.delay(0.5, function()
			isAnimating = false
		end)
	end

	toggleBtn.MouseButton1Click:Connect(toggleContainer)
	applyHeights(true)
	return contentFrame, container
end
local contentFrame = createCollapsibleContainer(mainContainer, 530)

-- ================ COMPONENT FUNCTIONS ================ --

local function createSection(parent, title, layoutOrder, defaultExpanded, isWide)
	defaultExpanded = defaultExpanded ~= false
	local section = createElement("Frame", {
		Name = title .. "Section",
		Size = UDim2.new(1, 0, 0, 35),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder or 0,
		Parent = parent
	})
	local headerFrame = createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 30),
		BackgroundTransparency = 1,
		ZIndex = 5,
		Parent = section
	})
	local headerButton = createElement("TextButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 6,
		Parent = headerFrame
	})
	local titleLabel = createElement("TextLabel", {
		Size = UDim2.new(1, -30, 0, 25),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = title,
		Font = Enum.Font.SourceSansBold,
		TextSize = 20,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 7,
		Parent = headerFrame
	})
	local arrow = createElement("ImageLabel", {
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(1, -25, 0, 2.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://3926305904",
		ImageRectOffset = Vector2.new(564, 284),
		ImageRectSize = Vector2.new(36, 36),
		Rotation = defaultExpanded and 0 or -90,
		ZIndex = 7,
		Parent = headerFrame
	})
	createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 2),
		Position = UDim2.new(0, 0, 0, 25),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		ZIndex = 5,
		Parent = headerFrame
	})
	local sectionContent = createElement("Frame", {
		Name = title .. "Content",
		Size = UDim2.new(1, 0, 0, defaultExpanded and 100 or 0),
		Position = UDim2.new(0, 0, 0, 35),
		BackgroundTransparency = 1,
		ClipsDescendants = not defaultExpanded,
		Parent = section
	})
	if isWide then
		createElement("UIListLayout", {
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum
				.HorizontalAlignment.Center,
			Parent = sectionContent
		})
	else
		createElement("UIGridLayout", {
			CellSize = UDim2.new(0, 180, 0, 40),
			CellPadding = UDim2.new(0, 10, 0, 10),
			FillDirectionMaxCells = 2,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Parent = sectionContent
		})
	end
	createElement("UIPadding", {
		PaddingTop = UDim.new(0, 5),
		PaddingBottom = UDim.new(0, 5),
		PaddingLeft = isWide and UDim.new(0, 10) or UDim.new(0, 0),
		PaddingRight = isWide and UDim.new(0, 10) or UDim.new(0, 0),
		Parent = sectionContent
	})
	local isExpanded = defaultExpanded
	local isAnimating = false

	local function findScrollingFrame(obj)
		while obj and obj.Parent do
			obj = obj.Parent
			if obj:IsA("ScrollingFrame") then
				return obj
			end
		end
		return nil
	end

	local function autoScrollToSection(expanding)
		task.spawn(function()
			task.wait(0.3)
			local scrollingFrame = findScrollingFrame(section)
			if not scrollingFrame then
				return
			end

			local sectionTop = section.AbsolutePosition.Y - scrollingFrame.AbsolutePosition.Y +
				scrollingFrame.CanvasPosition.Y
			local sectionBottom = sectionTop + section.AbsoluteSize.Y
			local viewportTop = scrollingFrame.CanvasPosition.Y
			local viewportBottom = viewportTop + scrollingFrame.AbsoluteSize.Y

			local targetCanvasPosition = viewportTop

			if expanding then
				targetCanvasPosition = math.max(0, sectionBottom - scrollingFrame.AbsoluteSize.Y)
			else
				if sectionTop < viewportTop then
					targetCanvasPosition = sectionTop - 10
				end
			end

			local maxCanvasPosition = math.max(0, scrollingFrame.CanvasSize.Y.Offset - scrollingFrame.AbsoluteSize.Y)
			targetCanvasPosition = math.min(targetCanvasPosition, maxCanvasPosition)

			createTween(scrollingFrame, 0.4, {
				CanvasPosition = Vector2.new(scrollingFrame.CanvasPosition.X, targetCanvasPosition)
			}, Enum.EasingStyle.Sine, Enum.EasingDirection.Out):Play()
		end)
	end

	local function calculateContentHeight()
		local childCount = # sectionContent:GetChildren() - 2
		if childCount <= 0 then
			return 10
		end
		local rows = isWide and childCount or math.ceil(childCount / 2)
		local baseHeight = (rows * 50) + 10
		local maxOverflow = 0
		for _, desc in ipairs(sectionContent:GetDescendants()) do
			if desc:IsA("Frame") and desc.Name == "OptionsMenu" and desc.Visible then
				local dropdownBottom = desc.AbsolutePosition.Y + desc.AbsoluteSize.Y
				local contentBottom = sectionContent.AbsolutePosition.Y + baseHeight
				local overflow = math.max(0, dropdownBottom - contentBottom)
				if overflow > maxOverflow then
					maxOverflow = overflow
				end
			end
		end
		return baseHeight + maxOverflow
	end

	local function updateSectionSize(animate)
		animate = animate ~= false
		local targetContentHeight = isExpanded and calculateContentHeight() or 0
		local targetSectionHeight = 35 + targetContentHeight + 10
		if animate then
			sectionContent.ClipsDescendants = not isExpanded
			createTween(sectionContent, 0.4, {
				Size = UDim2.new(1, 0, 0, targetContentHeight)
			}, Enum.EasingStyle.Sine, Enum.EasingDirection.Out):Play()
			createTween(section, 0.4, {
				Size = UDim2.new(1, 0, 0, targetSectionHeight)
			}, Enum.EasingStyle.Sine, Enum.EasingDirection.Out):Play()

			autoScrollToSection(isExpanded)
		else
			sectionContent.Size = UDim2.new(1, 0, 0, targetContentHeight)
			section.Size = UDim2.new(1, 0, 0, targetSectionHeight)
			sectionContent.ClipsDescendants = not isExpanded
		end
	end

	local function hookDropdownMenu(menu)
		if not (menu and menu:IsA("Frame") and menu.Name == "OptionsMenu") then
			return
		end
		menu:GetPropertyChangedSignal("Visible"):Connect(function()
			if isExpanded then
				updateSectionSize(true)
			end
		end)
		menu:GetPropertyChangedSignal("Size"):Connect(function()
			if isExpanded and menu.Visible then
				updateSectionSize(true)
			end
		end)
	end
	for _, desc in ipairs(sectionContent:GetDescendants()) do
		hookDropdownMenu(desc)
	end
	sectionContent.DescendantAdded:Connect(function(desc)
		if desc.Name == "OptionsMenu" then
			hookDropdownMenu(desc)
		end
	end)

	local function toggleSection()
		if isAnimating then
			return
		end
		isAnimating = true
		isExpanded = not isExpanded
		createTween(arrow, 0.4, {
			Rotation = isExpanded and 0 or -90
		}, Enum.EasingStyle.Back, Enum.EasingDirection.Out):Play()
		updateSectionSize(true)
		task.delay(0.4, function()
			isAnimating = false
		end)
	end

	headerButton.MouseButton1Click:Connect(toggleSection)
	headerButton.MouseEnter:Connect(function()
		createTween(arrow, 0.2, {
			ImageColor3 = Color3.fromRGB(0, 200, 255)
		}):Play()
	end)
	headerButton.MouseLeave:Connect(function()
		createTween(arrow, 0.2, {
			ImageColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
	end)
	local updateDebounce = false
	local function debouncedUpdate()
		if updateDebounce then
			return
		end
		updateDebounce = true
		task.wait(0.1)
		if isExpanded then
			updateSectionSize(true)
		end
		updateDebounce = false
	end
	sectionContent.ChildAdded:Connect(debouncedUpdate)
	sectionContent.ChildRemoved:Connect(debouncedUpdate)
	updateSectionSize(false)
	return sectionContent
end

local function createDropdown(name, title, options, defaultOption, callback, parentFrame, isWide)
	isWide = true
	local dropdown = createElement("Frame", {
		Name = name,
		Size = isWide and UDim2.new(1, 0, 0, 40) or UDim2.new(0, 180, 0, 40),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.85,
		BorderSizePixel = 0,
		ZIndex = 10,
		Parent = parentFrame or contentFrame
	})
	local toggleBtn = createElement("TextButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 11,
		Parent = dropdown
	})
	local titleLabel = createElement("TextLabel", {
		Size = UDim2.new(1, -30, 0.5, 0),
		Position = UDim2.new(0, 10, 0, 2),
		BackgroundTransparency = 1,
		Text = title,
		Font = Enum.Font.SourceSansBold,
		TextSize = 18,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
		Parent = toggleBtn
	})

	truncateWithTooltip(titleLabel, title)

	local selectedLabel = createElement("TextLabel", {
		Size = UDim2.new(1, -30, 0.5, 0),
		Position = UDim2.new(0, 10, 0.5, -2),
		BackgroundTransparency = 1,
		Text = defaultOption and ("Default: " .. defaultOption) or "Selected: None",
		Font = Enum.Font.SourceSans,
		TextSize = 14,
		TextColor3 = Color3.fromRGB(180, 180, 180),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
		Parent = toggleBtn
	})

	local initialText = defaultOption and ("Default: " .. defaultOption) or "Selected: None"
	truncateWithTooltip(selectedLabel, initialText)

	local arrow = createElement("ImageLabel", {
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(1, -25, 0.5, -10),
		BackgroundTransparency = 1,
		Image = "rbxassetid://3926305904",
		ImageRectOffset = Vector2.new(564, 284),
		ImageRectSize = Vector2.new(36, 36),
		Rotation = -90,
		ZIndex = 12,
		Parent = toggleBtn
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = toggleBtn
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = toggleBtn
	})
	local menuContainer = createElement("Frame", {
		Name = "MenuContainer",
		Size = isWide and UDim2.new(1, 0, 0, 200) or UDim2.new(0, 180, 0, 200),
		Position = UDim2.new(0, 0, 1, 8),
		BackgroundTransparency = 1,
		ZIndex = 100,
		ClipsDescendants = false,
		Visible = false,
		Parent = dropdown
	})
	local optionsMenu = createElement("Frame", {
		Name = "OptionsMenu",
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = Color3.fromRGB(36, 36, 36),
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		ZIndex = 101,
		ClipsDescendants = true,
		Parent = menuContainer
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		Transparency = 0.3,
		Parent = optionsMenu
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 6),
		Parent = optionsMenu
	})
	local menuLayout = createElement("UIListLayout", {
		Padding = UDim.new(0, 1),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = optionsMenu
	})
	createElement("UIPadding", {
		PaddingTop = UDim.new(0, 4),
		PaddingBottom = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 2),
		PaddingRight = UDim.new(0, 2),
		Parent = optionsMenu
	})
	local isOpen = false
	local outsideConn
	local function closeDropdown(instant)
		if not isOpen then
			return
		end
		isOpen = false
		for i, fn in ipairs(openDropdowns) do
			if fn == closeDropdown then
				table.remove(openDropdowns, i)
				break
			end
		end
		createTween(arrow, 0.25, {
			Rotation = -90
		}):Play()
		local closeTween = createTween(optionsMenu, instant and 0 or 0.3, {
			Size = UDim2.new(1, 0, 0, 0)
		}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
		closeTween:Play()
		closeTween.Completed:Connect(function()
			if not isOpen then
				menuContainer.Visible = false
			end
		end)
		if outsideConn then
			outsideConn:Disconnect()
			outsideConn = nil
		end
	end
	for i, opt in ipairs(options) do
		local optContainer = createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 36),
			BackgroundTransparency = 1,
			ZIndex = 102,
			LayoutOrder = i,
			Parent = optionsMenu
		})

		createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 2),
			PaddingRight = UDim.new(0, 2),
			Parent = optContainer
		})

		local optBtn = createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Color3.fromRGB(60, 60, 60),
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			Text = opt,
			TextSize = 16,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 103,
			Parent = optContainer
		})

		truncateWithTooltip(optBtn, opt)

		createElement("UICorner", {
			CornerRadius = UDim.new(0, 4),
			Parent = optBtn
		})
		createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 4),
			PaddingRight = UDim.new(0, 4),
			Parent = optBtn
		})
		optBtn.MouseEnter:Connect(function()
			createTween(optBtn, 0.15, {
				BackgroundTransparency = 0.7,
				BackgroundColor3 = Color3.fromRGB(80, 120, 255)
			}):Play()
		end)
		optBtn.MouseLeave:Connect(function()
			createTween(optBtn, 0.15, {
				BackgroundTransparency = 1
			}):Play()
		end)
		optBtn.MouseButton1Down:Connect(function()
			truncateWithTooltip(selectedLabel, "Selected: " .. opt)
			if callback then
				callback(opt)
			end
			closeDropdown()
		end)
	end
	local function openDropdown()
		if isOpen then
			return
		end
		isOpen = true

		for _, otherClose in ipairs(openDropdowns) do
			otherClose(true)
		end
		table.clear(openDropdowns)
		table.insert(openDropdowns, closeDropdown)

		menuContainer.Visible = true
		local totalHeight = menuLayout.AbsoluteContentSize.Y + 8
		createTween(arrow, 0.3, {
			Rotation = 0
		}, Enum.EasingStyle.Back):Play()
		createTween(optionsMenu, 0.4, {
			Size = UDim2.new(1, 0, 0, totalHeight)
		}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()
		outsideConn = UserInputService.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				local mouse = UserInputService:GetMouseLocation()
				local dropPos, dropSize = dropdown.AbsolutePosition, dropdown.AbsoluteSize
				local menuPos, menuSize = optionsMenu.AbsolutePosition, optionsMenu.AbsoluteSize
				local notInDropdown = not (mouse.X >= dropPos.X and mouse.X <= dropPos.X + dropSize.X and mouse.Y >= dropPos.Y and mouse.Y <= dropPos.Y + dropSize.Y)
				local notInMenu = not (mouse.X >= menuPos.X and mouse.X <= menuPos.X + menuSize.X and mouse.Y >= menuPos.Y and mouse.Y <= menuPos.Y + menuSize.Y)
				if notInDropdown and notInMenu then
					closeDropdown()
				end
			end
		end)
	end
	toggleBtn.MouseButton1Click:Connect(function()
		if isOpen then
			closeDropdown()
		else
			openDropdown()
		end
	end)
	toggleBtn.MouseEnter:Connect(function()
		if not isOpen then
			createTween(dropdown, 0.2, {
				BackgroundTransparency = 0.65
			}):Play()
		end
	end)
	toggleBtn.MouseLeave:Connect(function()
		if not isOpen then
			createTween(dropdown, 0.2, {
				BackgroundTransparency = 0.85
			}):Play()
		end
	end)
	return dropdown
end

local function createButton(name, text, callback, parentFrame)
	local btn = createElement("TextButton", {
		Name = name,
		Size = UDim2.new(0, 180, 0, 40),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.85,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		Font = Enum.Font.SourceSansBold,
		TextSize = 18,
		ZIndex = 5,
		Parent = parentFrame or contentFrame
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = btn
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = btn
	})
	btn.Text = text
	btn.MouseEnter:Connect(function()
		createTween(btn, 0.2, {
			BackgroundTransparency = 0.6
		}):Play()
	end)
	btn.MouseLeave:Connect(function()
		createTween(btn, 0.2, {
			BackgroundTransparency = 0.85
		}):Play()
	end)
	btn.MouseButton1Click:Connect(function()
		createTween(btn, 0.05, {
			Size = UDim2.new(0, 175, 0, 38)
		}):Play()
		task.delay(0.05, function()
			createTween(btn, 0.05, {
				Size = UDim2.new(0, 180, 0, 40)
			}):Play()
		end)
		callback(btn)
	end)
	return btn
end

local function createTextBox(name, placeholder, defaultText, callback, parentFrame)
	local textBox = createElement("TextBox", {
		Name = name,
		Size = UDim2.new(0, 180, 0, 40),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.85,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		PlaceholderText = placeholder or "Enter text...",
		PlaceholderColor3 = Color3.fromRGB(200, 200, 200),
		Text = defaultText or "",
		TextXAlignment = Enum.TextXAlignment.Left,
		ClearTextOnFocus = false,
		ZIndex = 5,
		Parent = parentFrame or contentFrame
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = textBox
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = textBox
	})
	createElement("UIPadding", {
		PaddingLeft = UDim.new(0, 10),
		PaddingRight = UDim.new(0, 10),
		Parent = textBox
	})
	textBox.Focused:Connect(function()
		createTween(textBox, 0.2, {
			BackgroundTransparency = 0.6
		}):Play()
	end)
	textBox.FocusLost:Connect(function()
		createTween(textBox, 0.2, {
			BackgroundTransparency = 0.85
		}):Play()
		if callback then
			callback(textBox.Text)
		end
	end)
	return textBox
end

local function createToggleButton(name, text, defaultState, callback, parentFrame)
	local toggle = createElement("Frame", {
		Name = name,
		Size = UDim2.new(0, 180, 0, 40),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.85,
		BorderSizePixel = 0,
		ZIndex = 5,
		Parent = parentFrame or contentFrame
	})
	createElement("UIStroke", {
		Thickness = 2,
		Color = Color3.fromRGB(220, 220, 220),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = toggle
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(0, 8),
		Parent = toggle
	})
	local btn = createElement("TextButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 6,
		Parent = toggle
	})
	local label = createElement("TextLabel", {
		Size = UDim2.new(1, -70, 1, 0),
		Position = UDim2.new(0, 10, 0, 0),
		BackgroundTransparency = 1,
		Text = text,
		Font = Enum.Font.SourceSansBold,
		TextSize = 16,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 7,
		Parent = btn
	})
	local switchTrack = createElement("Frame", {
		Size = UDim2.new(0, 50, 0, 24),
		Position = UDim2.new(1, -60, 0.5, -12),
		BackgroundColor3 = Color3.fromRGB(200, 200, 200),
		BackgroundTransparency = 0.7,
		BorderSizePixel = 0,
		ZIndex = 7,
		Parent = btn
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(1, 0),
		Parent = switchTrack
	})
	createElement("UIStroke", {
		Thickness = 1.5,
		Color = Color3.fromRGB(255, 255, 255),
		Parent = switchTrack
	})
	local switchKnob = createElement("Frame", {
		Size = UDim2.new(0, 20, 0, 20),
		Position = UDim2.new(0, 2, 0.5, -10),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		ZIndex = 8,
		Parent = switchTrack
	})
	createElement("UICorner", {
		CornerRadius = UDim.new(1, 0),
		Parent = switchKnob
	})
	local isToggled = defaultState or false
	local function updateToggle()
		local trackColor = isToggled and Color3.fromRGB(0, 120, 255) or Color3.fromRGB(120, 120, 120)
		local knobPosition = isToggled and UDim2.new(1, -22, 0.5, -10) or UDim2.new(0, 2, 0.5, -10)
		createTween(switchTrack, 0.3, {
			BackgroundColor3 = trackColor
		}):Play()
		createTween(switchKnob, 0.3, {
			Position = knobPosition
		}):Play()
		if callback then
			callback(isToggled)
		end
	end
	btn.MouseEnter:Connect(function()
		createTween(toggle, 0.2, {
			BackgroundTransparency = 0.65
		}):Play()
	end)
	btn.MouseLeave:Connect(function()
		createTween(toggle, 0.2, {
			BackgroundTransparency = 0.85
		}):Play()
	end)
	btn.MouseButton1Click:Connect(function()
		isToggled = not isToggled
		updateToggle()
	end)
	updateToggle()
	return toggle, function()
		return isToggled
	end
end

-- =============== INITIALIZATION ===============
-- actual brainfuck starts here

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PathfindingService = game:GetService("PathfindingService")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Player
local Player = Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer
local PlayerStats = Player:WaitForChild("Stats")
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Camera = workspace.CurrentCamera
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Workspace
local NPCs = Workspace:WaitForChild("NPCs")

-- Animations
local Animator = Humanoid:WaitForChild("Animator")
local PanningAnimations = game.ReplicatedStorage.Assets.Animations.Panning
local WashAnimation = Animator:LoadAnimation(PanningAnimations.Wash)
local ShakeAnimation = Animator:LoadAnimation(PanningAnimations.Shake)

-- UI
local ToolUI = PlayerGui:WaitForChild("ToolUI")
local FillingPan = ToolUI:WaitForChild("FillingPan")
local FillText = FillingPan:WaitForChild("FillText")

-- Sections
local sellSection = createSection(contentFrame, "Sell Inventory", 1, true)
local autoFarmSection = createSection(contentFrame, "Auto Farm", 2, true)
local manualSection = createSection(contentFrame, "Manual Actions", 3, false)
local shopSection = createSection(contentFrame, "Shop", 4, false)

-- ==================== STATE ====================
local PanStatus = {
	current = 0,
	max = 100,
	isFull = false
}

local AutoFarmState = {
	active = false,
	actionMode = "Instant",
	travelMode = "Walk",
	sandCFrame = nil,
	waterCFrame = nil
}

local SellSettings = {
	mode = "Tween",
	type = "Threshold",
	threshold = 50,
	delay = 60,
	autoSell = false,
	_lastSell = nil,
	_scheduledSell = nil
}

-- Locals
local tweenInProgress

-- ==================== HELPERS ====================

local function equipPan()
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local LocalPlayer = Players.LocalPlayer
	local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

	-- helper to check container for a Pan
	local function findPan(container)
		for _, v in ipairs(container:GetChildren()) do
			if v:GetAttribute("ItemType") == "Pan" then
				return v
			end
		end
	end

	local pan = findPan(Character)
		or findPan(LocalPlayer.Backpack)
		or findPan(LocalPlayer:WaitForChild("BackpackTwo"))

	if pan then
		ReplicatedStorage.Remotes.CustomBackpack.EquipRemote:FireServer(pan)
		return pan
	end

	return nil
end



local function validateSellValue(str)
	if not str or str == "" then
		return nil, nil
	end
	local n, u = str:lower():match("^(%d+)%s*(%a*)$")
	n = tonumber(n)
	if not n then
		return nil, nil
	end
	u = (u or ""):gsub("s+$", "")

	-- omg multi-lang support
	local multipliers = {
		-- Seconds
		[""] = 1, -- Empty/default (seconds)
		s = 1,
		sec = 1,
		secs = 1,
		second = 1,
		seconds = 1,
		["s."] = 1,
		["sec."] = 1,
		S = 1,

		-- Minutes
		m = 60,
		min = 60,
		mins = 60,
		minute = 60,
		minutes = 60,
		["m."] = 60,
		["min."] = 60,
		M = 60,

		-- Hours
		h = 3600,
		hr = 3600,
		hrs = 3600,
		hour = 3600,
		hours = 3600,
		["h."] = 3600,
		["hr."] = 3600,
		H = 3600,

		-- Days
		d = 86400,
		day = 86400,
		days = 86400,
		["d."] = 86400,
		D = 86400,

		-- International variations
		segundo = 1, -- Spanish/Portuguese for second
		minuto = 60, -- Spanish/Portuguese for minute
		hora = 3600, -- Spanish/Portuguese for hour
		dia = 86400, -- Spanish/Portuguese for day
		seconde = 1, -- French for second
		minute_fr = 60, -- French for minute
		heure = 3600, -- French for hour
		jour = 86400, -- French for day
		sekunde = 1, -- German for second
		minute_de = 60, -- German for minute
		stunde = 3600, -- German for hour
		tag = 86400, -- German for day

		-- Common typos/alternative spellings
		secon = 1,
		minut = 60,
		hou = 3600,
		da = 86400,

		-- Colloquial/informal
		sec_short = 1,
		min_short = 60,
		hr_short = 3600
	}
	if u ~= "" then -- Treat as time
		local seconds = n * (multipliers[u] or 0)
		if seconds >= 30 and seconds <= 86400 then
			return seconds, "time"
		else
			return nil, nil
		end
	else
		-- Treat as sell value
		if n >= 10 and n <= 500 then
			return n, "value"
		else
			return nil, nil
		end
	end
end

local function CollectInvokeServer(collect)
	collect:InvokeServer(({
		0.99,
		1
	})[math.random(2)])
end

local function getPanStatus()
	local fillNumbers = string.split(FillText.ContentText, "/")
	local current = tonumber(fillNumbers[1]) or 0
	local max = tonumber(fillNumbers[2]) or 100
	return {
		current = current,
		max = max,
		isFull = current >= max,
		isEmpty = current <= 0,
	}
end

local function fetchPanFunctions()
	if getgenv().PanFunctions then
		return getgenv().PanFunctions
	end
	local startDigging, stopDigging, setPanningView, startPanning, shakePan
	for _, f in ipairs(getgc(true)) do
		if type(f) == "function" and islclosure(f) then
			local info = debug.getinfo(f)
			if info.name == "startDigging" then
				startDigging = f
			elseif info.name == "stopDigging" then
				stopDigging = f
			elseif info.name == "setPanningView" then
				setPanningView = f
			elseif info.name == "startPanning" then
				startPanning = f
			elseif info.name == "shakePan" then
				shakePan = f
			end
		end
	end
	getgenv().PanFunctions = {
		startDigging = startDigging,
		stopDigging = stopDigging,
		setPanningView = setPanningView,
		startPanning = startPanning,
		shakePan = shakePan
	}
	return getgenv().PanFunctions
end

local function getRegion(HumanoidRootPart)
	local PointToRegion = require(ReplicatedStorage.Modules.Location.PointToRegion)
	local region, _ = PointToRegion.GetPanningRegion(HumanoidRootPart.Position)
	return region
end

local function getClosestMerchant()
	local playerHrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	if not playerHrp then
		return nil, math.huge
	end
	local closest, closestDist = nil, math.huge
	for _, folder in ipairs(NPCs:GetChildren()) do
		for _, npc in ipairs(folder:GetChildren()) do
			if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") and npc.Name:sub(-8) == "Merchant" then
				local iconUI = npc:FindFirstChild("IconUI")
				local imageLabel = iconUI and iconUI:FindFirstChild("ImageLabel")
				if imageLabel and imageLabel:IsA("ImageLabel") and imageLabel.Image == "rbxassetid://2246496691" then
					local npcHrp = npc.HumanoidRootPart
					local dist = (playerHrp.Position - npcHrp.Position).Magnitude
					if dist < closestDist then
						closestDist = dist
						closest = npcHrp
					end
				end
			end
		end
	end
	return closest, closestDist
end

local function tweenToTarget(target, config)
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	config = config or {}
	local offset = config.Offset or Vector3.new(0, 0, 0)
	local stopDist = config.StopDistance or 1
	local speed = config.Speed or 10
	local avoidanceRadius = config.AvoidanceRadius or 8
	local lookAheadDist = config.LookAheadDistance or 15
	local maxAvoidanceForce = config.MaxAvoidanceForce or 20
	local rayDensity = config.RayDensity or 8
	local smoothness = config.Smoothness or 0.3
	local areaTimeout = config.AreaTimeout or 10

	local function setNoclip(state)
		for _, v in pairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = not state
			end
		end
	end

	local function toVector3(t)
		if typeof(t) == "Vector3" then
			return t
		elseif typeof(t) == "Instance" and t:IsA("BasePart") then
			return t.Position
		elseif typeof(t) == "CFrame" then
			return t.Position
		elseif typeof(t) == "table" then
			if t.Position then
				return t.Position
			elseif t.X and t.Y and t.Z then
				return Vector3.new(t.X, t.Y, t.Z)
			end
		end
		error("Invalid target type")
	end

	local function scanForObstacles(origin, direction)
		local raycastParams = RaycastParams.new()
		raycastParams.FilterDescendantsInstances = {
			character
		}
		raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
		local obstacles = {}
		local mainResult = workspace:Raycast(origin, direction * lookAheadDist, raycastParams)
		if mainResult then
			table.insert(obstacles, {
				position = mainResult.Position,
				normal = mainResult.Normal,
				distance = mainResult.Distance,
				weight = 1.0
			})
		end
		local rightVector = direction:Cross(Vector3.new(0, 1, 0)).Unit
		local upVector = direction:Cross(rightVector).Unit
		for i = 1, rayDensity do
			local angle = (i / rayDensity) * math.pi * 2
			local spreadRadius = 0.5
			local rayDir = direction + (rightVector * math.cos(angle) * spreadRadius) +
				(upVector * math.sin(angle) * spreadRadius)
			rayDir = rayDir.Unit
			local result = workspace:Raycast(origin, rayDir * lookAheadDist, raycastParams)
			if result then
				table.insert(obstacles, {
					position = result.Position,
					normal = result.Normal,
					distance = result.Distance,
					weight = 0.7
				})
			end
		end
		return obstacles
	end

	local function calculateAvoidanceForce(obstacles, currentPos, targetDirection)
		local totalAvoidance = Vector3.new(0, 0, 0)
		for _, obstacle in pairs(obstacles) do
			local distanceToObstacle = (obstacle.position - currentPos).Magnitude
			if distanceToObstacle < avoidanceRadius then
				local repulsiveDir = (currentPos - obstacle.position).Unit
				local influence = (avoidanceRadius - distanceToObstacle) / avoidanceRadius
				influence = influence ^ 1.5 * obstacle.weight
				local avoidDir = repulsiveDir
				if obstacle.normal.Y > 0.5 then
					avoidDir = avoidDir + Vector3.new(0, 1, 0)
				elseif obstacle.normal.Y < -0.5 then
					avoidDir = avoidDir + Vector3.new(0, -0.5, 0)
				else
					avoidDir = avoidDir + Vector3.new(0, 0.8, 0)
				end
				avoidDir = avoidDir.Unit
				totalAvoidance = totalAvoidance + (avoidDir * influence * maxAvoidanceForce)
			end
		end
		return totalAvoidance
	end

	local finalGoal = toVector3(target) + offset
	local bg = Instance.new("BodyGyro")
	bg.P = 9e4
	bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.CFrame = hrp.CFrame
	bg.Parent = hrp
	local bv = Instance.new("BodyVelocity")
	bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
	bv.Velocity = Vector3.new(0, 0, 0)
	bv.Parent = hrp
	setNoclip(true)
	local lastPosition = hrp.Position
	local stuckTime = 0
	local maxStuckTime = 1.5
	local areaStartPosition = hrp.Position
	local areaStartTime = tick()
	local areaRadius = 5

	local conn
	conn = RunService.Heartbeat:Connect(function()
		if typeof(target) == "Instance" and target:IsA("BasePart") then
			finalGoal = target.Position + offset
		elseif typeof(target) == "CFrame" then
			finalGoal = target.Position + offset
		elseif typeof(target) == "table" and target.Position then
			finalGoal = target.Position + offset
		end

		local currentPos = hrp.Position
		local distToTarget = (finalGoal - currentPos).Magnitude

		if distToTarget <= stopDist then
			conn:Disconnect()
			bg:Destroy()
			bv:Destroy()
			setNoclip(false)
			if config.OnComplete then
				config.OnComplete(true)
			end
			return
		end

		local distanceFromAreaStart = (currentPos - areaStartPosition).Magnitude
		if distanceFromAreaStart > areaRadius then
			areaStartPosition = currentPos
			areaStartTime = tick()
		else
			-- Still in the same area, check if i've been here too long
			if tick() - areaStartTime > areaTimeout then
				conn:Disconnect()
				bg:Destroy()
				bv:Destroy()
				setNoclip(false)
				if config.OnComplete then
					config.OnComplete(false)
				end
				warn("tweenToTarget area timeout - stuck in same area for " .. areaTimeout .. " seconds")
				return
			end
		end

		local targetDirection = (finalGoal - currentPos).Unit
		local obstacles = scanForObstacles(currentPos, targetDirection)
		local avoidanceForce = calculateAvoidanceForce(obstacles, currentPos, targetDirection)
		local seekingForce = targetDirection * speed
		local finalVelocity = seekingForce + avoidanceForce

		if finalVelocity.Magnitude > speed * 1.5 then
			finalVelocity = finalVelocity.Unit * speed
		end

		local movementDelta = (currentPos - lastPosition).Magnitude
		if movementDelta < 0.3 then
			stuckTime = stuckTime + RunService.Heartbeat:Wait()
			if stuckTime > maxStuckTime then
				finalVelocity = finalVelocity + Vector3.new(0, speed * 0.8, 0)
				stuckTime = 0
			end
		else
			stuckTime = 0
		end

		lastPosition = currentPos
		local currentVelocity = bv.Velocity
		local smoothedVelocity = currentVelocity:lerp(finalVelocity, smoothness)
		bv.Velocity = smoothedVelocity
		bg.CFrame = CFrame.new(currentPos, currentPos + smoothedVelocity.Unit)
	end)

	task.spawn(function()
		local startTime = tick()
		while conn.Connected do
			setNoclip(true)
			if tick() - startTime > 60 then
				conn:Disconnect()
				bg:Destroy()
				bv:Destroy()
				setNoclip(false)
				if config.OnComplete then
					config.OnComplete(true)
				end
				warn("tweenToTarget timeout")
				break
			end
			task.wait(0.1)
		end
	end)

	return {
		connection = conn,
		stop = function()
			if conn then
				conn:Disconnect()
			end
			if bg then
				bg:Destroy()
			end
			if bv then
				bv:Destroy()
			end
			setNoclip(false)
		end,
		setSpeed = function(newSpeed)
			speed = newSpeed
		end
	}
end

-- fake, doesn't work, AI
-- thank you
local function walkToTarget(target, config)
	if not target or not target.Position then
		error("Target must be a BasePart", 2)
	end
	local finalTarget = target.Position
	local player = Players.LocalPlayer
	if not player then
		error("No local player found", 2)
	end
	local character = player.Character
	if not character then
		error("Character not found", 2)
	end
	local humanoid = character:FindFirstChild("Humanoid")
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not humanoid or not hrp then
		error("Humanoid or HumanoidRootPart not found", 2)
	end
	config = config or {}
	local defaults = {
		Speed = 16,
		StopDistance = 3,
		AgentRadius = 3.5,
		AgentHeight = 4,
		AgentCanJump = true,
		AgentCanClimb = true,
		VisualizePath = false,
		RRTStepSize = 8,
		RRTSearchRadius = 50,
		FieldResolution = 2,
		FieldSize = 120,
		AttractiveGain = 1.2,
		RepulsiveGain = 150,
		RepulsiveRange = 15,
		MaxFieldSteps = 600,
		FieldStepSize = 4,
		MaxStuckAttempts = 12,
		TierTimeouts = {
			12,
			15,
			18
		},
		MaxRRTNodes = 2000,
		RRTBias = 0.8,
		CheckFrequency = 0.2,
		AdaptiveStepSize = true,
		SmartSampling = true,
		PathOptimization = true,
		DynamicBias = true,
		SmoothingRadius = 4,
		JumpHeight = 50,
		MaxJumpAttempts = 8,
		CacheSize = 400,
		CacheExpireTime = 7,
		StuckDetectionTime = 1.2,
		MinStuckSpeed = 1.5,
		JumpCooldown = 2.8,
		WaypointJumpDistance = 8,
		ObstacleJumpHeight = 15,
		MaxRetries = 3,
		PositionCheckRadius = 4
	}
	for k, v in pairs(defaults) do
		if config[k] == nil then
			config[k] = v
		end
	end
	humanoid.WalkSpeed = config.Speed
	local pathVisuals = {}
	local raycastCache = {}
	local cacheKeys = {}
	local pathCache = {}

	local globalState = {
		currentTier = 1,
		totalStuckAttempts = 0,
		emergencyRetries = 0,
		lastKnownGoodPosition = hrp.Position,
		pathfindingActive = true,
		endPosition = finalTarget,
		tierPerformance = {
			[1] = { successes = 0, failures = 0, totalTime = 0, attempts = 0, avgTime = 0, successRate = 0 },
			[2] = { successes = 0, failures = 0, totalTime = 0, attempts = 0, avgTime = 0, successRate = 0 },
			[3] = { successes = 0, failures = 0, totalTime = 0, attempts = 0, avgTime = 0, successRate = 0 }
		},
		pathComplexity = 0,
		terrainDifficulty = 0,
		currentAttemptStartTime = 0,
		adaptiveLearning = true,
		lastPositionUpdate = 0
	}

	local function analyzeTerrainComplexity(startPos, targetPos)
		local complexity = 0
		local difficulty = 0
		local distance = (targetPos - startPos).Magnitude
		local samples = math.min(12, math.max(6, math.floor(distance / 10)))

		local rayParams = RaycastParams.new()
		rayParams.FilterType = Enum.RaycastFilterType.Blacklist
		rayParams.FilterDescendantsInstances = { character }

		local lastHeight = startPos.Y
		local heightVariations = 0
		local obstacleCount = 0

		for i = 1, samples do
			local t = i / samples
			local samplePos = startPos:Lerp(targetPos, t)

			local groundHit = workspace:Raycast(samplePos + Vector3.new(0, 50, 0), Vector3.new(0, -100, 0), rayParams)
			if groundHit then
				local currentHeight = groundHit.Position.Y
				local heightDiff = math.abs(currentHeight - lastHeight)
				heightVariations = heightVariations + heightDiff
				lastHeight = currentHeight

				local obstacleHit = workspace:Raycast(samplePos + Vector3.new(0, 3, 0),
					(targetPos - samplePos).Unit * 5, rayParams)
				if obstacleHit then
					obstacleCount = obstacleCount + 1
				end
			end
		end

		complexity = math.min(10, (heightVariations / 20) + (obstacleCount / samples * 5) + (distance / 50))

		local directHit = workspace:Raycast(startPos + Vector3.new(0, 3, 0),
			(targetPos - startPos), rayParams)
		if directHit then
			difficulty = math.min(10, complexity + 3)
		else
			difficulty = complexity
		end

		return complexity, difficulty
	end

	local function selectOptimalTier(startPos, targetPos)
		local complexity, difficulty = analyzeTerrainComplexity(startPos, targetPos)
		globalState.pathComplexity = complexity
		globalState.terrainDifficulty = difficulty

		local distance = (targetPos - startPos).Magnitude
		local performance = globalState.tierPerformance

		print(string.format("Terrain Analysis - Complexity: %.1f, Difficulty: %.1f, Distance: %.1f", complexity,
			difficulty, distance))

		if complexity <= 3 and difficulty <= 3 and distance <= 100 then
			if performance[1].successRate >= 0.7 or performance[1].attempts == 0 then
				print("Selected Tier 1 (PathfindingService) - Easy terrain")
				return 1
			end
		end

		if complexity <= 6 and difficulty <= 6 then
			local bestTier = 1
			local bestScore = -1

			for tier = 1, 3 do
				local perf = performance[tier]
				local score = 0

				if perf.attempts > 0 then
					score = perf.successRate - (perf.avgTime / 30)
				else
					score = tier == 1 and 0.8 or tier == 2 and 0.6 or 0.4
				end

				if score > bestScore then
					bestScore = score
					bestTier = tier
				end
			end

			print(string.format("Selected Tier %d (Performance-based) - Medium terrain", bestTier))
			return bestTier
		end

		if complexity > 6 or difficulty > 6 then
			if performance[2].successRate >= 0.6 or performance[2].attempts == 0 then
				print("Selected Tier 2 (RRT*) - Complex terrain")
				return 2
			end
			print("Selected Tier 3 (Potential Field) - Very complex terrain")
			return 3
		end

		return 1
	end

	-- PERFORMANCE TRACKING WHICH TOTALLY MEANS SOMETHING
	local function updateTierPerformance(tier, success, timeSpent)
		local perf = globalState.tierPerformance[tier]
		perf.attempts = perf.attempts + 1
		perf.totalTime = perf.totalTime + timeSpent

		if success then
			perf.successes = perf.successes + 1
		else
			perf.failures = perf.failures + 1
		end

		perf.avgTime = perf.totalTime / perf.attempts
		perf.successRate = perf.successes / perf.attempts

		print(string.format("Tier %d Performance: %.1f%% success, %.1fs avg time, %d attempts",
			tier, perf.successRate * 100, perf.avgTime, perf.attempts))
	end

	local function shouldSwitchTier()
		local currentTime = tick()
		local elapsedTime = currentTime - globalState.currentAttemptStartTime
		local currentTier = globalState.currentTier
		local timeout = config.TierTimeouts[currentTier] or 15

		if elapsedTime > timeout * 0.8 then
			print("Switching tier due to timeout approaching")
			return true
		end

		if globalState.totalStuckAttempts > 6 then
			print("Switching tier due to being stuck")
			return true
		end

		local perf = globalState.tierPerformance[currentTier]
		if perf.attempts >= 3 and perf.successRate < 0.3 then
			print("Switching tier due to poor performance")
			return true
		end

		return false
	end

	local function getNextBestTier()
		local currentTier = globalState.currentTier
		local performance = globalState.tierPerformance
		local complexity = globalState.pathComplexity
		local alternatives = {}
		for tier = 1, 3 do
			if tier ~= currentTier then
				local perf = performance[tier]
				local score = 0

				if perf.attempts > 0 then
					score = perf.successRate * 100 - perf.avgTime
				else
					if complexity <= 3 then
						score = tier == 1 and 90 or tier == 2 and 70 or 50
					elseif complexity <= 6 then
						score = tier == 2 and 85 or tier == 1 and 75 or tier == 3 and 65
					else
						score = tier == 3 and 80 or tier == 2 and 75 or 60
					end
				end

				table.insert(alternatives, { tier = tier, score = score })
			end
		end

		table.sort(alternatives, function(a, b) return a.score > b.score end)
		return alternatives[1] and alternatives[1].tier or (currentTier % 3) + 1
	end

	local movementMonitor = {
		positions = {},
		velocities = {},
		lastJumpTime = 0,
		lastMoveTime = 0,
		stuckAttempts = 0,
		isActive = false,
		currentWaypoint = nil,
		waypointStartTime = 0,
		lastStuckPosition = nil,
		consecutiveStuckCount = 0
	}
	local function hashPosition(pos, precision)
		precision = precision or 1
		return string.format("%.1f_%.1f_%.1f", math.floor(pos.X / precision) * precision,
			math.floor(pos.Y / precision) * precision, math.floor(pos.Z / precision) * precision)
	end
	local function getCachedRaycast(from, direction, distance)
		local key = string.format("%.1f,%.1f,%.1f_%.2f,%.2f,%.2f_%.1f", from.X, from.Y, from.Z, direction.X, direction.Y,
			direction.Z, distance)
		local cached = raycastCache[key]
		local now = tick()
		if cached and now - cached.time < config.CacheExpireTime then
			return cached.result
		end
		if # cacheKeys >= config.CacheSize then
			local oldKey = table.remove(cacheKeys, 1)
			raycastCache[oldKey] = nil
		end
		local rayParams = RaycastParams.new()
		rayParams.FilterDescendantsInstances = {
			character
		}
		rayParams.FilterType = Enum.RaycastFilterType.Blacklist
		local result = workspace:Raycast(from, direction * distance, rayParams)
		raycastCache[key] = {
			result = result,
			time = now
		}
		table.insert(cacheKeys, key)
		return result
	end
	local function updateMovementMonitor()
		if not movementMonitor.isActive then
			return
		end
		local currentPos = hrp.Position
		local currentTime = tick()
		table.insert(movementMonitor.positions, {
			pos = currentPos,
			time = currentTime
		})
		if # movementMonitor.positions > 1 then
			local lastEntry = movementMonitor.positions[# movementMonitor.positions - 1]
			local velocity = (currentPos - lastEntry.pos) / math.max(currentTime - lastEntry.time, 0.1)
			table.insert(movementMonitor.velocities, velocity)
			if # movementMonitor.velocities > 8 then
				table.remove(movementMonitor.velocities, 1)
			end
		end
		while # movementMonitor.positions > 12 do
			table.remove(movementMonitor.positions, 1)
		end
	end
	local function isStuckAdvanced()
		if # movementMonitor.positions < 6 then
			return false
		end
		if tick() - movementMonitor.lastJumpTime < config.JumpCooldown then
			return false
		end
		if movementMonitor.stuckAttempts >= config.MaxStuckAttempts then
			return false
		end
		local recentPositions = {}
		local cutoffTime = tick() - config.StuckDetectionTime
		for i = # movementMonitor.positions, 1, -1 do
			if movementMonitor.positions[i].time >= cutoffTime then
				table.insert(recentPositions, 1, movementMonitor.positions[i])
			else
				break
			end
		end
		if # recentPositions < 4 then
			return false
		end
		local totalMovement = 0
		local timeSpan = recentPositions[# recentPositions].time - recentPositions[1].time
		for i = 2, # recentPositions do
			totalMovement = totalMovement + (recentPositions[i].pos - recentPositions[i - 1].pos).Magnitude
		end
		if timeSpan > 0 then
			local avgSpeed = totalMovement / timeSpan
			local currentPos = hrp.Position
			if avgSpeed < config.MinStuckSpeed then
				if not movementMonitor.lastStuckPosition or (currentPos - movementMonitor.lastStuckPosition).Magnitude > 5 then
					movementMonitor.consecutiveStuckCount = 0
					movementMonitor.lastStuckPosition = currentPos
				end
				movementMonitor.consecutiveStuckCount = movementMonitor.consecutiveStuckCount + 1
				if movementMonitor.consecutiveStuckCount >= 2 then
					return true
				end
			else
				movementMonitor.consecutiveStuckCount = 0
			end
		end
		return false
	end
	local function shouldJumpToWaypoint()
		if not movementMonitor.currentWaypoint then
			return false
		end
		if tick() - movementMonitor.lastJumpTime < config.JumpCooldown then
			return false
		end
		local currentPos = hrp.Position
		local waypointDir = (movementMonitor.currentWaypoint - currentPos)
		local waypointDist = waypointDir.Magnitude
		waypointDir = waypointDir.Unit
		if waypointDist <= config.WaypointJumpDistance then
			local rayHit = getCachedRaycast(
				currentPos + Vector3.new(0, 2, 0), waypointDir, waypointDist + 2)
			if rayHit then
				local obstacleHeight = rayHit.Position.Y - currentPos.Y
				local obstacleDistance = (rayHit.Position - currentPos).Magnitude
				if obstacleHeight > 2 and obstacleHeight < config.ObstacleJumpHeight and obstacleDistance < waypointDist * 0.8 then
					return true
				end
			end
			local groundAhead = getCachedRaycast(
				currentPos + waypointDir * 3 + Vector3.new(0, 10, 0), Vector3.new(0, -1, 0), 15)
			if groundAhead then
				local heightDiff = groundAhead.Position.Y - currentPos.Y
				if heightDiff > 3 and heightDiff < config.ObstacleJumpHeight then
					return true
				end
			end
		end
		return false
	end
	local function executeJump(reason)
		movementMonitor.lastJumpTime = tick()
		movementMonitor.stuckAttempts = movementMonitor.stuckAttempts + 1
		globalState.totalStuckAttempts = globalState.totalStuckAttempts + 1
		humanoid.Jump = true
		if reason == "waypoint" and movementMonitor.currentWaypoint then
			humanoid:MoveTo(movementMonitor.currentWaypoint)
		end
		task.wait(0.4)
		movementMonitor.positions = {}
		movementMonitor.velocities = {}
	end

	local movementConnection = RunService.Heartbeat:Connect(updateMovementMonitor)

	local function advancedPathSmoothing(path, radius)
		if # path <= 2 then
			return path
		end
		local smoothed = {
			path[1]
		}
		local i = 1
		while i < # path do
			local current = path[i]
			local maxReach = math.min(i + 10, # path)
			local bestReach = i + 1
			for j = maxReach, i + 2, -1 do
				local testPoint = path[j]
				local direction = (testPoint - current).Unit
				local distance = (testPoint - current).Magnitude
				local canReach = true
				local checkPoints = math.max(4, math.ceil(distance / 4))
				for step = 1, checkPoints do
					local t = step / checkPoints
					local checkPos = current + direction * (distance * t)
					local groundCheck = getCachedRaycast(
						checkPos + Vector3.new(0, 8, 0), Vector3.new(0, -1, 0), 12)
					if not groundCheck then
						canReach = false
						break
					end
					checkPos = groundCheck.Position + Vector3.new(0, 1.5, 0)
					for angle = 0, math.pi * 2, math.pi / 3 do
						local offsetCheck = checkPos + Vector3.new(
							math.cos(angle) * radius, 0, math.sin(angle) * radius)
						local obstacleCheck = getCachedRaycast(
							offsetCheck + Vector3.new(0, 1, 0), direction, distance * (1 - t) + 2)
						if obstacleCheck and (obstacleCheck.Position - testPoint).Magnitude > 3 then
							canReach = false
							break
						end
					end
					if not canReach then
						break
					end
				end
				if canReach then
					bestReach = j
					break
				end
			end
			table.insert(smoothed, path[bestReach])
			i = bestReach
		end
		return smoothed
	end
	local function createAdvancedRRTStar(startPos, targetPos, character, config)
		local nodes = {}
		local nodeCount = 0
		local maxNodes = math.min(config.MaxRRTNodes, 2000)
		local baseStepSize = config.RRTStepSize
		local searchRadius = config.RRTSearchRadius
		local goalBias = config.RRTBias
		local totalDistance = (targetPos - startPos).Magnitude
		local adaptiveRadius = math.min(searchRadius, totalDistance * 0.4)
		local dynamicStepSize = baseStepSize
		local failureStreak = 0
		nodeCount = nodeCount + 1
		nodes[nodeCount] = {
			pos = startPos,
			parent = nil,
			cost = 0,
			children = {},
			density = 0
		}
		local function calculateDensity(pos, radius)
			local count = 0
			for i = 1, nodeCount do
				if nodes[i] and (nodes[i].pos - pos).Magnitude <= radius then
					count = count + 1
				end
			end
			return count
		end
		local function isPathClearDetailed(from, to)
			local direction = (to - from)
			local distance = direction.Magnitude
			if distance < 0.8 then
				return true
			end
			direction = direction.Unit
			local steps = math.max(6, math.ceil(distance / 2.5))
			for i = 1, steps do
				local t = i / steps
				local checkPos = from + direction * (distance * t)
				local groundHit = getCachedRaycast(
					checkPos + Vector3.new(0, 15, 0), Vector3.new(0, -1, 0), 20)
				if not groundHit then
					return false
				end
				local adjustedPos = groundHit.Position + Vector3.new(0, 1.5, 0)
				for height = 0, 7, 2.5 do
					local obstacleCheck = getCachedRaycast(
						adjustedPos + Vector3.new(0, height, 0), direction, distance * (1 - t) + 1.5)
					if obstacleCheck and (obstacleCheck.Position - to).Magnitude > 2.5 then
						return false
					end
				end
				if i < steps then
					local nextT = (i + 1) / steps
					local nextPos = from + direction * (distance * nextT)
					local nextGroundHit = getCachedRaycast(
						nextPos + Vector3.new(0, 15, 0), Vector3.new(0, -1, 0), 20)
					if nextGroundHit then
						local heightDiff = math.abs(nextGroundHit.Position.Y - groundHit.Position.Y)
						local horizontalDist = distance / steps
						if heightDiff > 0 and horizontalDist > 0 then
							local slope = math.atan(heightDiff / horizontalDist)
							if slope > math.rad(50) then
								return false
							end
						end
					end
				end
				for angle = 0, math.pi * 2, math.pi / 2 do
					local radius = config.AgentRadius * 0.8
					local offsetPos = adjustedPos + Vector3.new(
						math.cos(angle) * radius, 0, math.sin(angle) * radius)
					local agentCheck = getCachedRaycast(
						offsetPos + Vector3.new(0, 2, 0), direction, math.min(8, distance * (1 - t)))
					if agentCheck and (agentCheck.Position - to).Magnitude > 2 then
						return false
					end
				end
			end
			return true
		end
		local function smartSamplePoint(iteration)
			local progress = iteration / maxNodes
			local currentBias = config.DynamicBias and (goalBias + progress * 0.12) or goalBias
			if math.random() < currentBias then
				if math.random() < 0.75 then
					return targetPos
				else
					local noise = Vector3.new((math.random() - 0.5) * (20 - progress * 12), (math.random() - 0.5) * 6,
						(math.random() - 0.5) * (20 - progress * 12))
					return targetPos + noise
				end
			else
				if config.SmartSampling and nodeCount > 20 then
					local lowDensityNodes = {}
					for i = 1, math.min(nodeCount, 30) do
						if nodes[i].density < 3 then
							table.insert(lowDensityNodes, nodes[i])
						end
					end
					if # lowDensityNodes > 0 then
						local baseNode = lowDensityNodes[math.random(# lowDensityNodes)]
						local angle = math.random() * math.pi * 2
						local dist = 15 + math.random() * 25
						local offset = Vector3.new(
							math.cos(angle) * dist, (math.random() - 0.5) * 12, math.sin(angle) * dist)
						local pos = baseNode.pos + offset
						local groundHit = getCachedRaycast(
							pos + Vector3.new(0, 25, 0), Vector3.new(0, -1, 0), 40)
						if groundHit then
							pos = groundHit.Position + Vector3.new(0, 1.5, 0)
						end
						return pos
					end
				end
				local maxDist = math.min(totalDistance * 2, 180)
				local angle1 = math.random() * math.pi * 2
				local angle2 = math.acos(1 - 2 * math.random())
				local distance = math.random() * maxDist
				local pos = startPos + Vector3.new(
					math.cos(angle1) * math.sin(angle2) * distance, (math.random() - 0.5) * 35,
					math.sin(angle1) * math.sin(angle2) * distance)
				local groundHit = getCachedRaycast(
					pos + Vector3.new(0, 35, 0), Vector3.new(0, -1, 0), 50)
				if groundHit then
					pos = groundHit.Position + Vector3.new(0, 1.5, 0)
				end
				return pos
			end
		end
		local function findNearestNode(pos)
			local nearest = 1
			local minDist = (nodes[1].pos - pos).Magnitude
			for i = 2, nodeCount do
				local dist = (nodes[i].pos - pos).Magnitude
				if dist < minDist then
					minDist = dist
					nearest = i
				end
			end
			return nearest, minDist
		end
		local function findNearNodes(pos, radius)
			local nearNodes = {}
			local maxNear = 20
			for i = 1, nodeCount do
				if # nearNodes >= maxNear then
					break
				end
				local dist = (nodes[i].pos - pos).Magnitude
				if dist <= radius then
					table.insert(nearNodes, {
						index = i,
						dist = dist,
						cost = nodes[i].cost
					})
				end
			end
			table.sort(nearNodes, function(a, b)
				return a.cost < b.cost
			end)
			return nearNodes
		end
		for iteration = 1, maxNodes do
			local randomPoint = smartSamplePoint(iteration)
			local nearestIdx, nearestDist = findNearestNode(randomPoint)
			if config.AdaptiveStepSize then
				dynamicStepSize = baseStepSize * (1 + math.min(nearestDist / 30, 1.5))
			end
			if nearestDist > dynamicStepSize then
				local direction = (randomPoint - nodes[nearestIdx].pos).Unit
				randomPoint = nodes[nearestIdx].pos + direction * dynamicStepSize
			end
			if isPathClearDetailed(nodes[nearestIdx].pos, randomPoint) then
				nodeCount = nodeCount + 1
				local newCost = nodes[nearestIdx].cost + (randomPoint - nodes[nearestIdx].pos).Magnitude
				local newNode = {
					pos = randomPoint,
					parent = nearestIdx,
					cost = newCost,
					children = {},
					density = calculateDensity(randomPoint, 12)
				}
				nodes[nodeCount] = newNode
				table.insert(nodes[nearestIdx].children, nodeCount)
				local nearNodes = findNearNodes(randomPoint, adaptiveRadius)
				local bestParent = nearestIdx
				local bestCost = newCost
				for _, nearNode in ipairs(nearNodes) do
					if nearNode.index ~= nodeCount then
						local potentialCost = nodes[nearNode.index].cost + nearNode.dist
						if potentialCost < bestCost and isPathClearDetailed(nodes[nearNode.index].pos, randomPoint) then
							bestCost = potentialCost
							bestParent = nearNode.index
						end
					end
				end
				if bestParent ~= nearestIdx then
					for i, child in ipairs(nodes[nearestIdx].children) do
						if child == nodeCount then
							table.remove(nodes[nearestIdx].children, i)
							break
						end
					end
					nodes[nodeCount].parent = bestParent
					nodes[nodeCount].cost = bestCost
					table.insert(nodes[bestParent].children, nodeCount)
				end
				for _, nearNode in ipairs(nearNodes) do
					if nearNode.index ~= nodeCount and nearNode.index ~= bestParent then
						local newCostViaNew = newNode.cost + nearNode.dist
						if newCostViaNew < nodes[nearNode.index].cost and isPathClearDetailed(randomPoint, nodes[nearNode.index].pos) then
							local oldParent = nodes[nearNode.index].parent
							if oldParent then
								for i, child in ipairs(nodes[oldParent].children) do
									if child == nearNode.index then
										table.remove(nodes[oldParent].children, i)
										break
									end
								end
							end
							nodes[nearNode.index].parent = nodeCount
							nodes[nearNode.index].cost = newCostViaNew
							table.insert(newNode.children, nearNode.index)
						end
					end
				end
				failureStreak = 0
			else
				failureStreak = failureStreak + 1
				if failureStreak > 80 then
					adaptiveRadius = math.min(adaptiveRadius * 1.2, searchRadius * 2)
					failureStreak = 0
				end
			end
			if iteration % 40 == 0 then
				task.wait()
			end
		end
		local closestIdx = 1
		local minDist = (nodes[1].pos - targetPos).Magnitude
		for i = 2, nodeCount do
			local dist = (nodes[i].pos - targetPos).Magnitude
			if dist < minDist then
				minDist = dist
				closestIdx = i
			end
		end
		if minDist > 2.5 and isPathClearDetailed(nodes[closestIdx].pos, targetPos) then
			nodeCount = nodeCount + 1
			nodes[nodeCount] = {
				pos = targetPos,
				parent = closestIdx,
				cost = nodes[closestIdx].cost + minDist,
				children = {},
				density = 0
			}
			table.insert(nodes[closestIdx].children, nodeCount)
			closestIdx = nodeCount
		end
		local path = {}
		local currentIdx = closestIdx
		while currentIdx do
			table.insert(path, 1, nodes[currentIdx].pos)
			currentIdx = nodes[currentIdx].parent
		end
		if config.PathOptimization then
			path = advancedPathSmoothing(path, config.SmoothingRadius)
		end
		return path
	end
	local function createEnhancedPotentialField(startPos, targetPos, character, config)
		local fieldRes = config.FieldResolution
		local attractiveGain = config.AttractiveGain
		local repulsiveGain = config.RepulsiveGain
		local repulsiveRange = config.RepulsiveRange
		local function calculatePotential(pos)
			local distToTarget = (pos - targetPos).Magnitude
			local attractive = attractiveGain * distToTarget * distToTarget
			local repulsive = 0
			local directions = {
				Vector3.new(1, 0, 0),
				Vector3.new(-1, 0, 0),
				Vector3.new(0, 0, 1),
				Vector3.new(0, 0, -1),
				Vector3.new(0.707, 0, 0.707),
				Vector3.new(-0.707, 0, 0.707),
				Vector3.new(0.707, 0, -0.707),
				Vector3.new(-0.707, 0, -0.707),
				Vector3.new(0.866, 0, 0.5),
				Vector3.new(-0.866, 0, 0.5),
				Vector3.new(0.866, 0, -0.5),
				Vector3.new(-0.866, 0, -0.5)
			}
			for _, dir in ipairs(directions) do
				local hit = getCachedRaycast(
					pos + Vector3.new(0, 3, 0), dir, repulsiveRange)
				if hit then
					local dist = math.max((hit.Position - pos).Magnitude, 0.5)
					if dist < repulsiveRange then
						local factor = (repulsiveRange - dist) / repulsiveRange
						repulsive = repulsive + repulsiveGain * factor * factor
					end
				end
			end
			return attractive + repulsive
		end
		local path = {
			startPos
		}
		local currentPos = startPos
		local maxSteps = config.MaxFieldSteps
		local stepSize = config.FieldStepSize
		local stuckCount = 0
		local lastPos = currentPos
		local escapeAttempts = 0
		for step = 1, maxSteps do
			if (currentPos - targetPos).Magnitude < config.StopDistance then
				break
			end
			local gradX = (calculatePotential(currentPos + Vector3.new(fieldRes, 0, 0)) - calculatePotential(currentPos - Vector3.new(fieldRes, 0, 0))) /
				(2 * fieldRes)
			local gradZ = (calculatePotential(currentPos + Vector3.new(0, 0, fieldRes)) - calculatePotential(currentPos - Vector3.new(0, 0, fieldRes))) /
				(2 * fieldRes)
			local gradient = Vector3.new(gradX, 0, gradZ)
			if (currentPos - lastPos).Magnitude < 1.2 then
				stuckCount = stuckCount + 1
				if stuckCount > 8 then
					escapeAttempts = escapeAttempts + 1
					local escapeDir = Vector3.new((math.random() - 0.5) * 2, 0, (math.random() - 0.5) * 2).Unit
					gradient = escapeDir * (3 + escapeAttempts)
					stuckCount = 0
					if escapeAttempts > 5 then
						break
					end
				end
			else
				stuckCount = 0
				escapeAttempts = 0
			end
			if gradient.Magnitude > 0.15 then
				gradient = gradient.Unit
				local nextPos = currentPos - gradient * stepSize
				local groundHit = getCachedRaycast(
					nextPos + Vector3.new(0, 18, 0), Vector3.new(0, -1, 0), 30)
				if groundHit then
					nextPos = groundHit.Position + Vector3.new(0, 1.5, 0)
				end
				local hit = getCachedRaycast(
					currentPos + Vector3.new(0, 3, 0), (nextPos - currentPos).Unit, (nextPos - currentPos).Magnitude)
				if not hit or (hit.Position - nextPos).Magnitude > 4 then
					lastPos = currentPos
					currentPos = nextPos
					table.insert(path, currentPos)
				else
					local foundAlternative = false
					for angle = 20, 340, 20 do
						local altDir = CFrame.Angles(0, math.rad(angle), 0) * gradient
						local altPos = currentPos + altDir * stepSize
						local altGroundHit = getCachedRaycast(
							altPos + Vector3.new(0, 18, 0), Vector3.new(0, -1, 0), 30)
						if altGroundHit then
							altPos = altGroundHit.Position + Vector3.new(0, 1.5, 0)
						end
						local altHit = getCachedRaycast(
							currentPos + Vector3.new(0, 3, 0), (altPos - currentPos).Unit,
							(altPos - currentPos).Magnitude)
						if not altHit or (altHit.Position - altPos).Magnitude > 4 then
							lastPos = currentPos
							currentPos = altPos
							table.insert(path, currentPos)
							foundAlternative = true
							break
						end
					end
					if not foundAlternative then
						stuckCount = stuckCount + 3
					end
				end
			else
				stuckCount = stuckCount + 1
			end
			if step % 30 == 0 then
				task.wait()
			end
		end
		return advancedPathSmoothing(path, config.SmoothingRadius)
	end

	local function getPathToTarget()
		local startPos = hrp.Position
		local cacheKey = hashPosition(startPos, 2) .. "_" .. hashPosition(finalTarget, 2)

		if pathCache[cacheKey] and tick() - pathCache[cacheKey].time < config.CacheExpireTime then
			return pathCache[cacheKey].path
		end

		globalState.currentAttemptStartTime = tick()
		local currentTier = globalState.currentTier
		local path = nil

		print(string.format("Attempting pathfinding with Tier %d", currentTier))

		if currentTier == 1 then
			-- Roblox PathfindingService
			local success, result = pcall(function()
				local pathObj = PathfindingService:CreatePath({
					AgentRadius = config.AgentRadius,
					AgentHeight = config.AgentHeight,
					AgentCanJump = config.AgentCanJump,
					AgentCanClimb = config.AgentCanClimb
				})
				pathObj:ComputeAsync(startPos, finalTarget)
				if pathObj.Status == Enum.PathStatus.Success then
					local waypoints = pathObj:GetWaypoints()
					local points = {}
					local rayParams = RaycastParams.new()
					rayParams.FilterType = Enum.RaycastFilterType.Blacklist
					rayParams.FilterDescendantsInstances = { character }

					for i, wp in ipairs(waypoints) do
						local pos = wp.Position
						if i == 1 or i == #waypoints or i % 3 == 0 then
							local down = workspace:Raycast(pos + Vector3.new(0, 5, 0), Vector3.new(0, -10, 0), rayParams)
							if not down then
								pos = pos + Vector3.new(0, config.AgentHeight * 0.5, 0)
							end
						end
						table.insert(points, pos)
					end
					return points
				end
				return nil
			end)
			if success and result then
				path = result
			end
		elseif currentTier == 2 then
			-- RRT* Algorithm | VERY weak
			path = createAdvancedRRTStar(startPos, finalTarget, character, config)
		elseif currentTier == 3 then
			-- Potential Field Method
			path = createEnhancedPotentialField(startPos, finalTarget, character, config)
		end

		if path and #path > 0 then
			pathCache[cacheKey] = {
				path = path,
				time = tick()
			}

			local cacheKeys = {}
			for k in pairs(pathCache) do
				table.insert(cacheKeys, k)
			end
			if #cacheKeys > config.CacheSize then
				table.sort(cacheKeys, function(a, b)
					return pathCache[a].time < pathCache[b].time
				end)
				for i = 1, #cacheKeys - config.CacheSize do
					pathCache[cacheKeys[i]] = nil
				end
			end
		end

		return path
	end

	local function visualizePath(path)
		local SYSTEM_CONFIG = {
			SPLINE_RESOLUTION = 16,
			TUBE_RADIUS = 0.08,
			FLOW_SPEED = 2.0,
			GRADIENT_ALPHA = 0.7,
			SURFACE_ROUGHNESS = 0.2,
			ILLUMINATION_RANGE = 3.5,
			BEZIER_TENSION = 0.25,
			ANIMATION_PHASE_OFFSET = 0.15
		}
		for i = # pathVisuals, 1, -1 do
			if pathVisuals[i] and pathVisuals[i].Parent then
				pathVisuals[i]:Destroy()
			end
			pathVisuals[i] = nil
		end
		if not config.VisualizePath or not path or # path < 2 then
			return
		end
		local function calculateControlPoints(p0, p1, p2, tension)
			local d1 = (p1 - p0).Magnitude
			local d2 = (p2 - p1).Magnitude
			local totalDistance = d1 + d2
			if totalDistance < 0.001 then
				return p1, p1
			end
			local direction = (p2 - p0).Unit
			local cp1 = p1 - direction * (d1 * tension)
			local cp2 = p1 + direction * (d2 * tension)
			return cp1, cp2
		end
		local function cubicBezier(t, p0, p1, p2, p3)
			local u = 1 - t
			local tt = t * t
			local uu = u * u
			local uuu = uu * u
			local ttt = tt * t
			return uuu * p0 + 3 * uu * t * p1 + 3 * u * tt * p2 + ttt * p3
		end
		local function generateSplineGeometry(startPos, endPos, controlPoint1, controlPoint2, resolution)
			local splinePoints = {}
			local splineTangents = {}
			for i = 0, resolution do
				local t = i / resolution
				local position = cubicBezier(t, startPos, controlPoint1, controlPoint2, endPos)
				table.insert(splinePoints, position)
				if i < resolution then
					local nextT = (i + 1) / resolution
					local nextPosition = cubicBezier(nextT, startPos, controlPoint1, controlPoint2, endPos)
					local tangent = (nextPosition - position).Unit
					table.insert(splineTangents, tangent)
				end
			end
			return splinePoints, splineTangents
		end
		local pathNetwork = Instance.new("Model")
		pathNetwork.Name = "PathVisualizationNetwork"
		pathNetwork.Parent = workspace
		local splineSegments = {}
		for segmentIndex = 1, # path - 1 do
			local currentPoint = path[segmentIndex]
			local nextPoint = path[segmentIndex + 1]
			local previousPoint = segmentIndex > 1 and path[segmentIndex - 1] or
				currentPoint - (nextPoint - currentPoint)
			local futurePoint = segmentIndex < # path - 1 and path[segmentIndex + 2] or
				nextPoint + (nextPoint - currentPoint)
			local cp1, cp2 = calculateControlPoints(previousPoint, currentPoint, nextPoint, SYSTEM_CONFIG.BEZIER_TENSION)
			local cp3, cp4 = calculateControlPoints(currentPoint, nextPoint, futurePoint, SYSTEM_CONFIG.BEZIER_TENSION)
			local splinePoints, splineTangents = generateSplineGeometry(currentPoint, nextPoint, cp1, cp3,
				SYSTEM_CONFIG.SPLINE_RESOLUTION)
			local segmentContainer = Instance.new("Model")
			segmentContainer.Name = "SplineSegment_" .. segmentIndex
			segmentContainer.Parent = pathNetwork
			for pointIndex = 1, # splinePoints - 1 do
				local currentSplinePoint = splinePoints[pointIndex]
				local nextSplinePoint = splinePoints[pointIndex + 1]
				local segmentVector = nextSplinePoint - currentSplinePoint
				local segmentLength = segmentVector.Magnitude
				if segmentLength > 0.001 then
					local progressRatio = (segmentIndex - 1 + pointIndex / SYSTEM_CONFIG.SPLINE_RESOLUTION) /
						(# path - 1)
					local tubeSegment = Instance.new("Part")
					tubeSegment.Name = "TubeElement_" .. pointIndex
					tubeSegment.Shape = Enum.PartType.Cylinder
					tubeSegment.Size = Vector3.new(segmentLength, SYSTEM_CONFIG.TUBE_RADIUS * 2,
						SYSTEM_CONFIG.TUBE_RADIUS * 2)
					tubeSegment.CFrame = CFrame.lookAt(currentSplinePoint + segmentVector * 0.5, nextSplinePoint) *
						CFrame.Angles(0, math.rad(90), 0)
					tubeSegment.Anchored = true
					tubeSegment.CanCollide = false
					tubeSegment.CanQuery = false
					tubeSegment.CanTouch = false
					tubeSegment.Material = Enum.Material.Glass
					tubeSegment.Transparency = 0.15
					tubeSegment.Color = Color3.fromHSV(0.6 - progressRatio * 0.2, 0.4, 0.95)
					tubeSegment.Parent = segmentContainer
					local innerCore = Instance.new("Part")
					innerCore.Name = "CoreElement_" .. pointIndex
					innerCore.Shape = Enum.PartType.Cylinder
					innerCore.Size = Vector3.new(segmentLength, SYSTEM_CONFIG.TUBE_RADIUS * 1.2,
						SYSTEM_CONFIG.TUBE_RADIUS * 1.2)
					innerCore.CFrame = tubeSegment.CFrame
					innerCore.Anchored = true
					innerCore.CanCollide = false
					innerCore.CanQuery = false
					innerCore.CanTouch = false
					innerCore.Material = Enum.Material.Neon
					innerCore.Transparency = 0.3
					innerCore.Color = Color3.fromHSV(0.65 - progressRatio * 0.15, 0.6, 1)
					innerCore.Parent = segmentContainer
					local segmentLighting = Instance.new("PointLight")
					segmentLighting.Brightness = 0.4
					segmentLighting.Range = SYSTEM_CONFIG.ILLUMINATION_RANGE
					segmentLighting.Color = innerCore.Color
					segmentLighting.Parent = innerCore
					local flowAnimation = TweenService:Create(innerCore,
						TweenInfo.new(SYSTEM_CONFIG.FLOW_SPEED + progressRatio * 0.5, Enum.EasingStyle.Linear,
							Enum.EasingDirection.InOut, -1, false), {
							Transparency = 0.05
						})
					flowAnimation:Play()
				end
			end
			table.insert(splineSegments, segmentContainer)
		end
		local function createPathTerminal(position, isOrigin)
			local terminal = Instance.new("Part")
			terminal.Name = isOrigin and "PathOriginTerminal" or "PathDestinationTerminal"
			terminal.Shape = Enum.PartType.Ball
			terminal.Size = Vector3.new(0.3, 0.3, 0.3)
			terminal.CFrame = CFrame.new(position)
			terminal.Anchored = true
			terminal.CanCollide = false
			terminal.CanQuery = false
			terminal.CanTouch = false
			terminal.Material = Enum.Material.ForceField
			terminal.Transparency = 0.2
			terminal.Color = isOrigin and Color3.fromHSV(0.35, 0.5, 1) or Color3.fromHSV(0.05, 0.5, 1)
			terminal.Parent = pathNetwork
			local terminalGlow = Instance.new("PointLight")
			terminalGlow.Brightness = 1.2
			terminalGlow.Range = 6
			terminalGlow.Color = terminal.Color
			terminalGlow.Parent = terminal
			local pulseAnimation = TweenService:Create(terminal,
				TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
					Size = Vector3.new(0.4, 0.4, 0.4),
					Transparency = 0.4
				})
			pulseAnimation:Play()
			return terminal
		end
		createPathTerminal(path[1], true)
		createPathTerminal(path[# path], false)
		table.insert(pathVisuals, pathNetwork)
	end

	local function moveAlongPath(path)
		if not path or # path == 0 then
			return false
		end
		local function smoothPath(rawPath)
			if not rawPath or # rawPath == 0 then
				return rawPath
			end
			local smoothed = {}
			local lastPos = hrp.Position
			table.insert(smoothed, lastPos)
			local rayParams = RaycastParams.new()
			rayParams.FilterType = Enum.RaycastFilterType.Blacklist
			rayParams.FilterDescendantsInstances = {
				hrp.Parent
			}
			for i = 2, # rawPath do
				local waypoint = rawPath[i]
				local dir = waypoint - lastPos
				local result = workspace:Raycast(lastPos, dir, rayParams)
				if result then
					table.insert(smoothed, rawPath[i - 1])
					lastPos = rawPath[i - 1]
				end
			end
			table.insert(smoothed, rawPath[# rawPath])
			return smoothed
		end
		path = smoothPath(path)
		movementMonitor.isActive = true
		movementMonitor.waypointStartTime = tick()
		movementMonitor.currentWaypoint = path[1]
		local currentWaypointIndex = 1

		while currentWaypointIndex <= #path and globalState.pathfindingActive do
			local waypoint = path[currentWaypointIndex]
			movementMonitor.currentWaypoint = waypoint

			if (hrp.Position - finalTarget).Magnitude <= config.StopDistance then
				humanoid:MoveTo(hrp.Position)
				movementMonitor.isActive = false
				return true
			end

			if currentWaypointIndex > 1 and currentWaypointIndex % 4 == 0 then
				local directDistance = (hrp.Position - finalTarget).Magnitude
				local pathDistance = 0
				for i = currentWaypointIndex, #path - 1 do
					pathDistance = pathDistance + (path[i + 1] - path[i]).Magnitude
				end

				if directDistance < pathDistance * 0.65 then
					print("Found potentially better path, re-calculating...")
					return false
				end
			end

			humanoid:MoveTo(waypoint)

			local waypointTimeout = config.TierTimeouts[globalState.currentTier] or 15
			local startTime = tick()
			local lastDistanceCheck = (hrp.Position - waypoint).Magnitude
			local stuckCounter = 0

			while (hrp.Position - waypoint).Magnitude > 4 and globalState.pathfindingActive do
				local elapsed = tick() - startTime

				if elapsed > waypointTimeout then
					print("Waypoint timeout, switching tiers")
					break
				end

				if shouldSwitchTier() then
					print("Switching tier due to performance issues")
					movementMonitor.isActive = false
					return false
				end

				-- Progress monitoring
				local currentDistance = (hrp.Position - waypoint).Magnitude
				if math.abs(currentDistance - lastDistanceCheck) < 0.3 then
					stuckCounter = stuckCounter + 1
					if stuckCounter > 8 then
						print("No progress on waypoint, re-evaluating path")
						return false
					end
				else
					stuckCounter = 0
				end
				lastDistanceCheck = currentDistance

				-- Distance to target check - skip waypoint if we're close enough
				local distToTarget = (hrp.Position - finalTarget).Magnitude
				local waypointDistToTarget = (waypoint - finalTarget).Magnitude
				if distToTarget < waypointDistToTarget and distToTarget < 12 then
					print("Skipping waypoint - closer to target")
					break
				end

				if isStuckAdvanced() then
					executeJump("stuck")
					task.wait(0.5)
				end

				if shouldJumpToWaypoint() then
					executeJump("waypoint")
					task.wait(0.3)
				end

				task.wait(config.CheckFrequency)
			end

			currentWaypointIndex = currentWaypointIndex + 1
			if currentWaypointIndex <= #path then
				task.wait(0.1)
			end
		end

		movementMonitor.isActive = false
		return currentWaypointIndex > #path
	end

	local function checkPositionMatch()
		return (globalState.endPosition - finalTarget).Magnitude <= 2
	end

	local function mainNavigationLoop()
		local retries = 0
		local maxRetries = config.MaxRetries

		globalState.currentTier = selectOptimalTier(hrp.Position, finalTarget)
		print(string.format("Starting with optimal Tier %d", globalState.currentTier))

		while (hrp.Position - finalTarget).Magnitude > config.StopDistance and retries < maxRetries and globalState.pathfindingActive do
			-- Position deviation check
			local expectedPosition = globalState.lastKnownGoodPosition or hrp.Position
			local currentPosition = hrp.Position

			if globalState.lastKnownGoodPosition and (currentPosition - expectedPosition).Magnitude > 8 then
				print("Position deviation detected, re-pathfinding...")
				globalState.currentTier = selectOptimalTier(currentPosition, finalTarget)
				globalState.lastKnownGoodPosition = currentPosition
				pathCache = {} -- Clear cache
				task.wait(0.2)
				continue
			end

			if not globalState.lastKnownGoodPosition or tick() - (globalState.lastPositionUpdate or 0) > 2 then
				globalState.lastKnownGoodPosition = currentPosition
				globalState.lastPositionUpdate = tick()
			end

			if not checkPositionMatch() then
				globalState.endPosition = finalTarget
				globalState.currentTier = selectOptimalTier(currentPosition, finalTarget)
				retries = 0
				pathCache = {}
				print("Target changed, recalculating optimal approach")
			end

			local attemptStartTime = tick()
			local path = getPathToTarget()

			if not path or #path == 0 then
				print(string.format("Tier %d failed to generate path", globalState.currentTier))
				updateTierPerformance(globalState.currentTier, false, tick() - attemptStartTime)
				globalState.currentTier = getNextBestTier()
				retries = retries + 1
				task.wait(0.5)
				continue
			end

			visualizePath(path)
			local success = moveAlongPath(path)
			local attemptTime = tick() - attemptStartTime

			updateTierPerformance(globalState.currentTier, success, attemptTime)

			if success then
				print(string.format("Successfully reached target using Tier %d in %.1fs", globalState.currentTier,
					attemptTime))
				break
			else
				print(string.format("Tier %d movement failed after %.1fs", globalState.currentTier, attemptTime))

				if globalState.totalStuckAttempts > 8 then
					globalState.currentTier = 3
					globalState.totalStuckAttempts = 0
				else
					globalState.currentTier = getNextBestTier()
				end

				retries = retries + 1

				if retries >= 2 then
					print("Multiple failures, applying emergency measures...")
					globalState.emergencyRetries = globalState.emergencyRetries + 1

					if globalState.emergencyRetries <= 2 then
						-- Emergency jump and position reset
						humanoid.Jump = true
						task.wait(0.5)
						local escapeDir = (finalTarget - hrp.Position).Unit
						local escapePos = hrp.Position + escapeDir * 5 + Vector3.new(
							(math.random() - 0.5) * 8, 0, (math.random() - 0.5) * 8)
						humanoid:MoveTo(escapePos)
						task.wait(1)
					end

					pathCache = {}
					raycastCache = {}
				end
			end

			task.wait(0.3)
		end

		movementConnection:Disconnect()
		for _, part in ipairs(pathVisuals) do
			if part and part.Parent then
				part:Destroy()
			end
		end

		local finalDistance = (hrp.Position - finalTarget).Magnitude
		local finalSuccess = finalDistance <= config.StopDistance

		print(string.format("Navigation complete. Final distance: %.1f, Success: %s", finalDistance,
			tostring(finalSuccess)))
		print("Tier Performance Summary:")
		for tier = 1, 3 do
			local perf = globalState.tierPerformance[tier]
			if perf.attempts > 0 then
				print(string.format("  Tier %d: %.1f%% success rate, %.1fs average time, %d attempts",
					tier, perf.successRate * 100, perf.avgTime, perf.attempts))
			end
		end

		return config.OnComplete and config.OnComplete(finalSuccess) or finalSuccess
	end

	return mainNavigationLoop()
end

local function handlePanAction(mode, actionType, executeToCompletion)
	executeToCompletion = executeToCompletion or false
	local OriginalCameraCFrame = Camera.CFrame
	local PanningCameraCFrame = nil
	local config = {
		collectInterval = 0.05,
		quickCheck = 0.05,
		networkTimeout = 0.1,
		maxRetries = 5,
		failsPerRetry = 4
	}
	local messages = {
		dig = {
			start = "Starting dig action...",
			success = "Pan is now full!",
			singleSuccess = "Collection completed!",
			singleFail = "Collection failed! Check backpack or network.",
			alreadyFull = "Pan is already full!",
			leftRegion = "Left deposit region! Stopping.",
			singleAction = "Performing single collection...",
			collectFailed = "Collection failed after " .. config.maxRetries .. " retries!"
		},
		wash = {
			start = "Starting wash action...",
			PanEmpty = "Pan is empty, cannot wash!"
		},
		general = {
			noPan = "No Pan found.",
			noScript = "Pan has no scripts.",
			invalidAction = "Invalid action type! Use 'Dig' or 'Wash'.",
			legitWIP = "Legit mode is Work In Progress!"
		}
	}
	local function validatePan()
		local pan = equipPan()
		local folder = pan and pan:FindFirstChild("Scripts")
		if not folder then
			createNotification(messages.general.noPan)
			return nil
		end
		local scripts = {}
		for _, child in ipairs(folder:GetChildren()) do
			if child:IsA("RemoteFunction") or child:IsA("RemoteEvent") then
				scripts[child.Name] = child
			end
		end
		if next(scripts) then
			return scripts
		else
			createNotification(messages.general.noScript)
			return nil
		end
	end
	local function collectWithNetworkHandling(collectScript)
		local before = getPanStatus()
		local beforeAmount = before and before.current or 0
		local ok = pcall(CollectInvokeServer, collectScript)
		if not ok then
			return false, beforeAmount
		end
		task.wait(config.quickCheck)
		local quick = getPanStatus()
		local quickAmount = quick and quick.current or 0
		if quickAmount > beforeAmount then
			return true, quickAmount
		end
		task.wait(config.networkTimeout - config.quickCheck)
		local final = getPanStatus()
		local finalAmount = final and final.current or 0
		return finalAmount > beforeAmount, finalAmount
	end
	local function isInValidRegion(forWhat)
		local char = Player.Character
		return char and char:FindFirstChild("HumanoidRootPart") and getRegion(char.HumanoidRootPart) == forWhat
	end
	local function fillToCompletion(collectScript, msgs)
		local retryCount, failCount = 0, 0
		local lastAmount = getPanStatus() and getPanStatus().current or 0
		while true do
			local status = getPanStatus()
			local current = status and status.current or 0
			if status and status.isFull then
				createNotification(msgs.success)
				break
			end
			if not isInValidRegion("Deposit") then
				createNotification(msgs.leftRegion)
				break
			end
			local success, newAmount = collectWithNetworkHandling(collectScript)
			newAmount = newAmount or current
			if success then
				failCount, retryCount = 0, 0
				lastAmount = newAmount
			elseif current == lastAmount then
				failCount = failCount + 1
				if failCount >= config.failsPerRetry then
					retryCount = retryCount + 1
					failCount = 0
				end
			else
				lastAmount = current
				failCount = 0
			end
			if retryCount >= config.maxRetries then
				createNotification(msgs.collectFailed, 10)
				return "MAX_RETRY_FAIL"
			end
			task.wait(config.collectInterval)
		end
	end
	local function executeSingle(collectScript, msgs)
		createNotification(msgs.singleAction)
		local sucess = collectWithNetworkHandling(collectScript)
	end
	local function setPanningView(isPanning)
		for _, descendant in Character:GetDescendants() do
			if not descendant:IsDescendantOf(Tool) and (descendant:IsA("BasePart") or descendant:IsA("Decal")) then
				if isPanning and (descendant.Name ~= "Right Arm" and descendant.Name ~= "Left Arm") then
					TweenService:Create(descendant, TweenInfo.new(0.5), {
						["LocalTransparencyModifier"] = 1
					}):Play()
				else
					TweenService:Create(descendant, TweenInfo.new(0.5), {
						["LocalTransparencyModifier"] = 0
					}):Play()
				end
			end
		end
		if isPanning then
			OriginalCameraCFrame = Camera.CFrame
			PanningCameraCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0.5, -2.4) *
				CFrame.Angles(-1.5707963267948966, 0, 0)
			Camera.CameraType = Enum.CameraType.Scriptable
			TweenService:Create(Camera, TweenInfo.new(0.5), {
				CFrame = PanningCameraCFrame
			}):Play()
			task.delay(0.5, function()
				IsCameraShaking = true
			end)
		else
			IsCameraShaking = false
			TweenService:Create(Camera, TweenInfo.new(1), {
				CFrame = OriginalCameraCFrame
			}):Play()
			task.wait(1)
			Camera.CameraType = Enum.CameraType.Custom
		end
	end
	local function emptyToCompletion(shakeScript, msgs)
		WashAnimation:Play()
		task.wait(0.25)
		while true do
			local status = getPanStatus()
			if not status or status.isEmpty then
				break
			end
			pcall(function()
				shakeScript:FireServer()
			end)
			pcall(function()
				ShakeAnimation:Play()
			end)
			task.wait(0.25)
		end
		setPanningView(false)
		WashAnimation:Stop()
	end
	local handlers = {
		Dig = function()
			local msgs = messages.dig
			createNotification(msgs.start)
			local scripts = validatePan()
			if not scripts then
				return
			end
			local collectScript = scripts.Collect
			if not collectScript then
				return
			end
			local status = getPanStatus()
			if status and status.isFull then
				createNotification(msgs.alreadyFull)
				return
			end
			if mode == "Legit" then
				createNotification(messages.general.legitWIP, 3)
			elseif mode == "Instant" then
				if executeToCompletion then
					return fillToCompletion(collectScript, msgs)
				else
					return executeSingle(collectScript, msgs)
				end
			end
		end,
		Wash = function()
			local panModule = fetchPanFunctions() -- deprecated, MUST REMOVE IN THE NEXT MAJOR UPDATE
			local scripts = validatePan()
			if not scripts then
				return
			end
			local shakeScript = scripts.Shake
			local panScript = scripts.Pan
			if not shakeScript or not panScript then
				return
			end
			if not panModule then
				createNotification(messages.general.noScript)
				return
			end
			local status = getPanStatus()
			if status and status.isEmpty then
				createNotification(messages.wash.PanEmpty)
				return
			end
			setPanningView(true)
			panScript:InvokeServer()
			emptyToCompletion(shakeScript, messages.wash)
		end
	}
	local handler = handlers[actionType]
	if not handler then
		createNotification(messages.general.invalidAction)
		return
	end
	local ok, result = pcall(handler)
	if not ok then
		warn("PanAction failed: " .. tostring(result))
		return
	end
	return result
end

local function sellInventory(config, mode)
	local SellAllRemote = game:GetService("ReplicatedStorage").Remotes.Shop.SellAll
	local closestHrp, dist = getClosestMerchant()
	if closestHrp and dist <= (config.RequiredDistance or 45) then
		createNotification("Selling all valuables...", 3)
		SellAllRemote:InvokeServer()
		return true
	end
	if not closestHrp then
		createNotification("No merchant found nearby.", 5)
		return false
	end
	if mode == "Walk" then
		local completed = false
		local successSell = false
		local defaults = {
			Speed = 18,
			StopDistance = 10,
			OnStart = function()
				createNotification("Try not to touch/press movement keys during pathfinding.", 6)
			end,
			OnPathBlocked = function()
				createNotification("⚠️ All pathfinding algorithms exhausted! The terrain may be impossible to navigate.",
					8)
				createNotification("Trying to check if we can still reach the merchant from current position...", 5)
			end,
			OnComplete = function(success)
				local _, finalDistance = getClosestMerchant()
				local canSell = finalDistance and finalDistance <= 45
				if success and canSell then
					task.wait(1)
					createNotification("✅ Successfully reached merchant using pathfinding! Selling all valuables...", 5)
					SellAllRemote:InvokeServer()
					successSell = true
				else
					createNotification("Pathfinding could not confirm success, performing final proximity check...", 8)
					task.wait(5)
					local _, checkDistance = getClosestMerchant()
					if checkDistance and checkDistance <= 45 then
						createNotification("Final check successful! We can sell from here!", 4)
						SellAllRemote:InvokeServer()
						successSell = true
					else
						createNotification(
							"Unfortunately, the merchant is still unreachable. Distance: " ..
							tostring(math.floor(checkDistance or 0)) .. " studs", 10)
					end
				end
				completed = true
			end
		}
		for k, v in pairs(defaults) do
			if config[k] == nil then
				config[k] = v
			end
		end
		local currentDistance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - closestHrp.Position)
			.Magnitude
		createNotification(
			string.format("🎯 Target merchant is %.1f studs away. Initiating pathfinding...", currentDistance), 4)
		if currentDistance > 200 then
			createNotification("⚠️ Warning: Very long distance detected. This may take longer than usual.", 6)
		end
		walkToTarget(closestHrp, config)
		repeat
			task.wait()
		until completed
		return successSell
	elseif mode == "Tween" then
		local completed = false
		local successSell = false
		local defaults = {
			Speed = 15,
			StopDistance = 20,
			AvoidanceRadius = 10,
			LookAheadDistance = 20,
			MaxAvoidanceForce = 30,
			RayDensity = 12,
			Smoothness = 0.4,
			OnStart = function()
				createNotification("Tweening to merchant...", 5)
			end,
			OnComplete = function()
				task.wait(1)
				local _, finalDistance = getClosestMerchant()
				if finalDistance and finalDistance <= 45 then
					createNotification("Reached merchant! Attempting to sell all valuables...", 3)
					SellAllRemote:InvokeServer()
					successSell = true
				else
					createNotification("Could not reach merchant via tween.", 5)
				end
				completed = true
			end,
		}
		for k, v in pairs(defaults) do
			if config[k] == nil then
				config[k] = v
			end
		end
		tweenToTarget(closestHrp, config)
		repeat
			task.wait()
		until completed
		return successSell
	else
		createNotification("Invalid mode! Got \"" .. mode .. "\" Walk or Tween expected", 5)
		return false
	end
end

local function getInventoryCount()
	local player = game:GetService("Players").LocalPlayer
	local backpack = player:WaitForChild("BackpackTwo")
	local count = 0
	for _, item in ipairs(backpack:GetChildren()) do
		if item:GetAttribute("ItemType") == "Valuable" then
			count += 1
		end
	end
	return count
end

local function formatPrice(price, isShardPrice)
	local symbol = isShardPrice and "ƒ" or "$"

	if price >= 1e21 then
		return string.format("%s%.1fSx", symbol, price / 1e21)
	elseif price >= 1e18 then
		return string.format("%s%.1fQ", symbol, price / 1e18)
	elseif price >= 1e15 then
		return string.format("%s%.1fqd", symbol, price / 1e15)
	elseif price >= 1e12 then
		return string.format("%s%.1fT", symbol, price / 1e12)
	elseif price >= 1e9 then
		return string.format("%s%.1fB", symbol, price / 1e9)
	elseif price >= 1e6 then
		return string.format("%s%.1fM", symbol, price / 1e6)
	elseif price >= 1e3 then
		return string.format("%s%.1fK", symbol, price / 1e3)
	else
		return symbol .. tostring(price)
	end
end

local function buildPurchasableTable()
	local purchasable = {
		Pans = {},
		Shovels = {},
		Sluices = {},
		Potions = {},
		Totems = {},
		Others = {}
	}
	local purchRoot = workspace:FindFirstChild("Purchasable")
	if not purchRoot then
		return purchasable
	end
	for _, region in ipairs(purchRoot:GetChildren()) do
		for _, item in ipairs(region:GetChildren()) do
			local shopItem = item:FindFirstChild("ShopItem")
			local stats = shopItem and shopItem:FindFirstChild("Stats")
			if shopItem and stats then
				local isShardPrice = shopItem:GetAttribute("Price") == nil and shopItem:GetAttribute("ShardPrice") ~= nil
				local price = shopItem:GetAttribute(isShardPrice and "ShardPrice" or "Price")

				if price then
					local formattedEntry = item.Name .. " - " .. formatPrice(price, isShardPrice)
					if stats:GetAttribute("ShakeSpeed") then
						table.insert(purchasable.Pans, formattedEntry)
					elseif stats:GetAttribute("DigSpeed") then
						table.insert(purchasable.Shovels, formattedEntry)
					elseif stats:GetAttribute("SluiceSpeed") then
						table.insert(purchasable.Sluices, formattedEntry)
					elseif string.find(item.Name:lower(), "potion") then
						table.insert(purchasable.Potions, formattedEntry)
					elseif string.find(item.Name:lower(), "totem") then
						table.insert(purchasable.Totems, formattedEntry)
					else
						table.insert(purchasable.Others, formattedEntry)
					end
				end
			end
		end
	end
	return purchasable
end

local ConfirmationPrompt = {}

function ConfirmationPrompt.show(config)
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")

	if playerGui:FindFirstChild("ConfirmationPrompt") then
		return
	end

	local item = config.item or "Item"
	local price = config.price or "$0"
	local title = config.title or "Confirm Purchase"
	local subtitle = config.subtitle or "This action cannot be undone"
	local confirmText = config.confirmText or "Purchase"
	local cancelText = config.cancelText or "Cancel"
	local purchaseFunction = config.onPurchase or function()
	end
	local cancelFunction = config.onCancel or function()
	end
	local gui = Instance.new("ScreenGui")
	gui.Name = "ConfirmationPrompt"
	gui.DisplayOrder = 999
	gui.Parent = playerGui
	gui.IgnoreGuiInset = true
	local overlay = Instance.new("Frame")
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.BackgroundColor3 = Color3.new(0, 0, 0)
	overlay.BackgroundTransparency = 0.6
	overlay.Active = true
	overlay.Selectable = true
	overlay.BorderSizePixel = 0
	overlay.Parent = gui
	local dialog = Instance.new("Frame")
	dialog.Size = UDim2.new(0, 420, 0, 280)
	dialog.Position = UDim2.new(0.5, -210, 0.5, -140)
	dialog.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
	dialog.BorderSizePixel = 0
	dialog.Parent = overlay
	local function corner(obj, r)
		local c = Instance.new("UICorner")
		c.CornerRadius = UDim.new(0, r)
		c.Parent = obj
	end
	corner(dialog, 16)
	local header = Instance.new("Frame")
	header.Size = UDim2.new(1, 0, 0, 70)
	header.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
	header.BorderSizePixel = 0
	header.Parent = dialog
	local headerCorner = Instance.new("UICorner")
	headerCorner.CornerRadius = UDim.new(0, 16)
	headerCorner.Parent = header
	local headerMask = Instance.new("Frame")
	headerMask.Size = UDim2.new(1, 0, 0, 16)
	headerMask.Position = UDim2.new(0, 0, 1, -16)
	headerMask.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
	headerMask.BorderSizePixel = 0
	headerMask.Parent = header
	local icon = Instance.new("Frame")
	icon.Size = UDim2.new(0, 36, 0, 36)
	icon.Position = UDim2.new(0, 25, 0.5, -18)
	icon.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
	icon.BorderSizePixel = 0
	icon.Parent = header
	corner(icon, 18)
	local iconText = Instance.new("TextLabel")
	iconText.Size = UDim2.new(1, 0, 1, 0)
	iconText.BackgroundTransparency = 1
	iconText.Text = "⚠"
	iconText.TextColor3 = Color3.new(1, 1, 1)
	iconText.TextSize = 20
	iconText.Font = Enum.Font.GothamBold
	iconText.TextXAlignment = Enum.TextXAlignment.Center
	iconText.TextYAlignment = Enum.TextYAlignment.Center
	iconText.Parent = icon
	local titleLabel = Instance.new("TextLabel")
	titleLabel.Size = UDim2.new(1, -85, 0, 25)
	titleLabel.Position = UDim2.new(0, 75, 0, 15)
	titleLabel.BackgroundTransparency = 1
	titleLabel.Text = title
	titleLabel.TextColor3 = Color3.new(1, 1, 1)
	titleLabel.TextSize = 18
	titleLabel.Font = Enum.Font.GothamBold
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.TextYAlignment = Enum.TextYAlignment.Center
	titleLabel.Parent = header
	local subtitleLabel = Instance.new("TextLabel")
	subtitleLabel.Size = UDim2.new(1, -85, 0, 20)
	subtitleLabel.Position = UDim2.new(0, 75, 0, 40)
	subtitleLabel.BackgroundTransparency = 1
	subtitleLabel.Text = subtitle
	subtitleLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
	subtitleLabel.TextSize = 12
	subtitleLabel.Font = Enum.Font.Gotham
	subtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
	subtitleLabel.TextYAlignment = Enum.TextYAlignment.Center
	subtitleLabel.Parent = header
	local itemFrame = Instance.new("Frame")
	itemFrame.Size = UDim2.new(1, -50, 0, 80)
	itemFrame.Position = UDim2.new(0, 25, 0, 90)
	itemFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
	itemFrame.BorderSizePixel = 0
	itemFrame.Parent = dialog
	corner(itemFrame, 12)
	local itemName = Instance.new("TextLabel")
	itemName.Size = UDim2.new(1, -30, 0, 30)
	itemName.Position = UDim2.new(0, 15, 0, 15)
	itemName.BackgroundTransparency = 1
	itemName.Text = item
	itemName.TextColor3 = Color3.new(1, 1, 1)
	itemName.TextSize = 16
	itemName.Font = Enum.Font.GothamBold
	itemName.TextXAlignment = Enum.TextXAlignment.Left
	itemName.TextYAlignment = Enum.TextYAlignment.Center
	itemName.Parent = itemFrame
	local priceLabel = Instance.new("TextLabel")
	priceLabel.Size = UDim2.new(1, -30, 0, 25)
	priceLabel.Position = UDim2.new(0, 15, 0, 45)
	priceLabel.BackgroundTransparency = 1
	priceLabel.Text = price
	priceLabel.TextColor3 = Color3.fromRGB(0, 255, 127)
	priceLabel.TextSize = 24
	priceLabel.Font = Enum.Font.GothamBold
	priceLabel.TextXAlignment = Enum.TextXAlignment.Left
	priceLabel.TextYAlignment = Enum.TextYAlignment.Center
	priceLabel.Parent = itemFrame
	local btnContainer = Instance.new("Frame")
	btnContainer.Size = UDim2.new(1, -50, 0, 50)
	btnContainer.Position = UDim2.new(0, 25, 1, -75)
	btnContainer.BackgroundTransparency = 1
	btnContainer.Parent = dialog
	local cancelBtn = Instance.new("TextButton")
	cancelBtn.Size = UDim2.new(0.45, 0, 1, 0)
	cancelBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 65)
	cancelBtn.BorderSizePixel = 0
	cancelBtn.Text = cancelText
	cancelBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
	cancelBtn.TextSize = 14
	cancelBtn.Font = Enum.Font.GothamMedium
	cancelBtn.Parent = btnContainer
	corner(cancelBtn, 10)
	local confirmBtn = Instance.new("TextButton")
	confirmBtn.Size = UDim2.new(0.45, 0, 1, 0)
	confirmBtn.Position = UDim2.new(0.55, 0, 0, 0)
	confirmBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 85)
	confirmBtn.BorderSizePixel = 0
	confirmBtn.Text = confirmText
	confirmBtn.TextColor3 = Color3.new(1, 1, 1)
	confirmBtn.TextSize = 14
	confirmBtn.Font = Enum.Font.GothamBold
	confirmBtn.Parent = btnContainer
	corner(confirmBtn, 10)
	local function close()
		gui:Destroy()
	end
	cancelBtn.MouseButton1Click:Connect(function()
		close()
		cancelFunction()
	end)
	confirmBtn.MouseButton1Click:Connect(function()
		close()
		purchaseFunction()
	end)
	return gui
end

local selectedOptions = {
	pan = nil,
	shovel = nil,
	sluice = nil,
	potion = nil,
	totem = nil,
	other = nil,
}

local function findModelByName(name)
	for _, folder in pairs(workspace.Purchasable:GetChildren()) do
		if folder:IsA("Folder") then
			local model = folder:FindFirstChild(name)
			if model and model:IsA("Model") then
				return model
			end
		end
	end
	return nil
end

local function handlePurchase(itemType, selectedOption)
	if not selectedOption then
		createNotification("Please select a " .. itemType .. " first!", 5)
		return
	end
	local name, price = selectedOption:match("^(.+) %- ([ƒ%$].+)$")
	local remoteEvent = game:GetService("ReplicatedStorage").Remotes.Shop.BuyItem
	if name and price then
		ConfirmationPrompt.show({
			item = name,
			price = price,
			title = itemType:gsub("^%l", string.upper) .. " Purchase",
			confirmText = "Buy Now",
			cancelText = "Not Now",
			onPurchase = function()
				local model = findModelByName(name)
				local shopItem = model and model:FindFirstChild("ShopItem")
				if shopItem then
					createNotification("Triggered purchase for " .. name .. " for " .. price .. "!", 5)
					remoteEvent:InvokeServer(shopItem)
				else
					createNotification("Error: Could not find item or ShopItem in workspace!", 5)
				end
			end,
			onCancel = function()
				createNotification("Purchase cancelled", 5)
			end
		})
	else
		createNotification("Error: Invalid item format!", 5)
	end
end

createDropdown("SellModeDropdown", "Sell Mode", {
	"Walk",
	"Tween"
}, "Tween", function(opt)
	SellSettings.mode = opt
	createNotification("📌 Sell Mode: " .. opt)
end, sellSection)

createDropdown("SellTypeDropdown", "Sell Type", {
	"Threshold",
	"Time"
}, "Threshold", function(opt)
	SellSettings.type = opt
	createNotification("📌 Sell Type: " .. opt)
end, sellSection)

createTextBox("SellTextBox", "Enter Sell Int or Time", nil, function(value)
	local result, kind = validateSellValue(value)
	if result then
		if kind == "time" then
			SellDelay = result
			createNotification("✅ Sell delay set! The inventory will now be sold every " .. result .. " seconds!", 10)
		else
			SellThreshold = result
			createNotification("✅ Sell value set! The inventory will now be sold every " .. result .. " items", 10)
		end
	else
		createNotification(
			"❌ Invalid input. Use either Threshold from 10 to 500 items OR use Time from 30 seconds to 1 day.", 10)
	end
end, sellSection)

createButton("StartSellButton", "Sell all your valuables", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if not TaskManager:requestTask("ManualSell", 3) then
		return createNotification("Could not start sell task", 5)
	end
	task.spawn(function()
		if TaskManager:waitForTurn("ManualSell", 10) and TaskManager:startTask("ManualSell") then
			TaskManager:setCurrentTask("Selling")
			sellInventory({}, SellSettings.mode or "Tween")
			TaskManager:finishTask("ManualSell")
		end
	end)
end, sellSection)

createToggleButton("AutoSellToggle", "Auto Sell", false, function(state)
	SellSettings.autoSell = state
	SellSettings._lastSell = SellSettings._lastSell or 0
	SellSettings._scheduledSell = false
	if state then
		task.spawn(function()
			while SellSettings.autoSell do
				if SellSettings.type == "Time" then
					local delay = tonumber(SellDelay) or 300
					if os.clock() - SellSettings._lastSell >= delay then
						SellSettings._scheduledSell = true
					end
				end
				task.wait(5)
			end
		end)
	end
	createNotification(state and "✅ Auto Sell Enabled" or "❌ Auto Sell Disabled")
end, sellSection)

createDropdown("FarmingModeDropdown", "Select Farming mode", {
	"Legit",
	"Instant"
}, "Instant", function(opt)
	AutoFarmState.actionMode = opt
	createNotification("📌 Farming Mode: " .. opt, 10)
	if opt == "Legit" then
		createNotification(
			"Hello there, this mode is currently NOT available, im trying to get it together but it's taking quite a lot of time to figure things out, thus Instant is the only usable mode as of now",
			10)
	end
end, autoFarmSection)

createDropdown("FarmingTravelDropdown", "Select Travel mode", {
	"Tween",
	"Walk"
}, "Walk", function(opt)
	AutoFarmState.travelMode = opt
	createNotification("📌 Farming Travel mode: " .. opt, 10)
end, autoFarmSection)

createButton("SetSandCframeButton", "Set Sand CFrame", function()
	if getRegion(HumanoidRootPart) == "Deposit" then
		AutoFarmState.sandCFrame = HumanoidRootPart.CFrame
		createNotification("✅ Sand CFrame set")
	else
		createNotification("❌ Must be at deposit")
	end
end, autoFarmSection)

createButton("SetWaterCframeButton", "Set Water CFrame", function()
	if getRegion(HumanoidRootPart) == "Water" then
		AutoFarmState.waterCFrame = HumanoidRootPart.CFrame
		createNotification("✅ Water CFrame set")
	else
		createNotification("❌ Must be at water")
	end
end, autoFarmSection)

createToggleButton("AutoFarmToggle", "Auto Farm", false, function(state)
	AutoFarmState.active = state
	AutoFarmState.interrupted = false
	if state then
		if not AutoFarmState.travelMode or AutoFarmState.travelMode == "" then
			createNotification("❌ Please select a travel mode first!")
			AutoFarmState.active = false
			return
		end
		if not AutoFarmState.actionMode or AutoFarmState.actionMode == "" then
			createNotification("❌ Please select a farming mode first!")
			AutoFarmState.active = false
			return
		end
		if not (AutoFarmState.sandCFrame and AutoFarmState.waterCFrame) then
			createNotification("❌ Please set both Sand and Water CFrames first!")
			AutoFarmState.active = false
			return
		end
		createNotification("🚀 Auto Farm Started!")
		task.spawn(function()
			while AutoFarmState.active do
				if not TaskManager:requestTask("AutoFarm", 1) then
					task.wait(2)
					continue
				end
				if not TaskManager:waitForTurn("AutoFarm", 10) then
					task.wait(1)
					continue
				end
				if not TaskManager:startTask("AutoFarm") then
					task.wait(2)
					continue
				end
				local function validateCharacter()
					return Players.LocalPlayer and Players.LocalPlayer.Character and
						Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				end
				local function moveToLocation(targetCFrame, locationName)
					createNotification("🚶 Moving to " .. locationName .. "...", 2)
					local completed = false
					local success = false
					local config = {
						Offset = Vector3.new(0, 5, 0),
						StopDistance = 5,
						OnComplete = function(moveSuccess)
							success = moveSuccess or false
							completed = true
						end
					}
					local targetObj = {
						Position = targetCFrame.Position,
						CFrame = targetCFrame
					}
					if AutoFarmState.travelMode == "Tween" then
						tweenToTarget(targetObj, config)
					elseif AutoFarmState.travelMode == "Walk" then
						walkToTarget(targetObj, config)
					else
						return false
					end
					local timeout = 45
					local elapsed = 0
					while not completed and elapsed < timeout and AutoFarmState.active do
						task.wait(0.5)
						elapsed = elapsed + 0.5
					end
					if success then
						createNotification("✅ Reached " .. locationName, 2)
					else
						createNotification("❌ Failed to reach " .. locationName, 3)
					end
					return success
				end
				local function doAction(actionType, expectedRegion)
					local success, result = pcall(function()
						createNotification("🔧 Equipping pan...", 2)
						local pan = equipPan()
						if not pan then
							createNotification("❌ Failed to equip pan", 3)
							return false
						end
						task.wait(0.5)
						local currentRegion = getRegion(HumanoidRootPart)
						if currentRegion ~= expectedRegion then
							createNotification("❌ Wrong location for " .. actionType, 3)
							return false
						end
						createNotification("⛏️ " .. (actionType == "Dig" and "Digging sand..." or "Washing pan..."), 2)
						local actionResult = handlePanAction(AutoFarmState.actionMode, actionType, true)
						local actionSuccess = actionResult ~= "MAX_RETRY_FAIL"
						if actionSuccess then
							createNotification("✅ " .. actionType .. " completed", 2)
						else
							createNotification("❌ " .. actionType .. " failed", 3)
						end
						return actionSuccess
					end)
					return success and result
				end
				local function performTask(taskName, nextTask, targetCFrame, actionType, expectedRegion, locationName)
					TaskManager:setNextTask(nextTask)
					TaskManager:setCurrentTask(taskName)
					if moveToLocation(targetCFrame, locationName) then
						task.wait(1)
						if doAction(actionType, expectedRegion) then
							TaskManager:setCurrentTask("AutoFarm")
							return true
						end
					end
					return false
				end
				local function checkAndDoSell()
					if not SellSettings.autoSell then
						return false
					end
					local shouldSell = false
					local type = SellSettings.type or "Threshold"
					if type == "Threshold" then
						local threshold = tonumber(SellThreshold) or 50
						local invCount = getInventoryCount()
						shouldSell = invCount >= threshold
					elseif type == "Time" then
						local delay = tonumber(SellDelay) or 300
						shouldSell = SellSettings._scheduledSell or (os.clock() - (SellSettings._lastSell or 0) >= delay)
					end
					if shouldSell then
						createNotification("💰 Auto Sell executing...")
						local sellSuccess = sellInventory({}, SellSettings.mode or "Tween")
						if sellSuccess then
							SellSettings._lastSell = os.clock()
							SellSettings._scheduledSell = false
							createNotification("✅ Auto Sell completed")
							return true
						else
							createNotification("❌ Auto Sell failed")
						end
					end
					return false
				end
				while AutoFarmState.active and TaskManager:canRun("AutoFarm") do
					if AutoFarmState.interrupted then
						while AutoFarmState.interrupted and AutoFarmState.active do
							task.wait(0.1)
						end
						continue
					end
					local success, errorMsg = pcall(function()
						if not validateCharacter() then
							createNotification("❌ Character not found, stopping farm", 5)
							AutoFarmState.active = false
							return
						end
						PanStatus = getPanStatus()
						if not PanStatus then
							createNotification("❌ Could not get pan status", 3)
							task.wait(2)
							return
						end
						if PanStatus.isFull then
							createNotification("Pan is full, going to wash", 2)
							if performTask("MovingToWater", "WashPan", AutoFarmState.waterCFrame, "Wash", "Water", "water") then
								if checkAndDoSell() then
									task.wait(2)
								end
							else
								createNotification("❌ Water task failed, stopping farm", 5)
								AutoFarmState.active = false
							end
						elseif PanStatus.isEmpty or not PanStatus.isFull then
							createNotification("Pan needs filling, going to dig", 2)
							if not performTask("MovingToSand", "DigSand", AutoFarmState.sandCFrame, "Dig", "Deposit", "sand deposit") then
								createNotification("❌ Sand task failed, stopping farm", 5)
								AutoFarmState.active = false
							end
						end
					end)
					if not success then
						createNotification("⚠️ Auto Farm error, retrying...", 3)
						warn("[AutoFarm] Error in main loop: ", errorMsg)
						task.wait(3)
					end
					if AutoFarmState.active then
						task.wait(1)
					end
				end
				TaskManager:finishTask("AutoFarm")
				task.wait(1)
			end
			createNotification("🛑 Auto Farm Stopped")
		end)
	else
		createNotification("🛑 Stopping Auto Farm...")
		TaskManager:clearSubTasks()
		if TaskManager:getMainTask() == "AutoFarm" then
			TaskManager:finishTask("AutoFarm")
		end
	end
end, autoFarmSection)

createButton("InstantCompleteFillButton", "[Instant] Fill Pan", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if TaskManager:requestTask("ManualAction", 3) then
		task.spawn(function()
			if TaskManager:waitForTurn("ManualAction", 5) and TaskManager:startTask("ManualAction") then
				handlePanAction("Instant", "Dig", true)
				TaskManager:finishTask("ManualAction")
			end
		end)
	end
end, manualSection)

createButton("LegitCompleteFillButton", "[Legit] Fill Pan", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if TaskManager:requestTask("ManualAction", 3) then
		task.spawn(function()
			if TaskManager:waitForTurn("ManualAction", 5) and TaskManager:startTask("ManualAction") then
				handlePanAction("Legit", "Dig", true)
				TaskManager:finishTask("ManualAction")
			end
		end)
	end
end, manualSection)

createButton("LegitCompleteEmptyButton", "[Legit] Empty Pan", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if TaskManager:requestTask("ManualAction", 3) then
		task.spawn(function()
			if TaskManager:waitForTurn("ManualAction", 5) and TaskManager:startTask("ManualAction") then
				handlePanAction("Legit", "Wash", true)
				TaskManager:finishTask("ManualAction")
			end
		end)
	end
end, manualSection)

createButton("InstantSoloFillButton", "[Instant] Shovel deposit", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if TaskManager:requestTask("ManualAction", 3) then
		task.spawn(function()
			if TaskManager:waitForTurn("ManualAction", 5) and TaskManager:startTask("ManualAction") then
				handlePanAction("Instant", "Dig")
				TaskManager:finishTask("ManualAction")
			end
		end)
	end
end, manualSection)

createButton("LegitSoloFillButton", "[Legit] Shovel deposit", function()
	if TaskManager:getMainTask() then
		return createNotification("Please wait for current task to complete", 5)
	end
	if TaskManager:requestTask("ManualAction", 3) then
		task.spawn(function()
			if TaskManager:waitForTurn("ManualAction", 5) and TaskManager:startTask("ManualAction") then
				handlePanAction("Legit", "Dig")
				TaskManager:finishTask("ManualAction")
			end
		end)
	end
end, manualSection)

createDropdown("BuyPansDropdown", "Select Pan", buildPurchasableTable().Pans, nil, function(opt)
	selectedOptions.pan = opt
end, shopSection)

createButton("BuyPansDropdownButton", "Buy Pan", function()
	handlePurchase("pan", selectedOptions.pan)
end, shopSection)

createDropdown("BuyShovelDropdown", "Select Shovel", buildPurchasableTable().Shovels, nil, function(opt)
	selectedOptions.shovel = opt
end, shopSection)

createButton("BuyShovelDropdownButton", "Buy Shovel", function()
	handlePurchase("shovel", selectedOptions.shovel)
end, shopSection)

createDropdown("BuySluiceDropdown", "Select Sluice", buildPurchasableTable().Sluices, nil, function(opt)
	selectedOptions.sluice = opt
end, shopSection)

createButton("BuySluiceDropdownButton", "Buy Sluice", function()
	handlePurchase("sluice", selectedOptions.sluice)
end, shopSection)

createDropdown("BuyPotionDropdown", "Select Potion", buildPurchasableTable().Potions, nil, function(opt)
	selectedOptions.potion = opt
end, shopSection)

createButton("BuyPotioneDropdownButton", "Buy Potion", function()
	handlePurchase("potion", selectedOptions.potion)
end, shopSection)

createDropdown("BuyTotemDropdown", "Select Totem", buildPurchasableTable().Totems, nil, function(opt)
	selectedOptions.totem = opt
end, shopSection)

createButton("BuyTotemDropdownButton", "Buy Totem", function()
	handlePurchase("totem", selectedOptions.totem)
end, shopSection)

createDropdown("BuyOthersDropdown", "Select Others", buildPurchasableTable().Others, nil, function(opt)
	selectedOptions.totem = opt
end, shopSection)

createButton("BuyOthersDropdownButton", "Buy Others [IF ANY]", function()
	handlePurchase("others", selectedOptions.other)
end, shopSection)
