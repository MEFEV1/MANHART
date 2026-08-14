(function(...) 
local Players = game:GetService("\080\108\097\121\101\114\115")
local ReplicatedStorage = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101")

local _IlIIlIlIIl = Players.LocalPlayer

local _IllIIlllIl = loadstring(game:HttpGet("\104\116\116\112\115\058\047\047\115\105\114\105\117\115\046\109\101\110\117\047\114\097\121\102\105\101\108\100"))()

local _IIlllIIIll = require(
    ReplicatedStorage
        .Shared
        .Utils
        .FormatUtils
)

local _IllIIIIIII = _IllIIlllIl:CreateWindow({
    Name = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033",
    Icon = "\112\105\099\107\097\120\101",
    LoadingTitle = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033",
    LoadingSubtitle = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033",
    ShowText = "\077\065\078\072\065\082\084",
    Theme = "\065\109\098\101\114\071\108\111\119",
    ToggleUIKeybind = "\075"
})

local _IlllIllIll = _IllIIIIIII:CreateTab("\077\097\105\110", "\112\105\099\107\097\120\101")
local _IllIlllIIl = _IllIIIIIII:CreateTab("\077\105\115\099", "\115\101\116\116\105\110\103\115")

local _lIllllIIlI = {
    Coal = {Required = -0x1869F, ID = 0x1, Gain = 0x1, Zone = 0x1, Tier = 0x1},
    Copper = {Required = 0x5, ID = 0x2, Gain = 0x5, Zone = 0x1, Tier = 0x1},
    Iron = {Required = 0x28, ID = 0x3, Gain = 0x1E, Zone = 0x1, Tier = 0x1},
    Silver = {Required = 0xFA, ID = 0x4, Gain = 0xC8, Zone = 0x1, Tier = 0x1},
    Gold = {Required = 0x4B0, ID = 0x5, Gain = 0x5DC, Zone = 0x1, Tier = 0x1},
    Iridium = {Required = 0x55F0, ID = 0x6, Gain = 0x2D69, Zone = 0x1, Tier = 0x1},
    Platinum = {Required = 0xBF680, ID = 0x7, Gain = 0x15FED, Zone = 0x1, Tier = 0x1},

    Titanium = {Required = 0xD3F7AC0, ID = 0x8, Gain = 0xAA772, Zone = 0x1, Tier = 0x2},
    Osmium = {Required = 0x4745942A0, ID = 0x9, Gain = 0x5291B7, Zone = 0x1, Tier = 0x2},
    Diamond = {Required = 0xDAAFA0F5C0, ID = 0xA, Gain = 0x27FE950, Zone = 0x1, Tier = 0x2},

    Amethyst = {Required = 0x9D5BEA116000, ID = 0xB, Gain = 0x135F5033, Zone = 0x1, Tier = 0x3},
    Ruby = {Required = 0x5398D4593B0000, ID = 0xC, Gain = 0x9622AD8B, Zone = 0x1, Tier = 0x3},
    Beryl = {Required = 0x1.71436214870016e18, ID = 0xD, Gain = 0x48B8CC0FA, Zone = 0x1, Tier = 0x3},

    Sapphire = {Required = 0x4.194304e20, ID = 0xE, Gain = 0x233982D794, Zone = 0x1, Tier = 0x4},
    Turquoise = {Required = 0x7.1506320723632814e22, ID = 0xF, Gain = 0x110FDB606C0, Zone = 0x1, Tier = 0x4},
    Emerald = {Required = 0x1.025390625e25, ID = 0x10, Gain = 0x843AE42B453, Zone = 0x1, Tier = 0x4},

    Peridot = {Required = 0x8.045287586809203e27, ID = 0x11, Gain = 0x400C8684F587, Zone = 0x1, Tier = 0x5},
    Uranium = {Required = 0x8.82578239373847e29, ID = 0x12, Gain = 0x1F06112866EDB, Zone = 0x1, Tier = 0x5},
    Radium = {Required = 0x5.118953788368313e31, ID = 0x13, Gain = 0xF06F04F91DB28, Zone = 0x1, Tier = 0x5},

    Topaz = {Required = 0x9.284550294640352e34, ID = 0x14, Gain = 0x7475C668AA6274, Zone = 0x1, Tier = 0x6},
    Garnet = {Required = 0x9.903520314283042e36, ID = 0x15, Gain = 0x2.5404959046765648e17, Zone = 0x1, Tier = 0x6},
    Polonium = {Required = 0x7.922816251426434e37, ID = 0x16, Gain = 0x1.9688843261243377e18, Zone = 0x1, Tier = 0x6},
    Promethium = {Required = 0x6.338253001141147e38, ID = 0x17, Gain = 0x1.5258853527463617e19, Zone = 0x1, Tier = 0x6},

    Quartz = {Required = 0x2.7536312389526886e42, ID = 0x18, Gain = 0x1.1825611483784303e20, Zone = 0x1, Tier = 0x7},
    Opal = {Required = 0x2.661487094530107e44, ID = 0x19, Gain = 0x9.164848899932836e20, Zone = 0x1, Tier = 0x7},
    Alexandrite = {Required = 0x7.315972871729591e46, ID = 0x1A, Gain = 0x7.576275090611144e21, Zone = 0x1, Tier = 0x7},
    Obsidian = {Required = 0x1.8725319121879157e47, ID = 0x1B, Gain = 0x1.1009274741044318e23, Zone = 0x1, Tier = 0x7},

    Germanium = {Required = 0x5.9872385530008635e53, ID = 0x1C, Gain = 0x8.532187924309347e23, Zone = 0x2, Tier = 0x8},
    Malachite = {Required = 0x4.5503013002806566e55, ID = 0x1D, Gain = 0x6.612445641339744e24, Zone = 0x2, Tier = 0x8},
    Scandium = {Required = 0x4.349086430567033e57, ID = 0x1E, Gain = 0x5.124645372038301e25, Zone = 0x2, Tier = 0x8},

    Tantalum = {Required = 0x2.660972109430888e60, ID = 0x1F, Gain = 0x3.971600163329684e26, Zone = 0x2, Tier = 0x9},
    Rhenium = {Required = 0x3.4604097121804217e62, ID = 0x20, Gain = 0x3.0779901265805044e27, Zone = 0x2, Tier = 0x9},
    Niobium = {Required = 0x1.4534436637618712e63, ID = 0x21, Gain = 0x2.385442348099891e28, Zone = 0x2, Tier = 0x9},

    Painite = {Required = 0x2.0873237031045045e67, ID = 0x22, Gain = 0x1.8487178197774156e29, Zone = 0x2, Tier = 0xA},
    Tektite = {Required = 0x3.525494028059191e69, ID = 0x23, Gain = 0x1.432756310327497e30, Zone = 0x2, Tier = 0xA},
    Bluesteel = {Required = 0x1.0641173063840691e70, ID = 0x24, Gain = 0x1.1103861405038102e31, Zone = 0x2, Tier = 0xA},

    Mithril = {Required = 0x1.3930397854978352e74, ID = 0x25, Gain = 0x8.60549258890453e31, Zone = 0x2, Tier = 0xB},
    Molybdenum = {Required = 0x1.1701534198181815e76, ID = 0x26, Gain = 0x6.669256756401011e32, Zone = 0x2, Tier = 0xB},
    Azurite = {Required = 0x9.829288726472726e77, ID = 0x27, Gain = 0x5.1686739862107824e33, Zone = 0x2, Tier = 0xB},

    Lazulite = {Required = 0x4.750878377795212e80, ID = 0x28, Gain = 0x4.005722339313357e34, Zone = 0x2, Tier = 0xC},
    Viridian = {Required = 0x4.9644418166692916e82, ID = 0x29, Gain = 0x3.1044348129678515e35, Zone = 0x2, Tier = 0xC},
    Prismarine = {Required = 0x1.0274236107541666e85, ID = 0x2A, Gain = 0x2.405936980050085e36, Zone = 0x2, Tier = 0xC},

    Tungsten = {Required = 0x7.369619054075516e87, ID = 0x2B, Gain = 0x1.8646011595388158e37, Zone = 0x2, Tier = 0xD},
    Adurite = {Required = 0x8.01123803310691e89, ID = 0x2C, Gain = 0x1.4450658986425821e38, Zone = 0x2, Tier = 0xD},
    Neon = {Required = 0x1.4368100371489546e92, ID = 0x2D, Gain = 0x1.1199260714480012e39, Zone = 0x2, Tier = 0xD}
}

local _IIlIIlIllI = {
    {
        Required = -0x1869F,
        TierName = "\087\111\111\100\032\084\105\101\114",
        ID = 0x1,
        Color = Color3.fromRGB(0xCB, 0x8E, 0x5C)
    },
    {
        Required = 0x4C4B40,
        TierName = "\083\105\108\118\101\114\032\084\105\101\114",
        ID = 0x2,
        Color = Color3.fromRGB(0xC1, 0xC1, 0xC1)
    },
    {
        Required = 0x2D79883D2000,
        TierName = "\071\111\108\100\032\084\105\101\114",
        ID = 0x3,
        Color = Color3.fromRGB(0xFF, 0xCD, 0x35)
    },
    {
        Required = 1e20,
        TierName = "\080\108\097\116\105\110\117\109\032\084\105\101\114",
        ID = 0x4,
        Color = Color3.fromRGB(0x81, 0xE2, 0xFF)
    },
    {
        Required = 0x1.25e26,
        TierName = "\065\109\101\116\104\121\115\116\032\084\105\101\114",
        ID = 0x5,
        Color = Color3.fromRGB(0xE5, 0x62, 0xFF)
    },
    {
        Required = 0x2.1e33,
        TierName = "\082\117\098\121\032\084\105\101\114",
        ID = 0x6,
        Color = Color3.fromRGB(0xFF, 0x59, 0xA4)
    },
    {
        Required = 1e42,
        TierName = "\066\101\114\121\108\032\084\105\101\114",
        ID = 0x7,
        Color = Color3.fromRGB(0xFF, 0x4F, 0x52)
    },
    {
        Required = 0x2.75e52,
        TierName = "\083\097\112\112\104\105\114\101\032\084\105\101\114",
        ID = 0x8,
        Color = Color3.fromRGB(0x3E, 0x6B, 0xFF)
    },
    {
        Required = 0x3.55e59,
        TierName = "\084\117\114\113\117\111\105\115\101\032\084\105\101\114",
        ID = 0x9,
        Color = Color3.fromRGB(0x0, 0xFF, 0xFF)
    },
    {
        Required = 1e66,
        TierName = "\069\109\101\114\097\108\100\032\084\105\101\114",
        ID = 0xA,
        Color = Color3.fromRGB(0x0, 0xFF, 0x2A)
    },
    {
        Required = 0x2.5e73,
        TierName = "\085\114\097\110\105\117\109\032\084\105\101\114",
        ID = 0xB,
        Color = Color3.fromRGB(0xBB, 0xFF, 0x0)
    },
    {
        Required = 5e79,
        TierName = "\082\097\100\105\117\109\032\084\105\101\114",
        ID = 0xC,
        Color = Color3.fromRGB(0xFF, 0xFF, 0x0)
    },
    {
        Required = 0x1.8e86,
        TierName = "\084\111\112\097\122\032\084\105\101\114",
        ID = 0xD,
        Color = Color3.fromRGB(0xFF, 0xC8, 0x0)
    }
}

local _lllllIIIII = _IIlllIIIll.ParseNumber("\054\048\048\083\120\100")

local _lllIIIllII = 0x1
local _IIllIIIlIl = false

local _IlIlIllIIl = false
local _lllIIllllI = false
local _llIIllIlIl = false
local _IIllIIlIll = false
local _lIIIIlIIlI = false

local _IIllIllIlI = nil
local _llIIIIIlIl = nil

local _IIlIlIIIIl = Color3.fromRGB(0x0, 0xFF, 0x64)
local _IlIlIIIIlI = Color3.fromRGB(0x50, 0xB4, 0xFF)
local _lIlIIllllI = Color3.fromRGB(0xBE, 0x50, 0xFF)
local _lIlIIIllII = Color3.fromRGB(0xFF, 0xD7, 0x0)

local _IIlIIIlIlI = _IlllIllIll:CreateParagraph({
    Title = "\083\116\097\116\117\115\032\058\032\078\111\110\101",
    Content = "\076\111\097\100\105\110\103\046\046\046"
})

local function _IllIlIIIII(_lllIllllll, color)
    local _lIIllllIII = math.floor(color.R * 0xFF)
    local _lIIIlIIlll = math.floor(color.G * 0xFF)
    local _lIllllllll = math.floor(color.B * 0xFF)

    return string.format(
        "\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\048\050\088\037\048\050\088\037\048\050\088\034\062\037\115\060\047\102\111\110\116\062",
        _lIIllllIII,
        _lIIIlIIlll,
        _lIllllllll,
        tostring(_lllIllllll)
    )
end

local function _lIIIIIlllI(value)
    if value == nil then
        return 0x0
    end

    if type(value) == "\110\117\109\098\101\114" then
        return value
    end

    local _IlIlIlIllI, _llllIIllll = pcall(function()
        return _IIlllIIIll.ParseNumber(tostring(value))
    end)

    if _IlIlIlIllI then
        return tonumber(_llllIIllll) or 0x0
    end

    return 0x0
end

local function _IlIlllIIIl(value)
    local _IlIlIlIllI, _llllIIllll = pcall(function()
        return _IIlllIIIll.FormatNumber(tonumber(value) or 0x0)
    end)

    if _IlIlIlIllI and _llllIIllll then
        return _llllIIllll
    end

    return tostring(value or 0x0)
end

local function _IlIIIIIIlI()
    local _IIlIIIIIIl = _IlIIlIlIIl:FindFirstChild("\108\101\097\100\101\114\115\116\097\116\115")

    if not _IIlIIIIIIl then
        return 0x0
    end

    local _llllllIIlI = _IIlIIIIIIl:FindFirstChild("\067\111\105\110\115")

    if not _llllllIIlI then
        return 0x0
    end

    return tonumber(_llllllIIlI.Value) or 0x0
end

local function _lllIIIIIIl()
    local _IIlIIIIIIl = _IlIIlIlIIl:FindFirstChild("\108\101\097\100\101\114\115\116\097\116\115")

    if not _IIlIIIIIIl then
        return 0x1
    end

    local _llIIIlIlIl = _IIlIIIIIIl:FindFirstChild("\084\105\101\114")

    if not _llIIIlIlIl then
        return 0x1
    end

    local _IIIIIIIIIl = tonumber(_llIIIlIlIl.Value)

    if not _IIIIIIIIIl then
        return 0x1
    end

    return math.max(0x1, math.floor(_IIIIIIIIIl))
end

local function _IlIllllIIl(name)
    return _lIllllIIlI[name]
end

local function _lIlIlIlIIl(ore)
    if not ore then
        return nil
    end

    if ore:IsA("\077\111\100\101\108") then
        return ore:GetPivot().Position
    end

    if ore:IsA("\066\097\115\101\080\097\114\116") then
        return ore.Position
    end

    local _lIllllIlll = ore:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true)

    if _lIllllIlll then
        return _lIllllIlll.Position
    end

    return nil
