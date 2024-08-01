local env = getgenv();
local customenv = {};

getmetatable(env).__newindex = function(self, index, value)
    rawset(getfenv(), index, value);
    getmetatable(env)[index] = value;
    customenv[index] = value;
end;

getmetatable(env).__iter = function()
    local unpacked = {};
    for i,v in env do 
        unpacked[i] = v;
    end;
    for i,v in customenv do 
        unpacked[i] = v;
    end;
    return next, unpacked
end
