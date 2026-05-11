STAFF_NAMES = {
	[01] = "Admin",
}

function isUserStaff()
	local userFullName = UserGetName()

	for _, staffName in ipairs(STAFF_NAMES) do
		if userFullName == staffName then
			return true
		end
	end

	return false
 end