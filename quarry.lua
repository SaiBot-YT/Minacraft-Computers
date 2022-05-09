peripheral.find("modem", rednet.open)
local chest = peripheral.find("ironchest:diamond_chest");
while true do
	local count = 0;
	for slot, item in pairs(chest.list()) do
		count = count + 1;
	end;
    if count < 32 then
	    print(count);
        rednet.broadcast("Quarry Stopped!");
        os.sleep(3);
    else
        rednet.broadcast("Quarry Started!");
        os.sleep(3);
    end;
    
end;