end

local function _llIlIIIIII(ore)
    if not ore then
        return nil
    end

    if ore:IsA("\077\111\100\101\108") then
        return ore:GetPivot()
    end

    if ore:IsA("\066\097\115\101\080\097\114\116") then
        return ore.CFrame
    end

    local _lIllllIlll = ore:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true)

    if _lIllllIlll then
        return _lIllllIlll.CFrame
    end

    return nil
end

local function _lIIlIIllIl(name)
    local _llIIIIlIll = _IlIllllIIl(name)

    if not _llIIIIlIll then
        return math.huge
    end

    return _llIIIIlIll.ID
end

local function _lllIlIllII(_llIIIIlIll, _IllIllIlIl)
    if not _llIIIIlIll then
        return false
    end

    return _IllIllIlIl >= _llIIIIlIll.Tier
end

local function _IIIIIIlIll(_llIIIIlIll, _llllllIIlI, _IllIllIlIl)
    if not _llIIIIlIll then
        return false
    end

    if not _lllIlIllII(_llIIIIlIll, _IllIllIlIl) then
        return false
    end

    return _llllllIIlI >= _llIIIIlIll.Required
end

local function _IIIlIlllIl()
    local _llllIIllll = {}

    local _llIlIIIllI = workspace:FindFirstChild("\079\114\101\115")

    if not _llIlIIIllI then
        return _llllIIllll
    end

    local _llllllIIlI = _IlIIIIIIlI()
    local _IllIllIlIl = _lllIIIIIIl()

    for _IlIIllIIIl, ore in ipairs(_llIlIIIllI:GetChildren()) do
        local _llIIIIlIll = _IlIllllIIl(ore.Name)

        if _llIIIIlIll then
            local _lIllIIlIII = _lllIlIllII(
                _llIIIIlIll,
                _IllIllIlIl
            )

            local _IIIIIllllI = _IIIIIIlIll(
                _llIIIIlIll,
                _llllllIIlI,
                _IllIllIlIl
            )

            table.insert(_llllIIllll, {
                Name = ore.Name,
                Model = ore,
                World = _llIIIIlIll.Zone,
                Rank = _llIIIIlIll.ID,
                Price = _llIIIIlIll.Required,
                Gain = _llIIIIlIll.Gain,
                Tier = _llIIIIlIll.Tier,
                Visible = _lIllIIlIII,
                Locked = _lIllIIlIII and not _IIIIIllllI,
                Unlocked = _IIIIIllllI
            })
        end
    end

    table.sort(_llllIIllll, function(a, _lIllllllll)
        if a.World ~= _lIllllllll.World then
            return a.World < _lIllllllll.World
        end

        return a.Rank < _lIllllllll.Rank
    end)

    return _llllIIllll
