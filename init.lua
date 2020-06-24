--General settings--

hs.window.animationDuration = 0

hs.dockicon.hide()

laptopScreen = "Color LCD"
monitorScreen = "Acer B286HK"


--Find out info--

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
  if hs.dockicon.visible() then
    hs.dockicon.hide()
  else
    hs.dockicon.show()
  end
end)


--Resize focused window--

--slide right--
hs.hotkey.bind({"cmd", "ctrl"}, "Left", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "ctrl"}, "Right", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  
  f.x = max.x + max.w - f.w
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- hs.hotkey.bind({"cmd", "alt"}, "Right", function()
--   local win = hs.window.frontmostWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()

--   f.x = max.x + (max.w / 2)
--   f.y = max.y
--   f.w = max.w / 2
--   f.h = max.h
--   win:setFrame(f)
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3 * 2)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
--   local win = hs.window.frontmostWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()

--   f.x = max.x + (max.w / 3 * 2)
--   f.y = max.y
--   f.w = max.w / 3
--   f.h = max.h
--   win:setFrame(f)
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3 * 2
  f.h = max.h
  win:setFrame(f)
end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
--   local win = hs.window.frontmostWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()

--   f.x = max.x + (max.w / 3)
--   f.y = max.y
--   f.w = max.w / 3
--   f.h = max.h
--   win:setFrame(f)
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.frontmostWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)


--Screen layouts--

local terminal = hs.application.find("terminal")
local googleChrome = hs.application.find("google chrome")

local fullScreen = hs.geometry(0, 0, 1, 1):fromUnitRect(hs.screen.mainScreen():frame())
local right67x = hs.geometry(0.33, 0, .67, 1):fromUnitRect(hs.screen.mainScreen():frame())
local left67 = hs.geometry(0, 0, 0.67, 1)
local left33 = hs.geometry(0, 0, 0.33, 1)
local right33 = hs.geometry(0.67, 0, 0.33, 1)
local right33top = hs.geometry(0.67, 0, 0.33, 0.67)
local right33bot = hs.geometry(0.67, 0.67, 0.33, 0.33)
local left67top = hs.geometry(0, 0, 0.67, 0.75)
local left67bot = hs.geometry(0, 0.75, 0.67, 0.25)
local right33tops = hs.geometry(0.67, 0, 0.33, 0.5)
local right33bots = hs.geometry(0.67, 0.5, 0.33, 0.5)
local left67botx = left67bot:fromUnitRect(hs.screen.mainScreen():frame())

local layout1 = {
  {"Sublime Text 2", nil, monitorScreen, hs.layout.left50, nil, nil},
  {"Google Chrome", nil, monitorScreen, hs.layout.right50, nil, nil},
}

local layout2 = {
  {"Sublime Text 2", nil, monitorScreen, left67, nil, nil},
  {"Google Chrome", nil, monitorScreen, right33, nil, nil},
}

local layout3 = {
  {"Sublime Text 2", nil, monitorScreen, left67top, nil, nil},
  {"Google Chrome", nil, monitorScreen, right33, nil, nil},
}

local layout4 = {
  {"Sublime Text 2", nil, monitorScreen, left67, nil, nil},
  {"Google Chrome", nil, monitorScreen, right33top, nil, nil},
  {"Terminal", nil, monitorScreen, right33bot, nil, nil},
}

local layout5 = {
  {"Sublime Text 2", nil, monitorScreen, left67, nil, nil},
  {"Google Chrome", nil, monitorScreen, right33tops, nil, nil},
  {"Spotify", nil, monitorScreen, right33bots, nil, nil},
}


--Screen layout key bindings--

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "1", function()
--   hs.application.launchOrFocus("Google Chrome")
--   hs.application.launchOrFocus("Sublime Text 2")
--   hs.layout.apply(layout1)
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "2", function()
--   hs.application.launchOrFocus("Google Chrome")
--   hs.application.launchOrFocus("Sublime Text 2")
--   hs.layout.apply(layout2)
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "3", function()
--   hs.application.launchOrFocus("Google Chrome")
--   hs.application.launchOrFocus("Terminal")
--   hs.application.launchOrFocus("Sublime Text 2")
--   hs.layout.apply(layout3)
--   hs.window.tiling.tileWindows(terminal:allWindows(), left67botx)
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "4", function()
--   hs.application.launchOrFocus("Google Chrome")
--   hs.application.launchOrFocus("Terminal")
--   hs.application.launchOrFocus("Sublime Text 2")
--   hs.layout.apply(layout4)
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "5", function()
--   hs.application.launchOrFocus("Google Chrome")
--   hs.application.launchOrFocus("Spotify")
--   hs.application.launchOrFocus("Sublime Text 2")
--   hs.layout.apply(layout5)
-- end)
