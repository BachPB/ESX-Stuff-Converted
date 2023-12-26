local function Progressbar(message, length, Options)
	local success = lib.progressBar({
		duration = length or 3000,
		label = message or "BachWorks Converted this",
		canCancel = true,
		disable = {
			car = Options.FreezePlayer,
			move = Options.FreezePlayer,
			combat = Options.FreezePlayer,
		},
		anim = {
			dict = Options.animation.dict,
			clip = Options.animation.lib,
		},
	})
	if success then
		if Options.onFinish then
			Options.onFinish()
		end
	else
		if Options.onCancel then
			Options.onCancel()
		end
	end
end

local function CancelProgressbar()
	lib.cancelProgress()
end

exports("Progressbar", Progressbar)
exports("CancelProgressbar", CancelProgressbar)

RegisterCommand("test_prog", function()
	exports["esx_progressbar"]:Progressbar("BachWorks", 5000, {
		FreezePlayer = true,
		animation = {
			type = "anim",
			dict = "anim@mp_player_intmenu@key_fob@",
			lib = "fob_click",
		},
		onFinish = function()
			print("TEST PROGRESSBAR BY BACHWORKS")
		end,
		onCancel = function()
			print("TEST PROGRESSBAR BY BACHWORKS STOP")
		end,
	})
end, false)
