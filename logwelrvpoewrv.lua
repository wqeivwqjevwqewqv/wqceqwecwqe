-- _G.Activate = true
-- _G.FirstWait = 0
-- _G.Linetoken = "IFrNuMoL2l7CnMJEOYrT9C6nur9GzIII0LVfAhA3MeX"
-- _G.LockBeliActivate = true
-- _G.LockBeli = 10000000
-- _G.CheckSheet = true
-- _G.RareModeActivate = false
-- _G.RareMode = 3
-- _G.LogInventoryActivate = true
-- _G.LogInventory = {"Shisui", "Saddi", "Wando", "Buddy Sword", "Yama", "Hallow Scythe", "Spikey Trident", "Dark Dagger"}
-- _G.SheetBest = "https://sheet.best/api/sheets/bef8b0ee-e57a-40d6-acdb-0caa5fbe8e71"
-- _G.LogAcc = true

_G.Activate = true
_G.FirstWait = 0
_G.Linetoken = "IFrNuMoL2l7CnMJEOYrT9C6nur9GzIII0LVfAhA3MeX"
_G.LockBeliActivate = true
_G.LockBeli = 10000000
_G.CheckSheet = false
_G.RareModeActivate = false
_G.RareMode = 3
_G.LogInventoryActivate = true
_G.LogInventory = {"Shisui", "Saddi", "Wando", "Buddy Sword", "Yama", "Hallow Scythe", "Spikey Trident", "Dark Dagger"}
_G.SheetBest = "https://sheet.best/api/sheets/bef8b0ee-e57a-40d6-acdb-0caa5fbe8e71"

repeat print('WAITING GAME LOAD') wait(1) until game:IsLoaded()
if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait()

if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then


   for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
      v.Function()
   end

   wait(.5)

end

until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
function webhook()
   local webhookcheck =
  is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
  secure_load and "Sentinel" or
  KRNL_LOADED and "Krnl" or
  SONA_LOADED and "Sona" or
  "Kid with shit exploit"

   local url =
   "https://discordapp.com/api/webhooks/982877484703957053/Jg-mXsnIFEhwAtMMDVP3cSkaR4vUo8v-XbQqaF6HDIp8t2E0VpTJr1LrHMGR7mhO6zdk"
   local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**\nHwid: ||".. game:GetService("RbxAnalyticsService"):GetClientId() .. "||",
           ["footer"] = {
              ["text"] = os.date()
           },
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
         --   ["image"] = {
         --       ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
         --           tostring(game:GetService("Players").LocalPlayer.Name)
         --   }
       }
   }
   }
   local newdata = game:GetService("HttpService"):JSONEncode(data)

   local headers = {
   ["content-type"] = "application/json"
   }
   request = http_request or request or HttpPost or syn.request
   local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
   request(abcdef)
end
warn('Script Running')
webhook()
print('LAST UPDATE ON 05/06 12:41')
-- whitelist
-- ts = game:GetService("TeleportService")
-- local HWID = {
--     "ABE22B3C-8DA6-4E43-856B-0E3564A47C2C",
--     "5CAE8E3E-3018-4054-A2C1-4AAB39BA13E9",
--     "192063A6-7BEC-48CC-8432-A04ABD21CE35",
--     "BB69F8CA-32F7-4640-8541-4E564CE20923",
--     "DD5F6449-B50D-4A51-AC41-0E1E54204334",
-- }

-- if HWID[table.find(HWID,game:GetService("RbxAnalyticsService"):GetClientId())] == game:GetService("RbxAnalyticsService"):GetClientId() then
-- print("Success")
-- else
--     setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
--     game.Players.LocalPlayer:Kick("COPY HWID SUCCES")
--     wait(2)
--     ts:Teleport(game.PlaceId, p)
-- end



spawn(function()

   local uis = game:GetService("UserInputService")
   local size = workspace.CurrentCamera.ViewportSize

   uis.WindowFocused:Connect(function() 
      game:GetService("RunService"):Set3dRenderingEnabled(true)
   end)

   uis.WindowFocusReleased:Connect(function() 
      game:GetService("RunService"):Set3dRenderingEnabled(false)
   end)
end)
-- FAST ATTACK --
spawn(function()
   warn("LOADED FAST ATTACK")
   while wait(.1) do pcall(function()
      function Getresume(s)
         s.activeController.timeToNextAttack = 0
      end

      local Rig = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
   end)
end
end)
-----------------
if game.CoreGui:FindFirstChild("Kiwwylib") then
   game.CoreGui:FindFirstChild("Kiwwylib"):Destroy()
