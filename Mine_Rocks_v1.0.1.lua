return (function(...)
    local _ENV = getfenv and getfenv() or _ENV or _G
    local _ARGS = {...}

    local _DATA = {{275,238,247,247,244,311,299,249,244,233,247,244,227,299,271,238,221,238,247,244,219,238,217,216,298},{256,257,238,245,232,217,242,219,223,262,299}}
    local _MEM = {}

    local _BXOR = bit32 and bit32.bxor or function(a,b) return a ~ b end
    local function _DEC(arr)
        local res = {}
        for i = 1, #arr do
            res[i] = string.char(_BXOR(arr[i] - 88, 243))
        end
        return table.concat(res)
    end

    for i = 1, #_DATA do
        _MEM[i] = _DEC(_DATA[i])
    end

    local _START = os.clock()
    local VM_966r_STATE = 1

    while true do
        if VM_966r_STATE == 1 then
            -- Welcome to Zencript Lua Tools!
            VM_966r_STATE = 2
        elseif VM_966r_STATE == 2 then
            local v5gyu7v1 = _MEM[1]
            VM_966r_STATE = 3
        elseif VM_966r_STATE == 3 then
            local function vqfe3d80(text)
            VM_966r_STATE = 4
        elseif VM_966r_STATE == 4 then
            print(_MEM[2] .. text)
            VM_966r_STATE = 5
        elseif VM_966r_STATE == 5 then
            end
            VM_966r_STATE = 6
        elseif VM_966r_STATE == 6 then
            vqfe3d80(v5gyu7v1)
            VM_966r_STATE = 999999
        elseif VM_966r_STATE == 999999 then
            break
        end
    end
end)(...)
