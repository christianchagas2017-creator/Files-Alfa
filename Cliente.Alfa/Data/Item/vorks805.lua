OpenFolder("Definitions")

COUNTER_ITEM_INFO = {
{ ItemIndex = GET_ITEM(0, 132),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 133),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 134),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 135),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 136),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 137),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 163),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 164),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 165),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 224),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 225),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 226),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },
{ ItemIndex = GET_ITEM(0, 227),   TextPor = "Contador de Mortes: %d",    TextEng = "Death Counter: %d", TextSpn = "Contador de muertes: %d", Color = 22, Bold = 1 },


}

function StartLoadCounterItem()
	for i = 1, #COUNTER_ITEM_INFO do
		local info = COUNTER_ITEM_INFO[i]
		
		RegisterItemCounter(info.ItemIndex, info.TextPor, info.TextEng, info.TextSpn, info.Color, info.Bold)
	end
end