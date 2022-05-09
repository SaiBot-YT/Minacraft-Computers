
while true do
    local has_block, data = turtle.inspect()
    if has_block then
        if data.name == "botania:livingwood" then
            turtle.dig()
            turtle.dropDown()
            turtle.select(2)--The stone slot
            turtle.suckDown()
            turtle.place()
            turtle.select(1)--The livingwood slot
        end
    end
    sleep(1)
end