end

local function _IIIIIIlIll()
    local _llllIIllll = {}

    for name, _llIIIIlIll in pairs(_lIllllIIlI) do
        table.insert(_llllIIllll, {
            Name = name,
            World = _llIIIIlIll.Zone,
            Rank = _llIIIIlIll.ID,
            Price = _llIIIIlIll.Required,
            Gain = _llIIIIlIll.Gain,
            Tier = _llIIIIlIll.Tier,
            Data = _llIIIIlIll
        })
    end

    table.sort(_llllIIllll, function(a, _lIllllllll)
        if a.World ~= _lIllllllll.World then
            return a.World < _lIllllllll.World
        end

        return a.Rank < _lIllllllll.Rank
    end)

    return _llllIIllll
end

local function _llIIIIIIIl()
    local _lllIlIllIl = _IIIlIlllIl()

    local _lIIlIIlIlI = nil
    local _IllIllIlIl = _lllIIIIIIl()

    for _IlIIllIIIl, ore in ipairs(_lllIlIllIl) do
        if ore.Unlocked and ore.Tier <= _IllIllIlIl then
            if not _lIIlIIlIlI then
                _lIIlIIlIlI = ore
            elseif ore.World > _lIIlIIlIlI.World then
                _lIIlIIlIlI = ore
            elseif ore.World == _lIIlIIlIlI.World and ore.Rank > _lIIlIIlIlI.Rank then
                _lIIlIIlIlI = ore
            end
        end
    end

    return _lIIlIIlIlI
