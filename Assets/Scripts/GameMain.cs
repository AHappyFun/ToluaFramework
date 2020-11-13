using UnityEngine;
using System.Collections;
using LuaInterface;

public class GameMain : MonoBehaviour {

    void Awake()
    {
        Init();
    }

    void Update()
    {

    }


    //-------------------
    LuaState lua = null;
    LuaFunction luaFunc = null;

    void Init()
    {
        //init SDK

        InitGame();

        InitLua();
    }

    void InitGame()
    {
        DontDestroyOnLoad(gameObject);
    }

    void InitLua()
    {
        new LuaResLoader();

        lua = new LuaState();
        lua.Start();
        LuaBinder.Bind(lua);

        string luaPath = Application.dataPath + "/Resources/Lua";
        lua.AddSearchPath(luaPath);

        lua.DoFile("UnityGlobalType.lua");
        lua.DoFile("FrameWork/LuaDebugger.lua");

        lua.DoFile("GameMain.lua");

        CallLuaFunc("GameMain.Init", gameObject);
    }

    void CallLuaFunc(string func, GameObject obj)
    {
        luaFunc = lua.GetFunction(func);
        luaFunc.Call(obj);
        luaFunc.Dispose();
        luaFunc = null;
    }
}
