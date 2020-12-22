--[[
    UIPoolManager UI池子管理
-]]
local Singleton = require "FrameWork.Singleton";

UIPoolManager = Class("UIPoolManager", Singleton);
local M = UIPoolManager;

function M:Ctor()
    Singleton.Ctor(self);

    self.uiPool = {};  --先一个池子
end

function M:Tick(delta)
    for k, v in pairs(self.uiPool) do

    end
end

function M:PushPool(uiComponent)
    if TableUtil.Contains(self.uiPool, uiComponent) then
        return;
    else
        self.uiPool[uiComponent.name] = uiComponent;
    end
end

function M:GetDialogInPool(dialog)
    if TableUtil.Contains(self.uiPool, dialog) then
        return self.uiPool[dialog];
    else
        return nil
    end
end




return M;