end

local function _lIIllIIIll()
    local _lIIlIIlIlI = _llIIIIIIIl()

    if not _lIIlIIlIlI then
        return nil
    end

    local _IllIllIlIl = _lllIIIIIIl()
    local _lIlIIlllll = _IIIIIIlIll()

    for _IlIIllIIIl, ore in ipairs(_lIlIIlllll) do
        if ore.World == _lIIlIIlIlI.World
        and ore.Rank == _lIIlIIlIlI.Rank + 0x1 then

            if ore.Tier <= _IllIllIlIl then
                return ore
            end

            return nil
        end
    end

    if _lIIlIIlIlI.World == 0x1 then
        for _IlIIllIIIl, ore in ipairs(_lIlIIlllll) do
            if ore.World == 0x2 and ore.Rank == 0x1C then
                if ore.Tier <= _IllIllIlIl then
                    return ore
                end

                return nil
            end
        end
    end

    return nil
end

local function _IIIlIIllII()
    local _lIIlIIlIlI = _llIIIIIIIl()

    if not _lIIlIIlIlI then
        return nil, nil, false
    end

    local _IlIIIIlIIl = _lIIllIIIll()

    if _IlIIIIlIIl then
        return _lIIlIIlIlI, _IlIIIIlIIl, false
    end

    return _lIIlIIlIlI, nil, true
end

local function _lIlIlllIll(cframe)
    if not cframe then
        return false
    end

    local _IllIIllIII = _IlIIlIlIIl.Character

    if not _IllIIllIII then
        return false
    end

    local _lllIllllII = _IllIIllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116")

    if not _lllIllllII then
        return false
    end

    _lllIllllII.CFrame = cframe + Vector3.new(0x0, 0x6, 0x0)

    return true
end

local function _IIllIlIIlI(ore)
    if not ore or not ore.Model then
        return false
    end

    local _lIlllIlIlI = _llIlIIIIII(ore.Model)

    if not _lIlllIlIlI then
        return false
    end

    return _lIlIlllIll(_lIlllIlIlI)
end

local function _llllllllII(pathParts)
    local _llIIllllII = workspace

    for _IlIIllIIIl, name in ipairs(pathParts) do
        _llIIllllII = _llIIllllII:FindFirstChild(name)

        if not _llIIllllII then
            return false
        end
    end

    local _lIlllIlIlI

    if _llIIllllII:IsA("\066\097\115\101\080\097\114\116") then
        _lIlllIlIlI = _llIIllllII.CFrame
    elseif _llIIllllII:IsA("\077\111\100\101\108") then
        _lIlllIlIlI = _llIIllllII:GetPivot()
    else
        local _lIllllIlll = _llIIllllII:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true)

        if not _lIllllIlll then
            return false
        end

        _lIlllIlIlI = _lIllllIlll.CFrame
    end

    return _lIlIlllIll(_lIlllIlIlI)
end

local function _IlIlIIlIlI()
    local _lIllIIIllI = workspace:FindFirstChild("\071\097\109\101\112\108\097\121")

    if not _lIllIIIllI then
        return false
    end

    if _lIllIIIllI:FindFirstChild("\071\101\111\100\101\115\050") then
        return true
    end

    if _lIllIIIllI:FindFirstChild("\071\101\111\100\101\115\050", true) then
        return true
    end

    return false
end

local function _lIllIllllI()
    if _IlIlIIlIlI() then
        return 0x2
    end

    return _lllIIIllII
end

local function _IllIIIlIll()
    local _IIlIlIIlll = tick()

    while tick() - _IIlIlIIlll < 0xA do
        if _IlIlIIlIlI() then
            return true
        end

        task.wait(0.2)
    end

    return _IlIlIIlIlI()
end

local function _IllllIllII()
    if _lIllIllllI() == 0x2 then
        _lllIIIllII = 0x2
        _IIllIIIlIl = true
        return true
    end

    local _llllllIIlI = _IlIIIIIIlI()

    if _llllllIIlI < _lllllIIIII then
        return false
    end

    local _IlIlIlIllI = _llllllllII({
        "\069\120\116\114\097\083\099\114\105\112\116\097\098\108\101",
        "\084\101\108\101\112\111\114\116\072\105\116\098\111\120\101\115",
        "\080\101\098\098\108\101\066\101\097\099\104"
    })

    if not _IlIlIlIllI then
        return false
    end

    local _IIllllIIII = _IllIIIlIll()

    if _IIllllIIII then
        _lllIIIllII = 0x2
        _IIllIIIlIl = true
        return true
    end

    return false
end

local function _lIlIIlIIII()
    if _lIllIllllI() == 0x1 then
        _lllIIIllII = 0x1
        return true
    end

    local _IlIlIlIllI = _llllllllII({
        "\071\097\109\101\112\108\097\121",
        "\082\101\116\117\114\110\083\097\108\116",
        "\082\105\110\103"
    })

    if _IlIlIlIllI then
        _lllIIIllII = 0x1
        task.wait(0x1)
        return true
    end

    return false
end

local function _IIlIlIllIl()
    if _lIllIllllI() == 0x2 then
        return false
    end

    local _lIIlIIlIlI = _llIIIIIIIl()

    if not _lIIlIIlIlI then
        return false
    end

    if _lIIlIIlIlI.World ~= 0x2 then
        return false
    end

    return _IlIIIIIIlI() >= _lllllIIIII
end