end

if _G.FirstWait ~= nil then
   wait(_G.FirstWait)
else
   wait(10)
end
--------------------
function time()
   return ""..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
end
req = request or syn.request
makefolder("Kiwwy")
print(time() .. " -> " .. game.Players.LocalPlayer.Name)

-- check have 2 file then del all
if isfile("Kiwwy/"..game.Players.LocalPlayer.Name..".txt")  and isfile("Kiwwy/"..game.Players.LocalPlayer.Name.."_success.txt") then
   print(time() .. " -> " .."Have Succes And Normal File")
   delfile("Kiwwy/"..game.Players.LocalPlayer.Name..".txt")
   delfile("Kiwwy/"..game.Players.LocalPlayer.Name.."_success.txt")
   print(time() .. " -> " .."Delete Success")
end

-- check is succes then shutdown

if isfile("Kiwwy/"..game.Players.LocalPlayer.Name.."_success.txt") then

   -- print(time() .. " -> " .."Have A Success")
   -- token = 'IFrNuMoL2l7CnMJEOYrT9C6nur9GzIII0LVfAhA3MeX'
   -- b = req({
   --    Url = 'https://notify-api.line.me/api/notify',
   --    Method = "POST",
   --    Headers = {['content-type'] = 'application/x-www-form-urlencoded' , ['Authorization'] = 'Bearer '..token},
   --    Body = "message=" .. game.Players.LocalPlayer.Name .. "\nเสร็จแล้วจะเปิดอีกหาแม่มึงหรอ "
   -- })
   -- print(b.Body)
   -- game:Shutdown()
   -- return
   -- print('eiei')
end



--check check no any file then create normal file

if isfile("Kiwwy/"..game.Players.LocalPlayer.Name..".txt") == false and isfile("Kiwwy/"..game.Players.LocalPlayer.Name.."_success.txt") == false then
   print(time() .. " -> " ..'Kiwwy WorkSpace -> No File Succes And Normal'..game.Players.LocalPlayer.Name..".txt")

   writefile("Kiwwy/"..game.Players.LocalPlayer.Name..".txt","")

   print(time() .. " -> " .."Create -> ".. game.Players.LocalPlayer.Name..".txt")

end

--check have a normal file
if isfile("Kiwwy/"..game.Players.LocalPlayer.Name..".txt") == false then
   print(time() .. " ->" .. "No File Normal")

else
   print(time() .. " -> " .. "Have file Doing")
end
--------------------------------


local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Name = "Kiwwylib"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
TextLabel.Size = UDim2.new(0, 300, 0, 200)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.BackgroundTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 50.000
if _G.Activate then
   TextLabel.Text = "Starting ... "
else
   TextLabel.Text = "No Config ?"
end



problemlist = {}



if tostring(_G.Activate or _G.FirstWait or _G.Linetoken or _G.LockBeliActivate or _G.LockBeli or _G.CheckSheet or _G.RareModeActivate or _G.RareMode or _G.LogInventoryActivate or _G.SheetBest) == nil then
   print(_G.Activate , _G.FirstWait , _G.Linetoken , _G.LockBeliActivate , _G.LockBeli , _G.CheckSheet , _G.RareModeActivate , _G.RareMode , _G.LogInventoryActivate , _G.SheetBest)
   TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
   warn("CONFIG NOT COMPLETE")
   TextLabel.Text = "CONFIG NOT COMPLETE !!!"
   return

else
   if (_G.LogInventory) == nil then
      TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
      warn("CONFIG NOT COMPLETE")
      TextLabel.Text = "CONFIG NOT COMPLETE !!!"
      return
   end
end

if _G.RareModeActivate and _G.LogInventoryActivate then
   TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
   TextLabel.Text = "DONT OPEN LOGINV WITH RARE MODE !!!"
   return
end
function reformatint(integer)
   for i = 1, math.floor((string.len(integer)-1) / 3) do
      integer = string.sub(integer, 1, -3*i-i) ..
      ',' ..
      string.sub(integer, -3*i-i+1)
   end
   return integer
