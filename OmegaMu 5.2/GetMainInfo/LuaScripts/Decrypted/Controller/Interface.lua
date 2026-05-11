OpenFolder("Definitions")

InterfaceController = {}

local MainProc_Handle = {}
function MainProc()
	for i in pairs(MainProc_Handle) do
		MainProc_Handle[i].callback()
	end
end
function InterfaceController.MainProc(callback, ...)
	MainProc_Handle[callback] = { callback = callback }
end

local AfterMainProc_Handle = {}

function AfterMainProc()
	for i in pairs(AfterMainProc_Handle) do
		AfterMainProc_Handle[i].callback()
	end
end
function InterfaceController.AfterMainProc(callback, ...)
	AfterMainProc_Handle[callback] = { callback = callback }
end

local BeforeMainProc_Handle = {}

function BeforeMainProc()
	for i in pairs(BeforeMainProc_Handle) do
		BeforeMainProc_Handle[i].callback()
	end
end
function InterfaceController.BeforeMainProc(callback, ...)
	BeforeMainProc_Handle[callback] = { callback = callback }
end


local InterfaceUpdateProc_Handle = {}

function UpdateProc()	
	for i in pairs(InterfaceUpdateProc_Handle) do
		InterfaceUpdateProc_Handle[i].callback()
	end
end
function InterfaceController.UpdateProc(callback)
	InterfaceUpdateProc_Handle[callback] = { callback = callback }
end

local InterfaceUpdateMouse_Handle = {}

function UpdateMouse()
	for i in pairs(InterfaceUpdateMouse_Handle) do
		InterfaceUpdateMouse_Handle[i].callback()
	end
end

function InterfaceController.UpdateMouse(callback)
	InterfaceUpdateMouse_Handle[callback] = { callback = callback }
end

local InterfaceUpdateKey_Handle = {}

function UpdateKey()
	for i in pairs(InterfaceUpdateKey_Handle) do
		InterfaceUpdateKey_Handle[i].callback()
	end
end

function InterfaceController.UpdateKey(callback)
	InterfaceUpdateKey_Handle[callback] = { callback = callback }
end


local ClientProtocol_Handle = {}

function ClientProtocol(Packet, PacketName)	
	for i in pairs(ClientProtocol_Handle) do
		if ClientProtocol_Handle[i].callback(Packet, PacketName) then
			return
		end
	end
	ClearPacket(PacketName)
end

function InterfaceController.ClientProtocol(callback, ...)
	ClientProtocol_Handle[callback] = { callback = callback }
end


local ScrollMouse_Handle = {}

function ScrollMouse(value)
	for i in pairs(ScrollMouse_Handle) do
		if ScrollMouse_Handle[i].callback(value) ~= 0 then
			return 1
		end
	end
	return 0
end

function InterfaceController.ScrollMouse(callback, ...)
	ScrollMouse_Handle[callback] = { callback = callback }
end

local InterfaceClickRightEvent_Handle = {}

function InterfaceClickRightEvent()
	for i in pairs(InterfaceClickRightEvent_Handle) do
		InterfaceClickRightEvent_Handle[i].callback()
	end
end

function InterfaceController.InterfaceClickRightEvent(callback, ...)
	InterfaceClickRightEvent_Handle[callback] = { callback = callback }
end

local InterfaceClickEvent_Handle = {}

function InterfaceClickEvent()
	for i in pairs(InterfaceClickEvent_Handle) do
		InterfaceClickEvent_Handle[i].callback()
	end
end

function InterfaceController.InterfaceClickEvent(callback, ...)
	InterfaceClickEvent_Handle[callback] = { callback = callback }
end

local MainProcWorldKey_Handle = {}

function MainProcWorldKey(key)
	for i in pairs(MainProcWorldKey_Handle) do
		MainProcWorldKey_Handle[i].callback(key)
	end
end

function InterfaceController.MainProcWorldKey(callback, ...)
	MainProcWorldKey_Handle[callback] = { callback = callback }
end


local FinalBoot_Handle = {}

function FinalBoot()
	for i in pairs(FinalBoot_Handle) do
		FinalBoot_Handle[i].callback()
	end
end

function InterfaceController.FinalBoot(callback)
	FinalBoot_Handle[callback] = { callback = callback }
end

local AfterScriptLoad_Handle = {}

function AfterScriptLoad()
	for i in pairs(AfterScriptLoad_Handle) do
		AfterScriptLoad_Handle[i].callback()
	end
end

function InterfaceController.AfterScriptLoad(callback)
	AfterScriptLoad_Handle[callback] = { callback = callback }
end

OpenFolder("Shop")
OpenFolder("Utils")
OpenFolder("Configs")
OpenFolder("Systems")

return InterfaceController