local function _IIIIllllll()
    if _lIllIllllI() == 0x2 then
        _lllIIIllII = 0x2
        _IIllIIIlIl = true
        return true
    end

    if not _IIlIlIllIl() then
        return false
    end

    return _IllllIllII()
end

local function _llIlIIllII(ore)
    if not ore or not ore.Model then
        return math.huge
    end

    local _IllIIllIII = _IlIIlIlIIl.Character

    if not _IllIIllIII then
        return math.huge
    end

    local _lllIllllII = _IllIIllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116")

    if not _lllIllllII then
        return math.huge
    end

    local _lIllIlIlII = _lIlIlIlIIl(ore.Model)

    if not _lIllIlIlII then
        return math.huge
    end

    return (_lllIllllII.Position - _lIllIlIlII).Magnitude
end

local function _llllIllIll()
    if not _lIIIIlIIlI then
        return
    end

    local _IllIIllIII = _IlIIlIlIIl.Character

    if not _IllIIllIII then
        return
    end

    local _IIllIlIllI = _IllIIllIII:FindFirstChildOfClass("\072\117\109\097\110\111\105\100")
    local _lllIllllII = _IllIIllIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116")

    if not _IIllIlIllI or not _lllIllllII then
        return
    end

    local _llIIlIlIlI = _IIllIlIllI:GetState()

    if _llIIlIlIlI == Enum.HumanoidStateType.Physics
    or _llIIlIlIlI == Enum.HumanoidStateType.Ragdoll
    or _llIIlIlIlI == Enum.HumanoidStateType.FallingDown
    or _llIIlIlIlI == Enum.HumanoidStateType.Freefall then

        _IIllIlIllI:ChangeState(Enum.HumanoidStateType.GettingUp)
        _IIllIlIllI.PlatformStand = false
    end

    local _lIllIlIlII = _lllIllllII.Position
    local _IIIIllllll = _lllIllllII.CFrame.LookVector
    local _IIIIIllIll = Vector3.new(_IIIIllllll.X, 0x0, _IIIIllllll.Z)

    if _IIIIIllIll.Magnitude > 0.1 then
        _lllIllllII.CFrame = CFrame.new(
            _lIllIlIlII,
            _lIllIlIlII + _IIIIIllIll
        )
    end
end

local function _IlIlllIllI()
    local _IlIlIlIllI, _llllIIllll = pcall(function()
        local _llIIllllIl = _IlIIlIlIIl.PlayerGui:FindFirstChild("\077\097\105\110\071\117\105")

        if not _llIIllllIl then
            return nil
        end

        local _IIlIllIIlI = _llIIllllIl:FindFirstChild("\068\105\115\112\108\097\121")

        if not _IIlIllIIlI then
            return nil
        end

        local _IIlIlIIllI = _IIlIllIIlI:FindFirstChild("\071\101\111\100\101\115")

        if not _IIlIlIIllI then
            return nil
        end

        local _IlIlIlIlII = _IIlIlIIllI:FindFirstChild("\084\101\120\116\076\097\098\101\108")

        if not _IlIlIlIlII then
            return nil
        end

        local _lIlIlllllI = _IlIlIlIlII:FindFirstChild("\084\101\120\116\076\097\098\101\108")

        if not _lIlIlllllI then
            return nil
        end

        return _lIlIlllllI.Text
    end)

    if not _IlIlIlIllI or not _llllIIllll then
        return 0x0, 0x0
    end

    local _llllIlllll, gainStr = _llllIIllll:match(
        "\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041\037\115\042\037\091\037\043\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041\037\093"
    )

    if not _llllIlllll then
        _llllIlllll = _llllIIllll:match("\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041")
        gainStr = "\048"
    end

    return _lIIIIIlllI(_llllIlllll or "\048"), _lIIIIIlllI(gainStr or "\048")
end

local function _lllIIIIIll()
    if _lIllIllllI() == 0x2 then
        return _llllllllII({
            "\071\097\109\101\112\108\097\121",
            "\071\101\111\100\101\115\050",
            "\068\101\116\101\099\116\111\114"
        })
    end

    return _llllllllII({
        "\071\097\109\101\112\108\097\121",
        "\071\101\111\100\101\115",
        "\068\101\116\101\099\116\111\114"
    })
end

local function _IIlIIllIII()
    local _IIIIIIllll = _lllIIIIIIl()
    local _llllllIIlI = _IlIIIIIIlI()

    local _IIIllIIlII = _IIlIIlIllI[0x1]
    local _lIIlIlIIII = nil

    for _IlIIllIIIl, _IIIIIIIIIl in ipairs(_IIlIIlIllI) do
        if _IIIIIIIIIl.ID == _IIIIIIllll then
            _IIIllIIlII = _IIIIIIIIIl
            break
        end
    end

    for _IlIIllIIIl, _IIIIIIIIIl in ipairs(_IIlIIlIllI) do
        if _IIIIIIIIIl.ID == _IIIIIIllll + 0x1 then
            _lIIlIlIIII = _IIIIIIIIIl
            break
        end
    end

    local _IIIIlIIlII = 0x64
    local _IIlllIllIl = 0x0

    if _lIIlIlIIII then
        local _lIIIIllIII = _IIIllIIlII.Required

        if _lIIIIllIII < 0x0 then
            _lIIIIllIII = 0x0
        end

        local _IlIllllIll = _lIIlIlIIII.Required - _lIIIIllIII

        if _IlIllllIll > 0x0 then
            _IIIIlIIlII = math.clamp(
                ((_llllllIIlI - _lIIIIllIII) / _IlIllllIll) * 0x64,
                0x0,
                0x64
            )
        end

        _IIlllIllIl = math.max(
            0x0,
            _lIIlIlIIII.Required - _llllllIIlI
        )
    end

    return _IIIllIIlII, _lIIlIlIIII, _IIIIlIIlII, _IIlllIllIl
end

local function _IIlllIIlIl()
    local _IlIlIlIllI, _llllIIllll = pcall(function()
        return ReplicatedStorage
            .Packages
            ._Index["\108\101\105\102\115\116\111\117\116\095\110\101\116\119\111\114\107\101\114\064\048\046\051\046\049"]
            .networker
            ._remotes
            .GameNetwork
            .RemoteEvent
    end)

    if _IlIlIlIllI then
        return _llllIIllll
    end

    return nil
