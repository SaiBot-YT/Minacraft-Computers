local monitor = peripheral.find("monitor");
local speaker = peripheral.find("speaker");
monitor.setTextScale(2);
while true do
	peripheral.find("modem", rednet.open);
	local id, message = rednet.receive();
	monitor.clear();
	monitor.setCursorPos(1, 1);
	monitor.setTextColour(colors.blue);
	monitor.write(os.date("%c"));
	monitor.setCursorPos(1, 2);
	if message == "Quarry Stopped!" then
		monitor.setTextColour(colors.red);
		monitor.write("Quarry Stopped!");
		speaker.playNote("harp",5);
	elseif message == "Quarry Started!" then
		monitor.setTextColour(colors.lime);
		monitor.write("Quarry Running!");
	end;
	sleep(1);
end;
