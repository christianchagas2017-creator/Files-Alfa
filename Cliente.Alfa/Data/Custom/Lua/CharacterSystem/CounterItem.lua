OpenFolder("Definitions")

COUNTER_ITEM_INFO = {
	{ItemIndex = GET_ITEM(0, 43), Text = 1, Color = 50, Bold = 0},
}

COUNTER_ITEM_TEXT = {
	[1] = {
		["Por"] = "Contador da Morte: %d",
		["Eng"] = "Death Counter: %d",
		["Spn"] = "Contador da Morte: %d",
	}
}

function StartLoadCounterItem()
	for i, item in ipairs(COUNTER_ITEM_INFO) do
		local text = COUNTER_ITEM_TEXT[item.Text]
		RegisterItemCounter(item.ItemIndex, text["Por"], text["Eng"], text["Spn"], item.Color, item.Bold)
	end
end