end

local function _lIllIllIII()
    local _IlIlIlIllI, _llllIIllll = pcall(function()
        return ReplicatedStorage
            .Packages
            ._Index["\108\101\105\102\115\116\111\117\116\095\110\101\116\119\111\114\107\101\114\064\048\046\051\046\049"]
            .networker
            ._remotes
            .GameNetwork
            .RemoteFunction
    end)

    if _IlIlIlIllI then
        return _llllIIllll
    end

    return nil
end

local function _IIIIlIIIIl()
    local _IllIIIIlll = _IIlllIIlIl()

    if _IllIIIIlll then
        _IllIIIIlll:FireServer("\084\105\101\114\085\112")
    end
end

local function _lIlllIIIIl()
    local _IlIlIlIllI, codesModule = pcall(function()
        return require(
            ReplicatedStorage
                .Shared
                .Indexs
                .CodesIndex
        )
    end)

    if not _IlIlIlIllI or not codesModule or not codesModule.Codes then
        return
    end

    local _IIIIlIIlll = _lIllIllIII()

    if not _IIIIlIIlll then
        return
    end

    local _IlIlIlllII = os.time()
    local _llIlIllIIl = 0x0
    local _lllIllllll = 0x0

    for codeName, _llIIIIlIll in pairs(codesModule.Codes) do
        if _llIIIIlIll.ExpiresAt == nil or _llIIIIlIll.ExpiresAt > _IlIlIlllII then
            pcall(function()
                _IIIIlIIlll:InvokeServer(
                    "\082\101\100\101\101\109\067\111\100\101",
                    codeName
                )
            end)

            _llIlIllIIl += 0x1
            task.wait(0.3)
        else
            _lllIllllll += 0x1
        end
    end

    _IllIIlllIl:Notify({
        Title = "\067\111\100\101\115",
        Content =
            "\082\101\100\101\101\109\101\100\058\032" ..
            _llIlIllIIl ..
            "\032\124\032\083\107\105\112\112\101\100\058\032" ..
            _lllIllllll,
        Duration = 0x4
    })
end

local function _llIlIIIlIl()
    local _IlIIlIIllI = {}

    local _IlIlIlIllI, content = pcall(function()
        return _IlIIlIlIIl.PlayerGui.Inset.Tree.Content
    end)

    if not _IlIlIlIllI or not content then
        return _IlIIlIIllI
    end

    for _IlIIllIIIl, button in ipairs(content:GetChildren()) do
        local _IllIIIIIIl = button:FindFirstChild("\089\101\112")

        if _IllIIIIIIl then
            local _lIIIIlIIlI = _IllIIIIIIl:FindFirstChild("\080\114\105\099\101")

            if _lIIIIlIIlI then
                local _IIIIIIIlIl = _lIIIIlIIlI.Text

                if not _IIIIIIIlIl then
                    local _Illlllllll = _lIIIIlIIlI:FindFirstChildOfClass("\084\101\120\116\076\097\098\101\108")

                    if _Illlllllll then
                        _IIIIIIIlIl = _Illlllllll.Text
                    end
                end

                local _IIIlllIIIl = _lIIIIIlllI(_IIIIIIIlIl or "\048")

                if _IIIlllIIIl > 0x0 then
                    table.insert(_IlIIlIIllI, {
                        Id = button.Name,
                        Price = _IIIlllIIIl
                    })
                end
            end
        end
    end

    return _IlIIlIIllI
end

local function _IlllIIIlII()
    local _lllIIlIllI = 0x46

    local _IlIlIlIllI, treeModule = pcall(function()
        return require(
            ReplicatedStorage
                .Shared
                .Indexs
                .TreeIndex
        )
    end)

    if _IlIlIlIllI and treeModule and treeModule.Nodes then
        _lllIIlIllI = 0x0

        for _IlIIllIIIl, node in pairs(treeModule.Nodes) do
            if node.Levels then
                _lllIIlIllI += #node.Levels
            end
        end
    end

    local _IlIllIlIII = #_llIlIIIlIl()

    if _lllIIlIllI > 0x0 then
        return math.clamp(
            ((_lllIIlIllI - _IlIllIlIII) / _lllIIlIllI) * 0x64,
            0x0,
            0x64
        )
    end

    return 0x0
end

local function _IIIIllllIl(id)
    local _IllIIIIlll = _IIlllIIlIl()

    if _IllIIIIlll then
        _IllIIIIlll:FireServer(
            "\066\117\121\085\112\103\114\097\100\101",
            id
        )
    end
end

local function _IIllIlllIl()
    local _llllllIIlI = _IlIIIIIIlI()
    local _IlIIlIIllI = _llIlIIIlIl()

    table.sort(_IlIIlIIllI, function(a, _lIllllllll)
        return a.Price < _lIllllllll.Price
    end)

    for _IlIIllIIIl, upgrade in ipairs(_IlIIlIIllI) do
        if upgrade.Price > 0x0 and _llllllIIlI >= upgrade.Price then
            _IIIIllllIl(upgrade.Id)
            task.wait(0.4)
            _llllllIIlI = _IlIIIIIIlI()
        end
    end
end

local function _IllIIlllII()
    local _lIIlIIlIlI = _llIIIIIIIl()
    local _IlIIIIlIIl = _lIIllIIIll()
    local _llllllIIlI = _IlIIIIIIlI()

    if not _lIIlIIlIlI then
        return 0x0, 0x0
    end

    if not _IlIIIIlIIl then
        return 0x64, 0x0
    end

    local _lIllIlllIl = _IlIIIIlIIl.Price
    local _IIIIIIllll = _lIIlIIlIlI.Price

    if _lIllIlllIl <= 0x0 then
        return 0x64, 0x0
    end

    if _IIIIIIllll < 0x0 then
        _IIIIIIllll = 0x0
    end

    local _IlIllllIll = _lIllIlllIl - _IIIIIIllll

    if _IlIllllIll <= 0x0 then
        return 0x64, 0x0
    end

    local _IIIIlIIlII = math.clamp(
        ((_llllllIIlI - _IIIIIIllll) / _IlIllllIll) * 0x64,
        0x0,
        0x64
    )

    local _IIlllIllIl = math.max(
        0x0,
        _lIllIlllIl - _llllllIIlI
    )

    return _IIIIlIIlII, _IIlllIllIl
