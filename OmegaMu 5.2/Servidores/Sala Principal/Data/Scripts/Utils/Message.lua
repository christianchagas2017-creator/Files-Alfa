Message = { }

function Message.SendMessageGlobalMultLang(messageSource, messageKey, messageType)
	for aIndex = OBJECT_START_USER, MAX_OBJECT_USER do
		if gObjIsConnectedGP(aIndex) ~= 0 then
			SendMessagePlayer(aIndex, messageType, messageSource[GetLanguageObject(aIndex)][messageKey])
		end
	end
end

function Message.SendMessageGlobalMultLangArgs(messageSource, messageKey, messageType, ...)
	local args = ...

	if type(args) ~= 'table'
	then
		args = {...}
	end

	for aIndex = OBJECT_START_USER, MAX_OBJECT_USER do
		if gObjIsConnectedGP(aIndex) ~= 0 then
			SendMessagePlayer(aIndex, messageType, messageSource[GetLanguageObject(aIndex)][messageKey]:format(unpack(args)))
		end
	end
end

function Message.SendGlobalMultLangeDirect(messageSource, messageType, ...)
	local args = ...

	if type(args) ~= 'table' then
		args = {...}
	end
	
	for aIndex = OBJECT_START_USER, MAX_OBJECT_USER do
		if gObjIsConnectedGP(aIndex) ~= 0 then
			SendMessagePlayer(aIndex, messageType, messageSource[GetLanguageObject(aIndex)]:format(unpack(args)))
		end
	end
end

function Message.SendGlobalMultLangTips(messageSource, messageKey, messageSecondKey, messageType)
	for aIndex = OBJECT_START_USER, MAX_OBJECT_USER do
		if gObjIsConnectedGP(aIndex) ~= 0 then
			SendMessagePlayer(aIndex, messageType, messageSource[GetLanguageObject(aIndex)][messageKey][messageSecondKey])
		end
	end
end

function Message.SendMessagePlayerGlobal(messageSource, messageTye)
	SendMessagePlayerGlobal(messageSource, messageTye)
end

return Message