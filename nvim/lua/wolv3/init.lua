require("wolv3.remap")
require("wolv3.lazy")

-- Basic settings:
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.cursorline = true
vim.cmd('set clipboard+=unnamedplus')

-- Quote function:
quotes = {
	"The secret of getting ahead is getting started.",
	"Winners never quit, and quitters never win.",
	"Always make a total effort, even when the odds are against you.",
	"Don’t be afraid to give up the good to go for the great.",
	"Don’t let the fear of losing be greater than the excitement of winning.",
	"The question isn’t who is going to let me; it’s who is going to stop me.",
	"It is better to fail in originality than to succeed in imitation.",
	"Start where you are. Use what you have. Do what you can.",
	"Your present circumstances don’t determine where you can go; they merely determine where you start.",
	"You must expect great things of yourself before you can do them.",
	"Do what you have to do until you can do what you want to do.",
	"You can never cross the ocean until you have the courage to lose sight of the shore.",
	"One way to keep momentum going is to have constantly greater goals.",
	"You don’t have to see the whole staircase, just take the first step.",
	"We are what we repeatedly do. Excellence, then, is not an act, but a habit."
};

local randomIndex = math.random(1, #quotes)
local randomElm = quotes[randomIndex]

print(randomElm)


