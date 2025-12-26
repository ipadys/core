-- Decompiled with Medal in Seliware

local v_u_1 = nil
v_u_1 = {
	["cache"] = {},
	["load"] = function(p2)
		-- upvalues: (ref) v_u_1
		if not v_u_1.cache[p2] then
			v_u_1.cache[p2] = {
				["c"] = v_u_1[p2]()
			}
		end
		return v_u_1.cache[p2].c
	end,
	["a"] = function()
		local v_u_4 = cloneref or function(p3)
			return p3
		end
		local v_u_5 = {
			["Theme"] = {
				["Syntax"] = {
					["Text"] = Color3.fromRGB(204, 204, 204),
					["Background"] = Color3.fromRGB(20, 20, 20),
					["Selection"] = Color3.fromRGB(255, 255, 255),
					["SelectionBack"] = Color3.fromRGB(102, 161, 255),
					["Operator"] = Color3.fromRGB(204, 204, 204),
					["Number"] = Color3.fromRGB(255, 198, 0),
					["String"] = Color3.fromRGB(172, 240, 148),
					["Comment"] = Color3.fromRGB(102, 102, 102),
					["Keyword"] = Color3.fromRGB(248, 109, 124),
					["BuiltIn"] = Color3.fromRGB(132, 214, 247),
					["LocalMethod"] = Color3.fromRGB(253, 251, 172),
					["LocalProperty"] = Color3.fromRGB(97, 161, 241),
					["Nil"] = Color3.fromRGB(255, 198, 0),
					["Bool"] = Color3.fromRGB(255, 198, 0),
					["Function"] = Color3.fromRGB(248, 109, 124),
					["Local"] = Color3.fromRGB(248, 109, 124),
					["Self"] = Color3.fromRGB(248, 109, 124),
					["FunctionName"] = Color3.fromRGB(253, 251, 172),
					["Bracket"] = Color3.fromRGB(204, 204, 204)
				}
			}
		}
		local v7 = setmetatable({}, {
			["__index"] = function(_, p6)
				-- upvalues: (copy) v_u_4
				return v_u_4((game:GetService(p6)))
			end
		})
		local v_u_8 = {
			["StartAndEnd"] = { Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch },
			["Movement"] = { Enum.UserInputType.MouseMovement, Enum.UserInputType.Touch }
		}
		local v9 = v7.Players
		local v_u_10 = v7.UserInputService
		local v_u_11 = v7.RunService
		local v_u_12 = v7.TweenService
		local v_u_13 = v_u_4(v_u_4(v9.LocalPlayer):GetMouse())
		local function v_u_18(p14, p15)
			for v16, v17 in next, p15 do
				p14[v16] = v17
			end
			return p14
		end
		local function v_u_22(p19, p20)
			-- upvalues: (copy) v_u_8
			local v21 = p19.UserInputType
			return table.find(v_u_8[p20], v21)
		end
		local function v_u_23(...)
			-- upvalues: (copy) v_u_4
			return v_u_4(Instance.new(...))
		end
		local function v_u_29(p24, p25)
			-- upvalues: (copy) v_u_23
			local v26 = v_u_23(p24)
			for v27, v28 in next, p25 do
				v26[v27] = v28
			end
			return v26
		end
		local v_u_30 = {}
		local v_u_31 = v_u_23("Frame")
		function v_u_30.CheckMouseInGui(p32)
			-- upvalues: (copy) v_u_13
			if p32 == nil then
				return false
			end
			local v33 = p32.AbsolutePosition
			local v34 = p32.AbsoluteSize
			local v35
			if v_u_13.X >= v33.X and (v_u_13.X < v33.X + v34.X and v_u_13.Y >= v33.Y) then
				v35 = v_u_13.Y < v33.Y + v34.Y
			else
				v35 = false
			end
			return v35
		end
		v_u_30.Signal = (function()
			local v36 = {}
			local function v_u_39(p37)
				local v38 = table.find(p37.Signal.Connections, p37)
				if v38 then
					table.remove(p37.Signal.Connections, v38)
				end
			end
			function v36.Connect(p40, p41)
				-- upvalues: (copy) v_u_39
				if type(p41) ~= "function" then
					error("Attempt to connect a non-function")
				end
				local v42 = {
					["Signal"] = p40,
					["Func"] = p41,
					["Disconnect"] = v_u_39
				}
				p40.Connections[#p40.Connections + 1] = v42
				return v42
			end
			function v36.Fire(p43, ...)
				for _, v44 in next, p43.Connections do
					xpcall(coroutine.wrap(v44.Func), function(p45)
						warn(p45 .. "\n" .. debug.traceback())
					end, ...)
				end
			end
			local v_u_48 = {
				["__index"] = v36,
				["__tostring"] = function(p46)
					local v47 = #p46.Connections
					return "Signal: " .. tostring(v47) .. " Connections"
				end
			}
			return {
				["new"] = function()
					-- upvalues: (copy) v_u_48
					local v49 = v_u_48
					return setmetatable({
						["Connections"] = {}
					}, v49)
				end
			}
		end)()
		function v_u_30.CreateArrow(p50, p51, p52)
			-- upvalues: (copy) v_u_29
			local v53 = v_u_29("Frame", {
				["BackgroundTransparency"] = 1,
				["Name"] = "Arrow",
				["Size"] = UDim2.new(0, p50, 0, p50)
			})
			if p52 == "up" then
				for v54 = 1, p51 do
					local v55 = v_u_29
					local v56 = {
						["BackgroundColor3"] = Color3.new(0.8627450980392157, 0.8627450980392157, 0.8627450980392157),
						["BorderSizePixel"] = 0
					}
					local v57 = UDim2.new
					local v58 = p50 / 2
					local v59 = math.floor(v58) - (v54 - 1)
					local v60 = p50 / 2
					local v61 = math.floor(v60) + v54
					local v62 = p51 / 2
					v56.Position = v57(0, v59, 0, v61 - math.floor(v62) - 1)
					v56.Size = UDim2.new(0, v54 + (v54 - 1), 0, 1)
					v56.Parent = v53
					v55("Frame", v56)
				end
				return v53
			end
			if p52 == "down" then
				for v63 = 1, p51 do
					local v64 = v_u_29
					local v65 = {
						["BackgroundColor3"] = Color3.new(0.8627450980392157, 0.8627450980392157, 0.8627450980392157),
						["BorderSizePixel"] = 0
					}
					local v66 = UDim2.new
					local v67 = p50 / 2
					local v68 = math.floor(v67) - (v63 - 1)
					local v69 = p50 / 2
					local v70 = math.floor(v69) - v63
					local v71 = p51 / 2
					v65.Position = v66(0, v68, 0, v70 + math.floor(v71) + 1)
					v65.Size = UDim2.new(0, v63 + (v63 - 1), 0, 1)
					v65.Parent = v53
					v64("Frame", v65)
				end
				return v53
			end
			if p52 == "left" then
				for v72 = 1, p51 do
					local v73 = v_u_29
					local v74 = {
						["BackgroundColor3"] = Color3.new(0.8627450980392157, 0.8627450980392157, 0.8627450980392157),
						["BorderSizePixel"] = 0
					}
					local v75 = UDim2.new
					local v76 = p50 / 2
					local v77 = math.floor(v76) + v72
					local v78 = p51 / 2
					local v79 = v77 - math.floor(v78) - 1
					local v80 = p50 / 2
					v74.Position = v75(0, v79, 0, math.floor(v80) - (v72 - 1))
					v74.Size = UDim2.new(0, 1, 0, v72 + (v72 - 1))
					v74.Parent = v53
					v73("Frame", v74)
				end
				return v53
			end
			if p52 == "right" then
				for v81 = 1, p51 do
					local v82 = v_u_29
					local v83 = {
						["BackgroundColor3"] = Color3.new(0.8627450980392157, 0.8627450980392157, 0.8627450980392157),
						["BorderSizePixel"] = 0
					}
					local v84 = UDim2.new
					local v85 = p50 / 2
					local v86 = math.floor(v85) - v81
					local v87 = p51 / 2
					local v88 = v86 + math.floor(v87) + 1
					local v89 = p50 / 2
					v83.Position = v84(0, v88, 0, math.floor(v89) - (v81 - 1))
					v83.Size = UDim2.new(0, 1, 0, v81 + (v81 - 1))
					v83.Parent = v53
					v82("Frame", v83)
				end
				return v53
			end
			error("")
		end
		function v_u_30.FastWait(p90)
			task.wait(p90)
		end
		v_u_30.ScrollBar = (function()
			-- upvalues: (copy) v_u_30, (copy) v_u_29, (copy) v_u_22, (copy) v_u_10, (copy) v_u_13
			local v91 = {}
			local v_u_92 = v_u_30.CheckMouseInGui
			local v_u_93 = v_u_30.CreateArrow
			local function v_u_103(p94)
				local v95 = p94.TotalSpace
				local v96 = p94.VisibleSpace
				local v97 = p94.GuiElems.ScrollThumb
				local v98 = p94.GuiElems.ScrollThumbFrame
				if p94:CanScrollUp() or p94:CanScrollDown() then
					v97.Visible = true
				else
					v97.Visible = false
				end
				if p94.Horizontal then
					v97.Size = UDim2.new(v96 / v95, 0, 1, 0)
					if v97.AbsoluteSize.X < 10 then
						v97.Size = UDim2.new(0, 10, 1, 0)
					end
					local v99 = v98.AbsoluteSize.X
					local v100 = v97.AbsoluteSize.X
					v97.Position = UDim2.new(p94:GetScrollPercent() * (v99 - v100) / v99, 0, 0, 0)
				else
					v97.Size = UDim2.new(1, 0, v96 / v95, 0)
					if v97.AbsoluteSize.Y < 10 then
						v97.Size = UDim2.new(1, 0, 0, 10)
					end
					local v101 = v98.AbsoluteSize.Y
					local v102 = v97.AbsoluteSize.Y
					v97.Position = UDim2.new(0, 0, p94:GetScrollPercent() * (v101 - v102) / v101, 0)
				end
			end
			local function v_u_146(p_u_104)
				-- upvalues: (ref) v_u_29, (copy) v_u_93, (ref) v_u_22, (ref) v_u_10, (copy) v_u_92, (ref) v_u_13
				local v105 = v_u_29("Frame", {
					["Style"] = 0,
					["Active"] = true,
					["AnchorPoint"] = Vector2.new(0, 0),
					["BackgroundColor3"] = Color3.new(0.35294118523598, 0.35294118523598, 0.35294118523598),
					["BackgroundTransparency"] = 0,
					["BorderColor3"] = Color3.new(0.10588236153126, 0.16470588743687, 0.20784315466881),
					["BorderSizePixel"] = 0,
					["ClipsDescendants"] = false,
					["Draggable"] = false,
					["Position"] = UDim2.new(1, -10, 0, 0),
					["Rotation"] = 0,
					["Selectable"] = false,
					["Size"] = UDim2.new(0, 10, 1, 0),
					["SizeConstraint"] = 0,
					["Visible"] = true,
					["ZIndex"] = 1,
					["Name"] = "ScrollBar"
				})
				local v_u_106, v_u_107
				if p_u_104.Horizontal then
					v105.Size = UDim2.new(1, 0, 0, 10)
					v_u_106 = v_u_29("ImageButton", {
						["Parent"] = v105,
						["Name"] = "Left",
						["Size"] = UDim2.new(0, 10, 0, 10),
						["BackgroundTransparency"] = 1,
						["BorderSizePixel"] = 0,
						["AutoButtonColor"] = false
					})
					v_u_93(10, 4, "left").Parent = v_u_106
					v_u_107 = v_u_29("ImageButton", {
						["Parent"] = v105,
						["Name"] = "Right",
						["Position"] = UDim2.new(1, -10, 0, 0),
						["Size"] = UDim2.new(0, 10, 0, 10),
						["BackgroundTransparency"] = 1,
						["BorderSizePixel"] = 0,
						["AutoButtonColor"] = false
					})
					v_u_93(10, 4, "right").Parent = v_u_107
				else
					v105.Size = UDim2.new(0, 10, 1, 0)
					v_u_106 = v_u_29("ImageButton", {
						["Parent"] = v105,
						["Name"] = "Up",
						["Size"] = UDim2.new(0, 10, 0, 10),
						["BackgroundTransparency"] = 1,
						["BorderSizePixel"] = 0,
						["AutoButtonColor"] = false
					})
					v_u_93(10, 4, "up").Parent = v_u_106
					v_u_107 = v_u_29("ImageButton", {
						["Parent"] = v105,
						["Name"] = "Down",
						["Position"] = UDim2.new(0, 0, 1, -10),
						["Size"] = UDim2.new(0, 10, 0, 10),
						["BackgroundTransparency"] = 1,
						["BorderSizePixel"] = 0,
						["AutoButtonColor"] = false
					})
					v_u_93(10, 4, "down").Parent = v_u_107
				end
				local v_u_108 = v_u_29("Frame", {
					["BackgroundTransparency"] = 1,
					["Parent"] = v105
				})
				if p_u_104.Horizontal then
					v_u_108.Position = UDim2.new(0, 10, 0, 0)
					v_u_108.Size = UDim2.new(1, -20, 1, 0)
				else
					v_u_108.Position = UDim2.new(0, 0, 0, 10)
					v_u_108.Size = UDim2.new(1, 0, 1, -20)
				end
				local v_u_109 = v_u_29("Frame", {
					["BackgroundColor3"] = Color3.new(0.47058823529411764, 0.47058823529411764, 0.47058823529411764),
					["BorderSizePixel"] = 0,
					["Parent"] = v_u_108
				})
				local v110 = v_u_29("Frame", {
					["BackgroundTransparency"] = 1,
					["Name"] = "Markers",
					["Size"] = UDim2.new(1, 0, 1, 0),
					["Parent"] = v_u_108
				})
				local v_u_111 = false
				local v_u_112 = false
				local v_u_113 = false
				v_u_106.InputBegan:Connect(function(p114)
					-- upvalues: (ref) v_u_22, (ref) v_u_111, (copy) p_u_104, (ref) v_u_106, (ref) v_u_10, (ref) v_u_92
					if v_u_22(p114, "Movement") and (not v_u_111 and p_u_104:CanScrollUp()) then
						v_u_106.BackgroundTransparency = 0.8
					end
					if v_u_22(p114, "StartAndEnd") and p_u_104:CanScrollUp() then
						v_u_111 = true
						v_u_106.BackgroundTransparency = 0.5
						if p_u_104:CanScrollUp() then
							p_u_104:ScrollUp()
							p_u_104.Scrolled:Fire()
						end
						local v115 = tick()
						local v_u_116 = nil
						v_u_116 = v_u_10.InputEnded:Connect(function(p117)
							-- upvalues: (ref) v_u_22, (ref) v_u_116, (ref) v_u_92, (ref) v_u_106, (ref) p_u_104, (ref) v_u_111
							if v_u_22(p117, "StartAndEnd") then
								v_u_116:Disconnect()
								if v_u_92(v_u_106) and p_u_104:CanScrollUp() then
									v_u_106.BackgroundTransparency = 0.8
								else
									v_u_106.BackgroundTransparency = 1
								end
								v_u_111 = false
							end
						end)
						while v_u_111 do
							if tick() - v115 >= 0.3 and p_u_104:CanScrollUp() then
								p_u_104:ScrollUp()
								p_u_104.Scrolled:Fire()
							end
							wait()
						end
					end
				end)
				v_u_106.InputEnded:Connect(function(p118)
					-- upvalues: (ref) v_u_22, (ref) v_u_111, (ref) v_u_106
					if v_u_22(p118, "Movement") and not v_u_111 then
						v_u_106.BackgroundTransparency = 1
					end
				end)
				v_u_107.InputBegan:Connect(function(p119)
					-- upvalues: (ref) v_u_22, (ref) v_u_111, (copy) p_u_104, (ref) v_u_107, (ref) v_u_10, (ref) v_u_92
					if v_u_22(p119, "Movement") and (not v_u_111 and p_u_104:CanScrollDown()) then
						v_u_107.BackgroundTransparency = 0.8
					end
					if v_u_22(p119, "StartAndEnd") and p_u_104:CanScrollDown() then
						v_u_111 = true
						v_u_107.BackgroundTransparency = 0.5
						if p_u_104:CanScrollDown() then
							p_u_104:ScrollDown()
							p_u_104.Scrolled:Fire()
						end
						local v120 = tick()
						local v_u_121 = nil
						v_u_121 = v_u_10.InputEnded:Connect(function(p122)
							-- upvalues: (ref) v_u_22, (ref) v_u_121, (ref) v_u_92, (ref) v_u_107, (ref) p_u_104, (ref) v_u_111
							if v_u_22(p122, "StartAndEnd") then
								v_u_121:Disconnect()
								if v_u_92(v_u_107) and p_u_104:CanScrollDown() then
									v_u_107.BackgroundTransparency = 0.8
								else
									v_u_107.BackgroundTransparency = 1
								end
								v_u_111 = false
							end
						end)
						while v_u_111 do
							if tick() - v120 >= 0.3 and p_u_104:CanScrollDown() then
								p_u_104:ScrollDown()
								p_u_104.Scrolled:Fire()
							end
							wait()
						end
					end
				end)
				v_u_107.InputEnded:Connect(function(p123)
					-- upvalues: (ref) v_u_22, (ref) v_u_111, (ref) v_u_107
					if v_u_22(p123, "Movement") and not v_u_111 then
						v_u_107.BackgroundTransparency = 1
					end
				end)
				v_u_109.InputBegan:Connect(function(p124)
					-- upvalues: (ref) v_u_22, (ref) v_u_112, (copy) v_u_109, (copy) p_u_104, (ref) v_u_111, (ref) v_u_113, (ref) v_u_13, (ref) v_u_10, (ref) v_u_92, (copy) v_u_108
					if v_u_22(p124, "Movement") and not v_u_112 then
						v_u_109.BackgroundTransparency = 0.2
						v_u_109.BackgroundColor3 = p_u_104.ThumbSelectColor
					end
					if v_u_22(p124, "StartAndEnd") then
						local v_u_125 = p_u_104.Horizontal and "X" or "Y"
						local v_u_126 = nil
						v_u_111 = false
						v_u_113 = false
						v_u_112 = true
						v_u_109.BackgroundTransparency = 0
						local v_u_127 = v_u_13[v_u_125] - v_u_109.AbsolutePosition[v_u_125]
						local v_u_128 = nil
						local v_u_129 = nil
						v_u_128 = v_u_10.InputEnded:Connect(function(p130)
							-- upvalues: (ref) v_u_22, (ref) v_u_128, (ref) v_u_129, (ref) v_u_92, (ref) v_u_109, (ref) p_u_104, (ref) v_u_112
							if v_u_22(p130, "StartAndEnd") then
								v_u_128:Disconnect()
								if v_u_129 then
									v_u_129:Disconnect()
								end
								if v_u_92(v_u_109) then
									v_u_109.BackgroundTransparency = 0.2
								else
									v_u_109.BackgroundTransparency = 0
									v_u_109.BackgroundColor3 = p_u_104.ThumbColor
								end
								v_u_112 = false
							end
						end)
						p_u_104:Update()
						v_u_129 = v_u_10.InputChanged:Connect(function(p131)
							-- upvalues: (ref) v_u_22, (ref) v_u_112, (ref) v_u_128, (ref) v_u_108, (copy) v_u_125, (ref) v_u_109, (ref) v_u_13, (copy) v_u_127, (ref) v_u_126, (ref) p_u_104
							if v_u_22(p131, "Movement") and (v_u_112 and v_u_128.Connected) then
								local v132 = v_u_108.AbsoluteSize[v_u_125] - v_u_109.AbsoluteSize[v_u_125]
								local v133 = v_u_13[v_u_125] - v_u_108.AbsolutePosition[v_u_125] - v_u_127
								local v134
								if v132 < v133 then
									v134 = v132
								else
									v134 = v133 < 0 and 0 or v133
								end
								if v_u_126 ~= v134 then
									v_u_126 = v134
									local v135 = p_u_104
									local v136 = 0.5 + v134 / v132 * (p_u_104.TotalSpace - p_u_104.VisibleSpace)
									v135:ScrollTo((math.floor(v136)))
								end
								wait()
							end
						end)
					end
				end)
				v_u_109.InputEnded:Connect(function(p137)
					-- upvalues: (ref) v_u_22, (ref) v_u_112, (copy) v_u_109, (copy) p_u_104
					if v_u_22(p137, "Movement") and not v_u_112 then
						v_u_109.BackgroundTransparency = 0
						v_u_109.BackgroundColor3 = p_u_104.ThumbColor
					end
				end)
				v_u_108.InputBegan:Connect(function(p138)
					-- upvalues: (ref) v_u_22, (ref) v_u_92, (copy) v_u_109, (copy) p_u_104, (ref) v_u_13, (ref) v_u_112, (ref) v_u_113, (ref) v_u_10, (copy) v_u_108
					if v_u_22(p138, "StartAndEnd") and not v_u_92(v_u_109) then
						local v_u_139 = p_u_104.Horizontal and "X" or "Y"
						local v_u_140 = v_u_13[v_u_139] >= v_u_109.AbsolutePosition[v_u_139] + v_u_109.AbsoluteSize[v_u_139] and 1 or 0
						local function v142()
							-- upvalues: (ref) p_u_104, (ref) v_u_140, (ref) v_u_13, (copy) v_u_139, (ref) v_u_109
							local v141 = p_u_104.VisibleSpace - 1
							if v_u_140 == 0 and v_u_13[v_u_139] < v_u_109.AbsolutePosition[v_u_139] then
								p_u_104:ScrollTo(p_u_104.Index - v141)
							elseif v_u_140 == 1 and v_u_13[v_u_139] >= v_u_109.AbsolutePosition[v_u_139] + v_u_109.AbsoluteSize[v_u_139] then
								p_u_104:ScrollTo(p_u_104.Index + v141)
							end
						end
						v_u_112 = false
						v_u_113 = true
						v142()
						local v143 = tick()
						local v_u_144 = nil
						v_u_144 = v_u_10.InputEnded:Connect(function(p145)
							-- upvalues: (ref) v_u_22, (ref) v_u_144, (ref) v_u_113
							if v_u_22(p145, "StartAndEnd") then
								v_u_144:Disconnect()
								v_u_113 = false
							end
						end)
						while v_u_113 do
							if tick() - v143 >= 0.3 and v_u_92(v_u_108) then
								v142()
							end
							wait()
						end
					end
				end)
				v105.MouseWheelForward:Connect(function()
					-- upvalues: (copy) p_u_104
					p_u_104:ScrollTo(p_u_104.Index - p_u_104.WheelIncrement)
				end)
				v105.MouseWheelBackward:Connect(function()
					-- upvalues: (copy) p_u_104
					p_u_104:ScrollTo(p_u_104.Index + p_u_104.WheelIncrement)
				end)
				p_u_104.GuiElems.ScrollThumb = v_u_109
				p_u_104.GuiElems.ScrollThumbFrame = v_u_108
				p_u_104.GuiElems.Button1 = v_u_106
				p_u_104.GuiElems.Button2 = v_u_107
				p_u_104.GuiElems.MarkerFrame = v110
				return v105
			end
			function v91.Update(p147, _)
				-- upvalues: (copy) v_u_103
				local v148 = p147.TotalSpace
				local v149 = p147.VisibleSpace
				local v150 = p147.GuiElems.Button1
				local v151 = p147.GuiElems.Button2
				local v152 = p147.Index
				local v153 = v148 - v149
				local v154 = math.max(0, v153)
				p147.Index = math.clamp(v152, 0, v154)
				if p147.LastTotalSpace ~= p147.TotalSpace then
					p147.LastTotalSpace = p147.TotalSpace
					p147:UpdateMarkers()
				end
				if p147:CanScrollUp() then
					for _, v155 in pairs(v150.Arrow:GetChildren()) do
						v155.BackgroundTransparency = 0
					end
				else
					v150.BackgroundTransparency = 1
					for _, v156 in pairs(v150.Arrow:GetChildren()) do
						v156.BackgroundTransparency = 0.5
					end
				end
				if p147:CanScrollDown() then
					for _, v157 in pairs(v151.Arrow:GetChildren()) do
						v157.BackgroundTransparency = 0
					end
				else
					v151.BackgroundTransparency = 1
					for _, v158 in pairs(v151.Arrow:GetChildren()) do
						v158.BackgroundTransparency = 0.5
					end
				end
				v_u_103(p147)
			end
			function v91.UpdateMarkers(p159)
				-- upvalues: (ref) v_u_29
				local v160 = p159.GuiElems.MarkerFrame
				v160:ClearAllChildren()
				for v161, v162 in pairs(p159.Markers) do
					if v161 < p159.TotalSpace then
						v_u_29("Frame", {
							["BackgroundTransparency"] = 0,
							["BackgroundColor3"] = v162,
							["BorderSizePixel"] = 0,
							["Position"] = p159.Horizontal and UDim2.new(v161 / p159.TotalSpace, 0, 1, -6) or UDim2.new(1, -6, v161 / p159.TotalSpace, 0),
							["Size"] = p159.Horizontal and UDim2.new(0, 1, 0, 6) or UDim2.new(0, 6, 0, 1),
							["Name"] = "Marker" .. tostring(v161),
							["Parent"] = v160
						})
					end
				end
			end
			function v91.AddMarker(p163, p164, p165)
				p163.Markers[p164] = p165 or Color3.new(0, 0, 0)
			end
			function v91.ScrollTo(p166, p167, p168)
				p166.Index = p167
				p166:Update()
				if not p168 then
					p166.Scrolled:Fire()
				end
			end
			function v91.ScrollUp(p169)
				p169.Index = p169.Index - p169.Increment
				p169:Update()
			end
			function v91.ScrollDown(p170)
				p170.Index = p170.Index + p170.Increment
				p170:Update()
			end
			function v91.CanScrollUp(p171)
				return p171.Index > 0
			end
			function v91.CanScrollDown(p172)
				return p172.Index + p172.VisibleSpace < p172.TotalSpace
			end
			function v91.GetScrollPercent(p173)
				return p173.Index / (p173.TotalSpace - p173.VisibleSpace)
			end
			function v91.SetScrollPercent(p174, p175)
				local v176 = p175 * (p174.TotalSpace - p174.VisibleSpace)
				p174.Index = math.floor(v176)
				p174:Update()
			end
			function v91.Texture(p177, p178)
				p177.ThumbColor = p178.ThumbColor or Color3.new(0, 0, 0)
				p177.ThumbSelectColor = p178.ThumbSelectColor or Color3.new(0, 0, 0)
				p177.GuiElems.ScrollThumb.BackgroundColor3 = p178.ThumbColor or Color3.new(0, 0, 0)
				p177.Gui.BackgroundColor3 = p178.FrameColor or Color3.new(0, 0, 0)
				p177.GuiElems.Button1.BackgroundColor3 = p178.ButtonColor or Color3.new(0, 0, 0)
				p177.GuiElems.Button2.BackgroundColor3 = p178.ButtonColor or Color3.new(0, 0, 0)
				for _, v179 in pairs(p177.GuiElems.Button1.Arrow:GetChildren()) do
					v179.BackgroundColor3 = p178.ArrowColor or Color3.new(0, 0, 0)
				end
				for _, v180 in pairs(p177.GuiElems.Button2.Arrow:GetChildren()) do
					v180.BackgroundColor3 = p178.ArrowColor or Color3.new(0, 0, 0)
				end
			end
			function v91.SetScrollFrame(p_u_181, p182)
				if p_u_181.ScrollUpEvent then
					p_u_181.ScrollUpEvent:Disconnect()
					p_u_181.ScrollUpEvent = nil
				end
				if p_u_181.ScrollDownEvent then
					p_u_181.ScrollDownEvent:Disconnect()
					p_u_181.ScrollDownEvent = nil
				end
				p_u_181.ScrollUpEvent = p182.MouseWheelForward:Connect(function()
					-- upvalues: (copy) p_u_181
					p_u_181:ScrollTo(p_u_181.Index - p_u_181.WheelIncrement)
				end)
				p_u_181.ScrollDownEvent = p182.MouseWheelBackward:Connect(function()
					-- upvalues: (copy) p_u_181
					p_u_181:ScrollTo(p_u_181.Index + p_u_181.WheelIncrement)
				end)
			end
			local v_u_183 = {
				["__index"] = v91
			}
			return {
				["new"] = function(p184)
					-- upvalues: (ref) v_u_30, (copy) v_u_183, (copy) v_u_146
					local v185 = {
						["Index"] = 0,
						["VisibleSpace"] = 0,
						["TotalSpace"] = 0,
						["Increment"] = 1,
						["WheelIncrement"] = 1,
						["Markers"] = {},
						["GuiElems"] = {},
						["Horizontal"] = p184,
						["LastTotalSpace"] = 0,
						["Scrolled"] = v_u_30.Signal.new()
					}
					local v186 = v_u_183
					local v187 = setmetatable(v185, v186)
					v187.Gui = v_u_146(v187)
					v187:Texture({
						["ThumbColor"] = Color3.fromRGB(60, 60, 60),
						["ThumbSelectColor"] = Color3.fromRGB(75, 75, 75),
						["ArrowColor"] = Color3.new(1, 1, 1),
						["FrameColor"] = Color3.fromRGB(40, 40, 40),
						["ButtonColor"] = Color3.fromRGB(75, 75, 75)
					})
					return v187
				end
			}
		end)()
		v_u_30.CodeFrame = (function()
			-- upvalues: (copy) v_u_22, (copy) v_u_13, (copy) v_u_10, (copy) v_u_11, (copy) v_u_23, (copy) v_u_31, (copy) v_u_12, (copy) v_u_30, (copy) v_u_5, (copy) v_u_18
			local v_u_188 = {}
			local v_u_189 = {
				"String",
				"String",
				"String",
				"Comment",
				"Operator",
				"Number",
				"Keyword",
				"BuiltIn",
				"LocalMethod",
				"LocalProperty",
				"Nil",
				"Bool",
				"Function",
				"Local",
				"Self",
				"FunctionName",
				"Bracket"
			}
			local v_u_190 = {
				["nil"] = 11,
				["true"] = 12,
				["false"] = 12,
				["function"] = 13,
				["local"] = 14,
				["self"] = 15
			}
			local v_u_191 = {
				["and"] = true,
				["break"] = true,
				["do"] = true,
				["else"] = true,
				["elseif"] = true,
				["end"] = true,
				["false"] = true,
				["for"] = true,
				["function"] = true,
				["if"] = true,
				["in"] = true,
				["local"] = true,
				["nil"] = true,
				["not"] = true,
				["or"] = true,
				["repeat"] = true,
				["return"] = true,
				["then"] = true,
				["true"] = true,
				["until"] = true,
				["while"] = true,
				["plugin"] = true
			}
			local v_u_192 = {
				["delay"] = true,
				["elapsedTime"] = true,
				["require"] = true,
				["spawn"] = true,
				["tick"] = true,
				["time"] = true,
				["typeof"] = true,
				["UserSettings"] = true,
				["wait"] = true,
				["warn"] = true,
				["game"] = true,
				["shared"] = true,
				["script"] = true,
				["workspace"] = true,
				["assert"] = true,
				["collectgarbage"] = true,
				["error"] = true,
				["getfenv"] = true,
				["getmetatable"] = true,
				["ipairs"] = true,
				["loadstring"] = true,
				["newproxy"] = true,
				["next"] = true,
				["pairs"] = true,
				["pcall"] = true,
				["print"] = true,
				["rawequal"] = true,
				["rawget"] = true,
				["rawset"] = true,
				["select"] = true,
				["setfenv"] = true,
				["setmetatable"] = true,
				["tonumber"] = true,
				["tostring"] = true,
				["type"] = true,
				["unpack"] = true,
				["xpcall"] = true,
				["_G"] = true,
				["_VERSION"] = true,
				["coroutine"] = true,
				["debug"] = true,
				["math"] = true,
				["os"] = true,
				["string"] = true,
				["table"] = true,
				["bit32"] = true,
				["utf8"] = true,
				["Axes"] = true,
				["BrickColor"] = true,
				["CFrame"] = true,
				["Color3"] = true,
				["ColorSequence"] = true,
				["ColorSequenceKeypoint"] = true,
				["DockWidgetPluginGuiInfo"] = true,
				["Enum"] = true,
				["Faces"] = true,
				["Instance"] = true,
				["NumberRange"] = true,
				["NumberSequence"] = true,
				["NumberSequenceKeypoint"] = true,
				["PathWaypoint"] = true,
				["PhysicalProperties"] = true,
				["Random"] = true,
				["Ray"] = true,
				["Rect"] = true,
				["Region3"] = true,
				["Region3int16"] = true,
				["TweenInfo"] = true,
				["UDim"] = true,
				["UDim2"] = true,
				["Vector2"] = true,
				["Vector2int16"] = true,
				["Vector3"] = true,
				["Vector3int16"] = true,
				["Drawing"] = true,
				["syn"] = true,
				["crypt"] = true,
				["cache"] = true,
				["bit"] = true,
				["readfile"] = true,
				["writefile"] = true,
				["isfile"] = true,
				["appendfile"] = true,
				["listfiles"] = true,
				["loadfile"] = true,
				["isfolder"] = true,
				["makefolder"] = true,
				["delfolder"] = true,
				["delfile"] = true,
				["setclipboard"] = true,
				["setfflag"] = true,
				["getnamecallmethod"] = true,
				["isluau"] = true,
				["setnonreplicatedproperty"] = true,
				["getspecialinfo"] = true,
				["saveinstance"] = true,
				["rconsoleprint"] = true,
				["rconsoleinfo"] = true,
				["rconsolewarn"] = true,
				["rconsoleerr"] = true,
				["rconsoleclear"] = true,
				["rconsolename"] = true,
				["rconsoleinput"] = true,
				["rconsoleinputasync"] = true,
				["printconsole"] = true,
				["checkcaller"] = true,
				["islclosure"] = true,
				["iscclosure"] = true,
				["dumpstring"] = true,
				["decompile"] = true,
				["hookfunction"] = true,
				["newcclosure"] = true,
				["isrbxactive"] = true,
				["keypress"] = true,
				["keyrelease"] = true,
				["mouse1click"] = true,
				["mouse1press"] = true,
				["mouse1release"] = true,
				["mouse2click"] = true,
				["mouse2press"] = true,
				["mouse2release"] = true,
				["mousescroll"] = true,
				["mousemoveabs"] = true,
				["mousemoverel"] = true,
				["getrawmetatable"] = true,
				["setrawmetatable"] = true,
				["setreadonly"] = true,
				["isreadonly"] = true,
				["getsenv"] = true,
				["getcallingscript"] = true,
				["getgenv"] = true,
				["getrenv"] = true,
				["getreg"] = true,
				["getgc"] = true,
				["getinstances"] = true,
				["getnilinstances"] = true,
				["getscripts"] = true,
				["getloadedmodules"] = true,
				["getconnections"] = true,
				["firesignal"] = true,
				["fireclickdetector"] = true,
				["firetouchinterest"] = true,
				["fireproximityprompt"] = true
			}
			local v_u_193 = false
			local v_u_194 = {
				["\'"] = "&apos;",
				["\""] = "&quot;",
				["<"] = "&lt;",
				[">"] = "&gt;",
				["&"] = "&amp;"
			}
			local v_u_195 = (" %s%s "):format("\195\141", "\195\141")
			local v_u_196 = {
				[("[^%s] %s"):format("\195\141", "\195\141")] = 0,
				[(" %s%s"):format("\195\141", "\195\141")] = -1,
				[("%s%s "):format("\195\141", "\195\141")] = 2,
				[("%s [^%s]"):format("\195\141", "\195\141")] = 1
			}
			local v_u_197 = {}
			local function v_u_208()
				-- upvalues: (copy) v_u_192, (ref) v_u_193
				local v198 = getfenv()
				local v199 = type
				local v200 = tostring
				for v201, _ in next, v_u_192 do
					local v202 = v198[v201]
					if v199(v202) == "table" then
						local v203 = {}
						for v204, _ in next, v202 do
							v203[v204] = true
						end
						v_u_192[v201] = v203
					end
				end
				local v205 = Enum:GetEnums()
				local v206 = {}
				for v207 = 1, #v205 do
					v206[v200(v205[v207])] = true
				end
				v_u_192.Enum = v206
				v_u_193 = true
			end
			local function v_u_213(p_u_209)
				local v_u_210 = p_u_209.GuiElems.EditBox
				v_u_210.Focused:Connect(function()
					-- upvalues: (copy) p_u_209
					p_u_209:ConnectEditBoxEvent()
					p_u_209.Editing = true
				end)
				v_u_210.FocusLost:Connect(function()
					-- upvalues: (copy) p_u_209
					p_u_209:DisconnectEditBoxEvent()
					p_u_209.Editing = false
				end)
				v_u_210:GetPropertyChangedSignal("Text"):Connect(function()
					-- upvalues: (copy) v_u_210, (copy) p_u_209
					local v211 = v_u_210.Text
					if #v211 ~= 0 and not p_u_209.EditBoxCopying then
						local v212 = v211:gsub("\t", "    ")
						v_u_210.Text = ""
						p_u_209:AppendText(v212)
					end
				end)
			end
			local function v_u_261(p_u_214)
				-- upvalues: (ref) v_u_22, (ref) v_u_13, (ref) v_u_10, (ref) v_u_11
				local v_u_215 = p_u_214.GuiElems.LinesFrame
				local v_u_216 = p_u_214.Lines
				v_u_215.InputBegan:Connect(function(p217)
					-- upvalues: (ref) v_u_22, (copy) p_u_214, (ref) v_u_13, (copy) v_u_215, (copy) v_u_216, (ref) v_u_10, (ref) v_u_11
					if v_u_22(p217, "StartAndEnd") then
						local v218 = p_u_214.FontSize / 2
						local v_u_219 = math.ceil(v218)
						local v_u_220 = p_u_214.FontSize
						local v221 = v_u_13.X - v_u_215.AbsolutePosition.X
						local v222 = v_u_13.Y - v_u_215.AbsolutePosition.Y
						local v223 = v221 / v_u_219
						local v224 = math.round(v223) + p_u_214.ViewX
						local v225 = v222 / v_u_220
						local v226 = math.floor(v225) + p_u_214.ViewY
						local v_u_227 = 0
						local v_u_228 = 0
						local v_u_229 = nil
						local v_u_230 = nil
						local v_u_231 = nil
						local v232 = #v_u_216 - 1
						local v_u_233 = math.min(v232, v226)
						local v234 = #(v_u_216[v_u_233 + 1] or "")
						local v235 = v224 + p_u_214:TabAdjust(v224, v_u_233)
						local v_u_236 = math.min(v234, v235)
						p_u_214.SelectionRange = {
							{ -1, -1 },
							{ -1, -1 }
						}
						p_u_214:MoveCursor(v_u_236, v_u_233)
						p_u_214.FloatCursorX = v_u_236
						local function v_u_250()
							-- upvalues: (ref) v_u_13, (ref) v_u_215, (copy) v_u_219, (ref) p_u_214, (copy) v_u_220, (ref) v_u_216, (ref) v_u_233, (ref) v_u_236
							local v237 = v_u_13.X - v_u_215.AbsolutePosition.X
							local v238 = v_u_13.Y - v_u_215.AbsolutePosition.Y
							local v239 = v237 / v_u_219
							local v240 = math.round(v239) + p_u_214.ViewX
							local v241 = math.max(0, v240)
							local v242 = v238 / v_u_220
							local v243 = math.floor(v242) + p_u_214.ViewY
							local v244 = math.max(0, v243)
							local v245 = #v_u_216 - 1
							local v246 = math.min(v245, v244)
							local v247 = #(v_u_216[v246 + 1] or "")
							local v248 = v241 + p_u_214:TabAdjust(v241, v246)
							local v249 = math.min(v247, v248)
							if v246 < v_u_233 or v246 == v_u_233 and v249 < v_u_236 then
								p_u_214.SelectionRange = {
									{ v249, v246 },
									{ v_u_236, v_u_233 }
								}
							else
								p_u_214.SelectionRange = {
									{ v_u_236, v_u_233 },
									{ v249, v246 }
								}
							end
							p_u_214:MoveCursor(v249, v246)
							p_u_214.FloatCursorX = v249
							p_u_214:Refresh()
						end
						v_u_229 = v_u_10.InputEnded:Connect(function(p251)
							-- upvalues: (ref) v_u_22, (ref) v_u_229, (ref) v_u_230, (ref) v_u_231, (ref) p_u_214
							if v_u_22(p251, "StartAndEnd") then
								v_u_229:Disconnect()
								v_u_230:Disconnect()
								v_u_231:Disconnect()
								p_u_214:SetCopyableSelection()
							end
						end)
						v_u_230 = v_u_10.InputChanged:Connect(function(p252)
							-- upvalues: (ref) v_u_22, (ref) v_u_13, (ref) v_u_215, (ref) v_u_227, (ref) v_u_228, (copy) v_u_250
							if v_u_22(p252, "Movement") then
								local v253 = v_u_13.Y - v_u_215.AbsolutePosition.Y
								local v254 = v_u_13.Y - v_u_215.AbsolutePosition.Y - v_u_215.AbsoluteSize.Y
								local v255 = v_u_13.X - v_u_215.AbsolutePosition.X
								local v256 = v_u_13.X - v_u_215.AbsolutePosition.X - v_u_215.AbsoluteSize.X
								v_u_227 = 0
								v_u_228 = 0
								if v254 > 0 then
									local v257 = v254 * 0.05
									v_u_227 = math.floor(v257) + 1
								elseif v253 < 0 then
									local v258 = v253 * 0.05
									v_u_227 = math.ceil(v258) - 1
								end
								if v256 > 0 then
									local v259 = v256 * 0.05
									v_u_228 = math.floor(v259) + 1
								elseif v255 < 0 then
									local v260 = v255 * 0.05
									v_u_228 = math.ceil(v260) - 1
								end
								v_u_250()
							end
						end)
						v_u_231 = v_u_11.RenderStepped:Connect(function()
							-- upvalues: (ref) v_u_227, (ref) v_u_228, (ref) p_u_214, (copy) v_u_250
							if v_u_227 ~= 0 or v_u_228 ~= 0 then
								p_u_214:ScrollDelta(v_u_228, v_u_227)
								v_u_250()
							end
						end)
						p_u_214:Refresh()
					end
				end)
			end
			function v_u_188.MakeEditorFrame(p_u_262)
				-- upvalues: (ref) v_u_23, (ref) v_u_31, (copy) v_u_197, (ref) v_u_12, (ref) v_u_22, (copy) v_u_213, (copy) v_u_261
				local v263 = v_u_23("TextButton")
				v263.BackgroundTransparency = 1
				v263.TextTransparency = 1
				v263.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				v263.BorderSizePixel = 0
				v263.Size = UDim2.fromOffset(100, 100)
				v263.Visible = true
				local v264 = {}
				local v265 = v_u_23("Frame")
				v265.Name = "Lines"
				v265.BackgroundTransparency = 1
				v265.Size = UDim2.new(1, 0, 1, 0)
				v265.ClipsDescendants = true
				v265.Parent = v263
				local v266 = v_u_23("TextLabel")
				v266.Name = "LineNumbers"
				v266.BackgroundTransparency = 1
				v266.FontFace = p_u_262.FontFace
				v266.TextXAlignment = Enum.TextXAlignment.Right
				v266.TextYAlignment = Enum.TextYAlignment.Top
				v266.ClipsDescendants = true
				v266.RichText = true
				v266.Parent = v263
				v_u_31.Name = "Cursor"
				v_u_31.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
				v_u_31.BorderSizePixel = 0
				v_u_31.Parent = v263
				local v267 = v_u_23("TextBox")
				v267.Name = "EditBox"
				v267.MultiLine = true
				v267.Visible = false
				v267.Parent = v263
				v267.TextSize = p_u_262.FontSize
				v267.FontFace = p_u_262.FontFace
				v_u_197.Invis = v_u_12:Create(v_u_31, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					["BackgroundTransparency"] = 1
				})
				v_u_197.Vis = v_u_12:Create(v_u_31, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					["BackgroundTransparency"] = 0
				})
				local v268 = v_u_23("Frame")
				v268.BackgroundColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945)
				v268.BorderSizePixel = 0
				v268.Name = "ScrollCorner"
				v268.Position = UDim2.new(1, -10, 1, -10)
				v268.Size = UDim2.new(0, 10, 0, 10)
				v268.Visible = false
				v264.ScrollCorner = v268
				v264.LinesFrame = v265
				v264.LineNumbersLabel = v266
				v264.Cursor = v_u_31
				v264.EditBox = v267
				v264.ScrollCorner.Parent = v263
				v265.InputBegan:Connect(function(p269)
					-- upvalues: (ref) v_u_22, (copy) p_u_262
					if v_u_22(p269, "StartAndEnd") then
						p_u_262:SetEditing(true, p269)
					end
				end)
				p_u_262.Frame = v263
				p_u_262.Gui = v263
				p_u_262.GuiElems = v264
				v_u_213(p_u_262)
				v_u_261(p_u_262)
				return v263
			end
			function v_u_188.GetSelectionText(p270)
				if not p270:IsValidRange() then
					return ""
				end
				local v271 = p270.SelectionRange
				local v272 = v271[1][1]
				local v273 = v271[1][2]
				local v274 = v271[2][1]
				local v275 = v271[2][2]
				local v276 = v275 - v273
				local v277 = p270.Lines
				if not (v277[v273 + 1] and v277[v275 + 1]) then
					return ""
				end
				if v276 == 0 then
					return p270:ConvertText(v277[v273 + 1]:sub(v272 + 1, v274), false)
				end
				local v278 = v277[v273 + 1]:sub(v272 + 1)
				local v279 = v277[v275 + 1]:sub(1, v274)
				local v280 = v278 .. "\n"
				for v281 = v273 + 1, v275 - 1 do
					v280 = v280 .. v277[v281 + 1] .. "\n"
				end
				return p270:ConvertText(v280 .. v279, false)
			end
			function v_u_188.SetCopyableSelection(p282)
				local v283 = p282:GetSelectionText()
				local v284 = p282.GuiElems.EditBox
				p282.EditBoxCopying = true
				v284.Text = v283
				v284.SelectionStart = 1
				v284.CursorPosition = #v284.Text + 1
				p282.EditBoxCopying = false
			end
			function v_u_188.ConnectEditBoxEvent(p_u_285)
				-- upvalues: (ref) v_u_10, (ref) v_u_30, (copy) v_u_195
				if p_u_285.EditBoxEvent then
					p_u_285.EditBoxEvent:Disconnect()
				end
				p_u_285.EditBoxEvent = v_u_10.InputBegan:Connect(function(p286)
					-- upvalues: (ref) v_u_10, (ref) v_u_30, (copy) p_u_285, (ref) v_u_195
					if p286.UserInputType == Enum.UserInputType.Keyboard then
						local v287 = Enum.KeyCode
						local v288 = p286.KeyCode
						local function v294(p_u_289, p290)
							-- upvalues: (ref) v_u_10, (ref) v_u_30
							local v_u_291 = nil
							local v_u_292 = nil
							v_u_291 = v_u_10.InputEnded:Connect(function(p293)
								-- upvalues: (copy) p_u_289, (ref) v_u_291, (ref) v_u_292
								if p293.KeyCode == p_u_289 then
									v_u_291:Disconnect()
									v_u_292 = true
								end
							end)
							p290()
							v_u_30.FastWait(0.5)
							while not v_u_292 do
								p290()
								v_u_30.FastWait(0.03)
							end
						end
						if v288 == v287.Down then
							v294(v287.Down, function()
								-- upvalues: (ref) p_u_285
								p_u_285.CursorX = p_u_285.FloatCursorX
								p_u_285.CursorY = p_u_285.CursorY + 1
								p_u_285:UpdateCursor()
								p_u_285:JumpToCursor()
							end)
							return
						elseif v288 == v287.Up then
							v294(v287.Up, function()
								-- upvalues: (ref) p_u_285
								p_u_285.CursorX = p_u_285.FloatCursorX
								p_u_285.CursorY = p_u_285.CursorY - 1
								p_u_285:UpdateCursor()
								p_u_285:JumpToCursor()
							end)
							return
						elseif v288 == v287.Left then
							v294(v287.Left, function()
								-- upvalues: (ref) p_u_285, (ref) v_u_195
								local v295 = p_u_285.Lines[p_u_285.CursorY + 1] or ""
								p_u_285.CursorX = p_u_285.CursorX - 1 - (v295:sub(p_u_285.CursorX - 3, p_u_285.CursorX) == v_u_195 and 3 or 0)
								if p_u_285.CursorX < 0 then
									p_u_285.CursorY = p_u_285.CursorY - 1
									p_u_285.CursorX = #(p_u_285.Lines[p_u_285.CursorY + 1] or "")
								end
								p_u_285.FloatCursorX = p_u_285.CursorX
								p_u_285:UpdateCursor()
								p_u_285:JumpToCursor()
							end)
							return
						elseif v288 == v287.Right then
							v294(v287.Right, function()
								-- upvalues: (ref) p_u_285, (ref) v_u_195
								local v296 = p_u_285.Lines[p_u_285.CursorY + 1] or ""
								p_u_285.CursorX = p_u_285.CursorX + 1 + (v296:sub(p_u_285.CursorX + 1, p_u_285.CursorX + 4) == v_u_195 and 3 or 0)
								if p_u_285.CursorX > #v296 then
									p_u_285.CursorY = p_u_285.CursorY + 1
									p_u_285.CursorX = 0
								end
								p_u_285.FloatCursorX = p_u_285.CursorX
								p_u_285:UpdateCursor()
								p_u_285:JumpToCursor()
							end)
							return
						elseif v288 == v287.Backspace then
							v294(v287.Backspace, function()
								-- upvalues: (ref) p_u_285, (ref) v_u_195
								local v297 = nil
								local v298
								if p_u_285:IsValidRange() then
									v297 = p_u_285.SelectionRange[1]
									v298 = p_u_285.SelectionRange[2]
								else
									v298 = { p_u_285.CursorX, p_u_285.CursorY }
								end
								if not v297 then
									local v299 = p_u_285.Lines[p_u_285.CursorY + 1] or ""
									p_u_285.CursorX = p_u_285.CursorX - 1 - (v299:sub(p_u_285.CursorX - 3, p_u_285.CursorX) == v_u_195 and 3 or 0)
									if p_u_285.CursorX < 0 then
										p_u_285.CursorY = p_u_285.CursorY - 1
										p_u_285.CursorX = #(p_u_285.Lines[p_u_285.CursorY + 1] or "")
									end
									p_u_285.FloatCursorX = p_u_285.CursorX
									p_u_285:UpdateCursor()
									v297 = v297 or { p_u_285.CursorX, p_u_285.CursorY }
								end
								p_u_285:DeleteRange({ v297, v298 }, false, true)
								p_u_285:ResetSelection(true)
								p_u_285:JumpToCursor()
							end)
							return
						elseif v288 == v287.Delete then
							v294(v287.Delete, function()
								-- upvalues: (ref) p_u_285, (ref) v_u_195
								local v300 = nil
								local v301
								if p_u_285:IsValidRange() then
									v301 = p_u_285.SelectionRange[1]
									v300 = p_u_285.SelectionRange[2]
								else
									v301 = { p_u_285.CursorX, p_u_285.CursorY }
								end
								if not v300 then
									local v302 = p_u_285.Lines[p_u_285.CursorY + 1] or ""
									local v303 = p_u_285.CursorX + 1 + (v302:sub(p_u_285.CursorX + 1, p_u_285.CursorX + 4) == v_u_195 and 3 or 0)
									local v304 = p_u_285.CursorY
									if #v302 < v303 then
										v304 = v304 + 1
										v303 = 0
									end
									p_u_285:UpdateCursor()
									v300 = v300 or { v303, v304 }
								end
								p_u_285:DeleteRange({ v301, v300 }, false, true)
								p_u_285:ResetSelection(true)
								p_u_285:JumpToCursor()
							end)
						elseif v_u_10:IsKeyDown(Enum.KeyCode.LeftControl) and v288 == v287.A then
							p_u_285.SelectionRange = {
								{ 0, 5 },
								{ #p_u_285.Lines[#p_u_285.Lines], #p_u_285.Lines - 1 }
							}
							p_u_285:SetCopyableSelection()
							p_u_285:Refresh()
						end
					else
						return
					end
				end)
			end
			function v_u_188.DisconnectEditBoxEvent(p305)
				-- upvalues: (ref) v_u_31, (copy) v_u_188
				if p305.EditBoxEvent then
					p305.EditBoxEvent:Disconnect()
					v_u_31.BackgroundTransparency = 1
					v_u_188.CursorAnim(p305, false)
				end
			end
			function v_u_188.ResetSelection(p306, p307)
				p306.SelectionRange = {
					{ -1, -1 },
					{ -1, -1 }
				}
				if not p307 then
					p306:Refresh()
				end
			end
			function v_u_188.IsValidRange(p308, p309)
				local v310 = p309 or p308.SelectionRange
				local v311 = v310[1][1]
				local v312 = v310[1][2]
				local v313 = v310[2][1]
				local v314 = v310[2][2]
				return v311 ~= -1 and (v311 ~= v313 or v312 ~= v314)
			end
			function v_u_188.DeleteRange(p315, p316, p317, p318)
				local v319 = p316 or p315.SelectionRange
				if p315:IsValidRange(v319) then
					local v320 = p315.Lines
					local v321 = v319[1][1]
					local v322 = v319[1][2]
					local v323 = v319[2][1]
					local v324 = v319[2][2]
					local v325 = v324 - v322
					if v320[v322 + 1] and v320[v324 + 1] then
						local v326 = v320[v322 + 1]:sub(1, v321)
						local v327 = v320[v324 + 1]:sub(v323 + 1)
						v320[v322 + 1] = v326 .. v327
						local v328 = table.remove
						for _ = 1, v325 do
							v328(v320, v322 + 2)
						end
						if v319 == p315.SelectionRange then
							p315.SelectionRange = {
								{ -1, -1 },
								{ -1, -1 }
							}
						end
						if p318 then
							p315.CursorX = v321
							p315.CursorY = v322
							p315:UpdateCursor()
						end
						if not p317 then
							p315:ProcessTextChange()
						end
					end
				else
					return
				end
			end
			function v_u_188.AppendText(p329, p330)
				p329:DeleteRange(nil, true, true)
				local v331 = p329.Lines
				local v332 = p329.CursorX
				local v333 = p329.CursorY
				local v334 = v331[v333 + 1]
				local v335 = v334:sub(1, v332)
				local v336 = v334:sub(v332 + 1)
				local v337 = p329:ConvertText(p330:gsub("\r\n", "\n"), true):split("\n")
				local v338 = table.insert
				for v339 = 1, #v337 do
					local v340 = v333 + v339
					if v339 > 1 then
						v338(v331, v340, "")
					end
					local v341 = v337[v339]
					v331[v340] = (v339 == 1 and v335 and v335 or "") .. v341 .. (v339 == #v337 and v336 and v336 or "")
				end
				local v342 = #v337 > 1 and 0 or v332
				p329:ProcessTextChange()
				p329.CursorX = v342 + #v337[#v337]
				p329.CursorY = v333 + #v337 - 1
				p329:UpdateCursor()
			end
			function v_u_188.ScrollDelta(p343, p344, p345)
				p343.ScrollV:ScrollTo(p343.ScrollV.Index + p345)
				p343.ScrollH:ScrollTo(p343.ScrollH.Index + p344)
			end
			function v_u_188.TabAdjust(p346, p347, p348)
				-- upvalues: (copy) v_u_196
				local v349 = p346.Lines[p348 + 1]
				local v350 = p347 + 1
				if v349 then
					local v351 = v349:sub(v350 - 1, v350 - 1)
					local v352 = v349:sub(v350, v350)
					local v353 = v349:sub(v350 + 1, v350 + 1)
					local v354 = (#v351 > 0 and v351 and v351 or " ") .. (#v352 > 0 and v352 and v352 or " ") .. (#v353 > 0 and v353 and v353 or " ")
					for v355, v356 in pairs(v_u_196) do
						if v354:find(v355) then
							return v356
						end
					end
				end
				return 0
			end
			function v_u_188.SetEditing(p357, p358, p359)
				if p359 then
					p357:UpdateCursor(p359)
				end
				if p358 then
					if p357.Editable then
						p357.GuiElems.EditBox.Text = ""
						p357.GuiElems.EditBox:CaptureFocus()
						return
					end
				else
					p357.GuiElems.EditBox:ReleaseFocus()
				end
			end
			function v_u_188.CursorAnim(p_u_360, p361)
				-- upvalues: (copy) v_u_197, (ref) v_u_30
				local v362 = p_u_360.GuiElems.Cursor
				local v_u_363 = tick()
				p_u_360.LastAnimTime = v_u_363
				if p361 then
					v_u_197.Invis:Cancel()
					v_u_197.Vis:Cancel()
					v362.BackgroundTransparency = 0
					coroutine.wrap(function()
						-- upvalues: (copy) p_u_360, (ref) v_u_30, (copy) v_u_363, (ref) v_u_197
						while p_u_360.Editable do
							v_u_30.FastWait(0.5)
							if p_u_360.LastAnimTime ~= v_u_363 then
								return
							end
							v_u_197.Invis:Play()
							v_u_30.FastWait(0.5)
							if p_u_360.LastAnimTime ~= v_u_363 then
								return
							end
							v_u_197.Vis:Play()
						end
					end)()
				end
			end
			function v_u_188.MoveCursor(p364, p365, p366)
				p364.CursorX = p365
				p364.CursorY = p366
				p364:UpdateCursor()
				p364:JumpToCursor()
			end
			function v_u_188.JumpToCursor(p367)
				p367:Refresh()
			end
			function v_u_188.UpdateCursor(p368, p369)
				local v370 = p368.GuiElems.LinesFrame
				local v371 = p368.GuiElems.Cursor
				local v372 = v370.AbsoluteSize.X
				local v373 = math.max(0, v372)
				local v374 = v370.AbsoluteSize.Y
				local v375 = math.max(0, v374) / p368.FontSize
				local v376 = math.ceil(v375)
				local v377 = p368.FontSize / 2
				local v378 = v373 / math.ceil(v377)
				local v379 = math.ceil(v378)
				local v380 = p368.ViewX
				local v381 = p368.ViewY
				local v382 = #p368.Lines
				local v383 = tostring(v382)
				local v384 = p368.FontSize / 2
				local v385 = math.ceil(v384)
				local v386 = #v383 * v385 + v385 * 4
				if p369 then
					local v387 = p368.GuiElems.LinesFrame
					local v388 = v387.AbsolutePosition.X
					local v389 = v387.AbsolutePosition.Y
					local v390 = p369.Position.X
					local v391 = p369.Position.Y
					local v392 = p368.FontSize / 2
					local v393 = math.ceil(v392)
					local v394 = p368.FontSize
					local v395 = p368.ViewX
					local v396 = (v390 - v388) / v393
					p368.CursorX = v395 + math.round(v396)
					local v397 = p368.ViewY
					local v398 = (v391 - v389) / v394
					p368.CursorY = v397 + math.floor(v398)
				end
				local v399 = p368.CursorX
				local v400 = p368.CursorY
				local v401 = p368.Lines[v400 + 1] or ""
				local v402
				if #v401 < v399 then
					v402 = #v401
				else
					v402 = v399 < 0 and 0 or v399
				end
				local v403
				if #p368.Lines <= v400 then
					local v404 = #p368.Lines - 1
					v403 = math.max(0, v404)
				else
					v403 = v400 < 0 and 0 or v400
				end
				local v405 = v402 + p368:TabAdjust(v402, v403)
				p368.CursorX = v405
				p368.CursorY = v403
				local v406
				if v380 <= v405 and (v381 <= v403 and v405 <= v380 + v379) then
					v406 = v403 <= v381 + v376
				else
					v406 = false
				end
				if v406 then
					local v407 = v405 - v380
					local v408 = v403 - v381
					local v409 = UDim2.new
					local v410 = p368.FontSize / 2
					v371.Position = v409(0, v386 + v407 * math.ceil(v410) - 1, 0, v408 * p368.FontSize)
					v371.Size = UDim2.new(0, 1, 0, p368.FontSize + 2)
					v371.Visible = true
					p368:CursorAnim(true)
				else
					v371.Visible = false
				end
			end
			function v_u_188.MapNewLines(p411)
				local v412 = p411.Text
				local v413 = string.find
				local v414 = v413(v412, "\n", 1, true)
				local v415 = {}
				local v416 = 1
				while v414 do
					v415[v416] = v414
					v416 = v416 + 1
					v414 = v413(v412, "\n", v414 + 1, true)
				end
				p411.NewLines = v415
			end
			function v_u_188.PreHighlight(p417)
				local v418 = p417.Text:gsub("\\\\", "  ")
				local v419 = #v418
				local v_u_420 = {}
				local v_u_421 = {}
				local v_u_422 = {}
				local v_u_423 = string.find
				local v424 = string.sub
				p417.ColoredLines = {}
				local function v433(p425, p426, p427, p428)
					-- upvalues: (copy) v_u_420, (copy) v_u_423, (copy) v_u_421, (copy) v_u_422
					local v429 = #v_u_420 + 1
					local v430, v431, v432 = v_u_423(p425, p426, 1, p428)
					while v430 do
						v_u_420[v429] = v430
						v_u_421[v430] = p427
						if v432 then
							v_u_422[v430] = v432
						end
						v429 = v429 + 1
						v430, v431, v432 = v_u_423(p425, p426, v431 + 1, p428)
					end
				end
				v433(v418, "\"", 1, true)
				v433(v418, "\'", 2, true)
				v433(v418, "%[(=*)%[", 3)
				v433(v418, "--", 4, true)
				table.sort(v_u_420)
				local v434 = p417.NewLines
				local v435 = 0
				local v436 = {}
				local v437 = 0
				local v438 = 0
				for v439 = 1, #v_u_420 do
					local v440 = v_u_420[v439]
					if v440 > v435 then
						local v441 = v_u_421[v440]
						if v441 == 1 then
							v435 = v_u_423(v418, "\"", v440 + 1, true)
							while v435 and v424(v418, v435 - 1, v435 - 1) == "\\" do
								v435 = v_u_423(v418, "\"", v435 + 1, true)
							end
							if not v435 then
								v435 = v419
							end
						elseif v441 == 2 then
							v435 = v_u_423(v418, "\'", v440 + 1, true)
							while v435 and v424(v418, v435 - 1, v435 - 1) == "\\" do
								v435 = v_u_423(v418, "\'", v435 + 1, true)
							end
							if not v435 then
								v435 = v419
							end
						elseif v441 == 3 then
							local v442
							v442, v435 = v_u_423(v418, "]" .. v_u_422[v440] .. "]", v440 + 1, true)
							_ = v442
							if not v435 then
								v435 = v419
							end
						elseif v441 == 4 then
							if v_u_421[v440 + 2] == 3 then
								local v443
								v443, v435 = v_u_423(v418, "]" .. v_u_422[v440 + 2] .. "]", v440 + 1, true)
								_ = v443
								if not v435 then
									v435 = v419
								end
							else
								v435 = v_u_423(v418, "\n", v440 + 1, true) or v419
							end
						else
							v435 = v440
						end
						while v437 < v440 do
							v438 = v438 + 1
							v437 = v434[v438] or v419 + 1
						end
						while true do
							local v444 = v436[v438]
							if not v444 then
								v444 = {}
								v436[v438] = v444
							end
							v444[v440] = { v441, v435 }
							if v437 >= v435 then
								break
							end
							v438 = v438 + 1
							v437 = v434[v438] or v419 + 1
						end
					end
				end
				p417.PreHighlights = v436
			end
			function v_u_188.HighlightLine(p445, p446)
				-- upvalues: (copy) v_u_191, (copy) v_u_192, (copy) v_u_190
				local v447 = p445.ColoredLines[p446]
				if v447 then
					return v447
				end
				local v448 = string.sub
				local v449 = string.find
				local v450 = string.match
				local v451 = p445.PreHighlights[p446] or {}
				local v452 = p445.Lines[p446] or ""
				local v453 = p445.NewLines[p446 - 1] or 0
				local v454 = {}
				local v455 = false
				local v456 = nil
				local v457 = 0
				local v458 = 0
				local v459 = {}
				local v460 = 0
				for v461, v462 in next, v451 do
					local v463 = v461 - v453
					if v463 < 1 then
						v460 = v462[1]
						v458 = v462[2] - v453
					else
						v454[v463] = { v462[1], v462[2] - v453 }
					end
				end
				for v464 = 1, #v452 do
					if v464 <= v458 then
						v459[v464] = v460
					else
						local v465 = v454[v464]
						if v465 then
							v460 = v465[1]
							v458 = v465[2]
							v459[v464] = v460
							v455 = false
							v456 = nil
							v457 = 0
						else
							local v466 = v448(v452, v464, v464)
							if v449(v466, "[%a_]") then
								local v467 = v450(v452, "[%a%d_]+", v464)
								v460 = v_u_191[v467] and 7 or v_u_192[v467] and 8
								v458 = v464 + #v467 - 1
								if v460 == 7 then
									v460 = v_u_190[v467] or v460
									v457 = v467 == "function" and 1 or 0
								else
									if v455 then
										if v456 then
											v456 = v_u_192[v456]
										end
										v460 = v456 and (type(v456) == "table" and v456[v467]) and 8 or 10
									end
									if v460 ~= 8 then
										local v468, _, v469 = v449(v452, "^%s*([%({\"\'])", v458 + 1)
										if v468 then
											v460 = v457 > 0 and v469 == "(" and 16 or 9
											v457 = 0
										end
									end
								end
								v455 = false
								v457 = v457 > 0 and 1 or v457
								if v460 then
									v459[v464] = v460
									v456 = v467
								else
									v456 = v467
									v460 = nil
								end
							elseif v449(v466, "%p") then
								local v470 = v466 == "."
								local v471
								if v470 then
									v471 = v449(v448(v452, v464 + 1, v464 + 1), "%d")
								else
									v471 = v470
								end
								v459[v464] = v471 and 6 or 5
								if not v471 then
									local v472
									if v470 then
										v472 = v450(v452, "%.%.?%.?", v464)
									else
										v472 = v470
									end
									if v472 and #v472 > 1 then
										v458 = v464 + #v472 - 1
										v455 = false
										v456 = nil
										v457 = 0
										v460 = 5
									else
										if v470 then
											if v455 then
												v456 = nil
											else
												v455 = true
											end
										else
											v455 = false
											v456 = nil
										end
										v457 = (v470 or v466 == ":") and (v457 == 1 and 2 or 0) or 0
									end
								end
							elseif v449(v466, "%d") then
								local v473
								v473, v458 = v449(v452, "%x+", v464)
								local v474 = v448(v452, v458, v458 + 1)
								if (v474 == "e+" or v474 == "e-") and v449(v448(v452, v458 + 2, v458 + 2), "%d") then
									v458 = v458 + 1
								end
								v459[v464] = 6
								v455 = false
								v456 = nil
								v457 = 0
								v460 = 6
							else
								v459[v464] = v460
								local _, v475 = v449(v452, "%s+", v464)
								if v475 then
									v458 = v475
								end
							end
						end
					end
				end
				p445.ColoredLines[p446] = v459
				return v459
			end
			function v_u_188.Refresh(p476)
				-- upvalues: (ref) v_u_23, (ref) v_u_5, (copy) v_u_189, (copy) v_u_194
				local v477 = p476.Frame.Lines
				local v478 = v477.AbsoluteSize.X
				local v479 = math.max(0, v478)
				local v480 = v477.AbsoluteSize.Y
				local v481 = math.max(0, v480) / p476.FontSize
				local v482 = math.ceil(v481)
				local v483 = p476.FontSize / 2
				local v484 = v479 / math.ceil(v483)
				local v485 = math.ceil(v484)
				local v486 = string.gsub
				local v487 = string.sub
				local v488 = p476.ViewX
				local v489 = p476.ViewY
				local v490 = ""
				for v491 = 1, v482 do
					local v492 = p476.LineFrames[v491]
					if not v492 then
						v492 = v_u_23("Frame")
						v492.Name = "Line"
						v492.Position = UDim2.new(0, 0, 0, (v491 - 1) * p476.FontSize)
						v492.Size = UDim2.new(1, 0, 0, p476.FontSize)
						v492.BorderSizePixel = 0
						v492.BackgroundTransparency = 1
						local v493 = v_u_23("Frame")
						v493.Name = "SelectionHighlight"
						v493.BorderSizePixel = 0
						v493.BackgroundColor3 = v_u_5.Theme.Syntax.SelectionBack
						v493.Parent = v492
						v493.BackgroundTransparency = 0.7
						local v494 = v_u_23("TextLabel")
						v494.Name = "Label"
						v494.BackgroundTransparency = 1
						v494.FontFace = p476.FontFace
						v494.TextSize = p476.FontSize
						v494.Size = UDim2.new(1, 0, 0, p476.FontSize)
						v494.RichText = true
						v494.TextXAlignment = Enum.TextXAlignment.Left
						v494.TextColor3 = p476.Colors.Text
						v494.ZIndex = 2
						v494.Parent = v492
						v492.Parent = v477
						p476.LineFrames[v491] = v492
					end
					local v495 = v489 + v491
					local v496 = p476.Lines[v495] or ""
					local v497 = ""
					local v498 = p476:HighlightLine(v495)
					local v499 = v488 + 1
					local v500 = p476.RichTemplates
					local v501 = v500.Text
					local _ = v500.Selection
					local v502 = v498[v499]
					local v503 = v500[v_u_189[v502]] or v501
					local v504 = p476.SelectionRange
					local v505 = v504[1]
					local v506 = v504[2]
					local v507 = v495 - 1
					if v505[2] <= v507 and v507 <= v506[2] then
						local v508 = p476.FontSize / 2
						local v509 = math.ceil(v508)
						local v510 = (v507 == v505[2] and v505[1] or 0) - v488
						local v511 = v507 == v506[2] and v506[1] - v510 - v488 or v485 + v488
						v492.SelectionHighlight.Position = UDim2.new(0, v510 * v509, 0, 0)
						v492.SelectionHighlight.Size = UDim2.new(0, v511 * v509, 1, 0)
						v492.SelectionHighlight.Visible = true
					else
						v492.SelectionHighlight.Visible = false
					end
					for v512 = 2, v485 do
						local v513 = v488 + v512
						local v514 = v498[v513]
						if v514 ~= v502 then
							local v515 = v500[v_u_189[v514]] or v501
							if v515 == v503 then
								v515 = v503
								v513 = v499
							else
								local v516 = v486(v487(v496, v499, v513 - 1), "[\'\"<>&]", v_u_194)
								if v503 ~= v501 then
									v516 = v503 .. v516 .. "</font>" or v516
								end
								v497 = v497 .. v516
							end
							v499 = v513
							v502 = v514
							v503 = v515
						end
					end
					local v517 = v486(v487(v496, v499, v488 + v485), "[\'\"<>&]", v_u_194)
					if #v517 > 0 then
						if v503 ~= v501 then
							v517 = v503 .. v517 .. "</font>" or v517
						end
						v497 = v497 .. v517
					end
					if p476.Lines[v495] then
						v490 = v490 .. (v495 - 1 == p476.CursorY and "<b>" .. v495 .. "</b>\n" or v495 .. "\n")
					end
					v492.Label.Text = v497
				end
				for v518 = v482 + 1, #p476.LineFrames do
					p476.LineFrames[v518]:Destroy()
					p476.LineFrames[v518] = nil
				end
				p476.Frame.LineNumbers.Text = v490
				p476:UpdateCursor()
			end
			function v_u_188.UpdateView(p519)
				local v520 = #p519.Lines
				local v521 = tostring(v520)
				local v522 = p519.FontSize / 2
				local v523 = math.ceil(v522)
				local v524 = #v521 * v523 + v523 * 4
				local v525 = p519.Frame.Lines
				local v526 = v525.AbsoluteSize.X
				local v527 = v525.AbsoluteSize.Y / p519.FontSize
				local v528 = math.ceil(v527)
				local v529 = p519.MaxTextCols * v523
				local v530 = p519.ScrollV
				local v531 = p519.ScrollH
				v530.VisibleSpace = v528
				v530.TotalSpace = #p519.Lines + 1
				local v532 = v526 / v523
				v531.VisibleSpace = math.ceil(v532)
				v531.TotalSpace = p519.MaxTextCols + 1
				v530.Gui.Visible = v528 < #p519.Lines + 1
				v531.Gui.Visible = v526 < v529
				local v533 = p519.FrameOffsets
				p519.FrameOffsets = Vector2.new(v530.Gui.Visible and -10 or 0, v531.Gui.Visible and -10 or 0)
				if v533 == p519.FrameOffsets then
					v530:ScrollTo(p519.ViewY, true)
					v531:ScrollTo(p519.ViewX, true)
					if v530.Gui.Visible and v531.Gui.Visible then
						v530.Gui.Size = UDim2.new(0, 10, 1, -10)
						v531.Gui.Size = UDim2.new(1, -10, 0, 10)
						p519.GuiElems.ScrollCorner.Visible = true
					else
						v530.Gui.Size = UDim2.new(0, 10, 1, 0)
						v531.Gui.Size = UDim2.new(1, 0, 0, 10)
						p519.GuiElems.ScrollCorner.Visible = false
					end
					p519.ViewY = v530.Index
					p519.ViewX = v531.Index
					p519.Frame.Lines.Position = UDim2.new(0, v524, 0, 0)
					p519.Frame.Lines.Size = UDim2.new(1, -v524 + v533.X, 1, v533.Y)
					p519.Frame.LineNumbers.Position = UDim2.new(0, v523, 0, 0)
					p519.Frame.LineNumbers.Size = UDim2.new(0, #v521 * v523, 1, v533.Y)
					p519.Frame.LineNumbers.TextSize = p519.FontSize
				else
					p519:UpdateView()
				end
			end
			function v_u_188.ProcessTextChange(p534)
				local v535 = p534.Lines
				local v536 = 0
				for v537 = 1, #v535 do
					local v538 = #v535[v537]
					if v536 < v538 then
						v536 = v538
					end
				end
				p534.MaxTextCols = v536
				p534:UpdateView()
				p534.Text = table.concat(p534.Lines, "\n")
				p534:MapNewLines()
				p534:PreHighlight()
				p534:Refresh()
			end
			function v_u_188.ConvertText(_, p539, p540)
				if p540 then
					return p539:gsub("\t", "    "):gsub("\t", (" %s%s "):format("\195\141", "\195\141"))
				else
					return p539:gsub((" %s%s "):format("\195\141", "\195\141"), "\t")
				end
			end
			function v_u_188.GetText(p541)
				return p541:ConvertText(table.concat(p541.Lines, "\n"), false)
			end
			function v_u_188.SetText(p542, p543)
				local v544 = p542:ConvertText(p543, true)
				local v545 = p542.Lines
				table.clear(v545)
				local v546 = 1
				for v547 in v544:gmatch("([^\n\r]*)[\n\r]?") do
					v545[v546] = v547
					v546 = v546 + 1
				end
				p542:ProcessTextChange()
			end
			function v_u_188.ClearText(p548)
				local v549 = p548:ConvertText("", true)
				local v550 = p548.Lines
				table.clear(v550)
				local v551 = 1
				for v552 in v549:gmatch("([^\n\r]*)[\n\r]?") do
					v550[v551] = v552
					v551 = v551 + 1
				end
				p548:ProcessTextChange()
			end
			function v_u_188.CompileText(p_u_553)
				return pcall(function()
					-- upvalues: (copy) p_u_553
					local v554 = p_u_553:ConvertText(table.concat(p_u_553.Lines, "\n"), false)
					loadstring(v554)()
				end)
			end
			function v_u_188.ReturnErrors(p_u_555)
				local v557, v558 = pcall(function()
					-- upvalues: (copy) p_u_555
					local v556 = p_u_555:ConvertText(table.concat(p_u_555.Lines, "\n"), false)
					loadstring(v556)()
				end)
				if v557 or not v558 then
					v558 = nil
				end
				return v558
			end
			function v_u_188.GetVersion(_)
				return "8.0"
			end
			function v_u_188.MakeRichTemplates(p559)
				local v560 = math.floor
				local v561 = {}
				for v562, v563 in pairs(p559.Colors) do
					v561[v562] = ("<font color=\"rgb(%s,%s,%s)\">"):format(v560(v563.r * 255), v560(v563.g * 255), (v560(v563.b * 255)))
				end
				p559.RichTemplates = v561
			end
			function v_u_188.ApplyTheme(p564)
				-- upvalues: (ref) v_u_5
				local v565 = v_u_5.Theme.Syntax
				p564.Colors = v565
				p564.Frame.LineNumbers.TextColor3 = v565.Text
				p564.Frame.BackgroundColor3 = v565.Background
			end
			local v_u_566 = {
				["__index"] = v_u_188
			}
			return {
				["new"] = function(p567)
					-- upvalues: (ref) v_u_193, (copy) v_u_208, (ref) v_u_30, (ref) v_u_5, (ref) v_u_18, (copy) v_u_566, (copy) v_u_188
					local v568 = p567 or {}
					if not v_u_193 then
						v_u_208()
					end
					local v_u_569 = v_u_30.ScrollBar.new()
					local v_u_570 = v_u_30.ScrollBar.new(true)
					v_u_570.Gui.Position = UDim2.new(0, 0, 1, -10)
					local v571 = v_u_18({
						["FontFace"] = Font.fromEnum(Enum.Font.Code),
						["FontSize"] = 14,
						["ViewX"] = 0,
						["ViewY"] = 0,
						["Colors"] = v_u_5.Theme.Syntax,
						["ColoredLines"] = {},
						["Lines"] = { "" },
						["LineFrames"] = {},
						["Editable"] = true,
						["Editing"] = false,
						["CursorX"] = 0,
						["CursorY"] = 0,
						["FloatCursorX"] = 0,
						["Text"] = "",
						["PreHighlights"] = {},
						["SelectionRange"] = {
							{ -1, -1 },
							{ -1, -1 }
						},
						["NewLines"] = {},
						["FrameOffsets"] = Vector2.new(0, 0),
						["MaxTextCols"] = 0,
						["ScrollV"] = v_u_569,
						["ScrollH"] = v_u_570
					}, v568)
					local v572 = v_u_566
					local v_u_573 = setmetatable(v571, v572)
					function v_u_188.SetTextMultiplier(p574)
						-- upvalues: (copy) v_u_573
						v_u_573.FontSize = p574
					end
					function v_u_188.GetTextMultiplier()
						-- upvalues: (copy) v_u_573
						return v_u_573.FontSize
					end
					v_u_569.WheelIncrement = 3
					v_u_570.Increment = 2
					v_u_570.WheelIncrement = 7
					v_u_569.Scrolled:Connect(function()
						-- upvalues: (copy) v_u_573, (copy) v_u_569
						v_u_573.ViewY = v_u_569.Index
						v_u_573:Refresh()
					end)
					v_u_570.Scrolled:Connect(function()
						-- upvalues: (copy) v_u_573, (copy) v_u_570
						v_u_573.ViewX = v_u_570.Index
						v_u_573:Refresh()
					end)
					v_u_573:MakeEditorFrame(v_u_573)
					v_u_573:MakeRichTemplates()
					v_u_573:ApplyTheme()
					v_u_569:SetScrollFrame(v_u_573.Frame.Lines)
					v_u_569.Gui.Parent = v_u_573.Frame
					v_u_570.Gui.Parent = v_u_573.Frame
					v_u_573:UpdateView()
					v_u_573:SetText(v571.Text)
					v_u_573.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						-- upvalues: (copy) v_u_573
						v_u_573:UpdateView()
						v_u_573:Refresh()
					end)
					return v_u_573
				end
			}
		end)()
		return v_u_30
	end,
	["b"] = function()
		local v575 = {
			["Services"] = {},
			["OnInitConnections"] = {}
		}
		local v_u_576 = get_hidden_gui or gethui
		local v_u_577 = cloneref or function(...)
			return ...
		end
		local v578 = v575.Services
		setmetatable(v578, {
			["__index"] = function(_, p579)
				-- upvalues: (copy) v_u_577
				return v_u_577((game:GetService(p579)))
			end
		})
		local v_u_580 = v578.CoreGui
		local v_u_581 = nil
		function v575.AddOnInit(p582, p583)
			local v584 = p582.OnInitConnections
			table.insert(v584, p583)
		end
		function v575.NewReference(_, p585)
			-- upvalues: (copy) v_u_577
			return v_u_577(p585)
		end
		function v575.CallOnInitConnections(p586, p587, ...)
			-- upvalues: (ref) v_u_581
			local v588 = p586.OnInitConnections
			v_u_581 = p587
			for _, v589 in next, v588 do
				v589(v_u_581, ...)
			end
		end
		function v575.SetProperties(_, p_u_590, p591)
			for v_u_592, v_u_593 in next, p591 do
				pcall(function()
					-- upvalues: (copy) p_u_590, (copy) v_u_592, (copy) v_u_593
					p_u_590[v_u_592] = v_u_593
				end)
			end
		end
		function v575.NewClass(_, p594, p595)
			p594.__index = p594
			return setmetatable(p595 or {}, p594)
		end
		function v575.CheckConfig(_, p596, p597, p598, p599)
			if p596 then
				for v600, v602 in next, p597 do
					if p596[v600] == nil and not (p599 and table.find(p599, v600)) then
						if p598 then
							local v602 = v602()
						end
						p596[v600] = v602
					end
				end
				return p596
			end
		end
		function v575.ResolveUIParent(_)
			-- upvalues: (ref) v_u_581, (copy) v_u_576, (copy) v_u_580
			local v_u_603 = v_u_581.PlayerGui
			local v604 = v_u_581.Debug
			local v606 = { function()
				-- upvalues: (ref) v_u_576, (ref) v_u_580
				local v605 = v_u_576()
				if v605.Parent ~= v_u_580 then
					return v605
				end
			end, function()
				-- upvalues: (ref) v_u_580
				return v_u_580
			end, function()
				-- upvalues: (copy) v_u_603
				return v_u_603
			end }
			local v_u_607 = v_u_581:CreateInstance("ScreenGui")
			for v608, v609 in next, v606 do
				local v610, v_u_611 = pcall(v609)
				if v610 and (v_u_611 and pcall(function()
						-- upvalues: (copy) v_u_607, (copy) v_u_611
						v_u_607.Parent = v_u_611
					end)) then
					if v604 then
						v_u_581:Warn((("Step: %* was chosen as the parent!: %*"):format(v608, v_u_611)))
					end
					return v_u_611
				end
			end
			v_u_581:Warn("The ReGui container does not have a parent defined")
			return nil
		end
		function v575.GetChildOfClass(_, p612, p613)
			-- upvalues: (ref) v_u_581
			return p612:FindFirstChildOfClass(p613) or v_u_581:CreateInstance(p613, p612)
		end
		function v575.CheckAssetUrl(_, p614)
			if tonumber(p614) then
				return ("rbxassetid://%*"):format(p614)
			else
				return p614
			end
		end
		function v575.SetPadding(p615, p616, p617)
			if p616 then
				p615:SetProperties(p616, {
					["PaddingBottom"] = p617,
					["PaddingLeft"] = p617,
					["PaddingRight"] = p617,
					["PaddingTop"] = p617
				})
			end
		end
		return v575
	end,
	["c"] = function()
		-- upvalues: (ref) v_u_1
		local v_u_618 = v_u_1.load("b")
		local v619 = {
			["DefaultTweenInfo"] = TweenInfo.new(0.08)
		}
		local v_u_620 = v_u_618.Services.TweenService
		function v619.Tween(p621, p622)
			-- upvalues: (copy) v_u_618, (copy) v_u_620
			local v623 = p621.DefaultTweenInfo
			local v_u_624 = p622.Object
			local v625 = p622.NoAnimation
			local v_u_626 = p622.Tweeninfo or v623
			local v627 = p622.EndProperties
			local v628 = p622.StartProperties
			local v629 = p622.Completed
			if v628 then
				v_u_618:SetProperties(v_u_624, v628)
			end
			if not v625 then
				local v630 = nil
				for v631, v632 in next, v627 do
					local v_u_633 = {
						[v631] = v632
					}
					local v634, v635 = pcall(function()
						-- upvalues: (ref) v_u_620, (copy) v_u_624, (copy) v_u_626, (copy) v_u_633
						return v_u_620:Create(v_u_624, v_u_626, v_u_633)
					end)
					if v634 then
						v635:Play()
						v630 = v630 or v635
					else
						v_u_618:SetProperties(v_u_624, v_u_633)
					end
				end
				if v629 then
					if v630 then
						v630.Completed:Connect(v629)
						return v630
					end
					v629()
				end
				return v630
			end
			v_u_618:SetProperties(v_u_624, v627)
			if v629 then
				v629()
			end
		end
		function v619.Animate(p636, p637)
			local v638 = p637.NoAnimation
			local v639 = p637.Objects
			local v640 = p637.Tweeninfo
			local v641 = p637.Completed
			local v642 = nil
			for v643, v644 in next, v639 do
				local v645 = p636:Tween({
					["NoAnimation"] = v638,
					["Object"] = v643,
					["Tweeninfo"] = v640,
					["EndProperties"] = v644
				})
				if not v642 then
					v642 = v645
				end
			end
			if v641 then
				v642.Completed:Connect(v641)
			end
			return v642
		end
		function v619.HeaderCollapseToggle(p646, p647)
			-- upvalues: (copy) v_u_618
			v_u_618:CheckConfig(p647, {
				["Rotations"] = {
					["Open"] = 90,
					["Closed"] = 0
				}
			})
			local v648 = p647.Toggle
			local v649 = p647.NoAnimation
			local v650 = p647.Rotations
			local v651 = p647.Collapsed
			p646:Tween({
				["Tweeninfo"] = p647.Tweeninfo,
				["NoAnimation"] = v649,
				["Object"] = v648,
				["EndProperties"] = {
					["Rotation"] = v651 and v650.Closed or v650.Open
				}
			})
		end
		function v619.HeaderCollapse(p652, p653)
			local v654 = p653.Tweeninfo
			local v_u_655 = p653.Collapsed
			local v656 = p653.ClosedSize
			local v657 = p653.OpenSize
			local v658 = p653.Toggle
			local v_u_659 = p653.Resize
			local v_u_660 = p653.Hide
			local v661 = p653.NoAnimation
			local v_u_662 = p653.NoAutomaticSize
			local v663 = p653.IconRotations
			local v_u_664 = p653.Completed
			if not v_u_662 then
				v_u_659.AutomaticSize = Enum.AutomaticSize.None
			end
			if not v_u_655 then
				v_u_660.Visible = true
			end
			p652:HeaderCollapseToggle({
				["Tweeninfo"] = v654,
				["Collapsed"] = v_u_655,
				["NoAnimation"] = v661,
				["Toggle"] = v658,
				["Rotations"] = v663
			})
			local v665 = {
				["Tweeninfo"] = v654,
				["NoAnimation"] = v661,
				["Object"] = v_u_659,
				["StartProperties"] = {
					["Size"] = v_u_655 and v657 and v657 or v656
				}
			}
			local v666 = {}
			if v_u_655 then
				v657 = v656 or v657
			end
			v666.Size = v657
			v665.EndProperties = v666
			function v665.Completed()
				-- upvalues: (copy) v_u_660, (copy) v_u_655, (copy) v_u_664, (copy) v_u_662, (copy) v_u_659
				v_u_660.Visible = not v_u_655
				if v_u_664 then
					v_u_664()
				end
				if v_u_655 then
					return
				elseif not v_u_662 then
					v_u_659.Size = UDim2.fromScale(1, 0)
					v_u_659.AutomaticSize = Enum.AutomaticSize.Y
				end
			end
			return p652:Tween(v665)
		end
		return v619
	end,
	["d"] = function()
		-- upvalues: (ref) v_u_1
		local v_u_667 = {}
		v_u_667.__index = v_u_667
		local v_u_668 = v_u_1.load("b")
		function v_u_667.Fire(p669, ...)
			local v670 = p669:GetConnections()
			if #v670 > 0 then
				for _, v671 in next, v670 do
					v671(...)
				end
			end
		end
		function v_u_667.GetConnections(p672)
			return p672.Connections
		end
		function v_u_667.Connect(p673, p674)
			local v675 = p673:GetConnections()
			table.insert(v675, p674)
		end
		function v_u_667.DisconnectConnections(p676)
			local v677 = p676:GetConnections()
			table.clear(v677)
		end
		function v_u_667.NewSignal(_)
			-- upvalues: (copy) v_u_668, (copy) v_u_667
			return v_u_668:NewClass(v_u_667, {
				["Connections"] = {}
			})
		end
		return v_u_667
	end,
	["e"] = function()
		return function(p_u_678)
			local v_u_679 = p_u_678:Window({
				["Title"] = "Configuration saving",
				["Size"] = UDim2.fromOffset(300, 200)
			})
			local v680 = v_u_679:Row()
			local v_u_681 = nil
			v680:Button({
				["Text"] = "Dump Ini",
				["Callback"] = function()
					-- upvalues: (copy) p_u_678
					print(p_u_678:DumpIni(true))
				end
			})
			v680:Button({
				["Text"] = "Save Ini",
				["Callback"] = function()
					-- upvalues: (ref) v_u_681, (copy) p_u_678
					v_u_681 = p_u_678:DumpIni(true)
				end
			})
			v680:Button({
				["Text"] = "Load Ini",
				["Callback"] = function()
					-- upvalues: (ref) v_u_681, (copy) p_u_678
					if v_u_681 then
						p_u_678:LoadIni(v_u_681, true)
					else
						warn("No save data!")
					end
				end
			})
			v_u_679:Separator()
			v_u_679:SliderInt({
				["IniFlag"] = "MySlider",
				["Value"] = 5,
				["Minimum"] = 1,
				["Maximum"] = 32
			})
			v_u_679:Checkbox({
				["IniFlag"] = "MyCheckbox",
				["Value"] = true
			})
			v_u_679:InputText({
				["IniFlag"] = "MyInput",
				["Value"] = "Hello world!"
			})
			v_u_679:Keybind({
				["IniFlag"] = "MyKeybind",
				["Label"] = "Keybind (w/ Q & Left-Click blacklist)",
				["KeyBlacklist"] = { Enum.UserInputType.MouseButton1, Enum.KeyCode.Q }
			})
			local v_u_682 = p_u_678:TabsWindow({
				["Title"] = "Tabs window!",
				["Visible"] = false,
				["Size"] = UDim2.fromOffset(300, 200)
			})
			for _, v683 in { "Avocado", "Broccoli", "Cucumber" } do
				v_u_682:CreateTab({
					["Name"] = v683
				}):Label({
					["Text"] = ("This is the %* tab!"):format(v683)
				})
			end
			local v_u_684 = p_u_678.Elements:Label({
				["Parent"] = p_u_678.Container.Windows,
				["Visible"] = false,
				["UiPadding"] = UDim.new(0, 8),
				["CornerRadius"] = UDim.new(0, 2),
				["Position"] = UDim2.fromOffset(10, 10),
				["Size"] = UDim2.fromOffset(250, 50),
				["Border"] = true,
				["BorderThickness"] = 1,
				["BorderColor"] = p_u_678.Accent.Gray,
				["BackgroundTransparency"] = 0.4,
				["BackgroundColor3"] = p_u_678.Accent.Black
			})
			game:GetService("RunService").RenderStepped:Connect(function(p685)
				-- upvalues: (copy) p_u_678, (copy) v_u_684
				local v686 = 1 / p685
				local v687 = math.round(v686)
				local v688 = DateTime.now():FormatLocalTime("dddd h:mm:ss A", "en-us")
				v_u_684.Text = (("ReGui %*\n"):format((p_u_678:GetVersion())) .. ("FPS: %*\n"):format(v687)) .. ("The time is %*"):format(v688)
			end)
			local v_u_689 = p_u_678:Window({
				["Title"] = "Dear ReGui Demo",
				["Size"] = UDim2.new(0, 400, 0, 300),
				["NoScroll"] = true
			}):Center()
			local v690 = v_u_689:MenuBar()
			local v691 = v690:MenuItem({
				["Text"] = "Menu"
			})
			v691:Selectable({
				["Text"] = "New"
			})
			v691:Selectable({
				["Text"] = "Open"
			})
			v691:Selectable({
				["Text"] = "Save"
			})
			v691:Selectable({
				["Text"] = "Save as"
			})
			v691:Selectable({
				["Text"] = "Exit",
				["Callback"] = function()
					-- upvalues: (copy) v_u_689
					v_u_689:Close()
				end
			})
			local v692 = v690:MenuItem({
				["Text"] = "Examples"
			})
			v692:Selectable({
				["Text"] = "Print hello world",
				["Callback"] = function()
					print("Hello world!")
				end
			})
			v692:Selectable({
				["Text"] = "Tabs window",
				["Callback"] = function()
					-- upvalues: (copy) v_u_682
					v_u_682:ToggleVisibility()
				end
			})
			v692:Selectable({
				["Text"] = "Configuration saving",
				["Callback"] = function()
					-- upvalues: (copy) v_u_679
					v_u_679:ToggleVisibility()
				end
			})
			v692:Selectable({
				["Text"] = "Watermark",
				["Callback"] = function()
					-- upvalues: (copy) v_u_684
					v_u_684.Visible = not v_u_684.Visible
				end
			})
			v_u_689:Label({
				["Text"] = ("Dear ReGui says hello! (%*)"):format((p_u_678:GetVersion()))
			})
			local v693 = v_u_689:ScrollingCanvas({
				["Fill"] = true,
				["UiPadding"] = UDim.new(0, 0)
			})
			local v694 = v693:CollapsingHeader({
				["Title"] = "Help"
			})
			v694:Separator({
				["Text"] = "ABOUT THIS DEMO:"
			})
			v694:BulletText({
				["Rows"] = { "Sections below are demonstrating many aspects of the library." }
			})
			v694:Separator({
				["Text"] = "PROGRAMMER GUIDE:"
			})
			v694:BulletText({
				["Rows"] = { "See example FAQ, examples, and documentation at https://depso.gitbook.io/regui" }
			})
			v694:Indent():BulletText({
				["Rows"] = { "See example applications in the /demo folder." }
			})
			local v695 = v693:CollapsingHeader({
				["Title"] = "Configuration"
			})
			local v696 = v695:TreeNode({
				["Title"] = "Backend Flags"
			})
			v696:Checkbox({
				["Label"] = "ReGui:IsMobileDevice",
				["Disabled"] = true,
				["Value"] = p_u_678:IsMobileDevice()
			})
			v696:Checkbox({
				["Label"] = "ReGui:IsConsoleDevice",
				["Disabled"] = true,
				["Value"] = p_u_678:IsConsoleDevice()
			})
			v695:TreeNode({
				["Title"] = "Style"
			}):Combo({
				["Selected"] = "DarkTheme",
				["Label"] = "Colors",
				["Items"] = p_u_678.ThemeConfigs,
				["Callback"] = function(_, p697)
					-- upvalues: (copy) v_u_689
					v_u_689:SetTheme(p697)
				end
			})
			local v698 = v693:CollapsingHeader({
				["Title"] = "Window options"
			}):Table({
				["MaxColumns"] = 3
			}):NextRow()
			for v_u_699, v700 in pairs({
				["NoResize"] = false,
				["NoTitleBar"] = false,
				["NoClose"] = false,
				["NoCollapse"] = false,
				["OpenOnDoubleClick"] = true,
				["NoBringToFrontOnFocus"] = false,
				["NoMove"] = false,
				["NoSelect"] = false,
				["NoScrollBar"] = false,
				["NoBackground"] = false
				}) do
				v698:NextColumn():Checkbox({
					["Value"] = v700,
					["Label"] = v_u_699,
					["Callback"] = function(_, p701)
						-- upvalues: (copy) v_u_689, (copy) v_u_699
						v_u_689:UpdateConfig({
							[v_u_699] = p701
						})
					end
				})
			end
			local v702 = v693:CollapsingHeader({
				["Title"] = "Widgets"
			})
			local v791 = {
				["Basic"] = function(p703)
					-- upvalues: (copy) p_u_678
					p703:Separator({
						["Text"] = "General"
					})
					local v704 = p703:Row()
					local v_u_705 = v704:Label({
						["Text"] = "Thanks for clicking me!",
						["Visible"] = false,
						["LayoutOrder"] = 2
					})
					v704:Button({
						["Callback"] = function()
							-- upvalues: (copy) v_u_705
							v_u_705.Visible = not v_u_705.Visible
						end
					})
					p703:Checkbox()
					local v706 = p703:Row()
					v706:Radiobox({
						["Label"] = "radio a"
					})
					v706:Radiobox({
						["Label"] = "radio b"
					})
					v706:Radiobox({
						["Label"] = "radio c"
					})
					local v707 = p703:Row()
					for v708 = 1, 7 do
						local v709 = v708 / 7
						v707:Button({
							["Text"] = "Click",
							["BackgroundColor3"] = Color3.fromHSV(v709, 0.6, 0.6)
						})
					end
					p_u_678:SetItemTooltip(p703:Button({
						["Text"] = "Tooltip"
					}), function(p710)
						p710:Label({
							["Text"] = "I am a tooltip"
						})
					end)
					p703:Separator({
						["Text"] = "Inputs"
					})
					p703:InputText({
						["Value"] = "Hello world!"
					})
					p703:InputText({
						["Placeholder"] = "Enter text here",
						["Label"] = "Input text (w/ hint)",
						["Value"] = ""
					})
					p703:InputInt({
						["Value"] = 50
					})
					p703:InputInt({
						["Label"] = "Input Int (w/ limit)",
						["Value"] = 5,
						["Maximum"] = 10,
						["Minimum"] = 1
					})
					p703:Separator({
						["Text"] = "Drags"
					})
					p703:DragInt()
					p703:DragInt({
						["Maximum"] = 100,
						["Minimum"] = 0,
						["Label"] = "Drag Int 0..100",
						["Format"] = "%d%%"
					})
					p703:DragFloat({
						["Maximum"] = 1,
						["Minimum"] = 0,
						["Value"] = 0.5
					})
					p703:Separator({
						["Text"] = "Sliders"
					})
					p703:SliderInt({
						["Format"] = "%.d/%s",
						["Value"] = 5,
						["Minimum"] = 1,
						["Maximum"] = 32,
						["ReadOnly"] = false
					}):SetValue(8)
					p703:SliderInt({
						["Label"] = "Slider Int (w/ snap)",
						["Value"] = 1,
						["Minimum"] = 1,
						["Maximum"] = 8,
						["Type"] = "Snap"
					})
					p703:SliderFloat({
						["Label"] = "Slider Float",
						["Minimum"] = 0,
						["Maximum"] = 1,
						["Format"] = "Ratio = %.3f"
					})
					p703:SliderFloat({
						["Label"] = "Slider Angle",
						["Minimum"] = -360,
						["Maximum"] = 360,
						["Format"] = "%.f deg"
					})
					p703:SliderEnum({
						["Items"] = {
							"Fire",
							"Earth",
							"Air",
							"Water"
						},
						["Value"] = 2
					})
					p703:SliderEnum({
						["Items"] = {
							"Fire",
							"Earth",
							"Air",
							"Water"
						},
						["Value"] = 2,
						["Disabled"] = true,
						["Label"] = "Disabled Enum"
					})
					p703:SliderProgress({
						["Label"] = "Progress Slider",
						["Value"] = 8,
						["Minimum"] = 1,
						["Maximum"] = 32
					})
					p703:Separator({
						["Text"] = "Selectors/Pickers"
					})
					p703:InputColor3({
						["Value"] = p_u_678.Accent.Light,
						["Label"] = "Color 1"
					})
					p703:SliderColor3({
						["Value"] = p_u_678.Accent.Light,
						["Label"] = "Color 2"
					})
					p703:InputCFrame({
						["Value"] = CFrame.new(1, 1, 1),
						["Minimum"] = CFrame.new(0, 0, 0),
						["Maximum"] = CFrame.new(200, 100, 50),
						["Label"] = "CFrame 1"
					})
					p703:SliderCFrame({
						["Value"] = CFrame.new(1, 1, 1),
						["Minimum"] = CFrame.new(0, 0, 0),
						["Maximum"] = CFrame.new(200, 100, 50),
						["Label"] = "CFrame 2"
					})
					p703:Combo({
						["Selected"] = 1,
						["Items"] = {
							"AAAA",
							"BBBB",
							"CCCC",
							"DDDD",
							"EEEE",
							"FFFF",
							"GGGG",
							"HHHH",
							"IIIIIII",
							"JJJJ",
							"KKKKKKK"
						}
					})
				end,
				["Tooltips"] = function(p711)
					-- upvalues: (copy) p_u_678
					p711:Separator({
						["Text"] = "General"
					})
					p_u_678:SetItemTooltip(p711:Button({
						["Text"] = "Basic",
						["Size"] = UDim2.fromScale(1, 0)
					}), function(p712)
						p712:Label({
							["Text"] = "I am a tooltip"
						})
					end)
					p_u_678:SetItemTooltip(p711:Button({
						["Text"] = "Fancy",
						["Size"] = UDim2.fromScale(1, 0)
					}), function(p713)
						p713:Label({
							["Text"] = "I am a fancy tooltip"
						})
						p713:Image({
							["Image"] = 18395893036
						})
						local v714 = p713:Label()
						while wait() do
							local v715 = tick()
							v714.Text = ("Sin(time) = %*"):format((math.sin(v715)))
						end
					end)
					local v716 = p711:Button({
						["Text"] = "Double tooltip",
						["Size"] = UDim2.fromScale(1, 0)
					})
					for v_u_717 = 1, 3 do
						p_u_678:SetItemTooltip(v716, function(p718)
							-- upvalues: (copy) v_u_717
							p718:Label({
								["Text"] = ("I am tooltip %*"):format(v_u_717)
							})
						end)
					end
				end,
				["Videos"] = function(p719)
					local v_u_720 = p719:VideoPlayer({
						["Video"] = 5608327482,
						["Looped"] = true,
						["Ratio"] = 1.7777777777777777,
						["RatioAspectType"] = Enum.AspectType.FitWithinMaxSize,
						["RatioAxis"] = Enum.DominantAxis.Width,
						["Size"] = UDim2.fromScale(1, 1)
					})
					v_u_720:Play()
					local v721 = p719:Row({
						["Expanded"] = true
					})
					v721:Button({
						["Text"] = "Pause",
						["Callback"] = function()
							-- upvalues: (copy) v_u_720
							v_u_720:Pause()
						end
					})
					v721:Button({
						["Text"] = "Play",
						["Callback"] = function()
							-- upvalues: (copy) v_u_720
							v_u_720:Play()
						end
					})
					if not v_u_720.IsLoaded then
						v_u_720.Loaded:Wait()
					end
					local v_u_723 = v721:SliderInt({
						["Format"] = "%.f",
						["Value"] = 0,
						["Minimum"] = 0,
						["Maximum"] = v_u_720.TimeLength,
						["Callback"] = function(_, p722)
							-- upvalues: (copy) v_u_720
							v_u_720.TimePosition = p722
						end
					})
					game:GetService("RunService").RenderStepped:Connect(function(_)
						-- upvalues: (copy) v_u_723, (copy) v_u_720
						v_u_723:SetValue(v_u_720.TimePosition)
					end)
				end,
				["Tree Nodes"] = function(p724)
					-- upvalues: (copy) p_u_678
					for v725 = 1, 5 do
						local v726 = p724:TreeNode({
							["Title"] = ("Child %*"):format(v725),
							["Collapsed"] = v725 ~= 1
						}):Row()
						v726:Label({
							["Text"] = "Blah blah"
						})
						v726:SmallButton({
							["Text"] = "Button"
						})
					end
					p724:TreeNode({
						["Title"] = "With icon & NoArrow",
						["NoArrow"] = true,
						["Icon"] = p_u_678.Icons.Image
					})
				end,
				["Collapsing Headers"] = function(p727)
					local v_u_728 = nil
					p727:Checkbox({
						["Value"] = true,
						["Label"] = "Show 2nd header",
						["Callback"] = function(_, p729)
							-- upvalues: (ref) v_u_728
							if v_u_728 then
								v_u_728:SetVisible(p729)
							end
						end
					})
					p727:Checkbox({
						["Value"] = true,
						["Label"] = "2nd has arrow",
						["Callback"] = function(_, p730)
							-- upvalues: (ref) v_u_728
							if v_u_728 then
								v_u_728:SetArrowVisible(p730)
							end
						end
					})
					local v731 = p727:CollapsingHeader({
						["Title"] = "Header"
					})
					for v732 = 1, 5 do
						v731:Label({
							["Text"] = ("Some content %*"):format(v732)
						})
					end
					v_u_728 = p727:CollapsingHeader({
						["Title"] = "Second Header"
					})
					local v733 = v_u_728
					for v734 = 1, 5 do
						v733:Label({
							["Text"] = ("More content %*"):format(v734)
						})
					end
				end,
				["Bullets"] = function(p735)
					p735:BulletText({
						["Rows"] = { "Bullet point 1", "Bullet point 2\nOn multiple lines" }
					})
					p735:TreeNode():BulletText({
						["Rows"] = { "Another bullet point" }
					})
					p735:Bullet():Label({
						["Text"] = "Bullet point 3 (two calls)"
					})
					p735:Bullet():SmallButton()
				end,
				["Text"] = function(p736)
					local v737 = p736:TreeNode({
						["Title"] = "Colorful Text"
					})
					v737:Label({
						["TextColor3"] = Color3.fromRGB(255, 0, 255),
						["Text"] = "Pink",
						["NoTheme"] = true
					})
					v737:Label({
						["TextColor3"] = Color3.fromRGB(255, 255, 0),
						["Text"] = "Yellow",
						["NoTheme"] = true
					})
					v737:Label({
						["TextColor3"] = Color3.fromRGB(59, 59, 59),
						["Text"] = "Disabled",
						["NoTheme"] = true
					})
					local v738 = p736:TreeNode({
						["Title"] = "Word Wrapping"
					})
					v738:Label({
						["Text"] = "This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.",
						["TextWrapped"] = true
					})
					local v_u_739 = nil
					v738:SliderInt({
						["Label"] = "Wrap width",
						["Value"] = 400,
						["Minimum"] = 20,
						["Maximum"] = 600,
						["Callback"] = function(_, p740)
							-- upvalues: (ref) v_u_739
							if v_u_739 then
								v_u_739.Size = UDim2.fromOffset(p740, 0)
							end
						end
					})
					v738:Label({
						["Text"] = "Test paragraph:"
					})
					v_u_739 = v738:Label({
						["Text"] = "The lazy dog is a good dog. This paragraph should fit. Testing a 1 character word. The quick brown fox jumps over the lazy dog.",
						["TextWrapped"] = true,
						["Border"] = true,
						["BorderColor"] = Color3.fromRGB(255, 255, 0),
						["AutomaticSize"] = Enum.AutomaticSize.Y,
						["Size"] = UDim2.fromOffset(400, 0)
					})
				end,
				["Images"] = function(p741)
					-- upvalues: (copy) p_u_678
					p741:Label({
						["TextWrapped"] = true,
						["Text"] = "Below we are displaying the icons (which are the ones builtin to ReGui in this demo). Hover the texture for a zoomed view!"
					})
					p741:Label({
						["TextWrapped"] = true,
						["Text"] = ("There is a total of %* icons in this demo!"):format((p_u_678:GetDictSize(p_u_678.Icons)))
					})
					local v742 = p741:List({
						["Border"] = true
					})
					local v_u_743 = nil
					local v_u_744 = nil
					p_u_678:SetItemTooltip(v742, function(p745)
						-- upvalues: (ref) v_u_743, (ref) v_u_744
						v_u_743 = p745:Label()
						v_u_744 = p745:Image({
							["Size"] = UDim2.fromOffset(50, 50)
						})
					end)
					local v_u_746 = v_u_744
					local v_u_747 = v_u_743
					for v_u_748, v_u_749 in p_u_678.Icons do
						p_u_678:DetectHover(v742:Image({
							["Image"] = v_u_749,
							["Size"] = UDim2.fromOffset(30, 30)
						}), {
							["MouseEnter"] = true,
							["OnInput"] = function()
								-- upvalues: (ref) v_u_747, (copy) v_u_748, (ref) v_u_746, (copy) v_u_749
								v_u_747.Text = v_u_748
								v_u_746.Image = v_u_749
							end
						})
					end
				end,
				["Tabs"] = function(p750)
					local v751 = p750:TreeNode({
						["Title"] = "Basic"
					}):TabSelector()
					for _, v752 in next, { "Avocado", "Broccoli", "Cucumber" } do
						v751:CreateTab({
							["Name"] = v752
						}):Label({
							["Text"] = ("This is the %* tab!\nblah blah blah blah blah"):format(v752)
						})
					end
					local v753 = p750:TreeNode({
						["Title"] = "Advanced & Close Button"
					})
					local v_u_754 = v753:TabSelector()
					for _, v755 in next, {
						"Artichoke",
						"Beetroot",
						"Celery",
						"Daikon"
						} do
						v_u_754:CreateTab({
							["Name"] = v755,
							["Closeable"] = true
						}):Label({
							["Text"] = ("This is the %* tab!\nblah blah blah blah blah"):format(v755)
						})
					end
					v753:Button({
						["Text"] = "Add tab",
						["Callback"] = function()
							-- upvalues: (copy) v_u_754
							v_u_754:CreateTab({
								["Closeable"] = true
							}):Label({
								["Text"] = "I am an odd tab."
							})
						end
					})
				end,
				["Plot widgets"] = function(p756)
					local v_u_757 = p756:PlotHistogram({
						["Points"] = {
							0.6,
							0.1,
							1,
							0.5,
							0.92,
							0.1,
							0.2
						}
					})
					p756:Button({
						["Text"] = "Generate new graph",
						["Callback"] = function()
							-- upvalues: (copy) v_u_757
							local v758 = {}
							for _ = 1, math.random(5, 10) do
								local v759 = math.random
								table.insert(v758, v759(1, 10))
							end
							v_u_757:PlotGraph(v758)
						end
					})
				end,
				["Multi-component Widgets"] = function(p760)
					p760:Separator({
						["Text"] = "2-wide"
					})
					p760:InputInt2({
						["Value"] = { 10, 50 },
						["Minimum"] = { 0, 0 },
						["Maximum"] = { 20, 100 },
						["Callback"] = function(_, p761)
							print("1:", p761[1], "2:", p761[2])
						end
					})
					p760:SliderInt2()
					p760:SliderFloat2()
					p760:DragInt2()
					p760:DragFloat2()
					p760:Separator({
						["Text"] = "3-wide"
					})
					p760:InputInt3()
					p760:SliderInt3()
					p760:SliderFloat3()
					p760:DragInt3()
					p760:DragFloat3()
					p760:Separator({
						["Text"] = "4-wide"
					})
					p760:InputInt4()
					p760:SliderInt4()
					p760:SliderFloat4()
					p760:DragInt4()
					p760:DragFloat4()
				end,
				["Progress Bars"] = function(p762)
					local v_u_763 = p762:ProgressBar({
						["Label"] = "Loading...",
						["Value"] = 80
					})
					spawn(function()
						-- upvalues: (copy) v_u_763
						local v764 = 0
						while wait(0.02) do
							v764 = v764 + 1
							v_u_763:SetPercentage(v764 % 100)
						end
					end)
				end,
				["Picker Widgets"] = function(p765)
					-- upvalues: (copy) p_u_678
					p765:Separator({
						["Text"] = "Color pickers"
					})
					p765:DragColor3({
						["Value"] = p_u_678.Accent.Light
					})
					p765:SliderColor3({
						["Value"] = p_u_678.Accent.Red
					})
					p765:InputColor3({
						["Value"] = p_u_678.Accent.Green
					})
					p765:Separator({
						["Text"] = "CFrame pickers"
					})
					p765:DragCFrame({
						["Value"] = CFrame.new(1, 1, 1),
						["Minimum"] = CFrame.new(0, 0, 0),
						["Maximum"] = CFrame.new(200, 100, 50)
					})
					p765:SliderCFrame()
					p765:InputCFrame()
				end,
				["Code editor"] = function(p766)
					p766:CodeEditor({
						["Text"] = "print(\"Hello from ReGui\'s editor!\")",
						["Editable"] = true
					})
				end,
				["Console"] = function(p767)
					local v_u_768 = p767:TreeNode({
						["Title"] = "Basic"
					}):Console({
						["ReadOnly"] = true,
						["AutoScroll"] = true,
						["MaxLines"] = 50
					})
					local v_u_769 = p767:TreeNode({
						["Title"] = "Advanced & RichText"
					}):Console({
						["ReadOnly"] = true,
						["AutoScroll"] = true,
						["RichText"] = true,
						["MaxLines"] = 50
					})
					p767:TreeNode({
						["Title"] = "Editor"
					}):Console({
						["Value"] = "print(\'Hello world!\')",
						["LineNumbers"] = true
					})
					coroutine.wrap(function()
						-- upvalues: (copy) v_u_769, (copy) v_u_768
						while wait() do
							local v770 = DateTime.now():FormatLocalTime("h:mm:ss A", "en-us")
							v_u_769:AppendText("<font color=\"rgb(240, 40, 10)\">[Random]</font>", math.random())
							v_u_768:AppendText((("[%*] Hello world!"):format(v770)))
						end
					end)()
				end,
				["Combo"] = function(p771)
					p771:Combo({
						["WidthFitPreview"] = true,
						["Label"] = "WidthFitPreview",
						["Selected"] = 1,
						["Items"] = {
							"AAAAAAAAAAAA",
							"BBBBBBBB",
							"CCCCC",
							"DDD"
						}
					})
					p771:Separator({
						["Text"] = "One-liner variants"
					})
					p771:Combo({
						["Label"] = "Combo 1 (array)",
						["Selected"] = 1,
						["Items"] = {
							"AAAA",
							"BBBB",
							"CCCC",
							"DDDD",
							"EEEE",
							"FFFF",
							"GGGG",
							"HHHH",
							"IIIIIII",
							"JJJJ",
							"KKKKKKK"
						}
					})
					local v772 = {
						["Label"] = "Combo 1 (dict)",
						["Selected"] = "AAA",
						["Items"] = {
							["AAA"] = "Apple",
							["BBB"] = "Banana",
							["CCC"] = "Orange"
						},
						["Callback"] = print
					}
					p771:Combo(v772)
					p771:Combo({
						["Label"] = "Combo 2 (function)",
						["Selected"] = 1,
						["GetItems"] = function()
							return { "aaa", "bbb", "ccc" }
						end
					})
				end,
				["Indent"] = function(p773)
					p773:Label({
						["Text"] = "This is not indented"
					})
					local v774 = p773:Indent({
						["Offset"] = 30
					})
					v774:Label({
						["Text"] = "This is indented by 30 pixels"
					})
					v774:Indent({
						["Offset"] = 30
					}):Label({
						["Text"] = "This is indented by 30 more pixels"
					})
				end,
				["Viewport"] = function(p775)
					-- upvalues: (copy) p_u_678
					local v776 = p_u_678:InsertPrefab("R15 Rig")
					local v_u_777 = p775:Viewport({
						["Size"] = UDim2.new(1, 0, 0, 200),
						["Clone"] = true,
						["Model"] = v776
					}).Model
					v_u_777:PivotTo(CFrame.new(0, -2.5, -5))
					game:GetService("RunService").RenderStepped:Connect(function(p778)
						-- upvalues: (copy) v_u_777
						local v779 = CFrame.Angles
						local v780 = 30 * p778
						local v781 = v779(0, math.rad(v780), 0)
						v_u_777:PivotTo(v_u_777:GetPivot() * v781)
					end)
				end,
				["List layout"] = function(p782)
					local v783 = p782:List()
					for v784 = 1, 10 do
						v783:Button({
							["Text"] = ("Resize the window! %*"):format(v784)
						})
					end
				end,
				["Keybinds"] = function(p785)
					-- upvalues: (copy) v_u_689
					local v_u_786 = p785:Checkbox({
						["Value"] = true
					})
					p785:Keybind({
						["Label"] = "Toggle checkbox",
						["IgnoreGameProcessed"] = false,
						["OnKeybindSet"] = function(_, p787)
							warn("[OnKeybindSet] .Value ->", p787)
						end,
						["Callback"] = function(_, p788)
							-- upvalues: (copy) v_u_786
							print(p788)
							v_u_786:Toggle()
						end
					})
					p785:Keybind({
						["Label"] = "Keybind (w/ Q & Left-Click blacklist)",
						["KeyBlacklist"] = { Enum.UserInputType.MouseButton1, Enum.KeyCode.Q }
					})
					p785:Keybind({
						["Label"] = "Toggle UI visibility",
						["Value"] = Enum.KeyCode.E,
						["Callback"] = function()
							-- upvalues: (ref) v_u_689
							v_u_689:ToggleVisibility()
						end
					})
				end,
				["Input"] = function(p789)
					p789:InputText({
						["Label"] = "One Line Text"
					})
					p789:InputTextMultiline({
						["Label"] = "Multiline Text"
					})
					p789:InputInt({
						["Label"] = "Input int"
					})
				end,
				["Text Input"] = function(p790)
					p790:TreeNode({
						["Title"] = "Multiline"
					}):InputTextMultiline({
						["Size"] = UDim2.new(1, 0, 0, 117),
						["Value"] = "/*The Pentium FOOF bug, shorthand for FO OF C7 C8,\r\n    the hexadecimal encoding of one offending instruction,\r\n    more formally, the invalid operand with locked CMPXCHG8B\r\n    instruction bug, is a design flaw in the majority of\r\n    Intel Pentium, Pentium MMX, and Pentium OverDrive\r\n    processors (all in the P5 microarchitecture).#\r\n    */"
					})
				end
			}
			for _, v792 in {
				"Basic",
				"Tooltips",
				"Tree Nodes",
				"Collapsing Headers",
				"Bullets",
				"Text",
				"Images",
				"Videos",
				"Combo",
				"Tabs",
				"Plot widgets",
				"Multi-component Widgets",
				"Progress Bars",
				"Picker Widgets",
				"Code editor",
				"Console",
				"List layout",
				"Indent",
				"Viewport",
				"Keybinds",
				"Input",
				"Text Input"
				} do
				local v793 = v702:TreeNode({
					["Title"] = v792
				})
				local v794 = v791[v792]
				if v794 then
					task.spawn(v794, v793)
				end
			end
			local v795 = v693:CollapsingHeader({
				["Title"] = "Popups & child windows"
			})
			local v_u_796 = v795:TreeNode({
				["Title"] = "Popups"
			})
			local v797 = v_u_796:Row()
			local v_u_798 = v797:Label({
				["Text"] = "<None>",
				["LayoutOrder"] = 2
			})
			v797:Button({
				["Text"] = "Select..",
				["Callback"] = function(p799)
					-- upvalues: (copy) v_u_796, (copy) v_u_798
					local v_u_800 = v_u_796:PopupCanvas({
						["RelativeTo"] = p799,
						["MaxSizeX"] = 200
					})
					v_u_800:Separator({
						["Text"] = "Aquarium"
					})
					for _, v_u_801 in {
						"Bream",
						"Haddock",
						"Mackerel",
						"Pollock",
						"Tilefish"
						} do
						v_u_800:Selectable({
							["Text"] = v_u_801,
							["Callback"] = function(_)
								-- upvalues: (ref) v_u_798, (copy) v_u_801, (copy) v_u_800
								v_u_798.Text = v_u_801
								v_u_800:ClosePopup()
							end
						})
					end
				end
			})
			local v802 = v795:TreeNode({
				["Title"] = "Child windows"
			}):Window({
				["Size"] = UDim2.fromOffset(300, 200),
				["NoMove"] = true,
				["NoClose"] = true,
				["NoCollapse"] = true,
				["NoResize"] = true
			})
			v802:Label({
				["Text"] = "Hello, world!"
			})
			v802:Button({
				["Text"] = "Save"
			})
			v802:InputText({
				["Label"] = "string"
			})
			v802:SliderFloat({
				["Label"] = "float",
				["Minimum"] = 0,
				["Maximum"] = 1
			})
			local v_u_803 = v795:TreeNode({
				["Title"] = "Modals"
			})
			v_u_803:Label({
				["Text"] = "Modal windows are like popups but the user cannot close them by clicking outside.",
				["TextWrapped"] = true
			})
			v_u_803:Button({
				["Text"] = "Delete..",
				["Callback"] = function()
					-- upvalues: (copy) v_u_803
					local v_u_804 = v_u_803:PopupModal({
						["Title"] = "Delete?"
					})
					v_u_804:Label({
						["Text"] = "All those beautiful files will be deleted.\nThis operation cannot be undone!",
						["TextWrapped"] = true
					})
					v_u_804:Separator()
					v_u_804:Checkbox({
						["Value"] = false,
						["Label"] = "Don\'t ask me next time"
					})
					local v805 = v_u_804:Row({
						["Expanded"] = true
					})
					v805:Button({
						["Text"] = "Okay",
						["Callback"] = function()
							-- upvalues: (copy) v_u_804
							v_u_804:ClosePopup()
						end
					})
					v805:Button({
						["Text"] = "Cancel",
						["Callback"] = function()
							-- upvalues: (copy) v_u_804
							v_u_804:ClosePopup()
						end
					})
				end
			})
			v_u_803:Button({
				["Text"] = "Stacked modals..",
				["Callback"] = function()
					-- upvalues: (copy) v_u_803
					local v_u_806 = v_u_803:PopupModal({
						["Title"] = "Stacked 1"
					})
					v_u_806:Label({
						["Text"] = "Hello from Stacked The First\nUsing Theme[\"ModalWindowDimBg\"] behind it.",
						["TextWrapped"] = true
					})
					v_u_806:Combo({
						["Items"] = {
							"aaaa",
							"bbbb",
							"cccc",
							"dddd",
							"eeee"
						}
					})
					v_u_806:DragColor3({
						["Value"] = Color3.fromRGB(102, 178, 0)
					})
					v_u_806:Button({
						["Text"] = "Add another modal..",
						["Callback"] = function()
							-- upvalues: (ref) v_u_803
							local v_u_807 = v_u_803:PopupModal({
								["Title"] = "Stacked 2"
							})
							v_u_807:Label({
								["Text"] = "Hello from Stacked The Second!",
								["TextWrapped"] = true
							})
							v_u_807:DragColor3({
								["Value"] = Color3.fromRGB(102, 178, 0)
							})
							v_u_807:Button({
								["Text"] = "Close",
								["Callback"] = function()
									-- upvalues: (copy) v_u_807
									v_u_807:ClosePopup()
								end
							})
						end
					})
					v_u_806:Button({
						["Text"] = "Close",
						["Callback"] = function()
							-- upvalues: (copy) v_u_806
							v_u_806:ClosePopup()
						end
					})
				end
			})
			local v808 = v693:CollapsingHeader({
				["Title"] = "Tables & Columns"
			})
			local v809 = v808:TreeNode({
				["Title"] = "Basic"
			}):Table()
			for _ = 1, 3 do
				local v810 = v809:Row()
				for v811 = 1, 3 do
					local v812 = v810:Column()
					for v813 = 1, 4 do
						v812:Label({
							["Text"] = ("Row %* Column %*"):format(v813, v811)
						})
					end
				end
			end
			local v814 = v808:TreeNode({
				["Title"] = "Borders, background"
			}):Table({
				["RowBackground"] = true,
				["Border"] = true,
				["MaxColumns"] = 3
			})
			for v815 = 1, 5 do
				local v816 = v814:NextRow()
				for v817 = 1, 3 do
					v816:NextColumn():Label({
						["Text"] = ("Hello %*,%*"):format(v817, v815)
					})
				end
			end
			local v818 = v808:TreeNode({
				["Title"] = "With headers"
			}):Table({
				["Border"] = true,
				["RowBackground"] = true,
				["MaxColumns"] = 3
			})
			local v819 = { "One", "Two", "Three" }
			for v820 = 1, 7 do
				local v821
				if v820 == 1 then
					v821 = v818:HeaderRow()
				else
					v821 = v818:Row()
				end
				for v822, v823 in v819 do
					if v820 == 1 then
						v821:Column():Label({
							["Text"] = v823
						})
					else
						v821:NextColumn():Label({
							["Text"] = ("Hello %*,%*"):format(v822, v820)
						})
					end
				end
			end
		end
	end,
	["f"] = function()
		return {
			["Dot"] = "rbxasset://textures/whiteCircle.png",
			["Arrow"] = "rbxasset://textures/ui/AvatarContextMenu_Arrow.png",
			["Close"] = "rbxasset://textures/loading/cancelButton.png",
			["Checkmark"] = "rbxasset://textures/ui/Lobby/Buttons/nine_slice_button.png",
			["Cat"] = "rbxassetid://16211812161",
			["Script"] = "rbxassetid://11570895459",
			["Settings"] = "rbxassetid://9743465390",
			["Info"] = "rbxassetid://18754976792",
			["Move"] = "rbxassetid://6710235139",
			["Roblox"] = "rbxassetid://7414445494",
			["Warning"] = "rbxassetid://11745872910",
			["Audio"] = "rbxassetid://302250236",
			["Shop"] = "rbxassetid://6473525198",
			["CharacterDance"] = "rbxassetid://11932783331",
			["Pants"] = "rbxassetid://10098755331",
			["Home"] = "rbxassetid://4034483344",
			["Robux"] = "rbxassetid://5986143282",
			["Badge"] = "rbxassetid://16170504068",
			["SpawnLocation"] = "rbxassetid://6400507398",
			["Sword"] = "rbxassetid://7485051715",
			["Clover"] = "rbxassetid://11999300014",
			["Star"] = "rbxassetid://3057073083",
			["Code"] = "rbxassetid://11348555035",
			["Paw"] = "rbxassetid://13001190533",
			["Shield"] = "rbxassetid://7461510428",
			["Shield2"] = "rbxassetid://7169354142",
			["File"] = "rbxassetid://7276823330",
			["Book"] = "rbxassetid://16061686835",
			["Location"] = "rbxassetid://13549782519",
			["Puzzle"] = "rbxassetid://8898417863",
			["Discord"] = "rbxassetid://84828491431270",
			["Premium"] = "rbxassetid://6487178625",
			["Friend"] = "rbxassetid://10885655986",
			["User"] = "rbxassetid://18854794412",
			["Duplicate"] = "rbxassetid://11833749507",
			["ChatBox"] = "rbxassetid://15839118471",
			["ChatBox2"] = "rbxassetid://15839116089",
			["Devices"] = "rbxassetid://4458812712",
			["Weight"] = "rbxassetid://9855685269",
			["Image"] = "rbxassetid://123311808092347",
			["Profile"] = "rbxassetid://13585614795",
			["Admin"] = "rbxassetid://11656483170",
			["PaintBrush"] = "rbxassetid://12111879608",
			["Speed"] = "rbxassetid://12641434961",
			["NoConnection"] = "rbxassetid://9795340967",
			["Connection"] = "rbxassetid://119759670842477",
			["Globe"] = "rbxassetid://18870359747",
			["Box"] = "rbxassetid://140217940575618",
			["Crown"] = "rbxassetid://18826490498",
			["Control"] = "rbxassetid://18979524646",
			["Send"] = "rbxassetid://18940312887",
			["FastForward"] = "rbxassetid://112963221295680",
			["Pause"] = "rbxassetid://109949100737970",
			["Reload"] = "rbxassetid://11570018242",
			["Joystick"] = "rbxassetid://18749336354",
			["Controller"] = "rbxassetid://11894535915",
			["Lock"] = "rbxassetid://17783082088",
			["Calculator"] = "rbxassetid://85861816563977",
			["Sun"] = "rbxassetid://13492317832",
			["Moon"] = "rbxassetid://8498174594",
			["Prohibited"] = "rbxassetid://5248916036",
			["Flag"] = "rbxassetid://251346532",
			["Website"] = "rbxassetid://98455290625865",
			["Telegram"] = "rbxassetid://115860270107061",
			["MusicNote"] = "rbxassetid://18187351229",
			["Music"] = "rbxassetid://253830398",
			["Headphones"] = "rbxassetid://1311321471",
			["Phone"] = "rbxassetid://8411963035",
			["Smartphone"] = "rbxassetid://14040313879",
			["Desktop"] = "rbxassetid://3120635703",
			["Desktop2"] = "rbxassetid://4728059490",
			["Laptop"] = "rbxassetid://4728059725",
			["Server"] = "rbxassetid://9692125126",
			["Wedge"] = "rbxassetid://9086583059",
			["Drill"] = "rbxassetid://11959189471",
			["Character"] = "rbxassetid://13285102351"
		}
	end,
	["g"] = function()
		local v824 = {
			["Light"] = Color3.fromRGB(50, 150, 250),
			["Dark"] = Color3.fromRGB(30, 66, 115),
			["ExtraDark"] = Color3.fromRGB(28, 39, 53),
			["White"] = Color3.fromRGB(240, 240, 240),
			["Gray"] = Color3.fromRGB(172, 171, 175),
			["Black"] = Color3.fromRGB(15, 19, 24),
			["Yellow"] = Color3.fromRGB(230, 180, 0),
			["Orange"] = Color3.fromRGB(230, 150, 0),
			["Green"] = Color3.fromRGB(130, 188, 91),
			["Red"] = Color3.fromRGB(255, 69, 69),
			["ImGui"] = {
				["Light"] = Color3.fromRGB(66, 150, 250),
				["Dark"] = Color3.fromRGB(41, 74, 122),
				["Black"] = Color3.fromRGB(15, 15, 15),
				["Gray"] = Color3.fromRGB(36, 36, 36)
			}
		}
		return v824
	end,
	["h"] = function()
		-- upvalues: (ref) v_u_1
		local v825 = v_u_1.load("g")
		local v826 = {}
		local v827 = {
			["Values"] = {
				["AnimationTweenInfo"] = TweenInfo.new(0.08),
				["TextFont"] = Font.fromEnum(Enum.Font.RobotoMono),
				["TextSize"] = 14,
				["Text"] = v825.White,
				["TextDisabled"] = v825.Gray,
				["ErrorText"] = v825.Red,
				["FrameBg"] = v825.Dark,
				["FrameBgTransparency"] = 0.4,
				["FrameBgActive"] = v825.Light,
				["FrameBgTransparencyActive"] = 0.4,
				["FrameRounding"] = UDim.new(0, 0),
				["SliderGrab"] = v825.Light,
				["ButtonsBg"] = v825.Light,
				["CollapsingHeaderBg"] = v825.Light,
				["CollapsingHeaderText"] = v825.White,
				["CheckMark"] = v825.Light,
				["ResizeGrab"] = v825.Light,
				["HeaderBg"] = v825.Gray,
				["HeaderBgTransparency"] = 0.7,
				["HistogramBar"] = v825.Yellow,
				["ProgressBar"] = v825.Yellow,
				["RegionBg"] = v825.Dark,
				["RegionBgTransparency"] = 0.1,
				["Separator"] = v825.Gray,
				["SeparatorTransparency"] = 0.5,
				["ConsoleLineNumbers"] = v825.White,
				["LabelPaddingTop"] = UDim.new(0, 0),
				["LabelPaddingBottom"] = UDim.new(0, 0),
				["MenuBar"] = v825.ExtraDark,
				["MenuBarTransparency"] = 0.1,
				["PopupCanvas"] = v825.Black,
				["TabTextPaddingTop"] = UDim.new(0, 3),
				["TabTextPaddingBottom"] = UDim.new(0, 8),
				["TabText"] = v825.Gray,
				["TabBg"] = v825.Dark,
				["TabTextActive"] = v825.White,
				["TabBgActive"] = v825.Light,
				["TabsBarBg"] = Color3.fromRGB(36, 36, 36),
				["TabsBarBgTransparency"] = 1,
				["TabPagePadding"] = UDim.new(0, 8),
				["ModalWindowDimBg"] = Color3.fromRGB(230, 230, 230),
				["ModalWindowDimTweenInfo"] = TweenInfo.new(0.2),
				["WindowBg"] = v825.Black,
				["WindowBgTransparency"] = 0.05,
				["Border"] = v825.Gray,
				["BorderTransparency"] = 0.8,
				["BorderTransparencyActive"] = 0.5,
				["Title"] = v825.White,
				["TitleAlign"] = Enum.TextXAlignment.Left,
				["TitleBarBg"] = v825.Black,
				["TitleBarTransparency"] = 0,
				["TitleActive"] = v825.White,
				["TitleBarBgActive"] = v825.Dark,
				["TitleBarTransparencyActive"] = 0.05,
				["TitleBarBgCollapsed"] = Color3.fromRGB(0, 0, 0),
				["TitleBarTransparencyCollapsed"] = 0.6
			}
		}
		v826.DarkTheme = v827
		local v828 = {
			["BaseTheme"] = v826.DarkTheme,
			["Values"] = {
				["Text"] = v825.Black,
				["TextFont"] = Font.fromEnum(Enum.Font.Ubuntu),
				["TextSize"] = 14,
				["FrameBg"] = v825.Gray,
				["FrameBgTransparency"] = 0.4,
				["FrameBgActive"] = v825.Light,
				["FrameBgTransparencyActive"] = 0.6,
				["SliderGrab"] = v825.Light,
				["ButtonsBg"] = v825.Light,
				["CollapsingHeaderText"] = v825.Black,
				["Separator"] = v825.Black,
				["ConsoleLineNumbers"] = v825.Yellow,
				["MenuBar"] = Color3.fromRGB(219, 219, 219),
				["PopupCanvas"] = v825.White,
				["TabText"] = v825.Black,
				["TabTextActive"] = v825.Black,
				["WindowBg"] = v825.White,
				["Border"] = v825.Gray,
				["ResizeGrab"] = v825.Gray,
				["Title"] = v825.Black,
				["TitleAlign"] = Enum.TextXAlignment.Center,
				["TitleBarBg"] = v825.Gray,
				["TitleActive"] = v825.Black,
				["TitleBarBgActive"] = Color3.fromRGB(186, 186, 186),
				["TitleBarBgCollapsed"] = v825.Gray
			}
		}
		v826.LightTheme = v828
		local v829 = {
			["BaseTheme"] = v826.DarkTheme,
			["Values"] = {
				["AnimationTweenInfo"] = TweenInfo.new(0),
				["Text"] = Color3.fromRGB(255, 255, 255),
				["FrameBg"] = v825.ImGui.Dark,
				["FrameBgTransparency"] = 0.4,
				["FrameBgActive"] = v825.ImGui.Light,
				["FrameBgTransparencyActive"] = 0.5,
				["FrameRounding"] = UDim.new(0, 0),
				["ButtonsBg"] = v825.ImGui.Light,
				["CollapsingHeaderBg"] = v825.ImGui.Light,
				["CollapsingHeaderText"] = v825.White,
				["CheckMark"] = v825.ImGui.Light,
				["ResizeGrab"] = v825.ImGui.Light,
				["MenuBar"] = v825.ImGui.Gray,
				["MenuBarTransparency"] = 0,
				["PopupCanvas"] = v825.ImGui.Black,
				["TabText"] = v825.Gray,
				["TabBg"] = v825.ImGui.Dark,
				["TabTextActive"] = v825.White,
				["TabBgActive"] = v825.ImGui.Light,
				["WindowBg"] = v825.ImGui.Black,
				["WindowBgTransparency"] = 0.05,
				["Border"] = v825.Gray,
				["BorderTransparency"] = 0.7,
				["BorderTransparencyActive"] = 0.4,
				["Title"] = v825.White,
				["TitleBarBg"] = v825.ImGui.Black,
				["TitleBarTransparency"] = 0,
				["TitleBarBgActive"] = v825.ImGui.Dark,
				["TitleBarTransparencyActive"] = 0
			}
		}
		v826.ImGui = v829
		return v826
	end,
	["i"] = function()
		-- upvalues: (ref) v_u_1
		local v_u_830 = v_u_1.load("b")
		local v_u_831 = nil
		v_u_830:AddOnInit(function(p832)
			-- upvalues: (ref) v_u_831
			v_u_831 = p832
		end)
		return {
			{
				["Properties"] = { "Center" },
				["Callback"] = function(_, p833, p834)
					-- upvalues: (copy) v_u_830
					local v835 = p833.Position
					v_u_830:SetProperties(p833, {
						["Position"] = UDim2.new(p834:find("X") and 0.5 or v835.X.Scale, v835.X.Offset, p834:find("Y") and 0.5 or v835.Y.Scale, v835.Y.Offset),
						["AnchorPoint"] = Vector2.new(p834:find("X") and 0.5 or 0, p834:find("Y") and 0.5 or 0)
					})
				end
			},
			{
				["Properties"] = { "ElementStyle" },
				["Callback"] = function(_, p836, p837)
					-- upvalues: (ref) v_u_831
					v_u_831:ApplyStyle(p836, p837)
				end
			},
			{
				["Properties"] = { "ColorTag" },
				["Callback"] = function(p838, p839, p840)
					-- upvalues: (ref) v_u_831
					local v841 = p838.Class
					local v842 = p838.WindowClass
					local v843 = v841.NoAutoTheme
					if v842 then
						if not v843 then
							v_u_831:UpdateColors({
								["Object"] = p839,
								["Tag"] = p840,
								["NoAnimation"] = true,
								["Theme"] = v842.Theme
							})
						end
					else
						return
					end
				end
			},
			{
				["Properties"] = { "Animation" },
				["Callback"] = function(p844, p845, p846)
					-- upvalues: (ref) v_u_831
					if not p844.Class.NoAnimation then
						v_u_831:SetAnimation(p845, p846)
					end
				end
			},
			{
				["Properties"] = { "Image" },
				["Callback"] = function(p847, p848, p849)
					-- upvalues: (copy) v_u_830, (ref) v_u_831
					local v850 = p847.WindowClass
					p848.Image = v_u_830:CheckAssetUrl(p849)
					v_u_831:DynamicImageTag(p848, p849, v850)
				end
			},
			{
				["Properties"] = {
					"Icon",
					"IconSize",
					"IconRotation",
					"IconPadding"
				},
				["Callback"] = function(p851, p852, _)
					-- upvalues: (ref) v_u_831, (copy) v_u_830
					local v853 = p852:FindFirstChild("Icon", true)
					if v853 then
						local v854 = p851.Class
						v_u_830:CheckConfig(v854, {
							["Icon"] = "",
							["IconSize"] = UDim2.fromScale(1, 1),
							["IconRotation"] = 0,
							["IconPadding"] = UDim2.new(0, 2)
						})
						v_u_830:SetPadding(v853.Parent:FindFirstChild("UIPadding"), v854.IconPadding)
						local v855 = v_u_830:CheckAssetUrl(v854.Icon)
						v_u_831:DynamicImageTag(v853, v855, p851.WindowClass)
						v_u_830:SetProperties(v853, {
							["Visible"] = v853 ~= "",
							["Image"] = v_u_830:CheckAssetUrl(v855),
							["Size"] = v854.IconSize,
							["Rotation"] = v854.IconRotation
						})
					else
						v_u_831:Warn("No icon for", p852)
					end
				end
			},
			{
				["Properties"] = { "BorderThickness", "Border", "BorderColor" },
				["Callback"] = function(p856, p857, _)
					-- upvalues: (copy) v_u_830
					local v858 = p856.Class
					local v859 = v858.Border == true
					v_u_830:CheckConfig(v858, {
						["BorderTransparency"] = p856:GetThemeKey("BorderTransparencyActive"),
						["BorderColor"] = p856:GetThemeKey("Border"),
						["BorderThickness"] = 1,
						["BorderStrokeMode"] = Enum.ApplyStrokeMode.Border
					})
					v_u_830:SetProperties(v_u_830:GetChildOfClass(p857, "UIStroke"), {
						["Transparency"] = v858.BorderTransparency,
						["Thickness"] = v858.BorderThickness,
						["Color"] = v858.BorderColor,
						["ApplyStrokeMode"] = v858.BorderStrokeMode,
						["Enabled"] = v859
					})
				end
			},
			{
				["Properties"] = { "Ratio" },
				["Callback"] = function(p860, p861, _)
					-- upvalues: (copy) v_u_830
					local v862 = p860.Class
					v_u_830:CheckConfig(v862, {
						["Ratio"] = 1.3333333333333333,
						["RatioAxis"] = Enum.DominantAxis.Height,
						["RatioAspectType"] = Enum.AspectType.ScaleWithParentSize
					})
					local v863 = v862.Ratio
					local v864 = {
						["DominantAxis"] = v862.RatioAxis,
						["AspectType"] = v862.RatioAspectType,
						["AspectRatio"] = v863
					}
					v_u_830:SetProperties(v_u_830:GetChildOfClass(p861, "UIAspectRatioConstraint"), v864)
				end
			},
			{
				["Properties"] = { "FlexMode" },
				["Callback"] = function(_, p865, p866)
					-- upvalues: (copy) v_u_830
					v_u_830:GetChildOfClass(p865, "UIFlexItem").FlexMode = p866
				end
			},
			{
				["Properties"] = { "CornerRadius" },
				["Callback"] = function(_, p867, p868)
					-- upvalues: (copy) v_u_830
					v_u_830:GetChildOfClass(p867, "UICorner").CornerRadius = p868
				end
			},
			{
				["Properties"] = { "Fill" },
				["Callback"] = function(p869, p870, p871)
					-- upvalues: (copy) v_u_830
					if p871 == true then
						local v872 = p869.Class
						v_u_830:CheckConfig(v872, {
							["Size"] = UDim2.fromScale(1, 1),
							["UIFlexMode"] = Enum.UIFlexMode.Fill,
							["AutomaticSize"] = Enum.AutomaticSize.None
						})
						v_u_830:GetChildOfClass(p870, "UIFlexItem").FlexMode = v872.UIFlexMode
						p870.Size = v872.Size
						p870.AutomaticSize = v872.AutomaticSize
					end
				end
			},
			{
				["Properties"] = { "Label" },
				["Callback"] = function(p873, p874, p875)
					local v876 = p873.Class
					local v_u_877 = p874:FindFirstChild("Label")
					if v_u_877 then
						v_u_877.Text = tostring(p875)
						function v876.SetLabel(p878, p879)
							-- upvalues: (copy) v_u_877
							v_u_877.Text = p879
							return p878
						end
					end
				end
			},
			{
				["Properties"] = { "NoGradient" },
				["WindowProperties"] = { "NoGradients" },
				["Callback"] = function(_, p880, p881)
					local v882 = p880:FindFirstChildOfClass("UIGradient")
					if v882 then
						v882.Enabled = p881
					end
				end
			},
			{
				["Properties"] = {
					"UiPadding",
					"PaddingBottom",
					"PaddingTop",
					"PaddingRight",
					"PaddingTop"
				},
				["Callback"] = function(p883, p884, p885)
					-- upvalues: (copy) v_u_830
					local v886 = p885 or 0
					if typeof(v886) == "number" then
						v886 = UDim.new(0, v886)
					end
					local v887 = p883.Class
					if v887.UiPadding then
						v_u_830:CheckConfig(v887, {
							["PaddingBottom"] = v886,
							["PaddingLeft"] = v886,
							["PaddingRight"] = v886,
							["PaddingTop"] = v886
						})
					end
					v_u_830:SetProperties(v_u_830:GetChildOfClass(p884, "UIPadding"), {
						["PaddingBottom"] = v887.PaddingBottom,
						["PaddingLeft"] = v887.PaddingLeft,
						["PaddingRight"] = v887.PaddingRight,
						["PaddingTop"] = v887.PaddingTop
					})
				end
			},
			{
				["Properties"] = { "Callback" },
				["Callback"] = function(p888, p_u_889)
					local v890 = p888.Class
					function v890.SetCallback(p891, p892)
						p891.Callback = p892
						return p891
					end
					function v890.FireCallback(p893, _)
						-- upvalues: (copy) p_u_889
						p893.Callback(p_u_889)
						return p893
					end
				end
			},
			{
				["Properties"] = { "Value" },
				["Callback"] = function(p894, _)
					-- upvalues: (copy) v_u_830
					local v_u_895 = p894.Class
					v_u_830:CheckConfig(v_u_895, {
						["GetValue"] = function(_)
							-- upvalues: (copy) v_u_895
							return v_u_895.Value
						end
					})
				end
			}
		}
	end,
	["j"] = function()
		local v896 = {}
		local v897 = {
			["MenuBar"] = {
				["BackgroundColor3"] = "MenuBar",
				["BackgroundTransparency"] = "MenuBarTransparency"
			},
			["FrameRounding"] = {
				["CornerRadius"] = "FrameRounding"
			},
			["PopupCanvas"] = {
				["BackgroundColor3"] = "PopupCanvas"
			},
			["ModalWindowDim"] = {
				["BackgroundColor3"] = "ModalWindowDimBg"
			},
			["Selectable"] = "Button",
			["MenuButton"] = "Button",
			["Separator"] = {
				["BackgroundColor3"] = "Separator",
				["BackgroundTransparency"] = "SeparatorTransparency"
			},
			["Region"] = {
				["BackgroundColor3"] = "RegionBg",
				["BackgroundTransparency"] = "RegionBgTransparency"
			},
			["Label"] = {
				["TextColor3"] = "Text",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["ImageFollowsText"] = {
				["ImageColor3"] = "Text"
			},
			["ConsoleLineNumbers"] = {
				["TextColor3"] = "ConsoleLineNumbers",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["ConsoleText"] = "Label",
			["LabelDisabled"] = {
				["TextColor3"] = "TextDisabled",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["Plot"] = {
				["BackgroundColor3"] = "HistogramBar"
			},
			["Header"] = {
				["BackgroundColor3"] = "HeaderBg",
				["BackgroundTransparency"] = "HeaderBgTransparency"
			},
			["WindowTitle"] = {
				["TextXAlignment"] = "TitleAlign",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["TitleBar"] = {
				["BackgroundColor3"] = "TitleBarBgActive"
			},
			["Window"] = {
				["BackgroundColor3"] = "WindowBg",
				["BackgroundTransparency"] = "WindowBgTransparency"
			},
			["TitleBarBgCollapsed"] = {
				["BackgroundColor3"] = "TitleBarBgCollapsed",
				["BackgroundTransparency"] = "TitleBarTransparencyCollapsed"
			},
			["TitleBarBgActive"] = {
				["BackgroundColor3"] = "TitleBarBgActive",
				["BackgroundTransparency"] = "TitleBarTransparencyActive"
			},
			["TitleBarBg"] = {
				["BackgroundColor3"] = "TitleBarBg",
				["BackgroundTransparency"] = "TitleBarTransparency"
			},
			["TabsBar"] = {
				["BackgroundColor3"] = "TabsBarBg",
				["BackgroundTransparency"] = "TabsBarBgTransparency"
			},
			["Border"] = {
				["Color"] = "Border",
				["Transparency"] = "BorderTransparency"
			},
			["ResizeGrab"] = {
				["TextColor3"] = "ResizeGrab"
			},
			["BorderActive"] = {
				["Transparency"] = "BorderTransparencyActive"
			},
			["Frame"] = {
				["BackgroundColor3"] = "FrameBg",
				["BackgroundTransparency"] = "FrameBgTransparency",
				["TextColor3"] = "Text",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["FrameActive"] = {
				["BackgroundColor3"] = "FrameBgActive",
				["BackgroundTransparency"] = "FrameBgTransparencyActive"
			},
			["SliderGrab"] = {
				["BackgroundColor3"] = "SliderGrab"
			},
			["Button"] = {
				["BackgroundColor3"] = "ButtonsBg",
				["TextColor3"] = "Text",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			},
			["CollapsingHeader"] = {
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize",
				["TextColor3"] = "CollapsingHeaderText",
				["BackgroundColor3"] = "CollapsingHeaderBg"
			},
			["Checkbox"] = {
				["BackgroundColor3"] = "FrameBg"
			},
			["CheckMark"] = {
				["ImageColor3"] = "CheckMark",
				["BackgroundColor3"] = "CheckMark"
			},
			["RadioButton"] = {
				["BackgroundColor3"] = "ButtonsBg",
				["TextColor3"] = "Text",
				["FontFace"] = "TextFont",
				["TextSize"] = "TextSize"
			}
		}
		v896.Coloring = v897
		local v898 = {
			["RadioButton"] = {
				["Animation"] = "RadioButtons",
				["CornerRadius"] = UDim.new(1, 0)
			},
			["Button"] = {
				["Animation"] = "Buttons"
			},
			["CollapsingHeader"] = {
				["Animation"] = "Buttons"
			},
			["TreeNode"] = {
				["Animation"] = "TransparentButtons"
			},
			["TransparentButton"] = {
				["Animation"] = "TransparentButtons"
			}
		}
		v896.Styles = v898
		local v899 = {}
		local v900 = {}
		local v901 = {
			["MouseEnter"] = {
				["Visible"] = true
			},
			["MouseLeave"] = {
				["Visible"] = false
			}
		}
		v900.Connections = v901
		v900.Init = "MouseLeave"
		v899.Invisible = v900
		local v902 = {}
		local v903 = {
			["MouseEnter"] = {
				["BackgroundTransparency"] = 0.3
			},
			["MouseLeave"] = {
				["BackgroundTransparency"] = 0.7
			}
		}
		v902.Connections = v903
		v902.Init = "MouseLeave"
		v899.Buttons = v902
		local v904 = {}
		local v905 = {
			["MouseEnter"] = {
				["TextTransparency"] = 0.3
			},
			["MouseLeave"] = {
				["TextTransparency"] = 0.7
			}
		}
		v904.Connections = v905
		v904.Init = "MouseLeave"
		v899.TextButtons = v904
		local v906 = {}
		local v907 = {
			["MouseEnter"] = {
				["BackgroundTransparency"] = 0.3
			},
			["MouseLeave"] = {
				["BackgroundTransparency"] = 1
			}
		}
		v906.Connections = v907
		v906.Init = "MouseLeave"
		v899.TransparentButtons = v906
		local v908 = {}
		local v909 = {
			["MouseEnter"] = {
				["BackgroundTransparency"] = 0.5
			},
			["MouseLeave"] = {
				["BackgroundTransparency"] = 1
			}
		}
		v908.Connections = v909
		v908.Init = "MouseLeave"
		v899.RadioButtons = v908
		local v910 = {}
		local v911 = {
			["MouseEnter"] = {
				["BackgroundTransparency"] = 0
			},
			["MouseLeave"] = {
				["BackgroundTransparency"] = 0.5
			}
		}
		v910.Connections = v911
		v910.Init = "MouseLeave"
		v899.Inputs = v910
		local v912 = {}
		local v913 = {
			["MouseEnter"] = {
				["BackgroundTransparency"] = 0.3
			},
			["MouseLeave"] = {
				["BackgroundTransparency"] = 0
			}
		}
		v912.Connections = v913
		v912.Init = "MouseLeave"
		v899.Plots = v912
		local v914 = {}
		local v915 = {
			["Selected"] = {
				["Transparency"] = 0,
				["Thickness"] = 1
			},
			["Deselected"] = {
				["Transparency"] = 0.7,
				["Thickness"] = 1
			}
		}
		v914.Connections = v915
		v914.Init = "Selected"
		v899.Border = v914
		v896.Animations = v899
		return v896
	end
}
local v_u_916 = {
	["Version"] = "1.4.7",
	["Author"] = "Depso",
	["License"] = "MIT",
	["Repository"] = "https://github.com/depthso/Dear-ReGui/",
	["Debug"] = false,
	["PrefabsId"] = 71968920594655,
	["DefaultTitle"] = "ReGui",
	["ContainerName"] = "ReGui",
	["DoubleClickThreshold"] = 0.3,
	["TooltipOffset"] = 15,
	["IniToSave"] = { "Value" },
	["ClassIgnored"] = { "Visible", "Text" },
	["Container"] = nil,
	["Prefabs"] = nil,
	["FocusedWindow"] = nil,
	["HasTouchScreen"] = false,
	["Services"] = nil,
	["Elements"] = {},
	["_FlagCache"] = {},
	["_ErrorCache"] = {},
	["Windows"] = {},
	["ActiveTooltips"] = {},
	["IniSettings"] = {},
	["AnimationConnections"] = {}
}
local v_u_917 = v_u_1.load("a")
local v_u_918 = v_u_1.load("b")
local v_u_919 = v_u_1.load("c")
local v_u_920 = v_u_1.load("d")
v_u_916.DemoWindow = v_u_1.load("e")
v_u_916.Services = v_u_918.Services
v_u_916.Animation = v_u_919
v_u_916.Icons = v_u_1.load("f")
v_u_916.Accent = v_u_1.load("g")
v_u_916.ThemeConfigs = v_u_1.load("h")
v_u_916.ElementFlags = v_u_1.load("i")
local v921 = v_u_1.load("j")
v_u_916.ElementColors = v921.Coloring
v_u_916.Animations = v921.Animations
v_u_916.Styles = v921.Styles
v_u_918:CallOnInitConnections(v_u_916)
v_u_916.DynamicImages = {
	[v_u_916.Icons.Arrow] = "ImageFollowsText",
	[v_u_916.Icons.Close] = "ImageFollowsText",
	[v_u_916.Icons.Dot] = "ImageFollowsText"
}
local v922 = v_u_916.Services
local v_u_923 = v922.HttpService
local v924 = v922.Players
local v_u_925 = v922.UserInputService
local v_u_926 = v922.RunService
local v_u_927 = v922.InsertService
local v928 = v_u_918:NewReference(v924.LocalPlayer)
v_u_916.PlayerGui = v_u_918:NewReference(v928.PlayerGui)
v_u_916.Mouse = v_u_918:NewReference(v928:GetMouse())
local function v_u_929() end
function GetAndRemove(p930, p931)
	local v932 = p931[p930]
	if v932 then
		p931[p930] = nil
	end
	return v932
end
function MoveTableItem(p933, p934, p935)
	local v936 = table.find(p933, p934)
	if v936 then
		local v937 = table.remove(p933, v936)
		table.insert(p933, p935, v937)
	end
end
function Merge(p938, p939)
	for v940, v941 in next, p939 do
		p938[v940] = v941
	end
end
function Copy(p942, p943)
	local v944 = table.clone(p942)
	if p943 then
		Merge(v944, p943)
	end
	return v944
end
function v_u_916.Warn(_, ...)
	warn("[ReGui]::", ...)
end
function v_u_916.Error(_, ...)
	-- upvalues: (copy) v_u_916
	local v945 = ("\n[ReGui]:: %*"):format((v_u_916:Concat({ ... }, " ")))
	coroutine.wrap(error)(v945)
end
function v_u_916.IsDoubleClick(p946, p947)
	return p947 < p946.DoubleClickThreshold
end
function v_u_916.StyleContainers(p948)
	local v949 = p948.Container
	p948:SetProperties(v949.Windows, {
		["OnTopOfCoreBlur"] = true
	})
	p948:SetProperties(v949.Overlays, {
		["OnTopOfCoreBlur"] = true
	})
end
function v_u_916.Init(p_u_950, p951)
	-- upvalues: (copy) v_u_918, (copy) v_u_925, (copy) v_u_916, (copy) v_u_926
	local v952 = p951 or {}
	if not p_u_950.Initialised then
		Merge(p_u_950, v952)
		Merge(p_u_950, {
			["Initialised"] = true,
			["HasGamepad"] = p_u_950:IsConsoleDevice(),
			["HasTouchScreen"] = p_u_950:IsMobileDevice()
		})
		p_u_950:CheckConfig(p_u_950, {
			["ContainerParent"] = function()
				-- upvalues: (ref) v_u_918
				return v_u_918:ResolveUIParent()
			end,
			["Prefabs"] = function()
				-- upvalues: (copy) p_u_950
				return p_u_950:LoadPrefabs()
			end
		}, true)
		p_u_950:CheckConfig(p_u_950, {
			["Container"] = function()
				-- upvalues: (copy) p_u_950
				return p_u_950:InsertPrefab("Container", {
					["Parent"] = p_u_950.ContainerParent,
					["Name"] = p_u_950.ContainerName
				})
			end
		}, true)
		local v953 = p_u_950.Container
		local v_u_954 = p_u_950.TooltipOffset
		local v_u_955 = p_u_950.ActiveTooltips
		local v_u_956 = v953.Overlays
		local v_u_957 = 0
		p_u_950:StyleContainers()
		p_u_950.TooltipsContainer = p_u_950.Elements:Overlay({
			["Parent"] = v_u_956
		})
		v_u_925.InputBegan:Connect(function(p958)
			-- upvalues: (copy) p_u_950, (ref) v_u_957
			if p_u_950:IsMouseEvent(p958, true) then
				local v959 = tick()
				v_u_957 = p_u_950:IsDoubleClick(v959 - v_u_957) and 0 or v959
				p_u_950:UpdateWindowFocuses()
			end
		end)
		local function v965()
			-- upvalues: (copy) p_u_950, (copy) v_u_955, (ref) v_u_916, (copy) v_u_956, (copy) v_u_954
			local v960 = p_u_950.TooltipsContainer
			local v961 = #v_u_955 > 0
			v960.Visible = v961
			if v961 then
				local v962, v963 = v_u_916:GetMouseLocation()
				local v964 = v_u_956.AbsolutePosition
				v960.Position = UDim2.fromOffset(v962 - v964.X + v_u_954, v963 - v964.Y + v_u_954)
			end
		end
		v_u_926.RenderStepped:Connect(v965)
	end
end
function v_u_916.CheckImportState(p966)
	-- upvalues: (copy) v_u_918, (copy) v_u_927
	if not p966.Initialised then
		local v_u_967 = v_u_918:CheckAssetUrl(p966.PrefabsId)
		local v968, v969 = pcall(function()
			-- upvalues: (ref) v_u_918, (ref) v_u_927, (copy) v_u_967
			return v_u_918:NewReference(v_u_927:LoadLocalAsset(v_u_967))
		end)
		p966:Init({
			["Prefabs"] = v968 and v969 and v969 or nil
		})
	end
end
function v_u_916.GetVersion(p970)
	return p970.Version
end
function v_u_916.IsMobileDevice(_)
	-- upvalues: (copy) v_u_925
	return v_u_925.TouchEnabled
end
function v_u_916.IsConsoleDevice(_)
	-- upvalues: (copy) v_u_925
	return v_u_925.GamepadEnabled
end
function v_u_916.GetScreenSize(_)
	return workspace.CurrentCamera.ViewportSize
end
function v_u_916.LoadPrefabs(p971)
	local v972 = p971.PlayerGui
	return script:WaitForChild("ReGui-Prefabs", 2) or (v972:WaitForChild("ReGui-Prefabs", 2) or nil)
end
function v_u_916.CheckConfig(_, p973, p974, p975, p976)
	-- upvalues: (copy) v_u_918
	return v_u_918:CheckConfig(p973, p974, p975, p976)
end
function v_u_916.CreateInstance(p977, p978, p979, p980)
	local v981 = Instance.new(p978, p979)
	if p980 then
		if not p980.UsePropertiesList then
			p977:SetProperties(v981, p980)
			return v981
		end
		p977:ApplyFlags({
			["Object"] = v981,
			["Class"] = p980
		})
	end
	return v981
end
function v_u_916.ConnectMouseEvent(p982, p983, p984)
	-- upvalues: (copy) v_u_916
	local v_u_985 = p984.Callback
	local v_u_986 = p984.DoubleClick
	local v987 = p984.OnlyMouseHovering
	local v_u_988 = 0
	local v_u_989
	if v987 then
		v_u_989 = p982:DetectHover(v987)
	else
		v_u_989 = nil
	end
	p983.Activated:Connect(function(...)
		-- upvalues: (ref) v_u_988, (ref) v_u_989, (copy) v_u_986, (ref) v_u_916, (copy) v_u_985
		local v990 = tick()
		local v991 = v990 - v_u_988
		if not v_u_989 or v_u_989.Hovering then
			if v_u_986 then
				if not v_u_916:IsDoubleClick(v991) then
					v_u_988 = v990
					return
				end
				v_u_988 = 0
			end
			v_u_985(...)
		end
	end)
end
function v_u_916.GetAnimation(p992, p993)
	return p993 and p992.Animation or TweenInfo.new(0)
end
function v_u_916.DynamicImageTag(p994, p995, p996, p997)
	local v998 = p994.DynamicImages[p996]
	if v998 then
		if p997 then
			p997:TagElements({
				[p995] = v998
			})
		end
	else
		return
	end
end
function v_u_916.GetDictSize(_, p999)
	local v1000 = 0
	for _, _ in p999 do
		v1000 = v1000 + 1
	end
	return v1000
end
function v_u_916.RemoveAnimations(p1001, p1002)
	local v1003 = p1001:GetAnimationData(p1002).Connections
	for _, v1004 in next, v1003 do
		v1004:Disconnect()
	end
end
function v_u_916.GetAnimationData(p1005, p1006)
	local v1007 = p1005.AnimationConnections
	local v1008 = v1007[p1006]
	if v1008 then
		return v1008
	end
	local v1009 = {
		["Connections"] = {}
	}
	v1007[p1006] = v1009
	return v1009
end
function v_u_916.AddAnimationSignal(p1010, p1011, p1012)
	local v1013 = p1010:GetAnimationData(p1011).Connections
	table.insert(v1013, p1012)
end
function v_u_916.SetAnimationsEnabled(p1014, p1015)
	p1014.NoAnimations = not p1015
end
function v_u_916.SetAnimation(p_u_1016, p_u_1017, p1018, p1019)
	-- upvalues: (copy) v_u_919
	local v1020 = p1019 or p_u_1017
	local v1021 = p_u_1016.Animations
	local v1022 = p_u_1016.HasTouchScreen
	local v1023
	if typeof(p1018) == "table" then
		v1023 = p1018
	else
		v1023 = v1021[p1018]
	end
	local v1024 = ("No animation data for Class %*!"):format(p1018)
	assert(v1023, v1024)
	p_u_1016:RemoveAnimations(v1020)
	local v1025 = v1023.Init
	local v1026 = v1023.Connections
	local v_u_1027 = v1023.Tweeninfo
	local v_u_1028 = v1023.NoAnimation
	local v_u_1029 = p_u_1016:GetAnimationData(p_u_1017)
	local v1030 = v_u_1029.State
	local v_u_1031 = true
	local v_u_1032 = {}
	local v1033 = {}
	local v_u_1034 = nil
	local v_u_1035 = nil
	function v1033.Reset(_, p1036)
		-- upvalues: (ref) v_u_1034
		if v_u_1034 then
			v_u_1034(p1036)
		end
	end
	function v1033.FireSignal(_, p1037, p1038)
		-- upvalues: (copy) v_u_1032
		v_u_1032[p1037](p1038)
	end
	function v1033.Refresh(_, p1039)
		-- upvalues: (ref) v_u_1035, (copy) v_u_1032
		if v_u_1035 then
			v_u_1032[v_u_1035](p1039)
		end
	end
	function v1033.SetEnabled(_, p1040)
		-- upvalues: (ref) v_u_1031
		v_u_1031 = p1040
	end
	local v_u_1041 = v_u_1031
	local v_u_1042 = v_u_1035
	for v_u_1043, v_u_1044 in next, v1026 do
		local function v1047(p1045)
			-- upvalues: (ref) v_u_1042, (copy) v_u_1043, (copy) p_u_1016, (ref) v_u_1041, (copy) v_u_1029, (ref) v_u_919, (copy) v_u_1028, (copy) p_u_1017, (copy) v_u_1027, (copy) v_u_1044
			local v1046 = p1045 == true
			v_u_1042 = v_u_1043
			if p_u_1016.NoAnimations then
				return
			elseif v_u_1041 then
				v_u_1029.State = v_u_1043
				v_u_919:Tween({
					["NoAnimation"] = v1046 or v_u_1028,
					["Object"] = p_u_1017,
					["Tweeninfo"] = v_u_1027,
					["EndProperties"] = v_u_1044
				})
			end
		end
		local v1048 = v1020[v_u_1043]
		if not v1022 then
			p_u_1016:AddAnimationSignal(v1020, (v1048:Connect(v1047)))
		end
		v_u_1032[v_u_1043] = v1047
		if v_u_1043 == v1025 then
			v_u_1034 = v1047
		end
	end
	if v1030 then
		v1033:FireSignal(v1030)
	else
		v1033:Reset(true)
	end
	return v1033
end
function v_u_916.ConnectDrag(p_u_1049, p1050, p1051)
	-- upvalues: (copy) v_u_929, (copy) v_u_925
	p_u_1049:CheckConfig(p1051, {
		["DragStart"] = v_u_929,
		["DragEnd"] = v_u_929,
		["DragMovement"] = v_u_929,
		["OnDragStateChange"] = v_u_929
	})
	local v1052 = p1051.DragStart
	local v1053 = p1051.DragEnd
	local v1054 = p1051.DragMovement
	local v_u_1055 = p1051.OnDragStateChange
	local v_u_1056 = {
		["StartAndEnd"] = { Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch },
		["Movement"] = { Enum.UserInputType.MouseMovement, Enum.UserInputType.Touch }
	}
	local v_u_1057 = false
	local function v_u_1061(p1058, p1059)
		-- upvalues: (copy) v_u_1056
		local v1060 = p1058.UserInputType
		return table.find(v_u_1056[p1059], v1060)
	end
	local function v_u_1064(p1062)
		local v1063 = p1062.Position
		return Vector2.new(v1063.X, v1063.Y)
	end
	local function v_u_1066(p1065)
		-- upvalues: (copy) p_u_1049, (ref) v_u_1057, (copy) v_u_1055
		p_u_1049._DraggingDisabled = p1065
		v_u_1057 = p1065
		v_u_1055(p1065)
	end
	local function v1072(p_u_1067)
		-- upvalues: (ref) v_u_1057, (copy) p_u_1049, (copy) v_u_1061, (copy) v_u_1066, (copy) v_u_1064
		local v_u_1068 = p_u_1067.IsDragging
		local v_u_1069 = p_u_1067.InputType
		local v_u_1070 = p_u_1067.Callback
		return function(p1071)
			-- upvalues: (copy) p_u_1067, (ref) v_u_1057, (ref) p_u_1049, (ref) v_u_1061, (copy) v_u_1069, (ref) v_u_1066, (copy) v_u_1068, (ref) v_u_1064, (copy) v_u_1070
			if p_u_1067.DraggingRequired == v_u_1057 then
				if p_u_1067.CheckDraggingDisabled and p_u_1049._DraggingDisabled then
					return
				elseif v_u_1061(p1071, v_u_1069) then
					if p_u_1067.UpdateState then
						v_u_1066(v_u_1068)
					end
					v_u_1070((v_u_1064(p1071)))
				end
			else
				return
			end
		end
	end
	p1050.InputBegan:Connect(v1072({
		["CheckDraggingDisabled"] = true,
		["DraggingRequired"] = false,
		["UpdateState"] = true,
		["IsDragging"] = true,
		["InputType"] = "StartAndEnd",
		["Callback"] = v1052
	}))
	v_u_925.InputEnded:Connect(v1072({
		["DraggingRequired"] = true,
		["UpdateState"] = true,
		["IsDragging"] = false,
		["InputType"] = "StartAndEnd",
		["Callback"] = v1053
	}))
	v_u_925.InputChanged:Connect(v1072({
		["DraggingRequired"] = true,
		["InputType"] = "Movement",
		["Callback"] = v1054
	}))
end
function v_u_916.MakeDraggable(p1073, p_u_1074)
	-- upvalues: (copy) v_u_919
	local v_u_1075 = p_u_1074.Move
	local v1076 = p_u_1074.Grab
	local v1077 = p_u_1074.OnDragStateChange
	local v_u_1078 = {}
	local v_u_1079 = nil
	local v_u_1080 = nil
	function v_u_1078.SetEnabled(p1081, p1082)
		-- upvalues: (copy) p_u_1074
		local v1083 = p_u_1074.StateChanged
		p1081.Enabled = p1082
		if v1083 then
			v1083(p1081)
		end
	end
	function v_u_1078.CanDrag(p1084, _)
		return p1084.Enabled
	end
	local function v1087(p1085)
		-- upvalues: (copy) v_u_1078, (ref) v_u_1080, (copy) p_u_1074
		if v_u_1078:CanDrag() then
			local v1086 = p1085 - v_u_1080
			p_u_1074.OnUpdate(v1086)
		end
	end
	p1073:CheckConfig(p_u_1074, {
		["Enabled"] = true,
		["OnUpdate"] = function(p1088)
			-- upvalues: (ref) v_u_1079, (copy) p_u_1074
			p_u_1074:SetPosition((UDim2.new(v_u_1079.X.Scale, v_u_1079.X.Offset + p1088.X, v_u_1079.Y.Scale, v_u_1079.Y.Offset + p1088.Y)))
		end,
		["SetPosition"] = function(_, p1089)
			-- upvalues: (ref) v_u_919, (copy) v_u_1075
			local v1090 = {
				["Object"] = v_u_1075,
				["EndProperties"] = {
					["Position"] = p1089
				}
			}
			v_u_919:Tween(v1090)
		end,
		["DragBegin"] = function(_)
			-- upvalues: (ref) v_u_1079, (copy) v_u_1075
			v_u_1079 = v_u_1075.Position
		end
	})
	p1073:ConnectDrag(v1076, {
		["DragStart"] = function(p1091)
			-- upvalues: (copy) v_u_1078, (copy) p_u_1074, (ref) v_u_1080
			if v_u_1078:CanDrag() then
				local v1092 = p_u_1074.DragBegin
				v_u_1080 = p1091
				v1092(v_u_1080)
			end
		end,
		["DragMovement"] = v1087,
		["OnDragStateChange"] = v1077
	})
	v_u_1078:SetEnabled(p_u_1074.Enabled)
	return v_u_1078
end
function v_u_916.MakeResizable(p1093, p1094)
	-- upvalues: (copy) v_u_916, (copy) v_u_919
	v_u_916:CheckConfig(p1094, {
		["MinimumSize"] = Vector2.new(160, 90),
		["MaximumSize"] = Vector2.new(math.huge, math.huge)
	})
	local v_u_1095 = p1094.MaximumSize
	local v_u_1096 = p1094.MinimumSize
	local v_u_1097 = p1094.Resize
	local v_u_1098 = p1094.OnUpdate
	local v_u_1099 = nil
	local v_u_1100 = v_u_916:InsertPrefab("ResizeGrab", {
		["Parent"] = v_u_1097
	})
	local v1114 = p1093:MakeDraggable({
		["Grab"] = v_u_1100,
		["OnUpdate"] = function(p1101)
			-- upvalues: (ref) v_u_1099, (copy) v_u_1096, (copy) v_u_1095, (copy) v_u_1098, (ref) v_u_919, (copy) v_u_1097
			local v1102 = v_u_1099 + p1101
			local v1103 = UDim2.fromOffset
			local v1104 = v1102.X
			local v1105 = v_u_1096.X
			local v1106 = v_u_1095.X
			local v1107 = math.clamp(v1104, v1105, v1106)
			local v1108 = v1102.Y
			local v1109 = v_u_1096.Y
			local v1110 = v_u_1095.Y
			local v1111 = v1103(v1107, (math.clamp(v1108, v1109, v1110)))
			if v_u_1098 then
				v_u_1098(v1111)
			else
				local v1112 = {
					["Object"] = v_u_1097,
					["EndProperties"] = {
						["Size"] = v1111
					}
				}
				v_u_919:Tween(v1112)
			end
		end,
		["DragBegin"] = function(_)
			-- upvalues: (ref) v_u_1099, (copy) v_u_1097
			v_u_1099 = v_u_1097.AbsoluteSize
		end,
		["StateChanged"] = function(p1113)
			-- upvalues: (copy) v_u_1100
			v_u_1100.Visible = p1113.Enabled
		end
	})
	v1114.Grab = v_u_1100
	return v1114
end
function v_u_916.IsMouseEvent(_, p1115, p1116)
	local v1117 = p1115.UserInputType.Name
	if not (p1116 and v1117:find("Movement")) then
		return v1117:find("Touch") or v1117:find("Mouse")
	end
end
function v_u_916.DetectHover(_, p1118, p1119)
	-- upvalues: (copy) v_u_916, (copy) v_u_925
	local v_u_1120 = p1119 or {}
	v_u_1120.Hovering = false
	local v_u_1121 = v_u_1120.OnInput
	local v_u_1122 = v_u_1120.OnHoverChange
	local v1123 = v_u_1120.Anykey
	local v1124 = v_u_1120.MouseMove
	local v_u_1125 = v_u_1120.MouseEnter
	local v_u_1126 = v_u_1120.MouseOnly
	local function v_u_1131(p1127, p1128, p1129)
		-- upvalues: (copy) v_u_1126, (ref) v_u_916, (copy) v_u_1120, (copy) v_u_1122, (copy) v_u_1125, (copy) v_u_1121
		if p1127 and (v_u_1126 and not v_u_916:IsMouseEvent(p1127, true)) then
			return
		else
			if p1128 ~= nil then
				local v1130 = v_u_1120.Hovering
				v_u_1120.Hovering = p1128
				if p1128 ~= v1130 and v_u_1122 then
					v_u_1122(p1128)
				end
			end
			if v_u_1125 or not p1129 then
				if v_u_1121 then
					v_u_1121(v_u_1120.Hovering, p1127)
				end
			else
				return
			end
		end
	end
	local v_u_1132 = { p1118.MouseEnter:Connect(function()
		-- upvalues: (copy) v_u_1131
		v_u_1131(nil, true, true)
	end), p1118.MouseLeave:Connect(function()
		-- upvalues: (copy) v_u_1131
		v_u_1131(nil, false, true)
	end) }
	if v1123 or v_u_1126 then
		local v1133 = v_u_925.InputBegan
		table.insert(v_u_1132, v1133:Connect(function(p1134)
			-- upvalues: (copy) v_u_1131
			v_u_1131(p1134)
		end))
	end
	if v1124 then
		local v1135 = p1118.MouseMoved:Connect(function()
			-- upvalues: (copy) v_u_1131
			v_u_1131()
		end)
		table.insert(v_u_1132, v1135)
	end
	function v_u_1120.Disconnect(_)
		-- upvalues: (copy) v_u_1132
		for _, v1136 in next, v_u_1132 do
			v1136:Disconnect()
		end
	end
	return v_u_1120
end
function v_u_916.StackWindows(p1137)
	local v1138 = p1137.Windows
	local v1139 = 20
	for v1140, v1141 in next, v1138 do
		local v1142 = v1141.WindowFrame
		local v1143 = UDim2.fromOffset(v1139 * v1140, v1139 * v1140)
		v1141:Center()
		v1142.Position = v1142.Position + v1143
	end
end
function v_u_916.GetElementFlags(p1144, p1145)
	return p1144._FlagCache[p1145]
end
function v_u_916.UpdateColors(p1146, p1147)
	-- upvalues: (copy) v_u_919
	local v1148 = p1147.Object
	local v1149 = p1147.Tag
	local v1150 = p1147.NoAnimation
	local v1151 = p1147.TagsList
	local v1152 = p1147.Theme
	local v1153 = p1147.Tweeninfo
	local v1154 = p1146.ElementColors
	local v1155 = p1146:GetElementFlags(v1148)
	local v1156 = p1146.Debug
	local v1157 = v1154[v1149]
	if typeof(v1157) == "string" then
		v1157 = v1154[v1157]
	end
	if typeof(v1149) == "table" then
		v1157 = v1149
	elseif v1151 then
		v1151[v1148] = v1149
	end
	if v1157 then
		local v1158 = {}
		for v1159, v1160 in next, v1157 do
			local v1161 = p1146:GetThemeKey(v1152, v1160)
			if not (v1155 and v1155[v1159]) then
				if v1161 then
					v1158[v1159] = v1161
				elseif v1156 then
					p1146:Warn((("Color: \'%*\' does not exist!"):format(v1160)))
				end
			end
		end
		v_u_919:Tween({
			["Tweeninfo"] = v1153,
			["Object"] = v1148,
			["NoAnimation"] = v1150,
			["EndProperties"] = v1158
		})
	end
end
function v_u_916.MultiUpdateColors(p1162, p1163)
	local v1164 = p1163.Objects
	for v1165, v1166 in next, v1164 do
		p1162:UpdateColors({
			["TagsList"] = p1163.TagsList,
			["Theme"] = p1163.Theme,
			["NoAnimation"] = not p1163.Animate,
			["Tweeninfo"] = p1163.Tweeninfo,
			["Object"] = v1165,
			["Tag"] = v1166
		})
	end
end
function v_u_916.ApplyStyle(p1167, p1168, p1169)
	local v1170 = p1167.Styles[p1169]
	if v1170 then
		p1167:ApplyFlags({
			["Object"] = p1168,
			["Class"] = v1170
		})
	end
end
function v_u_916.ClassIgnores(p1171, p1172)
	local v1173 = p1171.ClassIgnored
	return table.find(v1173, p1172) and true or false
end
function v_u_916.MergeMetatables(p_u_1174, p_u_1175, p_u_1176)
	local v_u_1177 = p_u_1174.Debug
	return setmetatable({}, {
		["__index"] = function(_, p_u_1178)
			-- upvalues: (copy) p_u_1174, (copy) p_u_1175, (copy) p_u_1176
			local v1179 = p_u_1174:ClassIgnores(p_u_1178)
			local v1180 = p_u_1175[p_u_1178]
			if v1180 ~= nil and not v1179 then
				return v1180
			end
			local v1181, v1182 = pcall(function()
				-- upvalues: (ref) p_u_1176, (copy) p_u_1178, (ref) p_u_1174
				return p_u_1174:PatchSelf(p_u_1176, p_u_1176[p_u_1178])
			end)
			return v1181 and v1182 and v1182 or nil
		end,
		["__newindex"] = function(_, p_u_1183, p_u_1184)
			-- upvalues: (copy) p_u_1174, (copy) p_u_1175, (copy) p_u_1176, (copy) v_u_1177
			local v1185 = p_u_1174:ClassIgnores(p_u_1183)
			local v1186 = typeof(p_u_1184) == "function"
			if (p_u_1175[p_u_1183] ~= nil and true or v1186) and not v1185 then
				p_u_1175[p_u_1183] = p_u_1184
			else
				xpcall(function()
					-- upvalues: (ref) p_u_1176, (copy) p_u_1183, (copy) p_u_1184
					p_u_1176[p_u_1183] = p_u_1184
				end, function(p1187)
					-- upvalues: (ref) v_u_1177, (ref) p_u_1174, (ref) p_u_1176, (copy) p_u_1183, (copy) p_u_1184, (ref) p_u_1175
					if v_u_1177 then
						p_u_1174:Warn((("Newindex Error: %*.%* = %*\n%*"):format(p_u_1176, p_u_1183, p_u_1184, p1187)))
					end
					p_u_1175[p_u_1183] = p_u_1184
				end)
			end
		end
	})
end
function v_u_916.Concat(_, p1188, p1189)
	local v1190 = ""
	for v1191, v1192 in next, p1188 do
		v1190 = v1190 .. tostring(v1192) .. ((v1191 == #p1188 or not p1189) and "" or p1189)
	end
	return v1190
end
function v_u_916.GetValueFromAliases(_, p1193, p1194)
	for _, v1195 in p1193 do
		local v1196 = p1194[v1195]
		if v1196 ~= nil then
			return v1196
		end
	end
	return nil
end
function v_u_916.RecursiveCall(_, p1197, p1198)
	local v1199 = next
	local v1200, v1201 = p1197:GetDescendants()
	for _, v1202 in v1199, v1200, v1201 do
		p1198(v1202)
	end
end
function v_u_916.ApplyFlags(p1203, p_u_1204)
	-- upvalues: (copy) v_u_916
	local v1205 = p1203.ElementFlags
	local v1206 = p_u_1204.Object
	local v1207 = p_u_1204.Class
	local v_u_1208 = p_u_1204.WindowClass
	function p_u_1204.GetThemeKey(_, p1209)
		-- upvalues: (copy) v_u_1208, (ref) v_u_916
		if v_u_1208 then
			return v_u_1208:GetThemeKey(p1209)
		else
			return v_u_916:GetThemeKey(nil, p1209)
		end
	end
	p1203:SetProperties(v1206, v1207)
	for _, v1210 in next, v1205 do
		local v1211 = v1210.Properties
		local v_u_1212 = v1210.Callback
		local v1213 = v1210.Recursive
		local v1214 = v1210.WindowProperties
		local v_u_1215 = p1203:GetValueFromAliases(v1211, v1207)
		if v_u_1208 and (v1214 and v_u_1215 == nil) then
			v_u_1215 = p1203:GetValueFromAliases(v1214, v_u_1208)
		end
		if v_u_1215 ~= nil then
			v_u_1212(p_u_1204, v1206, v_u_1215)
			if v1213 then
				p1203:RecursiveCall(v1206, function(p1216)
					-- upvalues: (copy) v_u_1212, (copy) p_u_1204, (ref) v_u_1215
					v_u_1212(p_u_1204, p1216, v_u_1215)
				end)
			end
		end
	end
end
function v_u_916.SetProperties(_, p1217, p1218)
	-- upvalues: (copy) v_u_918
	return v_u_918:SetProperties(p1217, p1218)
end
function v_u_916.InsertPrefab(p1219, p1220, p1221)
	-- upvalues: (copy) v_u_918
	local v1222 = v_u_918:NewReference(p1219.Prefabs.Prefabs:WaitForChild(p1220):Clone())
	if p1221 then
		if not p1221.UsePropertiesList then
			p1219:SetProperties(v1222, p1221)
			return v1222
		end
		p1219:ApplyFlags({
			["Object"] = v1222,
			["Class"] = p1221
		})
	end
	return v1222
end
function v_u_916.GetContentSize(_, p1223, p1224)
	local v1225 = p1223:FindFirstChildOfClass("UIListLayout")
	local v1226 = p1223:FindFirstChildOfClass("UIPadding")
	local v1227 = p1223:FindFirstChildOfClass("UIStroke")
	local v1228
	if v1225 and not p1224 then
		v1228 = v1225.AbsoluteContentSize
	else
		v1228 = p1223.AbsoluteSize
	end
	if v1226 then
		local v1229 = v1226.PaddingTop.Offset
		local v1230 = v1226.PaddingBottom.Offset
		local v1231 = v1226.PaddingLeft.Offset
		local v1232 = v1226.PaddingRight.Offset
		v1228 = v1228 + Vector2.new(v1231 + v1232, v1229 + v1230)
	end
	if v1227 then
		local v1233 = v1227.Thickness
		v1228 = v1228 + Vector2.new(v1233 / 2, v1233 / 2)
	end
	return v1228
end
function v_u_916.PatchSelf(_, p_u_1234, p_u_1235, ...)
	if typeof(p_u_1235) == "function" then
		return function(_, ...)
			-- upvalues: (copy) p_u_1235, (copy) p_u_1234
			return p_u_1235(p_u_1234, ...)
		end
	else
		return p_u_1235, ...
	end
end
function v_u_916.MakeCanvas(p_u_1236, p1237)
	-- upvalues: (copy) v_u_920, (copy) v_u_918
	local v1238 = p_u_1236.Elements
	local v1239 = p_u_1236.Debug
	local v_u_1240 = p1237.Element
	local v1241 = p1237.WindowClass
	local v_u_1242 = p1237.Class
	local v1243 = p1237.OnChildChange
	local v1244 = v_u_920:NewSignal()
	if v1243 then
		v1244:Connect(v1243)
	end
	if not v1241 and v1239 then
		p_u_1236:Warn((("No WindowClass for %*"):format(v_u_1240)))
		p_u_1236:Warn(p1237)
	end
	local v_u_1245 = v_u_918:NewClass(v1238, {
		["Class"] = v_u_1242,
		["RawObject"] = v_u_1240,
		["WindowClass"] = v1241 or false,
		["OnChildChange"] = v1244,
		["Elements"] = {}
	})
	return setmetatable({}, {
		["__index"] = function(_, p1246)
			-- upvalues: (copy) v_u_1245, (copy) p_u_1236, (copy) v_u_1242, (copy) v_u_1240
			local v1247 = v_u_1245[p1246]
			if v1247 == nil then
				local v1248 = v_u_1242[p1246]
				if v1248 == nil then
					return p_u_1236:PatchSelf(v_u_1240, v_u_1240[p1246])
				else
					return p_u_1236:PatchSelf(v_u_1242, v1248)
				end
			else
				return p_u_1236:PatchSelf(v_u_1245, v1247)
			end
		end,
		["__newindex"] = function(_, p1249, p1250)
			-- upvalues: (copy) v_u_1242, (copy) v_u_1240
			if v_u_1242[p1249] ~= nil then
				v_u_1242[p1249] = p1250
			else
				v_u_1240[p1249] = p1250
			end
		end
	})
end
function v_u_916.GetIniData(p1251, p1252)
	local v1253 = p1251.IniToSave
	local v1254 = {}
	for _, v1255 in next, v1253 do
		v1254[v1255] = p1252[v1255]
	end
	return v1254
end
function v_u_916.DumpIni(p1256, p1257)
	-- upvalues: (copy) v_u_923
	local v1258 = p1256.IniSettings
	local v1259 = {}
	for v1260, v1261 in next, v1258 do
		v1259[v1260] = p1256:GetIniData(v1261)
	end
	if p1257 then
		return v_u_923:JSONEncode(v1259)
	else
		return v1259
	end
end
function v_u_916.LoadIniIntoElement(_, p_u_1262, p1263)
	local v1265 = {
		["Value"] = function(p1264)
			-- upvalues: (copy) p_u_1262
			p_u_1262:SetValue(p1264)
		end
	}
	for v1266, v1267 in next, p1263 do
		local v1268 = v1265[v1266]
		if v1268 then
			v1268(v1267)
		else
			p_u_1262[v1266] = v1267
		end
	end
end
function v_u_916.LoadIni(p1269, p1270, p1271)
	-- upvalues: (copy) v_u_923
	local v1272 = p1269.IniSettings
	assert(p1270, "No Ini configuration was passed")
	if p1271 then
		p1270 = v_u_923:JSONDecode(p1270)
	end
	for v1273, v1274 in next, p1270 do
		p1269:LoadIniIntoElement(v1272[v1273], v1274)
	end
end
function v_u_916.AddIniFlag(p1275, p1276, p1277)
	p1275.IniSettings[p1276] = p1277
end
function v_u_916.OnElementCreate(p1278, p1279)
	local v1280 = p1278._FlagCache
	local v1281 = p1279.Flags
	local v1282 = p1279.Object
	local v1283 = p1279.Canvas
	local v1284 = p1279.Class
	local v1285 = v1283.WindowClass
	local v1286 = v1281.NoAutoTag
	local v1287 = v1281.NoAutoFlags
	local v1288 = v1281.ColorTag
	local v1289 = v1281.NoStyle
	local v1290 = v1281.IniFlag
	v1280[v1282] = v1281
	if v1290 then
		p1278:AddIniFlag(v1290, v1284)
	end
	if not v1289 then
		if not v1286 and v1285 then
			v1285:TagElements({
				[v1282] = v1288
			})
		end
		if v1285 then
			v1285:LoadStylesIntoElement(p1279)
		end
		if not v1287 then
			p1278:ApplyFlags({
				["Object"] = v1282,
				["Class"] = v1281,
				["WindowClass"] = v1285
			})
		end
	end
end
function v_u_916.VisualError(p1291, p1292, p1293, p1294)
	local v1295 = p1291.Initialised
	if v1295 then
		v1295 = p1292.Error
	end
	if v1295 then
		p1292:Error({
			["Parent"] = p1293,
			["Text"] = p1294
		})
	else
		p1291:Error("Class:", p1294)
	end
end
function v_u_916.WrapGeneration(p_u_1296, p_u_1297, p1298)
	local v_u_1299 = p_u_1296._ErrorCache
	local v_u_1300 = p1298.Base
	local v_u_1301 = p1298.IgnoreDefaults
	return function(p1302, p1303, ...)
		-- upvalues: (copy) p_u_1296, (copy) v_u_1300, (copy) v_u_1301, (copy) p_u_1297, (copy) v_u_1299
		local v1304 = p1303 or {}
		p_u_1296:CheckConfig(v1304, v_u_1300)
		if v1304.CloneTable then
			v1304 = table.clone(v1304)
		end
		local v1305 = p1302.RawObject
		local v1306 = p1302.Elements
		local v1307 = p1302.OnChildChange
		p_u_1296:CheckConfig(v1304, {
			["Parent"] = v1305,
			["Name"] = v1304.ColorTag
		}, nil, v_u_1301)
		if p1302 == p_u_1296 then
			p1302 = p_u_1296.Elements
		end
		local v1308, v1309, v1310 = pcall(p_u_1297, p1302, v1304, ...)
		if v1308 == false then
			if v1305 then
				if v_u_1299[v1305] then
					return
				end
				v_u_1299[v1305] = v1309
			end
			p_u_1296:VisualError(p1302, v1305, v1309)
			p_u_1296:Error("Class:", v1309)
			p_u_1296:Error(debug.traceback())
		end
		if v1310 == nil then
			v1310 = v1309
		end
		if v1307 then
			v1307:Fire(v1309)
		end
		if v1310 then
			if v1306 then
				table.insert(v1306, v1310)
			end
			p_u_1296:OnElementCreate({
				["Object"] = v1310,
				["Flags"] = v1304,
				["Class"] = v1309,
				["Canvas"] = p1302
			})
		end
		return v1309, v1310
	end
end
function v_u_916.DefineElement(p1311, p1312, p1313)
	local v1314 = p1311.Elements
	local v1315 = p1311.ThemeConfigs
	local v1316 = p1311.ElementColors
	local v1317 = v1315.DarkTheme
	local v1318 = p1313.Base
	local v1319 = p1313.Create
	local v1320 = p1313.Export
	local v1321 = p1313.ThemeTags
	local v1322 = p1313.ColorData
	p1311:CheckConfig(v1318, {
		["ColorTag"] = p1312,
		["ElementStyle"] = p1312
	})
	if v1321 then
		Merge(v1317, v1321)
	end
	if v1322 then
		Merge(v1316, v1322)
	end
	local v1323 = p1311:WrapGeneration(v1319, p1313)
	if v1320 then
		p1311[p1312] = v1323
	end
	v1314[p1312] = v1323
	return v1323
end
function v_u_916.DefineGlobalFlag(p1324, p1325)
	local v1326 = p1324.ElementFlags
	table.insert(v1326, p1325)
end
function v_u_916.DefineTheme(p1327, p1328, p1329)
	local v1330 = p1327.ThemeConfigs
	p1327:CheckConfig(p1329, {
		["BaseTheme"] = v1330.DarkTheme
	})
	local v1331 = {
		["BaseTheme"] = GetAndRemove("BaseTheme", p1329),
		["Values"] = p1329
	}
	v1330[p1328] = v1331
	return v1331
end
function v_u_916.GetMouseLocation(p1332)
	local v1333 = p1332.Mouse
	return v1333.X, v1333.Y
end
function v_u_916.SetWindowFocusesEnabled(p1334, p1335)
	p1334.WindowFocusesEnabled = p1335
end
function v_u_916.UpdateWindowFocuses(p1336)
	local v1337 = p1336.Windows
	if p1336.WindowFocusesEnabled then
		for _, v1338 in v1337 do
			local v1339 = v1338.HoverConnection
			if v1339 and v1339.Hovering then
				p1336:SetFocusedWindow(v1338)
				return
			end
		end
		p1336:SetFocusedWindow(nil)
	end
end
function v_u_916.WindowCanFocus(_, p1340)
	if p1340.NoSelect then
		return false
	elseif p1340.Collapsed then
		return false
	else
		return not p1340._SelectDisabled
	end
end
function v_u_916.GetFocusedWindow(p1341)
	return p1341.FocusedWindow
end
function v_u_916.BringWindowToFront(p1342, p1343)
	local v1344 = p1342.Windows
	if not p1343.NoBringToFrontOnFocus then
		MoveTableItem(v1344, p1343, 1)
	end
end
function v_u_916.SetFocusedWindow(p1345, p1346)
	local v1347 = p1345:GetFocusedWindow()
	local v1348 = p1345.Windows
	if v1347 ~= p1346 then
		p1345.FocusedWindow = p1346
		if p1346 then
			if not p1345:WindowCanFocus(p1346) then
				return
			end
			p1345:BringWindowToFront(p1346)
		end
		local v1349 = #v1348
		for _, v1350 in v1348 do
			local v1351 = p1345:WindowCanFocus(v1350)
			local v1352 = v1350.WindowFrame
			if v1351 then
				v1349 = v1349 - 1
				if v1349 then
					v1352.ZIndex = v1349
				end
				v1350:SetFocused(v1350 == p1346, v1349)
			end
		end
	end
end
function v_u_916.SetItemTooltip(p1353, p1354, p1355)
	-- upvalues: (copy) v_u_916
	local _ = p1353.Elements
	local v1356 = p1353.TooltipsContainer
	local v_u_1357 = p1353.ActiveTooltips
	local v_u_1358, v_u_1359 = v1356:Canvas({
		["Visible"] = false,
		["UiPadding"] = UDim.new()
	})
	task.spawn(p1355, v_u_1358)
	v_u_916:DetectHover(p1354, {
		["MouseMove"] = true,
		["MouseEnter"] = true,
		["OnHoverChange"] = function(p1360)
			-- upvalues: (copy) v_u_1357, (copy) v_u_1358
			if p1360 then
				local v1361 = v_u_1357
				local v1362 = v_u_1358
				table.insert(v1361, v1362)
			else
				local v1363 = table.find(v_u_1357, v_u_1358)
				table.remove(v_u_1357, v1363)
			end
		end,
		["OnInput"] = function(p1364, _)
			-- upvalues: (copy) v_u_1359
			v_u_1359.Visible = p1364
		end
	})
end
function v_u_916.CheckFlags(_, p1365, p1366)
	for v1367, v1368 in next, p1365 do
		local v1369 = p1366[v1367]
		if v1369 then
			v1368(v1369)
		end
	end
end
function v_u_916.GetThemeKey(p1370, p1371, p1372)
	local v1373 = p1370.ThemeConfigs
	if typeof(p1371) == "string" then
		p1371 = v1373[p1371]
	end
	local v1374 = p1371 or v1373.DarkTheme
	local v1375 = v1374.BaseTheme
	local v1376 = v1374.Values[p1372]
	if v1376 then
		return v1376
	end
	if v1375 then
		return p1370:GetThemeKey(v1375, p1372)
	end
end
function v_u_916.SelectionGroup(_, p_u_1377)
	local v_u_1378 = false
	local function v_u_1382(p1379, p1380)
		-- upvalues: (copy) p_u_1377
		for _, v1381 in next, p_u_1377 do
			if typeof(v1381) ~= "Instance" and v1381 ~= p1380 then
				p1379(v1381)
			end
		end
	end
	local v_u_1383 = nil
	local function v_u_1388(p1384)
		-- upvalues: (ref) v_u_1378, (ref) v_u_1383, (copy) v_u_1382
		if not v_u_1378 then
			v_u_1378 = true
			local v1385 = v_u_1383
			v_u_1383 = p1384:GetValue()
			local v_u_1386 = v1385 or v_u_1383
			v_u_1382(function(p1387)
				-- upvalues: (ref) v_u_1386
				p1387:SetValue(v_u_1386)
			end, p1384)
			v_u_1378 = false
		end
	end
	v_u_1382(function(p1389)
		-- upvalues: (copy) v_u_1388
		p1389.Callback = v_u_1388
	end)
end
local v_u_1390 = v_u_916.Elements
v_u_1390.__index = v_u_1390
function v_u_1390.GetObject(p1391)
	return p1391.RawObject
end
function v_u_1390.ApplyFlags(p1392, p1393, p1394)
	-- upvalues: (copy) v_u_916
	v_u_916:ApplyFlags({
		["WindowClass"] = p1392.WindowClass,
		["Object"] = p1393,
		["Class"] = p1394
	})
end
function v_u_1390.Remove(p1395)
	local v1396 = p1395.OnChildChange
	local v1397 = p1395:GetObject()
	local v1398 = p1395.Class
	local v1399 = v1398.Remove
	if v1399 then
		return v1399(v1398)
	end
	if v1396 then
		v1396:Fire(v1398 or p1395)
	end
	if v1398 then
		table.clear(v1398)
	end
	v1397:Destroy()
	table.clear(p1395)
end
function v_u_1390.GetChildElements(p1400)
	return p1400.Elements
end
function v_u_1390.ClearChildElements(p1401)
	local v1402 = p1401:GetChildElements()
	for _, v1403 in next, v1402 do
		v1403:Destroy()
	end
end
function v_u_1390.TagElements(p1404, p1405)
	-- upvalues: (copy) v_u_916
	local v1406 = p1404.WindowClass
	local v1407 = v_u_916.Debug
	if v1406 then
		v1406:TagElements(p1405)
	elseif v1407 then
		v_u_916:Warn("No WindowClass for TagElements:", p1405)
	end
end
function v_u_1390.GetThemeKey(p1408, p1409)
	-- upvalues: (copy) v_u_916
	local v1410 = p1408.WindowClass
	if v1410 then
		return v1410:GetThemeKey(p1409)
	else
		return v_u_916:GetThemeKey(nil, p1409)
	end
end
function v_u_1390.SetColorTags(p1411, p1412, p1413)
	-- upvalues: (copy) v_u_916
	local v1414 = p1411.WindowClass
	if v1414 then
		local v1415 = v1414.TagsList
		v_u_916:MultiUpdateColors({
			["Animate"] = p1413,
			["Theme"] = v1414.Theme,
			["TagsList"] = v1415,
			["Objects"] = p1412
		})
	end
end
function v_u_1390.SetElementFocused(p1416, _, p1417)
	-- upvalues: (copy) v_u_916
	local v1418 = p1416.WindowClass
	local v1419 = v_u_916.HasTouchScreen
	local v1420 = p1417.Focused
	local v1421 = p1417.Animation
	v_u_916:SetAnimationsEnabled(not v1420)
	if not v1420 and v1421 then
		v1421:Refresh()
	end
	if v1418 then
		if v1419 then
			v1418.ContentCanvas.Interactable = not v1420
		end
	else
		return
	end
end
local v1444 = {
	["Base"] = {
		["ColorTag"] = "PopupCanvas",
		["Disabled"] = false,
		["AutoClose"] = true,
		["OnSelected"] = v_u_929
	},
	["Create"] = function(p1422, p1423)
		-- upvalues: (copy) v_u_916
		p1423.Parent = v_u_916.Container.Overlays
		local v1424 = p1423.Selected
		local v1425 = p1423.Items
		local v_u_1426 = p1423.OnSelected
		local v_u_1427, v1428 = p1422:PopupCanvas(p1423)
		local v1429 = v_u_916:MergeMetatables(p1423, v_u_1427)
		local v_u_1430 = {}
		local function v_u_1432(p1431)
			-- upvalues: (copy) v_u_1426
			v_u_1426(p1431)
		end
		function p1423.ClearEntries(_)
			-- upvalues: (copy) v_u_1430
			for _, v1433 in v_u_1430 do
				v1433:Remove()
			end
		end
		function p1423.SetItems(p1434, p1435, p1436)
			-- upvalues: (copy) v_u_1427, (copy) v_u_1432, (copy) v_u_1430
			local v1437 = p1435[1]
			p1434:ClearEntries()
			for v1438, v1439 in p1435 do
				local v_u_1440 = v1437 and v1439 and v1439 or v1438
				local v1441 = v1438 == p1436 and true or v1439 == p1436
				local v1442 = v_u_1427:Selectable({
					["Text"] = tostring(v_u_1440),
					["Selected"] = v1441,
					["ZIndex"] = 6,
					["Callback"] = function()
						-- upvalues: (ref) v_u_1432, (copy) v_u_1440
						return v_u_1432(v_u_1440)
					end
				})
				local v1443 = v_u_1430
				table.insert(v1443, v1442)
			end
		end
		if v1425 then
			p1423:SetItems(v1425, v1424)
		end
		return v1429, v1428
	end
}
v_u_916:DefineElement("Dropdown", v1444)
local v1453 = {
	["Base"] = {
		["ElementClass"] = "OverlayScroll",
		["Spacing"] = UDim.new(0, 4)
	},
	["Create"] = function(p1445, p1446)
		-- upvalues: (copy) v_u_916
		local v1447 = p1445.WindowClass
		local v1448 = p1446.ElementClass
		local v1449 = p1446.Spacing
		local v1450 = v_u_916:InsertPrefab(v1448, p1446)
		local v_u_1451 = v1450:FindFirstChild("ContentFrame") or v1450
		v1450:FindFirstChild("UIListLayout", true).Padding = v1449
		local v1452 = v_u_916:MakeCanvas({
			["Element"] = v_u_1451,
			["WindowClass"] = v1447,
			["Class"] = v_u_916:MergeMetatables(p1445, p1446)
		})
		function p1446.GetCanvasSize(_)
			-- upvalues: (copy) v_u_1451
			return v_u_1451.AbsoluteCanvasSize
		end
		return v1452, v1450
	end
}
v_u_916:DefineElement("OverlayScroll", v1453)
local v1454 = {
	["Base"] = {
		["ElementClass"] = "Overlay"
	},
	["Create"] = v_u_1390.OverlayScroll
}
v_u_916:DefineElement("Overlay", v1454)
local v1457 = {
	["Base"] = {
		["Image"] = "",
		["Callback"] = v_u_929
	},
	["Create"] = function(_, p_u_1455)
		-- upvalues: (copy) v_u_916
		local v_u_1456 = v_u_916:InsertPrefab("Image", p_u_1455)
		v_u_1456.Activated:Connect(function(...)
			-- upvalues: (copy) p_u_1455, (copy) v_u_1456
			return p_u_1455.Callback(v_u_1456, ...)
		end)
		return v_u_1456
	end
}
v_u_916:DefineElement("Image", v1457)
local v1459 = {
	["Base"] = {
		["Video"] = "",
		["Callback"] = v_u_929
	},
	["Create"] = function(_, p1458)
		-- upvalues: (copy) v_u_918, (copy) v_u_916
		p1458.Video = v_u_918:CheckAssetUrl(p1458.Video)
		return v_u_916:InsertPrefab("VideoPlayer", p1458)
	end
}
v_u_916:DefineElement("VideoPlayer", v1459)
local v1466 = {
	["Base"] = {
		["Text"] = "Button",
		["DoubleClick"] = false,
		["Callback"] = v_u_929
	},
	["Create"] = function(_, p_u_1460)
		-- upvalues: (copy) v_u_916
		local v1461 = v_u_916:InsertPrefab("Button", p_u_1460)
		local v_u_1462 = v_u_916:MergeMetatables(p_u_1460, v1461)
		local v1463 = p_u_1460.DoubleClick
		function p_u_1460.SetDisabled(p1464, p1465)
			p1464.Disabled = p1465
		end
		v_u_916:ConnectMouseEvent(v1461, {
			["DoubleClick"] = v1463,
			["Callback"] = function(...)
				-- upvalues: (copy) p_u_1460, (copy) v_u_1462
				if not p_u_1460.Disabled then
					return p_u_1460.Callback(v_u_1462, ...)
				end
			end
		})
		return v_u_1462, v1461
	end
}
v_u_916:DefineElement("Button", v1466)
local v1467 = {}
local v1468 = {
	["Text"] = "Selectable",
	["Callback"] = v_u_929,
	["Selected"] = false,
	["Disabled"] = false,
	["Size"] = UDim2.fromScale(1, 0),
	["AutomaticSize"] = Enum.AutomaticSize.Y,
	["TextXAlignment"] = Enum.TextXAlignment.Left,
	["AnimationTags"] = {
		["Selected"] = "Buttons",
		["Unselected"] = "TransparentButtons"
	}
}
v1467.Base = v1468
function v1467.Create(p1469, p_u_1470)
	-- upvalues: (copy) v_u_916
	local v_u_1471 = p1469.Class.AfterClick
	local v1472 = p_u_1470.Selected
	local v1473 = p_u_1470.Disabled
	local v_u_1474 = v_u_916:InsertPrefab("Button", p_u_1470)
	local v1475 = v_u_916:MergeMetatables(p_u_1470, v_u_1474)
	v_u_1474.Activated:Connect(function(...)
		-- upvalues: (copy) p_u_1470, (copy) v_u_1474, (copy) v_u_1471
		p_u_1470.Callback(v_u_1474, ...)
		if v_u_1471 then
			v_u_1471(v_u_1474, ...)
		end
	end)
	function p_u_1470.SetSelected(p1476, p1477)
		-- upvalues: (ref) v_u_916, (copy) v_u_1474
		local v1478 = p1476.AnimationTags
		local v1479 = p1477 and v1478.Selected or v1478.Unselected
		p1476.Selected = p1477
		v_u_916:SetAnimation(v_u_1474, v1479)
		return p1476
	end
	function p_u_1470.SetDisabled(p1480, p1481)
		-- upvalues: (copy) v_u_1474
		p1480.Disabled = p1481
		v_u_1474.Interactable = not p1481
		return p1480
	end
	p_u_1470:SetSelected(v1472)
	p_u_1470:SetDisabled(v1473)
	return v1475, v_u_1474
end
v_u_916:DefineElement("Selectable", v1467)
local v1482 = {
	["Base"] = {
		["ElementStyle"] = "Button",
		["Callback"] = v_u_929
	},
	["Create"] = v_u_1390.Image
}
v_u_916:DefineElement("ImageButton", v1482)
local v1483 = {
	["Base"] = {
		["Text"] = "Button",
		["PaddingTop"] = UDim.new(),
		["PaddingBottom"] = UDim.new(),
		["PaddingLeft"] = UDim.new(0, 2),
		["PaddingRight"] = UDim.new(0, 2),
		["ColorTag"] = "Button",
		["ElementStyle"] = "Button",
		["Callback"] = v_u_929
	},
	["Create"] = v_u_1390.Button
}
v_u_916:DefineElement("SmallButton", v1483)
local v1520 = {
	["Base"] = {
		["Label"] = "Keybind",
		["ColorTag"] = "Frame",
		["Value"] = nil,
		["DeleteKey"] = Enum.KeyCode.Backspace,
		["IgnoreGameProcessed"] = true,
		["Enabled"] = true,
		["Disabled"] = false,
		["Callback"] = v_u_929,
		["OnKeybindSet"] = v_u_929,
		["OnBlacklistedKeybindSet"] = v_u_929,
		["KeyBlacklist"] = {},
		["UiPadding"] = UDim.new(),
		["AutomaticSize"] = Enum.AutomaticSize.None,
		["Size"] = UDim2.new(0.3, 0, 0, 19)
	},
	["Create"] = function(p_u_1484, p_u_1485)
		-- upvalues: (copy) v_u_916, (copy) v_u_925
		local v1486 = p_u_1485.Value
		local v1487 = p_u_1485.Label
		local v1488 = p_u_1485.Disabled
		local v_u_1489 = p_u_1485.KeyBlacklist
		local v_u_1490 = v_u_916:InsertPrefab("Button", p_u_1485)
		local v1491 = v_u_916:MergeMetatables(p_u_1485, v_u_1490)
		local v_u_1492 = p_u_1484:Label({
			["Parent"] = v_u_1490,
			["Text"] = v1487,
			["Position"] = UDim2.new(1, 4, 0.5),
			["AnchorPoint"] = Vector2.new(0, 0.5)
		})
		local function v_u_1494(p1493, ...)
			-- upvalues: (copy) v_u_1490
			return p1493(v_u_1490, ...)
		end
		local function v_u_1496(p1495)
			-- upvalues: (copy) v_u_1489
			return table.find(v_u_1489, p1495)
		end
		function p_u_1485.SetDisabled(p1497, p1498)
			-- upvalues: (copy) v_u_1490, (copy) p_u_1484, (copy) v_u_1492
			p1497.Disabled = p1498
			v_u_1490.Interactable = not p1498
			p_u_1484:SetColorTags({
				[v_u_1492] = p1498 and "LabelDisabled" or "Label"
			}, true)
			return p1497
		end
		function p_u_1485.SetValue(p1499, p1500)
			-- upvalues: (copy) v_u_1490, (copy) v_u_1494
			local v1501 = p1499.OnKeybindSet
			if p1500 == p1499.DeleteKey then
				p1500 = nil
			end
			p1499.Value = p1500
			v_u_1490.Text = p1500 and (p1500.Name or "Not set") or "Not set"
			v_u_1494(v1501, p1500)
			return p1499
		end
		function p_u_1485.WaitForNewKey(p1502)
			-- upvalues: (copy) v_u_1490
			p1502._WaitingForNewKey = true
			v_u_1490.Text = "..."
			v_u_1490.Interactable = false
		end
		local function v_u_1506(p1503)
			local v1504 = p1503.KeyCode
			local v1505 = p1503.UserInputType
			if v1505 == Enum.UserInputType.Keyboard then
				return v1504
			else
				return v1505
			end
		end
		local function v_u_1511(p1507)
			-- upvalues: (copy) p_u_1485, (copy) v_u_1506, (ref) v_u_925, (copy) v_u_1496, (copy) v_u_1494, (copy) v_u_1490
			local v1508 = p_u_1485.OnBlacklistedKeybindSet
			local v1509 = p_u_1485.Value
			local v1510 = v_u_1506(p1507)
			if v_u_925.WindowFocused then
				if v_u_1496(v1510) then
					v_u_1494(v1508, v1510)
				else
					v_u_1490.Interactable = true
					p_u_1485._WaitingForNewKey = false
					if v1510.Name == "Unknown" then
						return p_u_1485:SetValue(v1509)
					end
					p_u_1485:SetValue(v1510)
				end
			else
				return
			end
		end
		p_u_1485:SetValue(v1486)
		p_u_1485:SetDisabled(v1488)
		p_u_1485.Connection = v_u_925.InputBegan:Connect(function(p1512, p1513)
			-- upvalues: (copy) p_u_1485, (copy) v_u_1506, (copy) v_u_1511, (copy) v_u_1490, (copy) v_u_1494
			local v1514 = p_u_1485.IgnoreGameProcessed
			local v1515 = p_u_1485.DeleteKey
			local v1516 = p_u_1485.Enabled
			local v1517 = p_u_1485.Value
			local v1518 = p_u_1485.Callback
			local v1519 = v_u_1506(p1512)
			if p_u_1485._WaitingForNewKey then
				v_u_1511(p1512)
				return
			elseif v1516 or not v_u_1490.Interactable then
				if v1514 or not p1513 then
					if v1517 then
						if v1519 == v1515 then
							return
						elseif v1519.Name == v1517.Name then
							v_u_1494(v1518, v1519)
						end
					else
						return
					end
				else
					return
				end
			else
				return
			end
		end)
		v_u_1490.Activated:Connect(function()
			-- upvalues: (copy) p_u_1485
			p_u_1485:WaitForNewKey()
		end)
		v_u_916:SetAnimation(v_u_1490, "Inputs")
		return v1491, v_u_1490
	end
}
v_u_916:DefineElement("Keybind", v1520)
local v1521 = {}
local v1522 = {
	["Direction"] = "Left",
	["ColorTag"] = "Button",
	["Icon"] = v_u_916.Icons.Arrow,
	["Size"] = UDim2.fromOffset(21, 21),
	["IconSize"] = UDim2.fromScale(1, 1),
	["IconPadding"] = UDim.new(0, 4),
	["Rotations"] = {
		["Left"] = 180,
		["Right"] = 0
	}
}
v1521.Base = v1522
function v1521.Create(_, p_u_1523)
	-- upvalues: (copy) v_u_916
	local v1524 = p_u_1523.Direction
	p_u_1523.IconRotation = p_u_1523.Rotations[v1524]
	local v_u_1525 = v_u_916:InsertPrefab("ArrowButton", p_u_1523)
	v_u_1525.Activated:Connect(function(...)
		-- upvalues: (copy) p_u_1523, (copy) v_u_1525
		return p_u_1523.Callback(v_u_1525, ...)
	end)
	return v_u_1525
end
v_u_916:DefineElement("ArrowButton", v1521)
local v1526 = {
	["Base"] = {
		["Font"] = "Inconsolata"
	}
}
local v1527 = {
	["LabelPadding"] = {
		["PaddingTop"] = "LabelPaddingTop",
		["PaddingBottom"] = "LabelPaddingBottom"
	}
}
v1526.ColorData = v1527
function v1526.Create(p1528, p1529)
	-- upvalues: (copy) v_u_916
	local v1530 = p1529.Bold
	local v1531 = p1529.Italic
	local v1532 = p1529.Font
	local v1533 = p1529.FontFace
	local v1534 = Enum.FontWeight.Medium
	local v1535 = Enum.FontWeight.Bold
	local v1536 = Enum.FontStyle.Normal
	local v1537 = Enum.FontStyle.Italic
	if v1530 then
		v1534 = v1535 or v1534
	end
	if v1531 then
		v1536 = v1537 or v1536
	end
	if not v1533 and (v1530 or v1531) then
		p1529.FontFace = Font.fromName(v1532, v1534, v1536)
	end
	local v1538 = v_u_916:InsertPrefab("Label", p1529)
	p1528:TagElements({
		[v1538:FindFirstChildOfClass("UIPadding")] = "LabelPadding"
	})
	return v1538
end
v_u_916:DefineElement("Label", v1526)
local v1539 = {
	["Base"] = {
		["RichText"] = true,
		["TextWrapped"] = true
	}
}
local v1540 = {
	["Error"] = {
		["TextColor3"] = "ErrorText",
		["FontFace"] = "TextFont"
	}
}
v1539.ColorData = v1540
function v1539.Create(p1541, p1542)
	p1542.Text = ("<b>\226\155\148 Error:</b> %*"):format(p1542.Text)
	return p1541:Label(p1542)
end
v_u_916:DefineElement("Error", v1539)
local v1548 = {
	["Base"] = {
		["Editable"] = true,
		["Fill"] = true,
		["Text"] = ""
	},
	["Create"] = function(p1543, p1544)
		-- upvalues: (copy) v_u_917, (copy) v_u_916
		local v1545 = p1543.WindowClass
		local v1546 = v_u_917.CodeFrame.new(p1544)
		local v1547 = v1546.Gui
		p1544.Parent = p1543:GetObject()
		v_u_916:ApplyFlags({
			["Object"] = v1547,
			["WindowClass"] = v1545,
			["Class"] = p1544
		})
		return v1546, v1547
	end
}
v_u_916:DefineElement("CodeEditor", v1548)
local v_u_1549 = {
	["Engaged"] = false
}
v_u_1549.__index = v_u_1549
function v_u_1549.SetEngaged(p1550, p1551)
	local v1552 = p1550.WindowClass
	p1550.Engaged = p1551
	if v1552 then
		v1552:SetCanvasInteractable(not p1551)
	end
end
function v_u_1549.IsHovering(p1553)
	local v_u_1554 = false
	p1553:Foreach(function(p1555)
		-- upvalues: (ref) v_u_1554
		v_u_1554 = p1555.Popup:IsMouseHovering()
		return v_u_1554
	end)
	return v_u_1554
end
function v_u_1549.Foreach(p1556, p1557)
	local v1558 = p1556.Menus
	for _, v1559 in next, v1558 do
		if p1557(v1559) then
			break
		end
	end
end
function v_u_1549.SetFocusedMenu(p1560, p_u_1561)
	p1560:Foreach(function(p1562)
		-- upvalues: (copy) p_u_1561
		p1562:SetActiveState(p1562 == p_u_1561)
	end)
end
function v_u_1549.Close(p1563)
	p1563:SetEngaged(false)
	p1563:SetFocusedMenu(nil)
end
function v_u_1549.MenuItem(p_u_1564, p1565)
	-- upvalues: (copy) v_u_916
	local v1566 = p_u_1564.Canvas
	local v1567 = p_u_1564.Menus
	local v_u_1568 = v1566:MenuButton(p1565)
	local v_u_1569 = v1566:PopupCanvas({
		["RelativeTo"] = v_u_1568,
		["MaxSizeX"] = 210,
		["Visible"] = false,
		["AutoClose"] = false,
		["AfterClick"] = function()
			-- upvalues: (copy) p_u_1564
			p_u_1564:Close()
		end
	})
	local v_u_1570 = {
		["Popup"] = v_u_1569,
		["Button"] = v_u_1568
	}
	v_u_916:DetectHover(v_u_1568, {
		["MouseEnter"] = true,
		["OnInput"] = function()
			-- upvalues: (copy) p_u_1564, (copy) v_u_1570
			if p_u_1564.Engaged then
				p_u_1564:SetFocusedMenu(v_u_1570)
			end
		end
	})
	function v_u_1570.SetActiveState(_, p1571)
		-- upvalues: (copy) v_u_1569, (copy) v_u_1568
		v_u_1569:SetPopupVisible(p1571)
		v_u_1568:SetSelected(p1571)
	end
	v_u_1568.Activated:Connect(function()
		-- upvalues: (copy) p_u_1564, (copy) v_u_1570
		p_u_1564:SetFocusedMenu(v_u_1570)
		p_u_1564:SetEngaged(true)
	end)
	table.insert(v1567, v_u_1570)
	return v_u_1569, v_u_1570
end
v_u_916:DefineElement("MenuBar", {
	["Base"] = {},
	["Create"] = function(p1572, p1573)
		-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_1549
		local v1574 = p1572.WindowClass
		local v1575 = v_u_916:InsertPrefab("MenuBar", p1573)
		local v1576 = v_u_916:MakeCanvas({
			["Element"] = v1575,
			["WindowClass"] = v1574,
			["Class"] = p1573
		})
		local v_u_1577 = v_u_918:NewClass(v_u_1549, {
			["WindowClass"] = v1574,
			["Canvas"] = v1576,
			["Object"] = v1575,
			["Menus"] = {}
		})
		Merge(v_u_1577, p1573)
		v_u_916:DetectHover(v1575, {
			["MouseOnly"] = true,
			["OnInput"] = function()
				-- upvalues: (copy) v_u_1577
				if v_u_1577.Engaged then
					if not v_u_1577:IsHovering() then
						v_u_1577:Close()
					end
				else
					return
				end
			end
		})
		return v_u_916:MergeMetatables(v_u_1577, v1576), v1575
	end
})
local v1578 = {
	["Base"] = {
		["Text"] = "MenuButton",
		["PaddingLeft"] = UDim.new(0, 8),
		["PaddingRight"] = UDim.new(0, 8),
		["Size"] = UDim2.fromOffset(0, 19),
		["AutomaticSize"] = Enum.AutomaticSize.XY
	},
	["Create"] = v_u_1390.Selectable
}
v_u_916:DefineElement("MenuButton", v1578)
local v_u_1579 = {}
local v1580 = {
	["BGSelected"] = {
		[true] = "SelectedTab",
		[false] = "DeselectedTab"
	},
	["LabelSelected"] = {
		[true] = "SelectedTabLabel",
		[false] = "DeselectedTabLabel"
	}
}
v_u_1579.ColorTags = v1580
function v_u_1579.SetButtonSelected(p1581, p1582, p1583)
	-- upvalues: (copy) v_u_916
	if p1582.IsSelected ~= p1583 then
		p1582.IsSelected = p1583
		local v1584 = p1581.NoAnimation
		local v1585 = p1581.WindowClass
		local v1586 = p1581.ColorTags
		local v1587 = v1585.Theme
		local v1588 = v1585.TagsList
		local v1589 = v1586.BGSelected
		local v1590 = v1586.LabelSelected
		local v1591 = p1582.TabButton.Button
		local v1592 = v1591.Label
		local v1593 = v_u_916
		local v1594 = {
			["Animate"] = not v1584,
			["Theme"] = v1587,
			["TagsList"] = v1588,
			["Objects"] = {
				[v1591] = v1589[p1583],
				[v1592] = v1590[p1583]
			}
		}
		v1593:MultiUpdateColors(v1594)
	end
end
function v_u_1579.CompareTabs(_, p1595, p1596)
	if p1595 then
		return p1595.MatchBy == p1596 and true or p1595 == p1596
	else
		return false
	end
end
function v_u_1579.ForEachTab(p1597, p1598, p1599)
	local v1600 = typeof(p1598) == "string"
	for v1601, v1602 in p1597.Tabs do
		local v1603 = v1602.Name
		local v1604
		if v1600 then
			v1604 = v1603 == p1598
		else
			v1604 = p1597:CompareTabs(v1602, p1598)
		end
		p1599(v1602, v1604, v1601)
	end
end
function v_u_1579.RemoveTab(p_u_1605, p1606)
	local v_u_1607 = p_u_1605.OnTabRemove
	local v_u_1608 = p_u_1605.Tabs
	p_u_1605:ForEachTab(p1606, function(p1609, p1610, p1611)
		-- upvalues: (copy) v_u_1608, (copy) v_u_1607, (copy) p_u_1605
		if p1610 then
			local v1612 = p1609.TabButton
			local v1613 = p1609.OnClosure
			table.remove(v_u_1608, p1611)
			v1612:Destroy()
			v_u_1607(p_u_1605, p1609)
			v1613(p1609)
		end
	end)
	return p_u_1605
end
function v_u_1579.CreateTab(p_u_1614, p1615)
	-- upvalues: (copy) v_u_916, (copy) v_u_929
	local v_u_1616 = p1615 or {}
	v_u_916:CheckConfig(v_u_1616, {
		["Name"] = "Tab",
		["AutoSize"] = "Y",
		["Focused"] = false,
		["OnClosure"] = v_u_929
	})
	local v1617 = p_u_1614.AutoSelectNewTabs
	local v1618 = p_u_1614.WindowClass
	local v_u_1619 = p_u_1614.ParentCanvas
	local v1620 = p_u_1614.Tabs
	local v1621 = p_u_1614.TabsFrame
	local v1622 = p_u_1614.OnTabCreate
	local v1623 = v_u_1616.Focused
	local v1624 = v_u_1616.Name
	local _ = v_u_1616.Icon
	if v1623 then
		v1617 = v1623
	elseif #v1620 > 0 then
		v1617 = false
	end
	local v_u_1625 = v_u_916:InsertPrefab("TabButton", v_u_1616)
	v_u_1625.Parent = v1621
	local v_u_1626 = v_u_1625.Button
	local v1627 = v_u_1626:FindFirstChildOfClass("UIPadding")
	v_u_1626.Label.Text = tostring(v1624)
	Merge(v_u_1616, {
		["TabButton"] = v_u_1625
	})
	local v1632 = {
		["Closeable"] = function()
			-- upvalues: (copy) v_u_1619, (copy) v_u_1626, (copy) p_u_1614, (ref) v_u_916, (ref) v_u_1616, (copy) v_u_1625
			local v1628 = v_u_1619:RadioButton({
				["Parent"] = v_u_1626,
				["Visible"] = not p_u_1614.NoClose,
				["Icon"] = v_u_916.Icons.Close,
				["IconSize"] = UDim2.fromOffset(11, 11),
				["LayoutOrder"] = 3,
				["ZIndex"] = 2,
				["UsePropertiesList"] = true,
				["Callback"] = function()
					-- upvalues: (ref) p_u_1614, (ref) v_u_1616
					p_u_1614:RemoveTab(v_u_1616)
				end
			}).Icon
			local v1629 = v_u_916
			local v1630 = {}
			local v1631 = {
				["MouseEnter"] = {
					["ImageTransparency"] = 0
				},
				["MouseLeave"] = {
					["ImageTransparency"] = 1
				}
			}
			v1630.Connections = v1631
			v1630.Init = "MouseLeave"
			v1629:SetAnimation(v1628, v1630, v_u_1625)
		end
	}
	v_u_1626.Activated:Connect(function()
		-- upvalues: (copy) p_u_1614, (ref) v_u_1616
		p_u_1614:SetActiveTab(v_u_1616)
	end)
	v_u_916:CheckFlags(v1632, v_u_1616)
	table.insert(v1620, v_u_1616)
	if v1618 then
		v1618:TagElements({
			[v1627] = "TabPadding"
		})
	end
	v_u_916:SetAnimation(v_u_1626, "Buttons")
	p_u_1614:SetButtonSelected(v_u_1616, v1617)
	v_u_1619:ApplyFlags(v_u_1625, v_u_1616)
	local v1633 = v1622(p_u_1614, v_u_1616)
	if v1617 then
		p_u_1614:SetActiveTab(v_u_1616)
	end
	return v1633 or v_u_1616
end
function v_u_1579.SetActiveTab(p_u_1634, p1635)
	local _ = p_u_1634.Tabs
	local _ = p_u_1634.NoAnimation
	local v1636 = p_u_1634.ActiveTab
	local v1637 = p_u_1634.OnActiveTabChange
	local _ = typeof(p1635) == "string"
	p_u_1634:ForEachTab(p1635, function(p1638, p1639, _)
		-- upvalues: (copy) p_u_1634
		if p1639 then
			MatchedTab = p1638
		end
		p_u_1634:SetButtonSelected(p1638, p1639)
	end)
	if not MatchedTab then
		return p_u_1634
	end
	if p_u_1634:CompareTabs(MatchedTab, v1636) then
		return p_u_1634
	end
	p_u_1634.ActiveTab = MatchedTab
	v1637(p_u_1634, MatchedTab, v1636)
	return p_u_1634
end
local v1640 = {
	["Base"] = {
		["AutoSelectNewTabs"] = true,
		["OnActiveTabChange"] = v_u_929,
		["OnTabCreate"] = v_u_929,
		["OnTabRemove"] = v_u_929
	}
}
local v1641 = {
	["DeselectedTab"] = {
		["BackgroundColor3"] = "TabBg"
	},
	["SelectedTab"] = {
		["BackgroundColor3"] = "TabBgActive"
	},
	["DeselectedTabLabel"] = {
		["FontFace"] = "TextFont",
		["TextColor3"] = "TabText"
	},
	["SelectedTabLabel"] = {
		["FontFace"] = "TextFont",
		["TextColor3"] = "TabTextActive"
	},
	["TabsBarSeparator"] = {
		["BackgroundColor3"] = "TabBgActive"
	},
	["TabPadding"] = {
		["PaddingTop"] = "TabTextPaddingTop",
		["PaddingBottom"] = "TabTextPaddingBottom"
	},
	["TabPagePadding"] = {
		["PaddingBottom"] = "TabPagePadding",
		["PaddingLeft"] = "TabPagePadding",
		["PaddingRight"] = "TabPagePadding",
		["PaddingTop"] = "TabPagePadding"
	}
}
v1640.ColorData = v1641
function v1640.Create(p1642, p1643)
	-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_1579
	local v1644 = p1642.WindowClass
	local v1645 = v_u_916:InsertPrefab("TabsBar", p1643)
	local v1646 = v_u_918:NewClass(v_u_1579)
	local v1647 = v1645.Separator
	local v1648 = v1645.TabsFrame
	local v1649 = v_u_916:MakeCanvas({
		["Element"] = v1648,
		["WindowClass"] = v1644,
		["Class"] = v1646
	})
	Merge(v1646, p1643)
	Merge(v1646, {
		["ParentCanvas"] = p1642,
		["Object"] = v1645,
		["TabsFrame"] = v1648,
		["WindowClass"] = v1644,
		["Tabs"] = {}
	})
	p1642:TagElements({
		[v1645] = "TabsBar",
		[v1647] = "TabsBarSeparator"
	})
	return v_u_916:MergeMetatables(v1649, v1645), v1645
end
v_u_916:DefineElement("TabBar", v1640)
local v1673 = {
	["Base"] = {
		["NoTabsBar"] = false,
		["OnActiveTabChange"] = v_u_929,
		["OnTabCreate"] = v_u_929,
		["OnTabRemove"] = v_u_929
	},
	["Create"] = function(p_u_1650, p_u_1651)
		-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_919
		local v_u_1652 = p_u_1650.WindowClass
		local v1653 = p_u_1651.NoTabsBar
		local v_u_1654 = p_u_1651.NoAnimation
		local v1655 = v_u_916:InsertPrefab("TabSelector", p_u_1651)
		local v_u_1656 = v1655.Body
		local v_u_1657 = v_u_1656.PageTemplate
		v_u_1657.Visible = false
		return v_u_916:MergeMetatables(p_u_1650:TabBar({
			["Parent"] = v1655,
			["Visible"] = not v1653,
			["OnTabCreate"] = function(p1658, p1659, ...)
				-- upvalues: (copy) v_u_1657, (ref) v_u_918, (ref) v_u_916, (copy) v_u_1656, (copy) p_u_1650, (copy) v_u_1652, (copy) p_u_1651
				local v1660 = p1659.AutoSize
				local v1661 = p1659.Name
				local v1662 = v_u_1657:Clone()
				local v1663 = v_u_918:GetChildOfClass(v1662, "UIPadding")
				v_u_916:SetProperties(v1662, {
					["Parent"] = v_u_1656,
					["Name"] = v1661,
					["AutomaticSize"] = Enum.AutomaticSize[v1660],
					["Size"] = UDim2.fromScale(v1660 == "Y" and 1 or 0, v1660 == "X" and 1 or 0)
				})
				p_u_1650:TagElements({
					[v1663] = "TabPagePadding"
				})
				local v1664 = v_u_916:MakeCanvas({
					["Element"] = v1662,
					["WindowClass"] = v_u_1652,
					["Class"] = p1659
				})
				p_u_1651.OnTabCreate(p1658, p1659, ...)
				Merge(p1659, {
					["Page"] = v1662,
					["MatchBy"] = v1664
				})
				return v1664
			end,
			["OnActiveTabChange"] = function(p1665, p1666, ...)
				-- upvalues: (copy) p_u_1650, (ref) v_u_919, (copy) v_u_1654, (copy) p_u_1651
				p1665:ForEachTab(p1666, function(p1667, p1668, _)
					-- upvalues: (ref) p_u_1650, (ref) v_u_919, (ref) v_u_1654
					local v1669 = p1667.Page
					v1669.Visible = p1668
					if p1668 then
						local v1670 = v_u_919
						local v1671 = {
							["Object"] = v1669,
							["Tweeninfo"] = p_u_1650:GetThemeKey("AnimationTweenInfo"),
							["NoAnimation"] = v_u_1654,
							["StartProperties"] = {
								["Position"] = UDim2.fromOffset(0, 4)
							},
							["EndProperties"] = {
								["Position"] = UDim2.fromOffset(0, 0)
							}
						}
						v1670:Tween(v1671)
					end
				end)
				p_u_1651.OnActiveTabChange(p1665, p1666, ...)
			end,
			["OnTabRemove"] = function(_, p1672, ...)
				-- upvalues: (copy) p_u_1651
				p1672.Page:Remove()
				p_u_1651.OnTabRemove(...)
			end
		}), v1655), v1655
	end
}
v_u_916:DefineElement("TabSelector", v1673)
local v1676 = {
	["Base"] = {
		["Callback"] = v_u_929
	},
	["Create"] = function(_, p_u_1674)
		-- upvalues: (copy) v_u_916
		local v_u_1675 = v_u_916:InsertPrefab("RadioButton", p_u_1674)
		v_u_1675.Activated:Connect(function(...)
			-- upvalues: (copy) p_u_1674, (copy) v_u_1675
			return p_u_1674.Callback(v_u_1675, ...)
		end)
		return v_u_1675
	end
}
v_u_916:DefineElement("RadioButton", v1676)
local v1706 = {
	["Base"] = {
		["Label"] = "Checkbox",
		["IsRadio"] = false,
		["Value"] = false,
		["NoAutoTag"] = true,
		["TickedImageSize"] = UDim2.fromScale(1, 1),
		["UntickedImageSize"] = UDim2.fromScale(0, 0),
		["Callback"] = v_u_929,
		["Disabled"] = false
	},
	["Create"] = function(p_u_1677, p_u_1678)
		-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_919
		local v1679 = p_u_1678.IsRadio
		local v1680 = p_u_1678.Value
		local v1681 = p_u_1678.Label
		local v_u_1682 = p_u_1678.TickedImageSize
		local v_u_1683 = p_u_1678.UntickedImageSize
		local v1684 = p_u_1678.Disabled
		local v_u_1685 = v_u_916:InsertPrefab("CheckBox", p_u_1678)
		local v_u_1686 = v_u_916:MergeMetatables(p_u_1678, v_u_1685)
		local v1687 = v_u_1685.Tickbox
		local v_u_1688 = v1687.Tick
		v_u_1688.Image = v_u_916.Icons.Checkmark
		local v1689 = v1687:FindFirstChildOfClass("UIPadding")
		local v1690 = v_u_918:GetChildOfClass(v1687, "UICorner")
		local v_u_1691 = p_u_1677:Label({
			["Text"] = v1681,
			["Parent"] = v_u_1685,
			["LayoutOrder"] = 2
		})
		local v1692 = UDim.new(0, 3)
		if v1679 then
			v_u_1688.ImageTransparency = 1
			v_u_1688.BackgroundTransparency = 0
			v1690.CornerRadius = UDim.new(1, 0)
		else
			v1692 = UDim.new(0, 2)
		end
		v_u_916:SetProperties(v1689, {
			["PaddingBottom"] = v1692,
			["PaddingLeft"] = v1692,
			["PaddingRight"] = v1692,
			["PaddingTop"] = v1692
		})
		local function v_u_1693(...)
			-- upvalues: (copy) p_u_1678, (copy) v_u_1686
			return p_u_1678.Callback(v_u_1686, ...)
		end
		local function v_u_1696(p1694, p1695)
			-- upvalues: (copy) p_u_1677, (copy) v_u_1682, (copy) v_u_1683, (ref) v_u_919, (copy) v_u_1688
			v_u_919:Tween({
				["Object"] = v_u_1688,
				["Tweeninfo"] = p_u_1677:GetThemeKey("AnimationTweenInfo"),
				["NoAnimation"] = p1695,
				["EndProperties"] = {
					["Size"] = p1694 and v_u_1682 or v_u_1683
				}
			})
		end
		function p_u_1678.SetDisabled(p1697, p1698)
			-- upvalues: (copy) v_u_1685, (copy) p_u_1677, (copy) v_u_1691
			p1697.Disabled = p1698
			v_u_1685.Interactable = not p1698
			p_u_1677:SetColorTags({
				[v_u_1691] = p1698 and "LabelDisabled" or "Label"
			}, true)
			return p1697
		end
		function p_u_1678.SetValue(p1699, p1700, p1701)
			-- upvalues: (copy) v_u_1696, (copy) v_u_1693
			p1699.Value = p1700
			v_u_1696(p1700, p1701)
			v_u_1693(p1700)
			return p1699
		end
		function p_u_1678.SetTicked(p1702, ...)
			-- upvalues: (ref) v_u_916
			v_u_916:Warn("Checkbox:SetTicked is deprecated, please use :SetValue")
			return p1702:SetValue(...)
		end
		function p_u_1678.Toggle(p1703)
			local v1704 = not p1703.Value
			p1703.Value = v1704
			p1703:SetValue(v1704)
			return p1703
		end
		local function v1705()
			-- upvalues: (copy) p_u_1678
			p_u_1678:Toggle()
		end
		v_u_1685.Activated:Connect(v1705)
		v1687.Activated:Connect(v1705)
		p_u_1678:SetValue(v1680, true)
		p_u_1678:SetDisabled(v1684)
		v_u_916:SetAnimation(v1687, "Buttons", v_u_1685)
		p_u_1677:TagElements({
			[v_u_1688] = "CheckMark",
			[v1687] = "Checkbox"
		})
		return v_u_1686, v_u_1685
	end
}
v_u_916:DefineElement("Checkbox", v1706)
local v1707 = {
	["Base"] = {
		["IsRadio"] = true,
		["CornerRadius"] = UDim.new(1, 0)
	},
	["Create"] = v_u_1390.Checkbox
}
v_u_916:DefineElement("Radiobox", v1707)
local v1752 = {
	["Base"] = {
		["ColorTag"] = "Frame",
		["Label"] = "Histogram"
	},
	["Create"] = function(p_u_1708, p_u_1709)
		-- upvalues: (copy) v_u_916
		local v1710 = p_u_1709.Label
		local v1711 = p_u_1709.Points
		local v1712 = v_u_916:InsertPrefab("Histogram", p_u_1709)
		local v1713 = v_u_916:MergeMetatables(p_u_1709, v1712)
		local v_u_1714 = v1712.Canvas
		local v_u_1715 = v_u_1714.PointTemplate
		v_u_1715.Visible = false
		p_u_1708:Label({
			["Text"] = v1710,
			["Parent"] = v1712,
			["Position"] = UDim2.new(1, 4)
		})
		local v_u_1716 = nil
		v_u_916:SetItemTooltip(v1712, function(p1717)
			-- upvalues: (ref) v_u_1716
			v_u_1716 = p1717:Label()
		end)
		Merge(p_u_1709, {
			["_Plots"] = {},
			["_Cache"] = {}
		})
		function p_u_1709.GetBaseValues(p1718)
			local v1719 = p1718.Minimum
			local v1720 = p1718.Maximum
			if v1719 and v1720 then
				return v1719, v1720
			end
			for _, v1721 in p1718._Plots do
				local v1722 = v1721.Value
				if not v1719 or v1722 < v1719 then
					v1719 = v1722
				end
				if not v1720 or v1720 < v1722 then
					v1720 = v1722
				end
			end
			return v1719, v1720
		end
		function p_u_1709.UpdateGraph(p1723)
			local v1724 = p1723._Plots
			local v1725, v1726 = p1723:GetBaseValues()
			if v1725 and v1726 then
				local v1727 = v1726 - v1725
				for _, v1728 in v1724 do
					local v1729 = v1728.Point
					local v1730 = (v1728.Value - v1725) / v1727
					local v1731 = math.clamp(v1730, 0.05, 1)
					v1729.Size = UDim2.fromScale(1, v1731)
				end
				return p1723
			end
		end
		function p_u_1709.Plot(p1732, p1733)
			-- upvalues: (copy) v_u_1715, (ref) v_u_916, (copy) v_u_1714, (ref) v_u_1716, (copy) p_u_1709, (copy) p_u_1708
			local v_u_1734 = p1732._Plots
			local v_u_1735 = {}
			local v_u_1736 = v_u_1715:Clone()
			local v1737 = v_u_1736.Bar
			v_u_916:SetProperties(v_u_1736, {
				["Parent"] = v_u_1714,
				["Visible"] = true
			})
			local v_u_1738 = v_u_916:DetectHover(v_u_1736, {
				["MouseEnter"] = true,
				["OnInput"] = function()
					-- upvalues: (copy) v_u_1735
					v_u_1735:UpdateTooltip()
				end
			})
			local v_u_1739 = {
				["Object"] = v_u_1736,
				["Point"] = v1737,
				["Value"] = p1733
			}
			function v_u_1735.UpdateTooltip(_)
				-- upvalues: (copy) v_u_1735, (ref) v_u_1716, (copy) v_u_1739
				v_u_1716.Text = ("%*:\t%*"):format(v_u_1735:GetPointIndex(), v_u_1739.Value)
			end
			function v_u_1735.SetValue(p1740, p1741)
				-- upvalues: (copy) v_u_1739, (ref) p_u_1709, (copy) v_u_1738
				v_u_1739.Value = p1741
				p_u_1709:UpdateGraph()
				if v_u_1738.Hovering then
					p1740:UpdateTooltip()
				end
			end
			function v_u_1735.GetPointIndex(_)
				-- upvalues: (copy) v_u_1734, (copy) v_u_1739
				return table.find(v_u_1734, v_u_1739)
			end
			function v_u_1735.Remove(p1742, _)
				-- upvalues: (copy) v_u_1734, (copy) v_u_1736, (ref) p_u_1709
				table.remove(v_u_1734, p1742:GetPointIndex())
				v_u_1736:Remove()
				p_u_1709:UpdateGraph()
			end
			table.insert(v_u_1734, v_u_1739)
			p1732:UpdateGraph()
			v_u_916:SetAnimation(v1737, "Plots", v_u_1736)
			p_u_1708:TagElements({
				[v1737] = "Plot"
			})
			return v_u_1735
		end
		function p_u_1709.PlotGraph(p1743, p1744)
			local v1745 = p1743._Cache
			local v1746 = #v1745 - #p1744
			if v1746 >= 1 then
				for v1747 = 1, v1746 do
					local v1748 = table.remove(v1745, v1747)
					if v1748 then
						v1748:Remove()
					end
				end
			end
			for v1749, v1750 in p1744 do
				local v1751 = v1745[v1749]
				if v1751 then
					v1751:SetValue(v1750)
				else
					v1745[v1749] = p1743:Plot(v1750)
				end
			end
			return p1743
		end
		if v1711 then
			p_u_1709:PlotGraph(v1711)
		end
		return v1713, v1712
	end
}
v_u_916:DefineElement("PlotHistogram", v1752)
local v1766 = {
	["Base"] = {
		["IsRadio"] = true
	},
	["Create"] = function(_, p1753)
		-- upvalues: (copy) v_u_916
		local v1754 = p1753.Model
		local v1755 = p1753.Camera
		local v1756 = v_u_916:InsertPrefab("Viewport", p1753)
		local v1757 = v_u_916:MergeMetatables(p1753, v1756)
		local v_u_1758 = v1756.Viewport
		local v_u_1759 = v_u_1758.WorldModel
		if not v1755 then
			v1755 = v_u_916:CreateInstance("Camera", v_u_1758)
			v1755.CFrame = CFrame.new(0, 0, 0)
		end
		Merge(p1753, {
			["Camera"] = v1755,
			["WorldModel"] = v_u_1759,
			["Viewport"] = v_u_1758
		})
		function p1753.SetCamera(p1760, p1761)
			-- upvalues: (copy) v_u_1758
			p1760.Camera = p1761
			v_u_1758.CurrentCamera = p1761
			return p1760
		end
		function p1753.SetModel(p1762, p1763, p1764)
			-- upvalues: (copy) v_u_1759
			local v1765 = p1762.Clone
			v_u_1759:ClearAllChildren()
			if v1765 then
				p1763 = p1763:Clone()
			end
			if p1764 then
				p1763:PivotTo(p1764)
			end
			p1763.Parent = v_u_1759
			p1762.Model = p1763
			return p1763
		end
		if v1754 then
			p1753:SetModel(v1754)
		end
		p1753:SetCamera(v1755)
		return v1757, v1756
	end
}
v_u_916:DefineElement("Viewport", v1766)
local v1784 = {
	["Base"] = {
		["Value"] = "",
		["Placeholder"] = "",
		["Label"] = "Input text",
		["Callback"] = v_u_929,
		["MultiLine"] = false,
		["NoAutoTag"] = true,
		["Disabled"] = false
	},
	["Create"] = function(p_u_1767, p_u_1768)
		-- upvalues: (copy) v_u_916
		local v1769 = p_u_1768.MultiLine
		local v1770 = p_u_1768.Placeholder
		local v_u_1771 = p_u_1768.Label
		local v1772 = p_u_1768.Disabled
		local v1773 = p_u_1768.Value
		local v_u_1774 = v_u_916:InsertPrefab("InputBox", p_u_1768)
		local v_u_1775 = v_u_1774.Frame.Input
		local v_u_1776 = v_u_916:MergeMetatables(p_u_1768, v_u_1774)
		p_u_1767:Label({
			["Parent"] = v_u_1774,
			["Text"] = v_u_1771,
			["AutomaticSize"] = Enum.AutomaticSize.X,
			["Size"] = UDim2.fromOffset(0, 19),
			["Position"] = UDim2.new(1, 4),
			["LayoutOrder"] = 2
		})
		v_u_916:SetProperties(v_u_1775, {
			["PlaceholderText"] = v1770,
			["MultiLine"] = v1769
		})
		local function v_u_1777(...)
			-- upvalues: (copy) p_u_1768, (copy) v_u_1776
			p_u_1768.Callback(v_u_1776, ...)
		end
		function p_u_1768.SetValue(p1778, p1779)
			-- upvalues: (copy) v_u_1775
			v_u_1775.Text = tostring(p1779)
			p1778.Value = p1779
			return p1778
		end
		function p_u_1768.SetDisabled(p1780, p1781)
			-- upvalues: (copy) v_u_1774, (copy) p_u_1767, (copy) v_u_1771
			p1780.Disabled = p1781
			v_u_1774.Interactable = not p1781
			p_u_1767:SetColorTags({
				[v_u_1771] = p1781 and "LabelDisabled" or "Label"
			}, true)
			return p1780
		end
		function p_u_1768.Clear(p1782)
			-- upvalues: (copy) v_u_1775
			v_u_1775.Text = ""
			return p1782
		end
		v_u_1775:GetPropertyChangedSignal("Text"):Connect(function()
			-- upvalues: (copy) v_u_1775, (copy) p_u_1768, (copy) v_u_1777
			local v1783 = v_u_1775.Text
			p_u_1768.Value = v1783
			v_u_1777(v1783)
		end)
		p_u_1768:SetDisabled(v1772)
		p_u_1768:SetValue(v1773)
		p_u_1767:TagElements({
			[v_u_1775] = "Frame"
		})
		return v_u_1776, v_u_1774
	end
}
v_u_916:DefineElement("InputText", v1784)
local v1810 = {
	["Base"] = {
		["Value"] = 0,
		["Increment"] = 1,
		["Placeholder"] = "",
		["Label"] = "Input Int",
		["Callback"] = v_u_929
	},
	["Create"] = function(p_u_1785, p_u_1786)
		-- upvalues: (copy) v_u_916
		local v1787 = p_u_1786.Value
		local v1788 = p_u_1786.Placeholder
		local v1789 = p_u_1786.Label
		local v1790 = p_u_1786.Disabled
		local v1791 = p_u_1786.NoButtons
		local v_u_1792 = v_u_916:InsertPrefab("InputBox", p_u_1786)
		local v_u_1793 = v_u_916:MergeMetatables(p_u_1786, v_u_1792)
		local v1794 = v_u_1792.Frame
		local v_u_1795 = v1794.Input
		v_u_1795.PlaceholderText = v1788
		local v1796 = p_u_1785:Button({
			["Text"] = "-",
			["Parent"] = v1794,
			["LayoutOrder"] = 2,
			["Ratio"] = 1,
			["AutomaticSize"] = Enum.AutomaticSize.None,
			["FlexMode"] = Enum.UIFlexMode.None,
			["Size"] = UDim2.fromScale(1, 1),
			["Visible"] = not v1791,
			["Callback"] = function()
				-- upvalues: (copy) p_u_1786
				p_u_1786:Decrease()
			end
		})
		local v1797 = p_u_1785:Button({
			["Text"] = "+",
			["Parent"] = v1794,
			["LayoutOrder"] = 3,
			["Ratio"] = 1,
			["AutomaticSize"] = Enum.AutomaticSize.None,
			["FlexMode"] = Enum.UIFlexMode.None,
			["Size"] = UDim2.fromScale(1, 1),
			["Visible"] = not v1791,
			["Callback"] = function()
				-- upvalues: (copy) p_u_1786
				p_u_1786:Increase()
			end
		})
		local v_u_1798 = p_u_1785:Label({
			["Parent"] = v_u_1792,
			["Text"] = v1789,
			["AutomaticSize"] = Enum.AutomaticSize.X,
			["Size"] = UDim2.fromOffset(0, 19),
			["Position"] = UDim2.new(1, 4),
			["LayoutOrder"] = 4
		})
		local function v_u_1799(...)
			-- upvalues: (copy) p_u_1786, (copy) v_u_1793
			p_u_1786.Callback(v_u_1793, ...)
		end
		function p_u_1786.Increase(p1800)
			-- upvalues: (copy) p_u_1786
			p_u_1786:SetValue(p1800.Value + p1800.Increment)
		end
		function p_u_1786.Decrease(p1801)
			-- upvalues: (copy) p_u_1786
			p_u_1786:SetValue(p1801.Value - p1801.Increment)
		end
		function p_u_1786.SetDisabled(p1802, p1803)
			-- upvalues: (copy) v_u_1792, (copy) p_u_1785, (copy) v_u_1798
			p1802.Disabled = p1803
			v_u_1792.Interactable = not p1803
			p_u_1785:SetColorTags({
				[v_u_1798] = p1803 and "LabelDisabled" or "Label"
			}, true)
			return p1802
		end
		function p_u_1786.SetValue(p1804, p1805)
			-- upvalues: (copy) v_u_1795, (copy) p_u_1786, (copy) v_u_1799
			local v1806 = p1804.Value
			local v1807 = p1804.Minimum
			local v1808 = p1804.Maximum
			local v1809 = tonumber(p1805) or v1806
			if v1807 and v1808 then
				v1809 = math.clamp(v1809, v1807, v1808)
			end
			v_u_1795.Text = v1809
			p_u_1786.Value = v1809
			v_u_1799(v1809)
			return p1804
		end
		p_u_1786:SetValue(v1787)
		p_u_1786:SetDisabled(v1790)
		v_u_1795.FocusLost:Connect(function()
			-- upvalues: (copy) v_u_1795, (copy) p_u_1786
			p_u_1786:SetValue(v_u_1795.Text)
		end)
		p_u_1785:TagElements({
			[v1797] = "Button",
			[v1796] = "Button",
			[v_u_1795] = "Frame"
		})
		return v_u_1793, v_u_1792
	end
}
v_u_916:DefineElement("InputInt", v1810)
local v1813 = {
	["Base"] = {
		["Label"] = "",
		["Size"] = UDim2.new(1, 0, 0, 39),
		["Border"] = false,
		["ColorTag"] = "Frame"
	},
	["Create"] = function(p1811, p1812)
		return p1811:Console(p1812)
	end
}
v_u_916:DefineElement("InputTextMultiline", v1813)
local v1850 = {
	["Base"] = {
		["Enabled"] = true,
		["Value"] = "",
		["TextWrapped"] = false,
		["Border"] = true,
		["MaxLines"] = 300,
		["LinesFormat"] = "%s",
		["Callback"] = v_u_929
	},
	["Create"] = function(p1814, p_u_1815)
		-- upvalues: (copy) v_u_916
		local v1816 = p_u_1815.ReadOnly
		local v1817 = p_u_1815.LineNumbers
		local v1818 = p_u_1815.Value
		local v1819 = p_u_1815.Placeholder
		local v_u_1820 = v_u_916:InsertPrefab("Console", p_u_1815)
		local v1821 = v_u_916:MergeMetatables(p_u_1815, v_u_1820)
		local v_u_1822 = v_u_1820.Source
		local v_u_1823 = v_u_1820.Lines
		v_u_1823.Visible = v1817
		function p_u_1815.CountLines(_, _)
			-- upvalues: (copy) v_u_1822
			local v1824 = v_u_1822.Text:split("\n")
			local v1825 = #v1824
			return v1825 == 1 and v1824[1] == "" and 0 or v1825
		end
		function p_u_1815.UpdateLineNumbers(p1826)
			-- upvalues: (copy) v_u_1823, (copy) v_u_1822
			local v1827 = p1826.LineNumbers
			local v1828 = p1826.LinesFormat
			if v1827 then
				local v1829 = p1826:CountLines()
				v_u_1823.Text = ""
				for v1830 = 1, v1829 do
					local v1831 = v1828:format(v1830)
					local v1832 = v1830 == v1829 and "" or "\n"
					local v1833 = v_u_1823
					v1833.Text = v1833.Text .. ("%*%*"):format(v1831, v1832)
				end
				local v1834 = v_u_1823.AbsoluteSize.X
				v_u_1822.Size = UDim2.new(1, -v1834, 0, 0)
				return p1826
			end
		end
		function p_u_1815.CheckLineCount(p1835)
			-- upvalues: (copy) p_u_1815, (copy) v_u_1822
			local v1836 = p_u_1815.MaxLines
			if v1836 then
				local v1837 = v_u_1822.Text
				local v1838 = v1837:split("\n")
				if v1836 < #v1838 then
					p1835:SetValue((v1837:sub(#("%*\\n"):format(v1838[1]))))
				end
				return p1835
			end
		end
		function p_u_1815.UpdateScroll(p1839)
			-- upvalues: (copy) v_u_1820
			local v1840 = v_u_1820.AbsoluteCanvasSize
			v_u_1820.CanvasPosition = Vector2.new(0, v1840.Y)
			return p1839
		end
		function p_u_1815.SetValue(p1841, p1842)
			-- upvalues: (copy) v_u_1822
			if p1841.Enabled then
				v_u_1822.Text = tostring(p1842)
				p1841:Update()
				return p1841
			end
		end
		function p_u_1815.GetValue(_)
			-- upvalues: (copy) v_u_1822
			return v_u_1822.Text
		end
		function p_u_1815.Clear(p1843)
			-- upvalues: (copy) v_u_1822
			v_u_1822.Text = ""
			p1843:Update()
			return p1843
		end
		function p_u_1815.AppendText(p1844, ...)
			-- upvalues: (ref) v_u_916
			local v1845 = p1844:CountLines(true)
			local v1846 = v_u_916:Concat({ ... }, " ")
			if v1845 == 0 then
				return p1844:SetValue(v1846)
			end
			p1844:SetValue((("%*\n%*"):format(p1844:GetValue(), v1846)))
			return p1844
		end
		function p_u_1815.Update(p1847)
			local v1848 = p1847.AutoScroll
			p1847:CheckLineCount()
			p1847:UpdateLineNumbers()
			if v1848 then
				p1847:UpdateScroll()
			end
		end
		p_u_1815:SetValue(v1818)
		v_u_916:SetProperties(v_u_1822, p_u_1815)
		v_u_916:SetProperties(v_u_1822, {
			["TextEditable"] = not v1816,
			["Parent"] = v_u_1820,
			["PlaceholderText"] = v1819
		})
		p1814:TagElements({
			[v_u_1822] = "ConsoleText",
			[v_u_1823] = "ConsoleLineNumbers"
		})
		v_u_1822:GetPropertyChangedSignal("Text"):Connect(function()
			-- upvalues: (copy) p_u_1815
			local v1849 = p_u_1815:GetValue()
			p_u_1815:Update()
			p_u_1815:Callback(v1849)
		end)
		return v1821, v_u_1820
	end
}
v_u_916:DefineElement("Console", v1850)
local v1887 = {
	["Base"] = {
		["VerticalAlignment"] = Enum.VerticalAlignment.Top,
		["RowBackground"] = false,
		["RowBgTransparency"] = 0.87,
		["Border"] = false,
		["Spacing"] = UDim.new(0, 4)
	},
	["Create"] = function(p_u_1851, p_u_1852)
		-- upvalues: (copy) v_u_916
		local v_u_1853 = p_u_1851.WindowClass
		local v_u_1854 = p_u_1852.RowBgTransparency
		local v_u_1855 = p_u_1852.RowBackground
		local v_u_1856 = p_u_1852.Border
		local v_u_1857 = p_u_1852.VerticalAlignment
		local v_u_1858 = p_u_1852.MaxColumns
		local v_u_1859 = p_u_1852.Spacing
		local v_u_1860 = v_u_916:InsertPrefab("Table", p_u_1852)
		local v1861 = v_u_916:MergeMetatables(p_u_1852, v_u_1860)
		local v_u_1862 = v_u_1860.RowTemp
		local v_u_1863 = 0
		local v_u_1864 = {}
		local v_u_1865 = v_u_1856 and v_u_1855
		function p_u_1852.Row(_, p1866)
			-- upvalues: (copy) v_u_1862, (ref) v_u_916, (copy) v_u_1860, (copy) v_u_1857, (copy) v_u_1865, (copy) v_u_1859, (copy) p_u_1851, (ref) v_u_1863, (copy) v_u_1855, (copy) v_u_1854, (copy) v_u_1856, (copy) v_u_1853, (copy) v_u_1858, (copy) v_u_1864
			local v1867 = (p1866 or {}).IsHeader
			local v_u_1868 = 0
			local v_u_1869 = {}
			local v_u_1870 = v_u_1862:Clone()
			v_u_916:SetProperties(v_u_1870, {
				["Name"] = "Row",
				["Visible"] = true,
				["Parent"] = v_u_1860
			})
			v_u_916:SetProperties(v_u_1870:FindFirstChildOfClass("UIListLayout"), {
				["VerticalAlignment"] = v_u_1857,
				["Padding"] = not v_u_1865 and v_u_1859 or UDim.new(0, 1)
			})
			if v1867 then
				p_u_1851:TagElements({
					[v_u_1870] = "Header"
				})
			else
				v_u_1863 = v_u_1863 + 1
			end
			if v_u_1855 and not v1867 then
				v_u_1870.BackgroundTransparency = v_u_1863 % 2 == 1 and 1 or (v_u_1854 or 1)
			end
			local v1871 = {}
			local v_u_1872 = v_u_916:MergeMetatables(v1871, v_u_1870)
			function v1871.Column(_, p1873)
				-- upvalues: (ref) v_u_916, (copy) v_u_1870, (ref) v_u_1856, (ref) v_u_1865, (ref) v_u_1853, (copy) v_u_1872
				local v1874 = p1873 or {}
				v_u_916:CheckConfig(v1874, {
					["HorizontalAlign"] = Enum.HorizontalAlignment.Left,
					["VerticalAlignment"] = Enum.VerticalAlignment.Top
				})
				local v1875 = v_u_1870.ColumnTemp:Clone()
				v_u_916:SetProperties(v1875:FindFirstChildOfClass("UIListLayout"), v1874)
				v1875:FindFirstChildOfClass("UIStroke").Enabled = v_u_1856
				local v1876 = v1875:FindFirstChildOfClass("UIPadding")
				if not v_u_1865 then
					v1876:Destroy()
				end
				v_u_916:SetProperties(v1875, {
					["Parent"] = v_u_1870,
					["Visible"] = true,
					["Name"] = "Column"
				})
				return v_u_916:MakeCanvas({
					["Element"] = v1875,
					["WindowClass"] = v_u_1853,
					["Class"] = v_u_1872
				})
			end
			function v1871.NextColumn(p1877)
				-- upvalues: (ref) v_u_1868, (ref) v_u_1858, (copy) v_u_1869
				v_u_1868 = v_u_1868 + 1
				local v1878 = v_u_1868 % v_u_1858 + 1
				local v1879 = v_u_1869[v1878]
				if not v1879 then
					v1879 = p1877:Column()
					v_u_1869[v1878] = v1879
				end
				return v1879
			end
			local v1880 = v_u_1864
			table.insert(v1880, v1871)
			return v_u_1872
		end
		function p_u_1852.NextRow(p1881)
			return p1881:Row()
		end
		function p_u_1852.HeaderRow(p1882)
			return p1882:Row({
				["IsHeader"] = true
			})
		end
		function p_u_1852.ClearRows(_)
			-- upvalues: (ref) v_u_1863, (copy) v_u_1860, (copy) v_u_1862, (copy) p_u_1852
			v_u_1863 = 0
			local v1883 = next
			local v1884, v1885 = v_u_1860:GetChildren()
			for _, v1886 in v1883, v1884, v1885 do
				if v1886:IsA("Frame") and v1886 ~= v_u_1862 then
					v1886:Destroy()
				end
			end
			return p_u_1852
		end
		return v1861, v_u_1860
	end
}
v_u_916:DefineElement("Table", v1887)
local v1899 = {
	["Base"] = {
		["Spacing"] = 4,
		["HorizontalFlex"] = Enum.UIFlexAlignment.None,
		["VerticalFlex"] = Enum.UIFlexAlignment.None,
		["HorizontalAlignment"] = Enum.HorizontalAlignment.Left,
		["VerticalAlignment"] = Enum.VerticalAlignment.Top,
		["FillDirection"] = Enum.FillDirection.Horizontal
	},
	["Create"] = function(p1888, p1889)
		-- upvalues: (copy) v_u_916
		local v1890 = p1888.WindowClass
		local v1891 = p1889.Spacing
		local v1892 = p1889.HorizontalFlex
		local v1893 = p1889.VerticalFlex
		local v1894 = p1889.HorizontalAlignment
		local v1895 = p1889.VerticalAlignment
		local v1896 = p1889.FillDirection
		local v1897 = v_u_916:InsertPrefab("List", p1889)
		local v1898 = v_u_916:MergeMetatables(p1889, v1897)
		v_u_916:SetProperties(v1897.UIListLayout, {
			["Padding"] = UDim.new(0, v1891),
			["HorizontalFlex"] = v1892,
			["VerticalFlex"] = v1893,
			["HorizontalAlignment"] = v1894,
			["VerticalAlignment"] = v1895,
			["FillDirection"] = v1896
		})
		return v_u_916:MakeCanvas({
			["Element"] = v1897,
			["WindowClass"] = v1890,
			["Class"] = v1898
		}), v1897
	end
}
v_u_916:DefineElement("List", v1899)
local v1934 = {
	["Base"] = {
		["Title"] = "Collapsing Header",
		["CollapseIcon"] = v_u_916.Icons.Arrow,
		["Collapsed"] = true,
		["Offset"] = 0,
		["NoAutoTag"] = true,
		["NoAutoFlags"] = true,
		["IconPadding"] = UDim.new(0, 4),
		["Activated"] = v_u_929
	},
	["Create"] = function(p1900, p_u_1901)
		-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_919
		local v1902 = p_u_1901.Title
		local v1903 = p_u_1901.Collapsed
		local v1904 = p_u_1901.ElementStyle
		local v1905 = p_u_1901.Offset
		local v1906 = p_u_1901.TitleBarProperties
		local v1907 = p_u_1901.OpenOnDoubleClick
		local v1908 = p_u_1901.OpenOnArrow
		local v1909 = p_u_1901.CollapseIcon
		local v1910 = p_u_1901.IconPadding
		local v1911 = p_u_1901.Icon
		local v1912 = p_u_1901.NoArrow
		local v_u_1913 = v_u_916:InsertPrefab("CollapsingHeader", p_u_1901)
		local v1914 = v_u_1913.TitleBar
		local v1915 = v1914.Collapse
		local v_u_1916 = v1914.Icon
		p1900:ApplyFlags(v_u_1916, {
			["Image"] = v1911
		})
		local v_u_1917 = v1915.CollapseIcon
		v_u_918:SetPadding(v1915.UIPadding, v1910)
		p1900:ApplyFlags(v_u_1917, {
			["Image"] = v1909
		})
		local v_u_1918 = p1900:Label({
			["ColorTag"] = "CollapsingHeader",
			["Parent"] = v1914,
			["LayoutOrder"] = 2
		})
		local v_u_1919, v_u_1920 = p1900:Indent({
			["Class"] = p_u_1901,
			["Parent"] = v_u_1913,
			["Offset"] = v1905,
			["LayoutOrder"] = 2,
			["Size"] = UDim2.fromScale(1, 0),
			["AutomaticSize"] = Enum.AutomaticSize.None,
			["PaddingTop"] = UDim.new(0, 4),
			["PaddingBottom"] = UDim.new(0, 1)
		})
		local function v1921()
			-- upvalues: (copy) p_u_1901, (copy) v_u_1919
			p_u_1901.Activated(v_u_1919)
		end
		function p_u_1901.Remove(p1922)
			-- upvalues: (copy) v_u_1913
			v_u_1913:Destroy()
			table.clear(p1922)
		end
		function p_u_1901.SetArrowVisible(_, p1923)
			-- upvalues: (copy) v_u_1917
			v_u_1917.Visible = p1923
		end
		function p_u_1901.SetTitle(_, p1924)
			-- upvalues: (copy) v_u_1918
			v_u_1918.Text = p1924
		end
		function p_u_1901.SetVisible(_, p1925)
			-- upvalues: (copy) v_u_1913
			v_u_1913.Visible = p1925
		end
		function p_u_1901.SetIcon(_, p1926)
			-- upvalues: (copy) v_u_1916, (ref) v_u_918
			local v1927
			if p1926 then
				v1927 = p1926 ~= ""
			else
				v1927 = p1926
			end
			v_u_1916.Visible = v1927
			if v1927 then
				v_u_1916.Image = v_u_918:CheckAssetUrl(p1926)
			end
		end
		function p_u_1901.SetCollapsed(p1928, p1929)
			-- upvalues: (ref) v_u_916, (copy) v_u_1920, (copy) v_u_1919, (ref) v_u_919, (copy) v_u_1917
			p1928.Collapsed = p1929
			local v1930 = v_u_916:GetContentSize(v_u_1920)
			local v1931 = v_u_1919:GetThemeKey("AnimationTweenInfo")
			local v1932 = UDim2.fromScale(1, 0)
			v_u_919:HeaderCollapse({
				["Tweeninfo"] = v1931,
				["Collapsed"] = p1929,
				["Toggle"] = v_u_1917,
				["Resize"] = v_u_1920,
				["Hide"] = v_u_1920,
				["ClosedSize"] = v1932,
				["OpenSize"] = v1932 + UDim2.fromOffset(0, v1930.Y)
			})
			return p1928
		end
		local function v1933()
			-- upvalues: (copy) p_u_1901
			p_u_1901:SetCollapsed(not p_u_1901.Collapsed)
		end
		if v1906 then
			v_u_1919:ApplyFlags(v1914, v1906)
		end
		if not v1908 then
			v_u_916:ConnectMouseEvent(v1914, {
				["DoubleClick"] = v1907,
				["Callback"] = v1933
			})
		end
		v_u_1917.Activated:Connect(v1933)
		v1914.Activated:Connect(v1921)
		p_u_1901:SetCollapsed(v1903)
		p_u_1901:SetTitle(v1902)
		p_u_1901:SetArrowVisible(not v1912)
		v_u_916:ApplyStyle(v1914, v1904)
		v_u_1919:TagElements({
			[v1914] = "CollapsingHeader"
		})
		return v_u_1919, v_u_1913
	end
}
v_u_916:DefineElement("CollapsingHeader", v1934)
local v1935 = {}
local v1936 = {
	["Offset"] = 21,
	["IconPadding"] = UDim.new(0, 2),
	["TitleBarProperties"] = {
		["Size"] = UDim2.new(1, 0, 0, 13)
	}
}
v1935.Base = v1936
v1935.Create = v_u_1390.CollapsingHeader
v_u_916:DefineElement("TreeNode", v1935)
local v1941 = {
	["Base"] = {
		["NoAutoTag"] = true,
		["NoAutoTheme"] = true
	},
	["Create"] = function(p1937, p1938)
		-- upvalues: (copy) v_u_916
		local v1939 = p1938.Text
		local v1940 = v_u_916:InsertPrefab("SeparatorText", p1938)
		p1937:Label({
			["Text"] = tostring(v1939),
			["Visible"] = v1939 ~= nil,
			["Parent"] = v1940,
			["LayoutOrder"] = 2,
			["Size"] = UDim2.new(),
			["PaddingLeft"] = UDim.new(0, 4),
			["PaddingRight"] = UDim.new(0, 4)
		})
		p1937:TagElements({
			[v1940.Left] = "Separator",
			[v1940.Right] = "Separator"
		})
		return v1940
	end
}
v_u_916:DefineElement("Separator", v1941)
v_u_916:DefineElement("Canvas", {
	["Base"] = {},
	["Create"] = function(p1942, p1943)
		-- upvalues: (copy) v_u_916
		local v1944 = p1942.WindowClass
		local v1945 = p1943.Scroll
		local v1946 = p1943.Class or p1943
		local v1947 = v_u_916:InsertPrefab(v1945 and "ScrollingCanvas" or "Canvas", p1943)
		return v_u_916:MakeCanvas({
			["Element"] = v1947,
			["WindowClass"] = v1944,
			["Class"] = v1946
		}), v1947
	end
})
local v1948 = {
	["Base"] = {
		["Scroll"] = true
	},
	["Create"] = v_u_1390.Canvas
}
v_u_916:DefineElement("ScrollingCanvas", v1948)
local v1953 = {
	["Base"] = {
		["Scroll"] = false,
		["AutomaticSize"] = Enum.AutomaticSize.Y
	},
	["Create"] = function(p1949, p1950)
		-- upvalues: (copy) v_u_916
		local v1951 = p1949.WindowClass
		local v1952 = v_u_916:InsertPrefab(p1950.Scroll and "ScrollingCanvas" or "Canvas", p1950)
		return v_u_916:MakeCanvas({
			["Element"] = v1952,
			["WindowClass"] = v1951,
			["Class"] = p1950
		}), v1952
	end
}
v_u_916:DefineElement("Region", v1953)
local v1958 = {
	["Base"] = {
		["Scroll"] = false,
		["AutomaticSize"] = Enum.AutomaticSize.Y
	},
	["Create"] = function(p1954, p1955)
		-- upvalues: (copy) v_u_916
		local v1956 = p1954.WindowClass
		local v1957 = v_u_916:InsertPrefab("Group", p1955)
		return v_u_916:MakeCanvas({
			["Element"] = v1957,
			["WindowClass"] = v1956,
			["Class"] = p1955
		}), v1957
	end
}
v_u_916:DefineElement("Group", v1958)
local v1962 = {
	["Base"] = {
		["Offset"] = 15,
		["PaddingTop"] = UDim.new(),
		["PaddingBottom"] = UDim.new(),
		["PaddingRight"] = UDim.new()
	},
	["Create"] = function(p1959, p1960)
		local v1961 = p1960.Offset
		p1960.PaddingLeft = UDim.new(0, v1961)
		return p1959:Canvas(p1960)
	end
}
v_u_916:DefineElement("Indent", v1962)
v_u_916:DefineElement("BulletText", {
	["Base"] = {},
	["Create"] = function(p1963, p1964)
		local v1965 = p1964.Rows
		for _, v1966 in next, v1965 do
			p1963:Bullet(p1964):Label({
				["Text"] = tostring(v1966),
				["LayoutOrder"] = 2,
				["Size"] = UDim2.fromOffset(0, 14)
			})
		end
	end
})
local v1973 = {
	["Base"] = {
		["Padding"] = 3,
		["Icon"] = v_u_916.Icons.Dot,
		["IconSize"] = UDim2.fromOffset(5, 5)
	},
	["Create"] = function(p1967, p1968)
		-- upvalues: (copy) v_u_916
		local v1969 = p1967.WindowClass
		local v1970 = p1968.Padding
		local v1971 = v_u_916:InsertPrefab("Bullet", p1968)
		local v1972 = v_u_916:MakeCanvas({
			["Element"] = v1971,
			["WindowClass"] = v1969,
			["Class"] = p1967
		})
		v1971.UIListLayout.Padding = UDim.new(0, v1970)
		return v1972, v1971
	end
}
v_u_916:DefineElement("Bullet", v1973)
local v1986 = {
	["Base"] = {
		["Spacing"] = 4,
		["Expanded"] = false,
		["HorizontalFlex"] = Enum.UIFlexAlignment.None,
		["VerticalFlex"] = Enum.UIFlexAlignment.None
	},
	["Create"] = function(p1974, p1975)
		-- upvalues: (copy) v_u_916
		local v1976 = p1974.WindowClass
		local v1977 = p1975.Spacing
		local v1978 = p1975.Expanded
		local v1979 = p1975.HorizontalFlex
		local v1980 = p1975.VerticalFlex
		local v1981 = v_u_916:InsertPrefab("Row", p1975)
		local v1982 = v_u_916:MergeMetatables(p1975, v1981)
		local v_u_1983 = v1981:FindFirstChildOfClass("UIListLayout")
		v_u_1983.Padding = UDim.new(0, v1977)
		v_u_1983.HorizontalFlex = v1979
		v_u_1983.VerticalFlex = v1980
		local v1984 = v_u_916:MakeCanvas({
			["Element"] = v1981,
			["WindowClass"] = v1976,
			["Class"] = v1982
		})
		function p1975.Expand(p1985)
			-- upvalues: (copy) v_u_1983
			v_u_1983.HorizontalFlex = Enum.UIFlexAlignment.Fill
			return p1985
		end
		if v1978 then
			p1975:Expand()
		end
		return v1984, v1981
	end
}
v_u_916:DefineElement("Row", v1986)
local v2034 = {
	["Base"] = {
		["Format"] = "%.f",
		["Label"] = "",
		["Type"] = "Slider",
		["Callback"] = v_u_929,
		["NoGrab"] = false,
		["NoClick"] = false,
		["Minimum"] = 0,
		["Maximum"] = 100,
		["ColorTag"] = "Frame",
		["Disabled"] = false
	},
	["Create"] = function(p_u_1987, p_u_1988)
		-- upvalues: (copy) v_u_916, (copy) v_u_919
		local v1989 = p_u_1988.Value or p_u_1988.Minimum
		local v_u_1990 = p_u_1988.Format
		local v1991 = p_u_1988.Label
		local v_u_1992 = p_u_1988.NoAnimation
		local v1993 = p_u_1988.NoGrab
		local v_u_1994 = p_u_1988.NoClick
		local v_u_1995 = p_u_1988.Type
		local v1996 = p_u_1988.Disabled
		local v_u_1997 = v_u_916:InsertPrefab("Slider")
		local v_u_1998 = v_u_1997.Track
		local v_u_1999 = v_u_1998.Grab
		local v_u_2000 = v_u_1998.ValueText
		local v_u_2001 = v_u_916:MergeMetatables(p_u_1988, v_u_1997)
		local v2002 = v_u_1999.AbsoluteSize
		local v_u_2003 = v_u_916:SetAnimation(v_u_1997, "Inputs")
		local v_u_2004 = p_u_1987:Label({
			["Parent"] = v_u_1997,
			["Text"] = v1991,
			["Position"] = UDim2.new(1, 4),
			["Size"] = UDim2.fromScale(0, 1)
		})
		Merge(p_u_1988, {
			["Grab"] = v_u_1999,
			["Name"] = v1991
		})
		if v_u_1995 == "Slider" then
			v_u_1998.Position = UDim2.fromOffset(v2002.X / 2, 0)
			v_u_1998.Size = UDim2.new(1, -v2002.X, 1, 0)
		end
		local v_u_2011 = {
			["Slider"] = function(p2005)
				return {
					["AnchorPoint"] = Vector2.new(0.5, 0.5),
					["Position"] = UDim2.fromScale(p2005, 0.5)
				}
			end,
			["Progress"] = function(p2006)
				return {
					["Size"] = UDim2.fromScale(p2006, 1)
				}
			end,
			["Snap"] = function(_, p2007, p2008, p2009)
				local v2010 = (math.round(p2007) - p2008) / p2009
				return {
					["Size"] = UDim2.fromScale(1 / p2009, 1),
					["Position"] = UDim2.fromScale(v2010, 0.5)
				}
			end
		}
		local function v_u_2012(...)
			-- upvalues: (copy) p_u_1988, (copy) v_u_2001
			return p_u_1988.Callback(v_u_2001, ...)
		end
		function p_u_1988.SetDisabled(p2013, p2014)
			-- upvalues: (copy) v_u_1997, (copy) p_u_1987, (copy) v_u_2004
			p2013.Disabled = p2014
			v_u_1997.Interactable = not p2014
			p_u_1987:SetColorTags({
				[v_u_2004] = p2014 and "LabelDisabled" or "Label"
			}, true)
			return p2013
		end
		function p_u_1988.SetValueText(_, p2015)
			-- upvalues: (copy) v_u_2000
			v_u_2000.Text = tostring(p2015)
		end
		function p_u_1988.SetValue(p2016, p2017, p2018)
			-- upvalues: (copy) p_u_1987, (copy) p_u_1988, (copy) v_u_2011, (copy) v_u_1995, (ref) v_u_919, (copy) v_u_1999, (copy) v_u_1992, (copy) v_u_1990, (copy) v_u_2012
			local v2019 = p_u_1987:GetThemeKey("AnimationTweenInfo")
			local v2020 = p_u_1988.Minimum
			local v2021 = p_u_1988.Maximum
			local v2022 = v2021 - v2020
			local v2023
			if p2018 then
				local v2024 = v2020 + v2022 * p2017
				v2023 = p2017
				p2017 = v2024
			else
				v2023 = (p2017 - v2020) / v2022
			end
			local v2025 = math.clamp(v2023, 0, 1)
			v_u_919:Tween({
				["Object"] = v_u_1999,
				["Tweeninfo"] = v2019,
				["NoAnimation"] = v_u_1992,
				["EndProperties"] = v_u_2011[v_u_1995](v2025, p2017, v2020, v2021)
			})
			p2016.Value = p2017
			p2016:SetValueText(v_u_1990:format(p2017, v2021))
			v_u_2012(p2017)
			return p2016
		end
		local function v_u_2027(p2026)
			-- upvalues: (copy) p_u_1987, (copy) v_u_1997, (copy) v_u_2003
			p_u_1987:SetColorTags({
				[v_u_1997] = p2026 and "FrameActive" or "Frame"
			}, true)
			p_u_1987:SetElementFocused(v_u_1997, {
				["Focused"] = p2026,
				["Animation"] = v_u_2003
			})
		end
		local function v_u_2028()
			-- upvalues: (copy) p_u_1988
			if not p_u_1988.Disabled then
				if not p_u_1988.ReadOnly then
					return true
				end
			end
		end
		local function v_u_2033(p2029)
			-- upvalues: (copy) v_u_2028, (copy) v_u_1998, (copy) p_u_1988
			if v_u_2028() then
				local v2030 = v_u_1998.AbsolutePosition.X
				local v2031 = v_u_1998.AbsoluteSize.X
				local v2032 = (p2029.X - v2030) / v2031
				p_u_1988:SetValue(math.clamp(v2032, 0, 1), true)
			end
		end
		v_u_1999.Visible = not v1993
		p_u_1988:SetValue(v1989)
		p_u_1988:SetDisabled(v1996)
		p_u_1987:TagElements({
			[v_u_2000] = "Label",
			[v_u_1999] = "SliderGrab"
		})
		v_u_916:ConnectDrag(v_u_1998, {
			["DragStart"] = function(...)
				-- upvalues: (copy) v_u_2028, (copy) v_u_2027, (copy) v_u_1994, (copy) v_u_2033
				if v_u_2028() then
					v_u_2027(true)
					if not v_u_1994 then
						v_u_2033(...)
					end
				end
			end,
			["DragMovement"] = v_u_2033,
			["DragEnd"] = function()
				-- upvalues: (copy) v_u_2027
				v_u_2027(false)
			end
		})
		return v_u_2001, v_u_1997
	end
}
v_u_916:DefineElement("SliderBase", v2034)
local v2047 = {
	["Base"] = {
		["Items"] = {},
		["Label"] = "Slider Enum",
		["Type"] = "Snap",
		["Minimum"] = 1,
		["Maximum"] = 10,
		["Value"] = 1,
		["Callback"] = v_u_929,
		["ColorTag"] = "Frame"
	},
	["Create"] = function(p2035, p_u_2036)
		local v_u_2037 = p_u_2036.Callback
		local v2038 = p_u_2036.Value
		local function v_u_2043(p2039, p2040)
			local v2041 = math.round(p2040)
			local v2042 = p2039.Items
			p2039.Maximum = #v2042
			return v2042[v2041]
		end
		function p_u_2036.Callback(p2044, p2045)
			-- upvalues: (copy) v_u_2043, (copy) p_u_2036, (copy) v_u_2037
			local v2046 = v_u_2043(p2044, p2045)
			p2044:SetValueText(v2046)
			p_u_2036.Value = v2046
			return v_u_2037(p2044, v2046)
		end
		v_u_2043(p_u_2036, v2038)
		return p2035:SliderBase(p_u_2036)
	end
}
v_u_916:DefineElement("SliderEnum", v2047)
local v2048 = {
	["Base"] = {
		["Label"] = "Slider Int",
		["ColorTag"] = "Frame"
	},
	["Create"] = v_u_1390.SliderBase
}
v_u_916:DefineElement("SliderInt", v2048)
local v2049 = {
	["Base"] = {
		["Label"] = "Slider Float",
		["Format"] = "%.3f",
		["ColorTag"] = "Frame"
	},
	["Create"] = v_u_1390.SliderBase
}
v_u_916:DefineElement("SliderFloat", v2049)
local v2083 = {
	["Base"] = {
		["Format"] = "%.f",
		["Label"] = "Drag Int",
		["Callback"] = v_u_929,
		["Minimum"] = 0,
		["Maximum"] = 100,
		["ColorTag"] = "Frame",
		["Disabled"] = false
	},
	["Create"] = function(p_u_2050, p_u_2051)
		-- upvalues: (copy) v_u_916
		local v2052 = p_u_2051.Value or p_u_2051.Minimum
		local v_u_2053 = p_u_2051.Format
		local v2054 = p_u_2051.Label
		local v2055 = p_u_2051.Disabled
		local v_u_2056 = v_u_916:InsertPrefab("Slider")
		local v_u_2057 = v_u_916:MergeMetatables(p_u_2051, v_u_2056)
		local v2058 = v_u_2056.Track
		local v_u_2059 = v2058.ValueText
		v2058.Grab.Visible = false
		local v_u_2060 = p_u_2050:Label({
			["Parent"] = v_u_2056,
			["Text"] = v2054,
			["Position"] = UDim2.new(1, 7),
			["Size"] = UDim2.fromScale(0, 1)
		})
		local v_u_2061 = 0
		local v_u_2062 = 0
		local v_u_2063 = v_u_916:SetAnimation(v_u_2056, "Inputs")
		local function v_u_2064(...)
			-- upvalues: (copy) p_u_2051, (copy) v_u_2057
			return p_u_2051.Callback(v_u_2057, ...)
		end
		local v_u_2065 = nil
		function p_u_2051.SetValue(p2066, p2067, p2068)
			-- upvalues: (ref) v_u_2061, (copy) v_u_2059, (copy) v_u_2053, (copy) v_u_2064
			local v2069 = p2066.Minimum
			local v2070 = p2066.Maximum
			local v2071 = v2070 - v2069
			if p2068 then
				p2067 = v2069 + v2071 * (v_u_2061 / 100)
			else
				v_u_2061 = (p2067 - v2069) / v2071 * 100
			end
			local v2072 = math.clamp(p2067, v2069, v2070)
			p2066.Value = v2072
			v_u_2059.Text = v_u_2053:format(v2072, v2070)
			v_u_2064(v2072)
			return p2066
		end
		function p_u_2051.SetDisabled(p2073, p2074)
			-- upvalues: (copy) p_u_2050, (copy) v_u_2060
			p2073.Disabled = p2074
			p_u_2050:SetColorTags({
				[v_u_2060] = p2074 and "LabelDisabled" or "Label"
			}, true)
			return p2073
		end
		local function v_u_2076(p2075)
			-- upvalues: (copy) p_u_2050, (copy) v_u_2056, (copy) v_u_2063
			p_u_2050:SetColorTags({
				[v_u_2056] = p2075 and "FrameActive" or "Frame"
			}, true)
			p_u_2050:SetElementFocused(v_u_2056, {
				["Focused"] = p2075,
				["Animation"] = v_u_2063
			})
		end
		local function v_u_2077()
			-- upvalues: (copy) p_u_2051
			if not p_u_2051.Disabled then
				if not p_u_2051.ReadOnly then
					return true
				end
			end
		end
		local function v2079(p2078)
			-- upvalues: (copy) v_u_2077, (copy) v_u_2076, (ref) v_u_2065, (ref) v_u_2062, (ref) v_u_2061
			if v_u_2077() then
				v_u_2076(true)
				v_u_2065 = p2078
				v_u_2062 = v_u_2061
			end
		end
		local function v2082(p2080)
			-- upvalues: (copy) v_u_2077, (ref) v_u_2065, (ref) v_u_2062, (ref) v_u_2061, (copy) p_u_2051
			if v_u_2077() then
				local v2081 = v_u_2062 + (p2080.X - v_u_2065.X) / 2
				v_u_2061 = math.clamp(v2081, 0, 100)
				p_u_2051:SetValue(v_u_2061, true)
			end
		end
		p_u_2051:SetValue(v2052)
		p_u_2051:SetDisabled(v2055)
		v_u_916:ConnectDrag(v2058, {
			["DragStart"] = v2079,
			["DragEnd"] = function()
				-- upvalues: (copy) v_u_2076
				v_u_2076(false)
			end,
			["DragMovement"] = v2082
		})
		p_u_2050:TagElements({
			[v_u_2059] = "Label"
		})
		return v_u_2057, v_u_2056
	end
}
v_u_916:DefineElement("DragInt", v2083)
local v2084 = {
	["Base"] = {
		["Format"] = "%.3f",
		["Label"] = "Drag Float",
		["ColorTag"] = "Frame"
	},
	["Create"] = v_u_1390.DragInt
}
v_u_916:DefineElement("DragFloat", v2084)
local v2121 = {
	["Base"] = {
		["Callback"] = v_u_929,
		["Label"] = "",
		["Disabled"] = false,
		["BaseInputConfig"] = {},
		["InputConfigs"] = {},
		["Value"] = {},
		["Minimum"] = {},
		["Maximum"] = {},
		["MultiCallback"] = v_u_929
	},
	["Create"] = function(p_u_2085, p_u_2086)
		-- upvalues: (copy) v_u_916
		local v2087 = p_u_2086.Label
		local v2088 = p_u_2086.BaseInputConfig
		local v_u_2089 = p_u_2086.InputConfigs
		local v2090 = p_u_2086.InputType
		local v2091 = p_u_2086.Disabled
		local v2092 = p_u_2086.Value
		local v2093 = p_u_2086.Minimum
		local v2094 = p_u_2086.Maximum
		assert(v2090, "No input type provided for MultiElement")
		local v2095, v2096 = p_u_2085:Row({
			["Spacing"] = 4
		})
		local v2097 = v2095:Row({
			["Size"] = UDim2.fromScale(0.65, 0),
			["Expanded"] = true
		})
		local v_u_2098 = v2095:Label({
			["Size"] = UDim2.fromScale(0.35, 0),
			["LayoutOrder"] = 2,
			["Text"] = v2087
		})
		local v_u_2099 = v_u_916:MergeMetatables(p_u_2086, v2095)
		local v_u_2100 = {}
		local v_u_2101 = false
		local function v_u_2105()
			-- upvalues: (copy) v_u_2100, (copy) p_u_2086
			local v2102 = {}
			for v2103, v2104 in v_u_2100 do
				v2102[v2103] = v2104:GetValue()
			end
			p_u_2086.Value = v2102
			return v2102
		end
		local function v_u_2106(...)
			-- upvalues: (copy) p_u_2086, (copy) v_u_2099
			p_u_2086.MultiCallback(v_u_2099, ...)
		end
		local function v2107()
			-- upvalues: (copy) v_u_2100, (copy) v_u_2089, (ref) v_u_2101, (copy) v_u_2105, (copy) v_u_2106
			if #v_u_2100 == #v_u_2089 then
				if v_u_2101 then
					v_u_2106((v_u_2105()))
				end
			else
				return
			end
		end
		function p_u_2086.SetDisabled(p2108, p2109)
			-- upvalues: (copy) p_u_2085, (copy) v_u_2098, (copy) v_u_2100
			p2108.Disabled = p2109
			p_u_2085:SetColorTags({
				[v_u_2098] = p2109 and "LabelDisabled" or "Label"
			}, true)
			for _, v2110 in v_u_2100 do
				v2110:SetDisabled(p2109)
			end
		end
		function p_u_2086.SetValue(_, p2111)
			-- upvalues: (ref) v_u_2101, (copy) v_u_2100, (copy) v_u_2106
			v_u_2101 = false
			for v2112, v2113 in p2111 do
				local v2114 = v_u_2100[v2112]
				local v2115 = ("No input object for index: %*"):format(v2112)
				assert(v2114, v2115)
				v2114:SetValue(v2113)
			end
			v_u_2101 = true
			v_u_2106(p2111)
		end
		local v2116 = Copy(v2088, {
			["Size"] = UDim2.new(1, 0, 0, 19),
			["Label"] = "",
			["Callback"] = v2107
		})
		for v2117, v2118 in v_u_2089 do
			local v2119 = Copy(v2116, v2118)
			v_u_916:CheckConfig(v2119, {
				["Minimum"] = v2093[v2117],
				["Maximum"] = v2094[v2117]
			})
			local v2120 = v2097[v2090](v2097, v2119)
			table.insert(v_u_2100, v2120)
		end
		Merge(p_u_2086, {
			["Row"] = v2097,
			["Inputs"] = v_u_2100
		})
		v_u_2101 = true
		p_u_2086:SetDisabled(v2091)
		p_u_2086:SetValue(v2092)
		return v_u_2099, v2096
	end
}
v_u_916:DefineElement("MultiElement", v2121)
local function v2131(p2122, p2123, p2124, p_u_2125)
	-- upvalues: (copy) v_u_916, (copy) v_u_929
	local v2126 = v_u_916
	local v2130 = {
		["Base"] = {
			["Label"] = p2122,
			["Callback"] = v_u_929,
			["InputType"] = p2123,
			["InputConfigs"] = table.create(p2124, {}),
			["BaseInputConfig"] = {}
		},
		["Create"] = function(p2127, p_u_2128)
			-- upvalues: (copy) p_u_2125, (ref) v_u_916
			local v2129 = p_u_2128.BaseInputConfig
			if p_u_2125 then
				Merge(v2129, p_u_2125)
			end
			v_u_916:CheckConfig(v2129, {
				["ReadOnly"] = p_u_2128.ReadOnly,
				["Format"] = p_u_2128.Format
			})
			function p_u_2128.MultiCallback(...)
				-- upvalues: (copy) p_u_2128
				p_u_2128.Callback(...)
			end
			return p2127:MultiElement(p_u_2128)
		end
	}
	v2126:DefineElement(p2122, v2130)
end
local function v2164(p2132, p_u_2133)
	-- upvalues: (copy) v_u_916, (copy) v_u_929
	local v2134 = v_u_916
	local v2135 = {}
	local v2136 = {
		["Label"] = p2132,
		["Callback"] = v_u_929,
		["Value"] = v_u_916.Accent.Light,
		["Disabled"] = false,
		["Minimum"] = { 0, 0, 0 },
		["Maximum"] = {
			255,
			255,
			255,
			100
		},
		["BaseInputConfig"] = {}
	}
	local v2137 = {
		{
			["Format"] = "R: %.f"
		},
		{
			["Format"] = "G: %.f"
		},
		{
			["Format"] = "B: %.f"
		}
	}
	v2136.InputConfigs = v2137
	v2135.Base = v2136
	function v2135.Create(p2138, p_u_2139)
		-- upvalues: (copy) p_u_2133, (ref) v_u_916
		local v2140 = p_u_2139.Value
		local v2141 = Copy(p_u_2139, {
			["Value"] = { 1, 1, 1 },
			["Callback"] = function(_, ...)
				-- upvalues: (copy) p_u_2139
				if p_u_2139.ValueChanged then
					p_u_2139:ValueChanged(...)
				end
			end
		})
		local v_u_2142, v2143 = p2138[p_u_2133](p2138, v2141)
		local v_u_2144 = v_u_916:MergeMetatables(p_u_2139, v_u_2142)
		local v_u_2145 = v_u_2142.Row:Button({
			["BackgroundTransparency"] = 0,
			["Size"] = UDim2.fromOffset(19, 19),
			["UiPadding"] = 0,
			["Text"] = "",
			["Ratio"] = 1,
			["ColorTag"] = "",
			["ElementStyle"] = ""
		})
		local function v_u_2146(...)
			-- upvalues: (copy) p_u_2139, (copy) v_u_2144
			return p_u_2139.Callback(v_u_2144, ...)
		end
		local function v_u_2148(p2147)
			-- upvalues: (copy) v_u_2145, (copy) v_u_2146
			v_u_2145.BackgroundColor3 = p2147
			v_u_2146(p2147)
		end
		function p_u_2139.ValueChanged(p2149, p2150)
			-- upvalues: (copy) v_u_2148
			local v2151 = p2150[1]
			local v2152 = p2150[2]
			local v2153 = p2150[3]
			local v2154 = Color3.fromRGB(v2151, v2152, v2153)
			p2149.Value = v2154
			v_u_2148(v2154)
		end
		function p_u_2139.SetValue(p2155, p2156)
			-- upvalues: (copy) v_u_2148, (copy) v_u_2142
			p2155.Value = p2156
			v_u_2148(p2156)
			local v2157 = v_u_2142
			local v2158 = {}
			local v2159 = p2156.R * 255
			local v2160 = math.round(v2159)
			local v2161 = p2156.G * 255
			local v2162 = math.round(v2161)
			local v2163 = p2156.B * 255
			__set_list(v2158, 1, {v2160, v2162, (math.round(v2163))})
			v2157:SetValue(v2158)
		end
		p_u_2139:SetValue(v2140)
		return v_u_2144, v2143
	end
	v2134:DefineElement(p2132, v2135)
end
local function v2196(p2165, p_u_2166)
	-- upvalues: (copy) v_u_916, (copy) v_u_929
	local v2167 = v_u_916
	local v2168 = {}
	local v2169 = {
		["Label"] = p2165,
		["Callback"] = v_u_929,
		["Disabled"] = false,
		["Value"] = CFrame.new(10, 10, 10),
		["Minimum"] = CFrame.new(0, 0, 0),
		["Maximum"] = CFrame.new(100, 100, 100),
		["BaseInputConfig"] = {}
	}
	local v2170 = {
		{
			["Format"] = "X: %.f"
		},
		{
			["Format"] = "Y: %.f"
		},
		{
			["Format"] = "Z: %.f"
		}
	}
	v2169.InputConfigs = v2170
	v2168.Base = v2169
	function v2168.Create(p2171, p_u_2172)
		-- upvalues: (copy) p_u_2166, (ref) v_u_916
		local v2173 = p_u_2172.Value
		local v2174 = p_u_2172.Maximum
		local v2175 = p_u_2172.Minimum
		local v2176 = Copy(p_u_2172, {
			["Maximum"] = { v2174.X, v2174.Y, v2174.Z },
			["Minimum"] = { v2175.X, v2175.Y, v2175.Z },
			["Value"] = { v2173.X, v2173.Y, v2173.Z },
			["Callback"] = function(_, ...)
				-- upvalues: (copy) p_u_2172
				if p_u_2172.ValueChanged then
					p_u_2172:ValueChanged(...)
				end
			end
		})
		local v_u_2177, v2178 = p2171[p_u_2166](p2171, v2176)
		local v_u_2179 = v_u_916:MergeMetatables(p_u_2172, v_u_2177)
		local function v_u_2180(...)
			-- upvalues: (copy) p_u_2172, (copy) v_u_2179
			return p_u_2172.Callback(v_u_2179, ...)
		end
		function p_u_2172.ValueChanged(p2181, p2182)
			-- upvalues: (copy) v_u_2180
			local v2183 = p2182[1]
			local v2184 = p2182[2]
			local v2185 = p2182[3]
			local v2186 = CFrame.new(v2183, v2184, v2185)
			p2181.Value = v2186
			v_u_2180(v2186)
		end
		function p_u_2172.SetValue(p2187, p2188)
			-- upvalues: (copy) v_u_2177
			p2187.Value = p2188
			local v2189 = v_u_2177
			local v2190 = {}
			local v2191 = p2188.X
			local v2192 = math.round(v2191)
			local v2193 = p2188.Y
			local v2194 = math.round(v2193)
			local v2195 = p2188.Z
			__set_list(v2190, 1, {v2192, v2194, (math.round(v2195))})
			v2189:SetValue(v2190)
		end
		p_u_2172:SetValue(v2173)
		return v_u_2179, v2178
	end
	v2167:DefineElement(p2165, v2168)
end
local v2197 = {
	["Base"] = {
		["Label"] = "Slider Progress",
		["Type"] = "Progress",
		["ColorTag"] = "Frame"
	},
	["Create"] = v_u_1390.SliderBase
}
v_u_916:DefineElement("SliderProgress", v2197)
local v2204 = {
	["Base"] = {
		["Label"] = "Progress Bar",
		["Type"] = "Progress",
		["ReadOnly"] = true,
		["MinValue"] = 0,
		["MaxValue"] = 100,
		["Format"] = "% i%%",
		["Interactable"] = false,
		["ColorTag"] = "Frame"
	},
	["Create"] = function(p2198, p_u_2199)
		function p_u_2199.SetPercentage(_, p2200)
			-- upvalues: (copy) p_u_2199
			p_u_2199:SetValue(p2200)
		end
		local v2201, v2202 = p2198:SliderBase(p_u_2199)
		local v2203 = {
			[v2201.Grab] = {
				["BackgroundColor3"] = "ProgressBar"
			}
		}
		p2198:TagElements(v2203)
		return v2201, v2202
	end
}
v_u_916:DefineElement("ProgressBar", v2204)
local v2238 = {
	["Base"] = {
		["Value"] = "",
		["Placeholder"] = "",
		["Callback"] = v_u_929,
		["Items"] = {},
		["Disabled"] = false,
		["WidthFitPreview"] = false,
		["Label"] = "Combo"
	},
	["Create"] = function(p_u_2205, p_u_2206)
		-- upvalues: (copy) v_u_916, (copy) v_u_919
		local v2207 = p_u_2206.Placeholder
		local v_u_2208 = p_u_2206.NoAnimation
		local v2209 = p_u_2206.Selected
		local v2210 = p_u_2206.Label
		local v2211 = p_u_2206.Disabled
		local v2212 = p_u_2206.WidthFitPreview
		local v_u_2213 = v_u_916:InsertPrefab("Combo", p_u_2206)
		local v_u_2214 = v_u_916:MergeMetatables(p_u_2206, v_u_2213)
		local v_u_2215 = v_u_2213.Combo
		local v_u_2216 = nil
		local v_u_2217 = p_u_2205:Label({
			["Text"] = tostring(v2207),
			["Parent"] = v_u_2215,
			["Name"] = "ValueText"
		})
		local v_u_2218 = p_u_2205:ArrowButton({
			["Parent"] = v_u_2215,
			["Interactable"] = false,
			["Size"] = UDim2.fromOffset(19, 19),
			["LayoutOrder"] = 2
		})
		local v_u_2219 = p_u_2205:Label({
			["Text"] = v2210,
			["Parent"] = v_u_2213,
			["LayoutOrder"] = 2
		})
		if v2212 then
			v_u_916:SetProperties(v_u_2213, {
				["AutomaticSize"] = Enum.AutomaticSize.XY,
				["Size"] = UDim2.new(0, 0, 0, 0)
			})
			v_u_916:SetProperties(v_u_2215, {
				["AutomaticSize"] = Enum.AutomaticSize.XY,
				["Size"] = UDim2.fromScale(0, 1)
			})
		end
		local function v_u_2221(p2220, ...)
			-- upvalues: (copy) p_u_2206, (copy) v_u_2214
			p_u_2206:SetOpen(false)
			return p_u_2206.Callback(v_u_2214, p2220, ...)
		end
		local function v_u_2225(p2222, p2223)
			-- upvalues: (copy) p_u_2205, (copy) v_u_2213, (ref) v_u_919, (copy) v_u_2218
			local v2224 = p_u_2205:GetThemeKey("AnimationTweenInfo")
			v_u_2213.Interactable = not p2222
			v_u_919:HeaderCollapseToggle({
				["Tweeninfo"] = v2224,
				["NoAnimation"] = p2223,
				["Collapsed"] = not p2222,
				["Toggle"] = v_u_2218.Icon
			})
		end
		local function v_u_2228()
			-- upvalues: (copy) p_u_2206
			local v2226 = p_u_2206.GetItems
			local v2227 = p_u_2206.Items
			if v2226 then
				return v2226()
			else
				return v2227
			end
		end
		function p_u_2206.SetValueText(_, p2229)
			-- upvalues: (copy) v_u_2217
			v_u_2217.Text = tostring(p2229)
		end
		function p_u_2206.ClosePopup(_)
			-- upvalues: (ref) v_u_2216
			if v_u_2216 then
				v_u_2216:ClosePopup(true)
			end
		end
		function p_u_2206.SetDisabled(p2230, p2231)
			-- upvalues: (copy) v_u_2213, (copy) p_u_2205, (copy) v_u_2219
			p2230.Disabled = p2231
			v_u_2213.Interactable = not p2231
			p_u_2205:SetColorTags({
				[v_u_2219] = p2231 and "LabelDisabled" or "Label"
			}, true)
			return p2230
		end
		function p_u_2206.SetValue(p2232, p2233)
			-- upvalues: (copy) v_u_2228, (copy) v_u_2221
			local v2234 = v_u_2228()[p2233] or p2233
			p2232.Selected = p2233
			p2232.Value = v2234
			p2232:ClosePopup()
			if typeof(p2233) == "number" then
				p2232:SetValueText(v2234)
			else
				p2232:SetValueText(p2233)
			end
			v_u_2221(p2233, v2234)
			return p2232
		end
		function p_u_2206.SetOpen(p_u_2235, p2236)
			-- upvalues: (copy) v_u_2225, (copy) v_u_2208, (ref) v_u_2216, (copy) p_u_2205, (copy) v_u_2215, (copy) v_u_2228, (copy) p_u_2206
			local v2237 = p_u_2235.Selected
			p_u_2235.Open = p2236
			v_u_2225(p2236, v_u_2208)
			if p2236 then
				v_u_2216 = p_u_2205:Dropdown({
					["RelativeTo"] = v_u_2215,
					["Items"] = v_u_2228(),
					["Selected"] = v2237,
					["OnSelected"] = function(...)
						-- upvalues: (ref) p_u_2206
						p_u_2206:SetValue(...)
					end,
					["OnClosed"] = function()
						-- upvalues: (copy) p_u_2235
						p_u_2235:SetOpen(false)
					end
				})
				return p_u_2235
			end
			p_u_2235:ClosePopup()
		end
		v_u_2215.Activated:Connect(function()
			-- upvalues: (copy) p_u_2206
			p_u_2206:SetOpen(not p_u_2206.Open)
		end)
		v_u_2225(false, true)
		p_u_2206:SetDisabled(v2211)
		if v2209 then
			p_u_2206:SetValue(v2209)
		end
		v_u_916:SetAnimation(v_u_2215, "Inputs")
		p_u_2205:TagElements({
			[v_u_2215] = "Frame"
		})
		return v_u_2214, v_u_2213
	end
}
v_u_916:DefineElement("Combo", v2238)
local v_u_2239 = {}
local v2240 = {
	["Close"] = {
		["Image"] = v_u_916.Icons.Close,
		["IconPadding"] = UDim.new(0, 3)
	},
	["Collapse"] = {
		["Image"] = v_u_916.Icons.Arrow,
		["IconPadding"] = UDim.new(0, 3)
	}
}
v_u_2239.TileBarConfig = v2240
v_u_2239.CloseCallback = v_u_929
v_u_2239.Collapsible = true
v_u_2239.Open = true
v_u_2239.Focused = false
function v_u_2239.Tween(p2241, p2242)
	-- upvalues: (copy) v_u_916, (copy) v_u_919
	v_u_916:CheckConfig(p2242, {
		["Tweeninfo"] = p2241:GetThemeKey("AnimationTweenInfo")
	})
	return v_u_919:Tween(p2242)
end
function v_u_2239.TagElements(p2243, p2244)
	-- upvalues: (copy) v_u_916
	local v2245 = p2243.TagsList
	v_u_916:MultiUpdateColors({
		["Theme"] = p2243.Theme,
		["TagsList"] = v2245,
		["Objects"] = p2244
	})
end
function v_u_2239.MakeTitleBarCanvas(p2246)
	-- upvalues: (copy) v_u_916
	local v2247 = v_u_916:MakeCanvas({
		["WindowClass"] = p2246,
		["Element"] = p2246.TitleBar
	})
	p2246.TitleBarCanvas = v2247
	return v2247
end
function v_u_2239.AddDefaultTitleButtons(p_u_2248)
	-- upvalues: (copy) v_u_916
	local v2249 = p_u_2248.TileBarConfig
	local v2250 = v2249.Collapse
	local v2251 = v2249.Close
	local v2252 = p_u_2248.TitleBarCanvas or p_u_2248:MakeTitleBarCanvas()
	v_u_916:CheckConfig(p_u_2248, {
		["Toggle"] = v2252:RadioButton({
			["Icon"] = v2250.Image,
			["IconPadding"] = v2250.IconPadding,
			["LayoutOrder"] = 1,
			["Ratio"] = 1,
			["Size"] = UDim2.new(0, 0),
			["Callback"] = function()
				-- upvalues: (copy) p_u_2248
				p_u_2248:ToggleCollapsed()
			end
		}),
		["CloseButton"] = v2252:RadioButton({
			["Icon"] = v2251.Image,
			["IconPadding"] = v2251.IconPadding,
			["LayoutOrder"] = 3,
			["Ratio"] = 1,
			["Size"] = UDim2.new(0, 0),
			["Callback"] = function()
				-- upvalues: (copy) p_u_2248
				p_u_2248:SetVisible(false)
			end
		}),
		["TitleLabel"] = v2252:Label({
			["ColorTag"] = "Title",
			["LayoutOrder"] = 2,
			["Size"] = UDim2.new(1, 0),
			["Active"] = false,
			["Fill"] = true,
			["ClipsDescendants"] = true,
			["AutomaticSize"] = Enum.AutomaticSize.XY
		})
	})
	p_u_2248:TagElements({
		[p_u_2248.TitleLabel] = "WindowTitle"
	})
end
function v_u_2239.Close(p2253)
	local v2254 = p2253.CloseCallback
	if not v2254 or v2254(p2253) ~= false then
		p2253:Remove()
	end
end
function v_u_2239.SetVisible(p2255, p2256)
	-- upvalues: (copy) v_u_916
	local v2257 = p2255.WindowFrame
	local v2258 = p2255.NoFocusOnAppearing
	p2255.Visible = p2256
	v2257.Visible = p2256
	if p2256 and not v2258 then
		v_u_916:SetFocusedWindow(p2255)
	end
	return p2255
end
function v_u_2239.ToggleVisibility(p2259, _)
	p2259:SetVisible(not p2259.Visible)
end
function v_u_2239.GetWindowSize(p2260)
	return p2260.WindowFrame.AbsoluteSize
end
function v_u_2239.GetTitleBarSizeY(p2261)
	local v2262 = p2261.TitleBar
	return v2262.Visible and v2262.AbsoluteSize.Y or 0
end
function v_u_2239.SetTitle(p2263, p2264)
	p2263.TitleLabel.Text = tostring(p2264)
	return p2263
end
function v_u_2239.SetPosition(p2265, p2266)
	p2265.WindowFrame.Position = p2266
	return p2265
end
function v_u_2239.SetSize(p2267, p2268, _)
	local v2269 = p2267.WindowFrame
	if typeof(p2268) == "Vector2" then
		p2268 = UDim2.fromOffset(p2268.X, p2268.Y)
	end
	v2269.Size = p2268
	p2267.Size = p2268
	return p2267
end
function v_u_2239.SetCanvasInteractable(p2270, p2271)
	p2270.Body.Interactable = p2271
end
function v_u_2239.Center(p2272)
	local v2273 = p2272:GetWindowSize() / 2
	p2272:SetPosition((UDim2.new(0.5, -v2273.X, 0.5, -v2273.Y)))
	return p2272
end
function v_u_2239.LoadStylesIntoElement(p2274, p2275)
	local v_u_2276 = p2275.Flags
	local v_u_2277 = p2275.Object
	local v_u_2278 = p2275.Canvas
	for v2280, v2281 in {
		["FrameRounding"] = function()
			-- upvalues: (copy) v_u_2276, (copy) v_u_2278, (copy) v_u_2277
			if v_u_2276.CornerRadius then
				return
			elseif v_u_2278 then
				local v2279 = v_u_2277:FindFirstChild("FrameRounding", true)
				if v2279 then
					v_u_2278:TagElements({
						[v2279] = "FrameRounding"
					})
				end
			else
				return
			end
		end
		} do
		local v2282 = p2274:GetThemeKey(v2280)
		if v2282 ~= nil then
			task.spawn(v2281, v2282)
		end
	end
end
function v_u_2239.SetTheme(p2283, p2284)
	-- upvalues: (copy) v_u_916
	local v2285 = v_u_916.ThemeConfigs
	local v2286 = p2283.TagsList
	local v2287 = p2283.WindowState
	local v2288 = p2284 or p2283.Theme
	local v2289 = v2285[v2288]
	local v2290 = ("%* is not a valid theme!"):format(v2288)
	assert(v2289, v2290)
	p2283.Theme = v2288
	v_u_916:MultiUpdateColors({
		["Animate"] = false,
		["Theme"] = v2288,
		["Objects"] = v2286
	})
	p2283:SetFocusedColors(v2287)
	return p2283
end
function v_u_2239.SetFocusedColors(p2291, p2292)
	-- upvalues: (copy) v_u_916
	local v2293 = p2291.WindowFrame
	local v2294 = p2291.TitleBar
	local v2295 = p2291.Theme
	local v2296 = p2291.TitleLabel
	local v2297 = p2291:GetThemeKey("AnimationTweenInfo")
	local v2298 = v2293:FindFirstChildOfClass("UIStroke")
	local v2299 = {}
	local v2300 = {
		[v2298] = "BorderActive",
		[v2294] = "TitleBarBgActive",
		[v2296] = {
			["TextColor3"] = "TitleActive"
		}
	}
	v2299.Focused = v2300
	local v2301 = {
		[v2298] = "Border",
		[v2294] = "TitleBarBg",
		[v2296] = {
			["TextColor3"] = "Title"
		}
	}
	v2299.UnFocused = v2301
	local v2302 = {
		[v2298] = "Border",
		[v2294] = "TitleBarBgCollapsed",
		[v2296] = {
			["TextColor3"] = "Title"
		}
	}
	v2299.Collapsed = v2302
	v_u_916:MultiUpdateColors({
		["Tweeninfo"] = v2297,
		["Animate"] = true,
		["Objects"] = v2299[p2292],
		["Theme"] = v2295
	})
end
function v_u_2239.SetFocused(p2303, p2304)
	-- upvalues: (copy) v_u_916
	local v2305 = p2304 == nil and true or p2304
	local v2306 = p2303.Collapsed
	local v2307 = p2303.WindowState
	if v2305 then
		v_u_916:SetFocusedWindow(p2303)
	end
	local v2308 = v2306 and "Collapsed" or (v2305 and "Focused" or "UnFocused")
	if v2308 ~= v2307 then
		p2303.Focused = v2305
		p2303.WindowState = v2308
		p2303:SetFocusedColors(v2308)
	end
end
function v_u_2239.GetThemeKey(p2309, p2310)
	-- upvalues: (copy) v_u_916
	return v_u_916:GetThemeKey(p2309.Theme, p2310)
end
function v_u_2239.SetCollapsible(p2311, p2312)
	p2311.Collapsible = p2312
	return p2311
end
function v_u_2239.ToggleCollapsed(p2313, p2314)
	local v2315 = p2313.Collapsed
	if not (p2314 or p2313.Collapsible) then
		return p2313
	end
	p2313:SetCollapsed(not v2315)
	return p2313
end
function v_u_2239.SetCollapsed(p_u_2316, p2317, p2318)
	-- upvalues: (copy) v_u_919
	local v2319 = p_u_2316.WindowFrame
	local v2320 = p_u_2316.Body
	local v2321 = p_u_2316.Toggle
	local v2322 = p_u_2316.ResizeGrab
	local v2323 = p_u_2316.Size
	local v2324 = p_u_2316.AutoSize
	local v2325 = p_u_2316:GetThemeKey("AnimationTweenInfo")
	local v2326 = p_u_2316:GetWindowSize()
	local v2327 = p_u_2316:GetTitleBarSizeY()
	local v2328 = v2321.Icon
	local v2329 = UDim2.fromOffset(v2326.X, v2327)
	p_u_2316.Collapsed = p2317
	p_u_2316:SetCollapsible(false)
	p_u_2316:SetFocused(not p2317)
	v_u_919:HeaderCollapse({
		["Tweeninfo"] = v2325,
		["NoAnimation"] = p2318,
		["Collapsed"] = p2317,
		["Toggle"] = v2328,
		["Resize"] = v2319,
		["NoAutomaticSize"] = not v2324,
		["Hide"] = v2320,
		["ClosedSize"] = v2329,
		["OpenSize"] = v2323,
		["Completed"] = function()
			-- upvalues: (copy) p_u_2316
			p_u_2316:SetCollapsible(true)
		end
	})
	local v2330 = {
		["Object"] = v2322,
		["NoAnimation"] = p2318,
		["EndProperties"] = {
			["TextTransparency"] = p2317 and 1 or 0.6,
			["Interactable"] = not p2317
		}
	}
	p_u_2316:Tween(v2330)
	return p_u_2316
end
function v_u_2239.UpdateConfig(p_u_2331, p2332)
	Merge(p_u_2331, p2332)
	local v2351 = {
		["NoTitleBar"] = function(p2333)
			-- upvalues: (copy) p_u_2331
			p_u_2331.TitleBar.Visible = not p2333
		end,
		["NoClose"] = function(p2334)
			-- upvalues: (copy) p_u_2331
			p_u_2331.CloseButton.Visible = not p2334
		end,
		["NoCollapse"] = function(p2335)
			-- upvalues: (copy) p_u_2331
			p_u_2331.Toggle.Visible = not p2335
		end,
		["NoTabsBar"] = function(p2336)
			-- upvalues: (copy) p_u_2331
			local v2337 = p_u_2331.WindowTabSelector
			if v2337 then
				v2337.TabsBar.Visible = not p2336
			end
		end,
		["NoScrollBar"] = function(p2338)
			-- upvalues: (copy) p_u_2331
			local v2339 = p2338 and 0 or 9
			local v2340 = p_u_2331.NoScroll
			local v2341 = p_u_2331.WindowTabSelector
			local v2342 = p_u_2331.ContentCanvas
			if v2341 then
				v2341.Body.ScrollBarThickness = v2339
			end
			if not v2340 then
				v2342.ScrollBarThickness = v2339
			end
		end,
		["NoScrolling"] = function(p2343)
			-- upvalues: (copy) p_u_2331
			local v2344 = p_u_2331.NoScroll
			local v2345 = p_u_2331.WindowTabSelector
			local v2346 = p_u_2331.ContentCanvas
			if v2345 then
				v2345.Body.ScrollingEnabled = not p2343
			end
			if not v2344 then
				v2346.ScrollingEnabled = not p2343
			end
		end,
		["NoMove"] = function(p2347)
			-- upvalues: (copy) p_u_2331
			p_u_2331.DragConnection:SetEnabled(not p2347)
		end,
		["NoResize"] = function(p2348)
			-- upvalues: (copy) p_u_2331
			p_u_2331.ResizeConnection:SetEnabled(not p2348)
		end,
		["NoBackground"] = function(p2349)
			-- upvalues: (copy) p_u_2331
			local v2350 = p_u_2331:GetThemeKey("WindowBgTransparency")
			p_u_2331.CanvasFrame.BackgroundTransparency = p2349 and 1 or v2350
		end
	}
	for v2352, v2353 in p2332 do
		local v2354 = v2351[v2352]
		if v2354 then
			v2354(v2353)
		end
	end
	return p_u_2331
end
function v_u_2239.Remove(p2355)
	-- upvalues: (copy) v_u_916
	local v2356 = p2355.WindowFrame
	local v2357 = p2355.WindowClass
	local v2358 = v_u_916.Windows
	local v2359 = table.find(v2358, v2357)
	if v2359 then
		table.remove(v2358, v2359)
	end
	v2356:Destroy()
end
function v_u_2239.MenuBar(p2360, p2361, ...)
	local v2362 = p2360.ContentCanvas
	local v2363 = p2360.ContentFrame
	local v2364 = p2361 or {}
	Merge(v2364, {
		["Parent"] = v2363,
		["Layout"] = -1
	})
	return v2362:MenuBar(v2364, ...)
end
local v2400 = {
	["Export"] = true,
	["Base"] = {
		["Theme"] = "DarkTheme",
		["NoSelect"] = false,
		["NoTabs"] = true,
		["NoScroll"] = false,
		["Collapsed"] = false,
		["Visible"] = true,
		["AutoSize"] = false,
		["MinimumSize"] = Vector2.new(160, 90),
		["OpenOnDoubleClick"] = true,
		["NoAutoTheme"] = true,
		["NoWindowRegistor"] = false,
		["NoBringToFrontOnFocus"] = false,
		["IsDragging"] = false
	},
	["Create"] = function(_, p2365)
		-- upvalues: (copy) v_u_916, (copy) v_u_918, (copy) v_u_2239, (copy) v_u_1390, (copy) v_u_919
		v_u_916:CheckImportState()
		local v2366 = v_u_916.Windows
		local v2367 = v_u_916.Container.Windows
		v_u_916:CheckConfig(p2365, {
			["Parent"] = v2367,
			["Title"] = v_u_916.DefaultTitle
		})
		local v2368 = p2365.NoDefaultTitleBarButtons
		local v2369 = p2365.Collapsed
		local v2370 = p2365.MinimumSize
		local v2371 = p2365.Title
		local v2372 = p2365.NoTabs
		local v2373 = p2365.NoScroll
		local v2374 = p2365.Theme
		local v2375 = p2365.AutomaticSize
		local v2376 = p2365.NoWindowRegistor
		local v2377 = p2365.AutoSelectNewTabs
		local v2378 = p2365.Parent ~= v2367
		local v2379 = {
			["Scroll"] = not v2373,
			["Fill"] = not v2375 and true or nil,
			["UiPadding"] = UDim.new(0, v2372 and 8 or 0),
			["AutoSelectNewTabs"] = v2377
		}
		if v2375 then
			Merge(v2379, {
				["AutomaticSize"] = v2375,
				["Size"] = UDim2.new(1, 0)
			})
		end
		local v2380 = v_u_916:InsertPrefab("Window", p2365)
		local v2381 = v2380.Content
		local v2382 = v2381.TitleBar
		local v_u_2383 = v_u_918:NewClass(v_u_2239)
		local v2384 = v_u_916:MakeCanvas({
			["Element"] = v2381,
			["WindowClass"] = v_u_2383,
			["Class"] = v_u_2383
		})
		local v_u_2385 = nil
		local v_u_2386 = nil
		local v2387, v_u_2388 = v2384:Canvas(Copy(v2379, {
			["Parent"] = v2381,
			["CornerRadius"] = UDim.new(0, 0)
		}))
		local v2390 = v_u_916:MakeResizable({
			["MinimumSize"] = v2370,
			["Resize"] = v2380,
			["OnUpdate"] = function(p2389)
				-- upvalues: (copy) v_u_2383
				v_u_2383:SetSize(p2389, true)
			end
		})
		Merge(v_u_2383, p2365)
		Merge(v_u_2383, {
			["WindowFrame"] = v2380,
			["ContentFrame"] = v2381,
			["CanvasFrame"] = v_u_2388,
			["ResizeGrab"] = v2390.Grab,
			["TitleBar"] = v2382,
			["Elements"] = v_u_1390,
			["TagsList"] = {},
			["_SelectDisabled"] = v2378,
			["ResizeConnection"] = v2390,
			["HoverConnection"] = v_u_916:DetectHover(v2381),
			["DragConnection"] = v_u_916:MakeDraggable({
				["Grab"] = v2381,
				["Move"] = v2380,
				["SetPosition"] = function(p2391, p2392)
					-- upvalues: (ref) v_u_2385, (ref) v_u_919
					local v2393 = v_u_919
					local v2394 = {
						["Tweeninfo"] = v_u_2385:GetThemeKey("AnimationTweenInfo"),
						["Object"] = p2391.Move,
						["EndProperties"] = {
							["Position"] = p2392
						}
					}
					v2393:Tween(v2394)
				end,
				["OnDragStateChange"] = function(p2395)
					-- upvalues: (copy) v_u_2383, (copy) v_u_2388, (ref) v_u_916, (ref) v_u_2386
					v_u_2383.IsDragging = p2395
					v_u_2388.Interactable = not p2395
					if p2395 then
						v_u_916:SetFocusedWindow(v_u_2386)
					end
					v_u_916:SetWindowFocusesEnabled(not p2395)
				end
			})
		})
		local v2396
		if v2372 then
			v_u_2385 = v2387
			v2396 = v_u_2388
		else
			local v2397
			v2397, v2396 = v2387:TabSelector(v2379)
			v_u_2385 = v2397
			v_u_2383.WindowTabSelector = v_u_2385
		end
		v_u_2386 = v_u_916:MergeMetatables(v_u_2383, v_u_2385)
		local v2398 = {
			["ContentCanvas"] = v_u_2385,
			["WindowClass"] = v_u_2386,
			["Body"] = v2396
		}
		Merge(v_u_2383, v2398)
		v_u_916:ConnectMouseEvent(v2381, {
			["DoubleClick"] = true,
			["OnlyMouseHovering"] = v2382,
			["Callback"] = function(...)
				-- upvalues: (copy) v_u_2383
				if v_u_2383.OpenOnDoubleClick then
					if not v_u_2383.NoCollapse then
						v_u_2383:ToggleCollapsed()
					end
				else
					return
				end
			end
		})
		if not v2368 then
			v_u_2383:AddDefaultTitleButtons()
		end
		v_u_2383:SetTitle(v2371)
		v_u_2383:SetCollapsed(v2369, true)
		v_u_2383:SetTheme(v2374)
		v_u_2383:UpdateConfig(p2365)
		v_u_2383:SetFocused()
		if not v2376 then
			table.insert(v2366, v_u_2386)
		end
		local v2399 = v2390.Grab
		v_u_916:SetAnimation(v2399, "TextButtons")
		v_u_916:SetFocusedWindow(v_u_2386)
		v_u_2386:TagElements({
			[v2399] = "ResizeGrab",
			[v2382] = "TitleBar",
			[v_u_2388] = "Window"
		})
		return v_u_2386, v2380
	end
}
v_u_916:DefineElement("Window", v2400)
local v2403 = {
	["Export"] = true,
	["Base"] = {
		["NoTabs"] = false,
		["AutoSelectNewTabs"] = true
	},
	["Create"] = function(p2401, p2402)
		return p2401:Window(p2402)
	end
}
v_u_916:DefineElement("TabsWindow", v2403)
local v2445 = {
	["Base"] = {
		["AutoClose"] = false,
		["Scroll"] = false,
		["Visible"] = true,
		["Spacing"] = UDim.new(0, 1),
		["AutomaticSize"] = Enum.AutomaticSize.XY,
		["MaxSizeY"] = 150,
		["MinSizeX"] = 100,
		["MaxSizeX"] = math.huge,
		["OnClosed"] = v_u_929
	},
	["Create"] = function(p2404, p_u_2405)
		-- upvalues: (copy) v_u_916, (copy) v_u_919
		local v_u_2406 = p_u_2405.RelativeTo
		local v_u_2407 = p_u_2405.MaxSizeY
		local v_u_2408 = p_u_2405.MinSizeX
		local v_u_2409 = p_u_2405.MaxSizeX
		local v2410 = p_u_2405.Visible
		local v_u_2411 = p_u_2405.AutoClose
		local v_u_2412 = p_u_2405.NoAnimation
		p_u_2405.Parent = v_u_916.Container.Overlays
		local v_u_2413, v_u_2414 = p2404:OverlayScroll(p_u_2405)
		local v_u_2415 = v_u_2414.UIStroke.Thickness
		local v_u_2416 = v_u_2414.Parent.AbsolutePosition
		local v_u_2418 = v_u_916:DetectHover(v_u_2414, {
			["MouseOnly"] = true,
			["OnInput"] = function(p2417, _)
				-- upvalues: (copy) v_u_2414, (copy) p_u_2405
				if p2417 then
					return
				elseif v_u_2414.Visible then
					p_u_2405:OnFocusLost()
				end
			end
		})
		local v_u_2419 = nil
		local v_u_2420 = nil
		local v_u_2421 = nil
		local v_u_2422 = nil
		function p_u_2405.FetchScales(_)
			-- upvalues: (copy) v_u_2413, (ref) v_u_2419, (copy) v_u_2406, (ref) v_u_2420, (ref) v_u_2421, (copy) v_u_2407, (ref) v_u_2422, (copy) v_u_2408, (copy) v_u_2409
			local v2423 = v_u_2413:GetCanvasSize()
			v_u_2419 = v_u_2406.AbsolutePosition
			v_u_2420 = v_u_2406.AbsoluteSize
			local v2424 = v2423.Y
			local v2425 = v_u_2420.Y
			local v2426 = v_u_2407
			v_u_2421 = math.clamp(v2424, v2425, v2426)
			local v2427 = v_u_2420.X
			local v2428 = v_u_2408
			local v2429 = v_u_2409
			v_u_2422 = math.clamp(v2427, v2428, v2429)
		end
		function p_u_2405.UpdatePosition(_)
			-- upvalues: (copy) v_u_2414, (ref) v_u_2419, (copy) v_u_2416, (copy) v_u_2415, (ref) v_u_2420
			v_u_2414.Position = UDim2.fromOffset(v_u_2419.X - v_u_2416.X + v_u_2415, v_u_2419.Y - v_u_2416.Y + v_u_2420.Y)
		end
		function p_u_2405.GetScale(_, p2430)
			-- upvalues: (ref) v_u_2422, (ref) v_u_2421
			local v2431 = UDim2.fromOffset(v_u_2422, v_u_2421)
			local v2432 = UDim2.fromOffset(v_u_2422, 0)
			if p2430 then
				v2432 = v2431 or v2432
			end
			return v2432
		end
		function p_u_2405.IsMouseHovering(_)
			-- upvalues: (copy) v_u_2418
			return v_u_2418.Hovering
		end
		function p_u_2405.OnFocusLost(p2433)
			-- upvalues: (copy) v_u_2411
			local v2434 = p2433.OnClosed
			p2433:SetPopupVisible(false)
			v2434(p2433)
			if v_u_2411 then
				p2433:ClosePopup()
			end
		end
		function p_u_2405.ClosePopup(p2435, p2436)
			-- upvalues: (copy) v_u_2412, (copy) v_u_2418, (copy) v_u_2414
			p2435:SetPopupVisible(false, v_u_2412, p2436)
			v_u_2418:Disconnect()
			v_u_2414:Remove()
		end
		function p_u_2405.SetPopupVisible(p2437, p2438, p2439)
			-- upvalues: (copy) v_u_2414, (copy) v_u_2406, (copy) v_u_2412
			if v_u_2414.Visible ~= p2438 then
				v_u_2406.Interactable = not p2438
				p2437:UpdateScales(p2438, v_u_2412, p2439)
				p2437.Visible = p2438
			end
		end
		function p_u_2405.UpdateScales(_, p2440, p2441, p2442)
			-- upvalues: (copy) v_u_2413, (copy) v_u_2414, (copy) p_u_2405, (ref) v_u_919
			local v2443 = v_u_2413:GetThemeKey("AnimationTweenInfo")
			if p2440 == nil then
				p2440 = v_u_2414.Visible or p2440
			end
			p_u_2405:FetchScales()
			p_u_2405:UpdatePosition()
			local v2444 = v_u_919:Tween({
				["Tweeninfo"] = v2443,
				["Object"] = v_u_2414,
				["NoAnimation"] = p2441,
				["EndProperties"] = {
					["Size"] = p_u_2405:GetScale(p2440),
					["Visible"] = p2440
				}
			})
			if v2444 and p2442 then
				v2444.Completed:Wait()
			end
		end
		p_u_2405:UpdateScales(false, true)
		p_u_2405:SetPopupVisible(v2410)
		v_u_2413.OnChildChange:Connect(p_u_2405.UpdateScales)
		return v_u_2413, v_u_2414
	end
}
v_u_916:DefineElement("PopupCanvas", v2445)
local v2455 = {
	["Export"] = true,
	["Base"] = {
		["NoAnimation"] = false,
		["NoCollapse"] = true,
		["NoClose"] = true,
		["NoResize"] = true,
		["NoSelect"] = true,
		["NoAutoFlags"] = true,
		["NoWindowRegistor"] = true,
		["NoScroll"] = true
	},
	["Create"] = function(p2446, p2447)
		-- upvalues: (copy) v_u_916, (copy) v_u_919
		local v2448 = p2446.WindowClass
		local v_u_2449 = p2447.NoAnimation
		p2447.Parent = v_u_916.Container.Overlays
		local v_u_2450
		if v2448 then
			v_u_2450 = v2448:GetThemeKey("ModalWindowDimTweenInfo")
			p2447.Theme = v2448.Theme
		else
			v_u_2450 = nil
		end
		local v_u_2451 = v_u_916:InsertPrefab("ModalEffect", p2447)
		local v_u_2452 = p2446:Window(Copy(p2447, {
			["NoAutoFlags"] = false,
			["Parent"] = v_u_2451,
			["AnchorPoint"] = Vector2.new(0.5, 0.5),
			["Position"] = UDim2.fromScale(0.5, 0.5),
			["Size"] = UDim2.fromOffset(372, 38),
			["AutomaticSize"] = Enum.AutomaticSize.Y
		}))
		function p2447.ClosePopup(_)
			-- upvalues: (ref) v_u_919, (copy) v_u_2451, (ref) v_u_2450, (copy) v_u_2449, (copy) v_u_2452
			local v2453 = {
				["Object"] = v_u_2451,
				["Tweeninfo"] = v_u_2450,
				["NoAnimation"] = v_u_2449,
				["EndProperties"] = {
					["BackgroundTransparency"] = 1
				},
				["Completed"] = function()
					-- upvalues: (ref) v_u_2451
					v_u_2451:Destroy()
				end
			}
			v_u_919:Tween(v2453)
			v_u_2452:Close()
		end
		local v2454 = {
			["Object"] = v_u_2451,
			["Tweeninfo"] = v_u_2450,
			["NoAnimation"] = v_u_2449,
			["StartProperties"] = {
				["BackgroundTransparency"] = 1
			},
			["EndProperties"] = {
				["BackgroundTransparency"] = 0.8
			}
		}
		v_u_919:Tween(v2454)
		p2446:TagElements({
			[v_u_2451] = "ModalWindowDim"
		})
		return v_u_916:MergeMetatables(p2447, v_u_2452), v_u_2451
	end
}
v_u_916:DefineElement("PopupModal", v2455)
v2131("InputInt2", "InputInt", 2, {
	["NoButtons"] = true
})
v2131("InputInt3", "InputInt", 3, {
	["NoButtons"] = true
})
v2131("InputInt4", "InputInt", 4, {
	["NoButtons"] = true
})
v2131("SliderInt2", "SliderInt", 2)
v2131("SliderInt3", "SliderInt", 3)
v2131("SliderInt4", "SliderInt", 4)
v2131("SliderFloat2", "SliderFloat", 2)
v2131("SliderFloat3", "SliderFloat", 3)
v2131("SliderFloat4", "SliderFloat", 4)
v2131("DragInt2", "DragInt", 2)
v2131("DragInt3", "DragInt", 3)
v2131("DragInt4", "DragInt", 4)
v2131("DragFloat2", "DragFloat", 2)
v2131("DragFloat3", "DragFloat", 3)
v2131("DragFloat4", "DragFloat", 4)
v2164("InputColor3", "InputInt3")
v2164("SliderColor3", "SliderInt3")
v2164("DragColor3", "DragInt3")
v2196("InputCFrame", "InputInt3")
v2196("SliderCFrame", "SliderInt3")
v2196("DragCFrame", "DragInt3")
return v_u_916