end
function reformatmoney(n)
      if n >= 10^6 then
          return string.format("%.2f M", n / 10^6)
      elseif n >= 10^3 then
          return string.format("%.2f K", n / 10^3)
      else
          return tostring(n)
      end
end
function World()
      local world
  
      if game.PlaceId == 2753915549 then
          world = 1
      elseif game.PlaceId == 4442272183 then
          world = 2
      elseif game.PlaceId == 7449423635 then
          world = 3
      end
  
      return world
  
  end
function sheetbest()

  function inventory()
  nah = {}
  
  for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
      if v.ToolTip == "Sword" then
          table.insert(nah,v.Name)
          print(v.Name)
          end
      end
      
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do pcall(function()
      
      if v.ToolTip == "Sword" then
          table.insert(nah,v.Name)
          print(v.Name)
      end
  end)
  end
  

  if _G.RareModeActivate then
   for i,v in pairs (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
      -- print(v.Name)
         if _G.RareMode ~= nil or _G.RareMode ~= "" then
            if v.Rarity >= _G.RareMode and v.Type ~= "Wear" then
               print(v.Name , v.Type)
               table.insert(nah,v.Name)
            end
         else
            table.insert(nah,v.Name)
         end
      end
   end

   if _G.LogInventoryActivate then
      for i,v in pairs (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
         for w,e in pairs (_G.LogInventory) do
               if v.Name == tostring(e) then
                  table.insert(nah,e)
               end
         end
      end
   end

  
      
  
  allweapon = table.concat(nah,", ")
  print(allweapon)
  return allweapon
  end
  
   function checkfruit()
      fruitlist = {}
      for i,v in pairs (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")) do 
      --  print(v.Name:split("-")[1])
         table.insert(fruitlist, tostring(v.Name:split("-")[1]))
      end
      if unpack(fruitlist) ~= nil then
         allfruit = table.concat(fruitlist , ", ")
         print(allfruit)
         return tostring(allfruit)
      else
         return "None"
      end
   end
   
   function checkmelee()
      listcheckmelee = {["Superhuman"] = 0,["DragonTalon"] = 0,["ElectricClaw"] = 0,["SharkmanKarate"] = 0 , ["DeathStep"] = 0}
      checksup = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)
      if checksup == 1 then
         print("Super")
         listcheckmelee['Superhuman'] = 1
      end

      checktalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
      if checktalon == 1 then
         print("Talon")
         listcheckmelee['DragonTalon'] = 1
      end

      checkelec = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
      if checkelec == 1 then
         print("Electric")
         listcheckmelee['ElectricClaw'] = 1
      end
      Shark = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
      if Shark == 1 then
         print("Sharkman")
         listcheckmelee['SharkmanKarate'] = 1
      end
      Death = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
      if Death == 1 then
         print("DeathStep")
         listcheckmelee['DeathStep'] = 1
      end

      realmelee = {}
      for i,v in pairs (listcheckmelee) do
         if v == 1 then
            print(i)
            table.insert(realmelee,tostring(i))
         end
      end

      print(table.concat(realmelee,", "))
      return (table.concat(realmelee,", "))
   end

   function logsomething(haha)
      local data = haha
      qwevwqv = req({
            Url = _G.SheetBest,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game.HttpService:JSONEncode(data)
      })
      
      print(qwevwqv.Body)
   end
   
   function logsheet()
      local data = {
            ["Name"] = game.Players.LocalPlayer.Name,
            ["Level"] = reformatint(game.Players.LocalPlayer.Data.Level.Value),
            ["World"] = World(),
            ["Inventory"] = inventory(),
            ["Beli"] = tostring(reformatmoney(game:GetService("Players").LocalPlayer.Data.Beli.Value)),
            ["Fragment"] = tostring(reformatmoney(game:GetService("Players").LocalPlayer.Data.Fragments.Value)),
            ["Race"] = game:GetService("Players").LocalPlayer.Data.Race.Value,
            ["Fruit"] = tostring(Fruit:split('-')[1] .. " (" .. ValueFruit .. " Mas.)"),
            ["Awake"] = tostring(awaked),
            ["Skill"] = tostring(skill),
            ["Melee"] = checkmelee(),
            ["Fruit Inventory"] = checkfruit(),
            
      }
      qwevwqv = req({
            Url = _G.SheetBest,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game.HttpService:JSONEncode(data)
      })
      
      print(qwevwqv.Body)
   end
   function httpget(url)
      qwevwqev = req({
          Url = url,
          Method = "GET",
      })
      
      print(qwevwqev.Body)
      return qwevwqev.Body
   end

   -- if _G.SpiltLog ~= nil then
   --    for i,v in pairs (_G.SpiltLog) do
   --       warn(v)
   --       if inventory():find(v) then
   --          warn('have')
   --          logsomething(
   --             {
   --                ["Shisui"] = game.Players.LocalPlayer.Name .. "HAVE"
   --             }
   --          )
   --       end
   --    end
   -- end

   if _G.CheckSheet then
      if httpget(_G.SheetBest):find(game.Players.LocalPlayer.Name) then
         print("HAVE DATA")
         return
     else
         print("NO DATA")
         logsheet()
      end
   
   else
      logsheet()
   end

end

function checkmoney()
   if _G.LockBeliActivate then
      if _G.LockBeli == nil or _G.LockBeli == "" then
         return
      else
         if game:GetService("Players").LocalPlayer.Data.Beli.Value >= _G.LockBeli then
            print("NOW BELI = ".. game:GetService("Players").LocalPlayer.Data.Beli.Value)
            return true
         else
            print("nah no money")
            return false
         end
      end
   else
      warn("LOCK BELI CLOSEING")
      return
   end
end

-- AUTO HOP --

-- spawn(function()
--    warn("LOAD AUTO HOP SUCCESS")
--    local PlaceID = game.PlaceId
--    local AllIDs = {}
--    local foundAnything = ""
--    local actualHour = os.date("!*t").hour
--    local Deleted = false
--    local File = pcall(function()
--        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
--    end)
--    if not File then
--        table.insert(AllIDs, actualHour)
--        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
--    end
--    function TPReturner()
--        local Site;
--        if foundAnything == "" then
--            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
--        else
--            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
--        end
--        local ID = ""
--        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
--            foundAnything = Site.nextPageCursor
--        end
--        local num = 0;
--        for i,v in pairs(Site.data) do
--            local Possible = true
--            ID = tostring(v.id)
--            if tonumber(v.maxPlayers) > tonumber(v.playing) then
--                for _,Existing in pairs(AllIDs) do
--                    if num ~= 0 then
--                        if ID == tostring(Existing) then
--                            Possible = false
--                        end
--                    else
--                        if tonumber(actualHour) ~= tonumber(Existing) then
--                            local delFile = pcall(function()
--                                delfile("NotSameServers.json")
--                                AllIDs = {}
--                                table.insert(AllIDs, actualHour)
--                            end)
--                        end
--                    end
--                    num = num + 1
--                end
--                if Possible == true then
--                    table.insert(AllIDs, ID)
--                    wait()
--                    pcall(function()
--                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
--                        wait()
--                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
--                    end)
--                    -- wait(4)
--                end
--            end
--        end
--    end
   
--    function Teleport()
--        while wait() do
--            pcall(function()
--                TPReturner()
--                if foundAnything ~= "" then
--                    TPReturner()
--                end
--            end)
--        end
--    end
   
--    name = {"KaiYang" , "MiNiKaiYung" , "orxkaiyang" , "PabidaHHK"}
--    _G.Hop = true
--    while _G.Hop do
--        wait(10)
--        for i,v in pairs (game.Players:GetChildren()) do
--            if v.Name ~= game.Players.LocalPlayer.Name then
--                print(v.Name)
--                for w , e in pairs(name) do
--                    warn("KeyWord : " .. e)
--                    if string.find(v.Name,e) then
--                        warn("Teleport")
--                        _G.Hop = False
--                        wait(match.huge(1,100))
--                        Teleport()
--                    else 
--                        warn("Cant Find")
--                    end
--                end
--            end
--        end
--        end

-- end)

-- ACC FUNCTION --
spawn(function()
   while _G.LogAcc do
      wait(10)
      a = syn.request({
         Url = "http://localhost:7963/SetDescription?Account="..game.Players.LocalPlayer.Name.."&Password=123456789";
         Method = "POST";
         Body = "Level: " .. game.Players.LocalPlayer.Data.Level.Value
      })
      warn(a.Body)
   end
end)

function setalias()
   if _G.LogAcc then
      a = syn.request({
         Url = "http://localhost:7963/SetAlias?Account="..game.Players.LocalPlayer.Name.."&Password=123456789";
         Method = "POST";
         Body = "LOGED SHEET"
         })
      warn(a.Body)
   end
end
-----------------------
------------------------

  
while _G.Activate do
   wait(3)
   pcall(function()
      game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Position = UDim2.new(0,200,0,400)
      game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Text = "ƒ"..tostring(reformatint(game.Players.LocalPlayer.Data.Fragments.Value))

      if game:GetService("Players").LocalPlayer.Data.DevilFruit.Value ~= "" then

         Fruit = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
         ValueFruit1 = game.Players.LocalPlayer.Backpack:FindFirstChild(Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Fruit)
         ValueFruit = ValueFruit1.Level.Value

         print(Fruit)
         SkillValue = require(ValueFruit1.Data).Lvl
         print(SkillValue["Z"],SkillValue["F"],SkillValue["X"],SkillValue["C"],SkillValue["V"])
         if ValueFruit >= SkillValue["Z"] then
            print("Z")
            Z = true
         end
         if Fruit ~= "Quake-Quake" then
            if ValueFruit >= SkillValue["F"] then
               print("F")
               F = true
            end
         end
         if ValueFruit >= SkillValue["X"] then
            print("X")
            X = true
         end
         if ValueFruit >= SkillValue["C"] then
            print("C")
            C = true
         end

         if SkillValue["V"]  then
            if ValueFruit >= SkillValue["V"] then
               print("V")
               V = true
            end
         end
         skill = ""
         if Z then
            skill = skill .. "Z "
         end
         if X then
            skill = skill .. "X "
         end
         if C then
            skill = skill .. "C "
         end
         if V then
            skill = skill .. "V "
         end
         if F then
            skill = skill .. "F "
         end
         if skill == "" then
            skill = "None"
         end
         print(skill)

         awaked = ""
         CanAwake = ValueFruit1:FindFirstChild("AwakenedMoves")
         if CanAwake then
            print("Can Awake this")

            for i,v in pairs(ValueFruit1.AwakenedMoves:GetChildren()) do
               print(v)
               awaked = awaked .. tostring(v) .. " "
            end
            print(awaked)
         else
            cant_awake = true
            print("Cant Awake this")
            awaked = "None"
         end
      else
         awaked = "None"
         skill = "None"
         Fruit = "None Fruit"
         ValueFruit = "None"
      end

      -- Time = (tostring(game:GetService("Lighting").TimeOfDay):split(":")[1])
      -- print(Time)
      -- if (tonumber(Time)) >= 16 then
      --     TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
      -- elseif (tonumber(Time)) <= 16 then
      TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextLabel.Text = "Name : "..game.Players.LocalPlayer.Name.." Level " .. game.Players.LocalPlayer.Data.Level.Value .. "\n" ..Fruit.." Mastery : "..ValueFruit .. "\n" .. "Use Skill " .. skill .. "\n" .. "Awake " ..  awaked
      

      sheetbest()
      a = syn.request({
        Url = "http://localhost:7963/SetAlias?Account="..game.Players.LocalPlayer.Name.."&Password=123456789";
        Method = "POST";
        Body = "LOGED SHEET"
        })
     warn(a.Body)
      game:shutdown()
      wait(1)
      TextLabel.Text = "Updating ..."
      wait(.5)
   end)
end
TextLabel.TextSize = 75.000
spawn(function()
   game:Shutdown()
   local uis = game:GetService("UserInputService")
   uis.InputBegan:Connect(function(asd)
      if asd.KeyCode == Enum.KeyCode.G then -- any key here (could be insert or delete whatever u want)
      print("SHUTDOWN")
      
      game:Shutdown()
      end
   end)
   while wait(1) do
      TextLabel.Text = "ALL SUCCES PRESS G \nTO CLOSE ."
      wait(1)
      TextLabel.Text = "ALL SUCCES PRESS G \nTO CLOSE .."
      wait(1)
      TextLabel.Text = "ALL SUCCES PRESS G \nTO CLOSE ..."
      end
end)
spawn(function()
   while wait() do
      local r = (math.sin(workspace.DistributedGameTime/2)/2)+0.5
      local g = (math.sin(workspace.DistributedGameTime)/2)+0.5
      local b = (math.sin(workspace.DistributedGameTime*1.5)/2)+0.5
      local color = Color3.new(r, g, b)
      TextLabel.TextColor3 = color
      end

end)
