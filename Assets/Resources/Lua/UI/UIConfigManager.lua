--[[
    UIConfigManager UI配置管理
-]]
local Singleton = require "FrameWork.Singleton";

UIConfigManager = Class("UIConfigManager", Singleton);
local M = UIConfigManager;

DialogType = {
    UITestDialog    = "UI.GameLogic.UITestDialog",
    MainSceneDialog = "UI.GameLogic.MainSceneDialog",
}


return M;