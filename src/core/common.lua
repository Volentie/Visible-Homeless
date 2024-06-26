local get_service = function(service_name)
    return game:GetService(service_name)
end

while not get_service("RunService"):IsRunning() do
    task.wait(60*5)
    error("Game is not running")
end


-- --:[Services]:--
local ReplicatedStorage = get_service("ReplicatedStorage")
local ServerScriptService = get_service("ServerScriptService")
local StarterPlayerScripts = get_service("StarterPlayerScripts")
local StarterCharacterScripts = get_service("StarterCharacterScripts")
local StarterPlayer = get_service("StarterPlayer")
local StarterGui = get_service("StarterGui")
local Lighting = get_service("Lighting")
local TweenService = get_service("TweenService")
local UserInputService = get_service("UserInputService")
local HttpService = get_service("HttpService")
local Players = get_service("Players")
local RunService = get_service("RunService")
local PathfindingService = get_service("PathfindingService")
local PhysicsService = get_service("PhysicsService")
local TextChatService = get_service("TextChatService")

local LocalPlayer = Players.LocalPlayer
if LocalPlayer == nil then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local CharacterHead = Character:WaitForChild("Head")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local NPCs_folder = workspace:WaitForChild("NPCs")
local Seller_folder = NPCs_folder:WaitForChild("Seller")
local Needy_folder = NPCs_folder:WaitForChild("Needy")
local City_folder = workspace:WaitForChild("City")
local NGOs_Folder = workspace:WaitForChild("NGOs")

return {
    npcs_folder = NPCs_folder,
    ngos_folder = NGOs_Folder,
    seller_folder = Seller_folder,
    needy_folder = Needy_folder,
    city_folder = City_folder,
    get_service = get_service,
    run_service = RunService,
    local_player = LocalPlayer,
    character = Character,
    character_head = CharacterHead,
    humanoid = Character:WaitForChild("Humanoid"),
    humanoid_root_part = LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
    replicated_storage = ReplicatedStorage,
    server_script_service = ServerScriptService,
    starter_player = StarterPlayer,
    starter_gui = StarterGui,
    player_gui = PlayerGui,
    lighting = Lighting,
    tween_service = TweenService,
    user_input_service = UserInputService,
    http_service = HttpService,
    starter_character_scripts = StarterCharacterScripts,
    starter_player_scripts = StarterPlayerScripts,
    pathfinding_service = PathfindingService,
    physics_service = PhysicsService,
    text_chat_service = TextChatService,
}