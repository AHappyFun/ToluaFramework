local Singleton = require "FrameWork.Singleton";

UIManager = Class("UIManager", Singleton);
local M = UIManager;

function M:Ctor()
    Singleton.Ctor(self);
end

function M:Tick(delta)
	
end

function M:Init()
    LuaLog("UIManager Init");
end

function M:Open(m, args)
    local ret = self:_Open(m, args);
    return ret;
end

function M:_Open(m, args)
    local instance = nil;
    instance = m:Open(args);
    --加到池子里

    return instance;
end


return M;