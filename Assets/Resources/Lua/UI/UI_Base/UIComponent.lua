--UI控件的基类
--1.显示与隐藏
--2.广播
--3.置灰
--4.坐标，层级
--5.周期方法 Parse Create Show Refresh

local UIComponentBase = require "UI.UI_Base.UIComponentBase";
UIComponent = Class("UIComponent", UIComponentBase);
local M = UIComponent;

function M:Ctor(selfTransform, args)
    UIComponentBase.Ctor(self);

    --初始化变量
    self.inited = false;

    self.parseArgs = nil;
    --
    self:Init(selfTransform, args);
end

function M:Init(selfTransform, args)
    if self.inited then return end

    self.inited = true;
    local unityTransform = nil;

    if selfTransform then   --如果是非加载的组件
        if type(selfTransform) == 'userdata' then  --transform在lua里的数据是userdata
            unityTransform = selfTransform;
            self.parseArgs = args;
        else

        end
    end

    if self.parseArgs then
        if type(self.parseArgs) == 'table' then

        end
        self:ParseArgs(self.parseArgs);
    end

    if unityTransform then
        self:OnPrepare(unityTransform);
    else
        self:LoadRes(self:GetPrefabPath());
    end
end

-----------------------------

function M:GetPrefabPath()
    return "";
end

function M:Parse(args)

end

function M:LoadResOK(path, prefab)

end

function M:OnPrepare(trans)

end



return M;