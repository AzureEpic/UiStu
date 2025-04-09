-- Example LocalScript (StarterPlayerScripts)

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureEpic/UiStu/refs/heads/main/sk"))()

local win = UI:CreateWindow({
    Name   = "MyCoolUI",
    Title  = "Epic Interface",
    Theme  = "Default",
    Width  = 450,
    Height = 350,
})

win:MakeButton({
    Name     = "Press Me!",
    Callback = function()
        print("Button pressed, yasss! 🎉")
    end
})

win:MakeToggle({
    Name     = "Enable Mode",
    Default  = false,
    Callback = function(state)
        print("Toggle is now:", state)
    end
})

win:MakeDropdown({
    Name     = "Pick One",
    Options  = {"Option A","Option B","Option C"},
    Callback = function(choice)
        print("You chose:", choice)
    end
})

win:MakeTextInput({
    Name        = "YourText",
    Placeholder = "Type something...",
    Callback    = function(text)
        print("You typed:", text)
    end
})
