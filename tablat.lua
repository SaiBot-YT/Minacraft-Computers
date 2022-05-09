while true do
	peripheral.find("modem", rednet.open);
	local id, message = rednet.receive();
	term.clear();
	term.setCursorPos(1,1);
	term.setTextColour(colors.blue);
	print(os.date("%c"));
	if message == "Quarry Stopped!" then
		term.setTextColour(colors.red)
		print("Quarry Stopped!");
	elseif message == "Quarry Started!" then
		term.setTextColour(colors.lime)
		print("Quarry Running!");
	end;
    sleep(5);
end;
