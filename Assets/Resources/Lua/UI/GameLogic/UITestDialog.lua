---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2020/12/23 14:55
---
local UIDialog = require "UI.UI_Base.UIDialog";
UITestDialog = Class("UITestDialog", UIDialog);
local M = UITestDialog;

function M:Ctor()
    UIDialog.Ctor(self);
end

function M:GetPrefabPath()
    return "Prefabs/UI/TestPanel";
end

function M:SetLayer()
    self._layer = DialogLayer.UIPanelLayer;
end

function M:BindUIComponent()
    self.hpTxt = self:GetComponentByPath("hp", "Text");
    self.button = self:GetComponentByPath("btn", "Button");
    self.img = self:GetComponentByPath("Image", "Image");
end

function M:OnShow()
    LuaLog("onshow")
    self.hpTxt.text = "worinilaolao"
end

function M:OnHide()
    LuaLog("onhide")
end

function M:OnAddListener()
    LuaLog("onaddlistener")
end

function M:OnRemoveListener()
    LuaLog("onremovelistener")
end

function M:OnClose()
    LuaLog("onclose")
end

return M;