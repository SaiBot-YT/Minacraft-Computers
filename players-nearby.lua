local monitor = peripheral.find("monitor");
local speaker = peripheral.find("speaker");
local playerSensor = peripheral.wrap("top");
monitor.setTextScale(0.95);
while true do
	local players = playerSensor.getOnlinePlayers();
	for i = 1, #players do
		local player = players[i];
		print(player);
		local data = playerSensor.getPlayerPos(player);
		monitor.setCursorPos(1, i);
		if data then
			monitor.clearLine();
			monitor.write(player);
			monitor.setCursorPos(16, i);
			monitor.write(data.x);
			monitor.setCursorPos(20, i);
			monitor.write(data.y);
			monitor.setCursorPos(24, i);
			monitor.write(data.z);
		else
			monitor.write(player);
		end;
	end;
	os.sleep(1);
end;