end

local function _IllIlIllII()
    local _lIIlIIlIlI, _IlIIIIlIIl, isMax = _IIIlIIllII()

    local _llIIllllII, gain = _IlIlllIllI()

    local _llllllIIlI = _IlIIIIIIlI()

    local _IIlIlIIIII = 0x0

    if _llIIllllII <= 0x0 then
        _IIlIlIIIII = math.clamp(
            (_llllllIIlI / 0x2710) * 0x64,
            0x0,
            0x64
        )
    else
        local _llIlIIIlII = _llIIllllII * 0x2

        if _llIlIIIlII > 0x0 then
            _IIlIlIIIII = math.clamp(
                (gain / _llIlIIIlII) * 0x64,
                0x0,
                0x64
            )
        end
    end

    local _IIIllIIlII, _lIIlIlIIII, tierProgress, _IIlllIllIl =
        _IIlIIllIII()

    local _IlIlIlIlII = _IlllIIIlII()

    local _IIlIlIlllI = {}

    if _IlIlIllIIl then
        table.insert(_IIlIlIlllI, "\065\066\079")
    end

    if _lllIIllllI then
        table.insert(_IIlIlIlllI, "\065\071")
    end

    if _llIIllIlIl then
        table.insert(_IIlIlIlllI, "\065\084")
    end

    if _IIllIIlIll then
        table.insert(_IIlIlIlllI, "\065\084\082")
    end

    local _IllllIlIll = "\078\111\110\101"

    if #_IIlIlIlllI > 0x0 then
        _IllllIlIll = table.concat(_IIlIlIlllI, "\032\124\032")
    end

    local _IlIIIIlIIl = "\078\111\110\101"
    local _IIlIllIlII = 0x0
    local _IlIlIlIIlI = 0x0

    if _lIIlIIlIlI then
        _IlIIIIlIIl = _IllIlIIIII(
            _lIIlIIlIlI.Name,
            _IlIlIIIIlI
        )

        if isMax then
            _IlIIIIlIIl =
                _IlIIIIlIIl ..
                "\032\8594\032" ..
                _IllIlIIIII(
                    "\077\065\088",
                    _lIlIIIllII
                )

            _IIlIllIlII = 0x64
            _IlIlIlIIlI = 0x0
        elseif _IlIIIIlIIl then
            _IlIIIIlIIl =
                _IlIIIIlIIl ..
                "\032\8594\032" ..
                _IllIlIIIII(
                    _IlIIIIlIIl.Name,
                    _lIlIIllllI
                )

            _IIlIllIlII, _IlIlIlIIlI =
                _IllIIlllII()
        end
    end

    local _IlIlIIIIll = _IllIlIIIII(
        string.format(
            "\037\046\049\102\037\037",
            _IIlIllIlII
        ),
        _IIlIlIIIIl
    )

    if not isMax and _IlIIIIlIIl and _IlIlIlIIlI > 0x0 then
        _IlIlIIIIll =
            _IlIlIIIIll ..
            "\032\8594\032\040" ..
            _IlIlllIIIl(_IlIlIlIIlI) ..
            "\041"
    end

    local _IllIIlIIII =
        _IIIllIIlII.Color or
        Color3.fromRGB(
            0xFF,
            0xFF,
            0xFF
        )

    local _lIlIllIIIl = _IllIlIIIII(
        _IIIllIIlII.TierName,
        _IllIIlIIII
    )

    if _lIIlIlIIII then
        local _lIlllIlIIl =
            _lIIlIlIIII.Color or
            Color3.fromRGB(
                0xFF,
                0xFF,
                0xFF
            )

        _lIlIllIIIl =
            _IllIlIIIII(
                _IIIllIIlII.TierName,
                _IllIIlIIII
            ) ..
            "\032\8594\032" ..
            _IllIlIIIII(
                _lIIlIlIIII.TierName,
                _lIlllIlIIl
            )
    end

    local _lIlIlIllIl = _IllIlIIIII(
        string.format(
            "\037\046\049\102\037\037",
            tierProgress
        ),
        _IIlIlIIIIl
    )

    if _lIIlIlIIII and _IIlllIllIl > 0x0 then
        _lIlIlIllIl =
            _lIlIlIllIl ..
            "\032\8594\032\040" ..
            _IlIlllIIIl(_IIlllIllIl) ..
            "\041"
    end

    local _lllIllllll =
        "\079\114\101\058\032" ..
        _IlIIIIlIIl ..
        "\092\110\079\114\101\032\080\114\111\103\114\101\115\115\058\032" ..
        _IlIlIIIIll ..
        "\092\110\092\110\071\101\111\100\101\032\071\097\105\110\058\032" ..
        _IllIlIIIII(
            _IlIlllIIIl(gain),
            _IlIlIIIIlI
        ) ..
        "\092\110\071\101\111\100\101\032\080\114\111\103\114\101\115\115\058\032" ..
        _IllIlIIIII(
            string.format(
                "\037\046\049\102\037\037",
                _IIlIlIIIII
            ),
            _IIlIlIIIIl
        ) ..
        "\092\110\092\110\084\105\101\114\058\032" ..
        _lIlIllIIIl ..
        "\092\110\084\105\101\114\032\080\114\111\103\114\101\115\115\058\032" ..
        _lIlIlIllIl ..
        "\092\110\092\110\084\114\101\101\032\080\114\111\103\114\101\115\115\058\032" ..
        _IllIlIIIII(
            string.format(
                "\037\046\049\102\037\037",
                _IlIlIlIlII
            ),
            _IIlIlIIIIl
        )

    _IIlIIIlIlI:Set({
        Title = "\083\116\097\116\117\115\032\058\032" .. _IllllIlIll,
        Content = _lllIllllll
    })
end

local function _IIlIIIIlII()
    _IIllIllIlI = nil
    _llIIIIIlIl = nil
end

local function _IllIIIIlIl()
    local _lIIlIIlIlI = _llIIIIIIIl()

    if _lIIlIIlIlI then
        _IIllIllIlI = _lIIlIIlIlI.Name
        _llIIIIIlIl = _lIIlIIlIlI.Price
    else
        _IIlIIIIlII()
    end

    _IllIlIllII()

    return _lIIlIIlIlI
