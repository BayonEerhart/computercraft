
function dofile(filename)
    local f = assert(loadfile(filename))
    return f()

end


dofile("chest_monitor.lua")