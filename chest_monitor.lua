
function print_inventory_on_monitor(chest, monitor)
    local cursor = 5
    for slot, item in pairs(chest.list()) do
        cursor = cursor + 1
        local itemName = string.gsub(item.name, "minecraft:", "") 
        local cursoritem = math.ceil(string.len(itemName) / 2) 
        monitor.setCursorPos(25 - cursoritem, cursor) 
        monitor.setTextColour(1)
        monitor.write(itemName)
        monitor.setTextColour(256)
        cursor = cursor + 1
        local itemcount = string.gsub(item.count, "minecraft:", "") 
        local cursoramount = math.ceil(string.len(itemcount) / 2) 
        monitor.setCursorPos(24 - cursoramount, cursor)
        monitor.write(tostring(itemcount).. "x")
    end
end


while true do
    local monitor = peripheral.find("monitor")
    local chest = peripheral.find("chest")
    monitor.clear()
    print_inventory_on_monitor(chest, monitor)

    sleep(10)
end

