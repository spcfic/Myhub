-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

-- Create Window
local Window = Rayfield:CreateWindow({
   Name = "Lloyd's Hub",
   LoadingTitle = "Loading Lloyd's Hub",
   LoadingSubtitle = "Tower Defense Tools",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "LloydHub", -- Folder for settings
      FileName = "Config"
   },
   KeySystem = false, -- disable keys
})

---------------------------------------------------
-- Record Tab
---------------------------------------------------
local RecordTab = Window:CreateTab("Record", 4483362458) 
local RecordSection = RecordTab:CreateSection("Recording Controls")

local recordName = "Default Recording"
local isRecording = false

RecordTab:CreateInput({
   Name = "Record Name",
   PlaceholderText = "Enter recording name",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      recordName = Text
      Rayfield:Notify({
         Title = "Record Name Set",
         Content = "Recording name changed to: " .. recordName,
         Duration = 5
      })
   end,
})

RecordTab:CreateToggle({
   Name = "Toggle Record Actions",
   CurrentVa+lue = false,
   Callback = function(Value)
      isRecording = Value
      if isRecording then
         print("Started recording actions for: " .. recordName)
      else
         print("Stopped recording actions for: " .. recordName)
      end
   end,
})

RecordTab:CreateButton({
   Name = "Save Recording",
   Callback = function()
      print("Recording '" .. recordName .. "' saved!")
      Rayfield:Notify({
         Title = "Recording Saved",
         Content = "Saved as: " .. recordName,
         Duration = 5
      })
   end,
})

RecordTab:CreateButton({
   Name = "Show Recording Info",
   Callback = function()
      print("Recording Info for: " .. recordName)
      print("Currently Recording: " .. tostring(isRecording))
   end,
})

RecordTab:CreateButton({
   Name = "Clear Recording",
   Callback = function()
      print("Cleared recording: " .. recordName)
   end,
})

---------------------------------------------------
-- Second Tab (empty for now)
---------------------------------------------------
local OtherTab = Window:CreateTab("Other", 4483362458)
OtherTab:CreateSection("Coming Soon")