end

local _IIIlllllIl = _IlllIllIll:CreateToggle({
    Name = "\065\117\116\111\032\066\101\115\116\032\079\114\101",
    CurrentValue = false,
    Flag = "\065\117\116\111\066\101\115\116\079\114\101",

    Callback = function(value)
        _IlIlIllIIl = value

        if not value then
            _IIlIIIIlII()
            return
        end

        _IllIIIIlIl()

        task.spawn(function()
            while _IlIlIllIIl do
                local _IllIllIlIl = _lllIIIIIIl()
                local _IlllllllIl = _lIllIllllI()

                _lllIIIllII = _IlllllllIl

                local _lIIlIIlIlI = _llIIIIIIIl()

                if _IlllllllIl == 0x1 then
                    if _lIIlIIlIlI and _lIIlIIlIlI.World == 0x2 then
                        if _IllIllIlIl >= _lIIlIIlIlI.Tier
                        and _IlIIIIIIlI() >= _lllllIIIII then

                            _IIIIllllll()

                            task.wait(0.5)

                            _IlllllllIl = _lIllIllllI()
                            _lllIIIllII = _IlllllllIl

                            _lIIlIIlIlI = _llIIIIIIIl()
                        end
                    end
                elseif _IlllllllIl == 0x2 then
                    if not _lIIlIIlIlI or _lIIlIIlIlI.World == 0x1 then
                        _lIlIIlIIII()

                        task.wait(0.5)

                        _lIIlIIlIlI = _llIIIIIIIl()
                    end
                end

                if _lIIlIIlIlI then
                    local _lIIIIIllll = _llIlIIllII(_lIIlIIlIlI)

                    if _IIllIllIlI ~= _lIIlIIlIlI.Name then
                        _IIllIlIIlI(_lIIlIIlIlI)

                        _IIllIllIlI = _lIIlIIlIlI.Name
                        _llIIIIIlIl = _lIIlIIlIlI.Price
                    elseif _lIIIIIllll > 0x2 then
                        _IIllIlIIlI(_lIIlIIlIlI)
                    end
                end

                _llllIllIll()
                _IllIlIllII()

                task.wait(0.5)
            end
        end)
    end
})

local _llllllIIll = _IlllIllIll:CreateToggle({
    Name = "\065\117\116\111\032\071\101\111\100\101",
    CurrentValue = false,
    Flag = "\065\117\116\111\071\101\111\100\101",

    Callback = function(value)
        _lllIIllllI = value

        if not value then
            return
        end

        task.spawn(function()
            while _lllIIllllI do
                local _llIIllllII, gain =
                    _IlIlllIllI()

                local _llllllIIlI =
                    _IlIIIIIIlI()

                local _IlIIllIIIl, _IlIIllIIIl, tierProgress =
                    _IIlIIllIII()

                local _IIlIlIIIII = 0x0

                if _llIIllllII <= 0x0 then
                    _IIlIlIIIII =
                        math.clamp(
                            (_llllllIIlI / 0x2710) * 0x64,
                            0x0,
                            0x64
                        )
                else
                    local _llIlIIIlII =
                        _llIIllllII * 0x2

                    if _llIlIIIlII > 0x0 then
                        _IIlIlIIIII =
                            math.clamp(
                                (gain / _llIlIIIlII) * 0x64,
                                0x0,
                                0x64
                            )
                    end
                end

                local _IllIIIIllI = true

                if _llIIllIlIl
                and tierProgress >= 0x46
                and _IIlIlIIIII >= 0x46 then

                    if tierProgress >= _IIlIlIIIII - 0xF then
                        _IllIIIIllI = false
                    end
                end

                if _IllIIIIllI then
                    if _llIIllllII <= 0x0 then
                        if _llllllIIlI >= 0x2710 then
                            _lllIIIIIll()
                            task.wait(0x3)
                            _IllIIIIlIl()
                        end
                    else
                        if gain >= _llIIllllII * 0x2 then
                            _lllIIIIIll()
                            task.wait(0x3)
                            _IllIIIIlIl()
                        end
                    end
                end

                _llllIllIll()
                _IllIlIllII()

                task.wait(0x1)
            end
        end)
    end
})

local _IIIIIlIIll = _IlllIllIll:CreateToggle({
    Name = "\065\117\116\111\032\084\105\101\114\032\085\112",
    CurrentValue = false,
    Flag = "\065\117\116\111\084\105\101\114",

    Callback = function(value)
        _llIIllIlIl = value

        if not value then
            return
        end

        task.spawn(function()
            while _llIIllIlIl do
                local _IIIIIIllll =
                    _lllIIIIIIl()

                local _IIIllIIlII, _lIIlIlIIII =
                    _IIlIIllIII()

                if _lIIlIlIIII
                and _IIIIIIllll < _lIIlIlIIII.ID
                and _IlIIIIIIlI() >= _lIIlIlIIII.Required then

                    _IIIIlIIIIl()

                    task.wait(1.5)

                    _IIlIIIIlII()
                    _IllIIIIlIl()
                end

                _IllIlIllII()

                task.wait(0x1)
            end
        end)
    end
})

local _lIIlIIIlII = _IlllIllIll:CreateToggle({
    Name = "\065\117\116\111\032\085\112\103\114\097\100\101\032\084\114\101\101",
    CurrentValue = false,
    Flag = "\065\117\116\111\084\114\101\101",

    Callback = function(value)
        _IIllIIlIll = value

        if not value then
            return
        end

        task.spawn(function()
            while _IIllIIlIll do
                _IIllIlllIl()
                _IllIlIllII()
                task.wait(0x2)
            end
        end)
    end
})

_IllIlllIIl:CreateToggle({
    Name = "\078\111\032\082\097\103\100\111\108\108",
    CurrentValue = false,
    Flag = "\078\111\082\097\103\100\111\108\108",

    Callback = function(value)
        _lIIIIlIIlI = value
    end
})

_IllIlllIIl:CreateButton({
    Name = "\082\101\100\101\101\109\032\065\108\108\032\067\111\100\101\115",

    Callback = function()
        _lIlllIIIIl()
    end
})

task.spawn(function()
    while true do
        _llllIllIll()
        _IllIlIllII()
        task.wait(0x1)
    end
end)
 end)(...)
