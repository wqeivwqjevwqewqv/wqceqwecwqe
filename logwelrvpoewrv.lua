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
--------------------------------------
function reformatint(integer)
   for i = 1, math.floor((string.len(integer)-1) / 3) do
      integer = string.sub(integer, 1, -3*i-i) ..
      ',' ..
      string.sub(integer, -3*i-i+1)
   end
   return integer
end
---------------------------------------
function reformatmoney(n)
      if n >= 10^6 then
          return string.format("%.2f M", n / 10^6)
      elseif n >= 10^3 then
          return string.format("%.2f K", n / 10^3)
      else
          return tostring(n)
      end
end
---------------------------------------

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
   
 

    for i,v in pairs (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do

            _G.RareMode = 3
             if v.Rarity >= _G.RareMode and v.Type ~= "Wear" then
                print(v.Name , v.Type)
                table.insert(nah,v.Name)
         end
      end

 

   
       
   if unpack(nah) == nil or unpack(nah) == "" then
      nah = "None"
      return nah
   end
   allweapon = table.concat(nah,", ")
   print(allweapon)
   return allweapon
   end

---------------------------------------
req = request or syn.request
if game:GetService("Players").LocalPlayer.Data.DevilFruit.Value ~= "" then
   Fruit = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
   ValueFruit1 = game.Players.LocalPlayer.Backpack:FindFirstChild(Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Fruit)
   ValueFruit = ValueFruit1.Level.Value
else
   awaked = "None"
   skill = "None"
   Fruit = "None Fruit"
   ValueFruit = "None"
end

---------------------------------------

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


---------------------------------------

function checkfruit()
   fruitlist = {}
   for i,v in pairs (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")) do 
   --  print(v.Name:split("-")[1])
      -- table.insert(fruitlist, tostring(v.Name:split("-")[1]))
      table.insert(fruitlist,v.Name:match("%-(.+)"))
   end
   if unpack(fruitlist) ~= nil then
      allfruit = table.concat(fruitlist , ", ")
      print(allfruit)
      return tostring(allfruit)
   else
      return "None"
   end
end

---------------------------------------

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
   if unpack(realmelee) == nil then
       realmelee = "None"
      return realmelee
   end
   print(table.concat(realmelee,", "))
   return (table.concat(realmelee,", "))
end

---------------------------------------


logsheet()
