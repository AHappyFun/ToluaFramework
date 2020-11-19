--require ...
require "FrameWork.LuaDebugger";

require "UI.UIManager";


GameMain = {};

LuaLog("########### Lua GameMain ##########")

--C#到Lua
function GameMain.Init()

    UIManager:GetInstance():Init();
end

function GameMain.Tick(delta)
    
end

function GameMain.LateTick(delta)
    
end

function GameMain.FixedTick(delta)
    
end

function GameMain.Destroy()
    LuaLog("############# Lua GameMain Destroy #############");
end