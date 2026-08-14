--[[ Protected by Lua Guard ]]

( function (...) local Players = game:GetService("\080\108\097\121\101\114\115") local ReplicatedStorage = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local _IIlIllllII = Players.LocalPlayer local _lIIlIlIlII = loadstring(game:HttpGet("\104\116\116\112\115\058\047\047\115\105\114\105\117\115\046\109\101\110\117\047\114\097\121\102\105\101\108\100"))() local _IllIllllII = require( ReplicatedStorage .Shared .Utils .FormatUtils ) local _IIllIIlIII = _lIIlIlIlII:CreateWindow({ Name = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033", Icon = "\112\105\099\107\097\120\101", LoadingTitle = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033", LoadingSubtitle = "\077\065\078\072\065\082\084\032\124\032\077\105\110\101\032\082\111\099\107\115\033", ShowText = "\077\065\078\072\065\082\084", Theme = "\065\109\098\101\114\071\108\111\119", ToggleUIKeybind = "\075" }) local _IlIlllIllI = _IIllIIlIII:CreateTab("\077\097\105\110", "\112\105\099\107\097\120\101") local _IllIIlIllI = _IIllIIlIII:CreateTab("\077\105\115\099", "\115\101\116\116\105\110\103\115") local _llIIIlIlIl = { Coal = {Required = -0x1869F, ID = 0x1, Gain = 0x1, Zone = 0x1, Tier = 0x1}, Copper = {Required = 0x5, ID = 0x2, Gain = 0x5, Zone = 0x1, Tier = 0x1}, Iron = {Required = 0x28, ID = 0x3, Gain = 0x1E, Zone = 0x1, Tier = 0x1}, Silver = {Required = 0xFA, ID = 0x4, Gain = 0xC8, Zone = 0x1, Tier = 0x1}, Gold = {Required = 0x4B0, ID = 0x5, Gain = 0x5DC, Zone = 0x1, Tier = 0x1}, Iridium = {Required = 0x55F0, ID = 0x6, Gain = 0x2D69, Zone = 0x1, Tier = 0x1}, Platinum = {Required = 0xBF680, ID = 0x7, Gain = 0x15FED, Zone = 0x1, Tier = 0x1}, Titanium = {Required = 0xD3F7AC0, ID = 0x8, Gain = 0xAA772, Zone = 0x1, Tier = 0x2}, Osmium = {Required = 0x4745942A0, ID = 0x9, Gain = 0x5291B7, Zone = 0x1, Tier = 0x2}, Diamond = {Required = 0xDAAFA0F5C0, ID = 0xA, Gain = 0x27FE950, Zone = 0x1, Tier = 0x2}, Amethyst = {Required = 0x9D5BEA116000, ID = 0xB, Gain = 0x135F5033, Zone = 0x1, Tier = 0x3}, Ruby = {Required = 0x5398D4593B0000, ID = 0xC, Gain = 0x9622AD8B, Zone = 0x1, Tier = 0x3}, Beryl = {Required = 0x1.71436214870016e18, ID = 0xD, Gain = 0x48B8CC0FA, Zone = 0x1, Tier = 0x3}, Sapphire = {Required = 0x4.194304e20, ID = 0xE, Gain = 0x233982D794, Zone = 0x1, Tier = 0x4}, Turquoise = {Required = 0x7.1506320723632814e22, ID = 0xF, Gain = 0x110FDB606C0, Zone = 0x1, Tier = 0x4}, Emerald = {Required = 0x1.025390625e25, ID = 0x10, Gain = 0x843AE42B453, Zone = 0x1, Tier = 0x4}, Peridot = {Required = 0x8.045287586809203e27, ID = 0x11, Gain = 0x400C8684F587, Zone = 0x1, Tier = 0x5}, Uranium = {Required = 0x8.82578239373847e29, ID = 0x12, Gain = 0x1F06112866EDB, Zone = 0x1, Tier = 0x5}, Radium = {Required = 0x5.118953788368313e31, ID = 0x13, Gain = 0xF06F04F91DB28, Zone = 0x1, Tier = 0x5}, Topaz = {Required = 0x9.284550294640352e34, ID = 0x14, Gain = 0x7475C668AA6274, Zone = 0x1, Tier = 0x6}, Garnet = {Required = 0x9.903520314283042e36, ID = 0x15, Gain = 0x2.5404959046765648e17, Zone = 0x1, Tier = 0x6}, Polonium = {Required = 0x7.922816251426434e37, ID = 0x16, Gain = 0x1.9688843261243377e18, Zone = 0x1, Tier = 0x6}, Promethium = {Required = 0x6.338253001141147e38, ID = 0x17, Gain = 0x1.5258853527463617e19, Zone = 0x1, Tier = 0x6}, Quartz = {Required = 0x2.7536312389526886e42, ID = 0x18, Gain = 0x1.1825611483784303e20, Zone = 0x1, Tier = 0x7}, Opal = {Required = 0x2.661487094530107e44, ID = 0x19, Gain = 0x9.164848899932836e20, Zone = 0x1, Tier = 0x7}, Alexandrite = {Required = 0x7.315972871729591e46, ID = 0x1A, Gain = 0x7.576275090611144e21, Zone = 0x1, Tier = 0x7}, Obsidian = {Required = 0x1.8725319121879157e47, ID = 0x1B, Gain = 0x1.1009274741044318e23, Zone = 0x1, Tier = 0x7}, Germanium = {Required = 0x5.9872385530008635e53, ID = 0x1C, Gain = 0x8.532187924309347e23, Zone = 0x2, Tier = 0x8}, Malachite = {Required = 0x4.5503013002806566e55, ID = 0x1D, Gain = 0x6.612445641339744e24, Zone = 0x2, Tier = 0x8}, Scandium = {Required = 0x4.349086430567033e57, ID = 0x1E, Gain = 0x5.124645372038301e25, Zone = 0x2, Tier = 0x8}, Tantalum = {Required = 0x2.660972109430888e60, ID = 0x1F, Gain = 0x3.971600163329684e26, Zone = 0x2, Tier = 0x9}, Rhenium = {Required = 0x3.4604097121804217e62, ID = 0x20, Gain = 0x3.0779901265805044e27, Zone = 0x2, Tier = 0x9}, Niobium = {Required = 0x1.4534436637618712e63, ID = 0x21, Gain = 0x2.385442348099891e28, Zone = 0x2, Tier = 0x9}, Painite = {Required = 0x2.0873237031045045e67, ID = 0x22, Gain = 0x1.8487178197774156e29, Zone = 0x2, Tier = 0xA}, Tektite = {Required = 0x3.525494028059191e69, ID = 0x23, Gain = 0x1.432756310327497e30, Zone = 0x2, Tier = 0xA}, Bluesteel = {Required = 0x1.0641173063840691e70, ID = 0x24, Gain = 0x1.1103861405038102e31, Zone = 0x2, Tier = 0xA}, Mithril = {Required = 0x1.3930397854978352e74, ID = 0x25, Gain = 0x8.60549258890453e31, Zone = 0x2, Tier = 0xB}, Molybdenum = {Required = 0x1.1701534198181815e76, ID = 0x26, Gain = 0x6.669256756401011e32, Zone = 0x2, Tier = 0xB}, Azurite = {Required = 0x9.829288726472726e77, ID = 0x27, Gain = 0x5.1686739862107824e33, Zone = 0x2, Tier = 0xB}, Lazulite = {Required = 0x4.750878377795212e80, ID = 0x28, Gain = 0x4.005722339313357e34, Zone = 0x2, Tier = 0xC}, Viridian = {Required = 0x4.9644418166692916e82, ID = 0x29, Gain = 0x3.1044348129678515e35, Zone = 0x2, Tier = 0xC}, Prismarine = {Required = 0x1.0274236107541666e85, ID = 0x2A, Gain = 0x2.405936980050085e36, Zone = 0x2, Tier = 0xC}, Tungsten = {Required = 0x7.369619054075516e87, ID = 0x2B, Gain = 0x1.8646011595388158e37, Zone = 0x2, Tier = 0xD}, Adurite = {Required = 0x8.01123803310691e89, ID = 0x2C, Gain = 0x1.4450658986425821e38, Zone = 0x2, Tier = 0xD}, Neon = {Required = 0x1.4368100371489546e92, ID = 0x2D, Gain = 0x1.1199260714480012e39, Zone = 0x2, Tier = 0xD} } local _IlIllIIIIl = { { Required = -0x1869F, TierName = "\087\111\111\100\032\084\105\101\114", ID = 0x1, Color = Color3.fromRGB(0xCB, 0x8E, 0x5C) }, { Required = 0x4C4B40, TierName = "\083\105\108\118\101\114\032\084\105\101\114", ID = 0x2, Color = Color3.fromRGB(0xC1, 0xC1, 0xC1) }, { Required = 0x2D79883D2000, TierName = "\071\111\108\100\032\084\105\101\114", ID = 0x3, Color = Color3.fromRGB(0xFF, 0xCD, 0x35) }, { Required = 1e20, TierName = "\080\108\097\116\105\110\117\109\032\084\105\101\114", ID = 0x4, Color = Color3.fromRGB(0x81, 0xE2, 0xFF) }, { Required = 0x1.25e26, TierName = "\065\109\101\116\104\121\115\116\032\084\105\101\114", ID = 0x5, Color = Color3.fromRGB(0xE5, 0x62, 0xFF) }, { Required = 0x2.1e33, TierName = "\082\117\098\121\032\084\105\101\114", ID = 0x6, Color = Color3.fromRGB(0xFF, 0x59, 0xA4) }, { Required = 1e42, TierName = "\066\101\114\121\108\032\084\105\101\114", ID = 0x7, Color = Color3.fromRGB(0xFF, 0x4F, 0x52) }, { Required = 0x2.75e52, TierName = "\083\097\112\112\104\105\114\101\032\084\105\101\114", ID = 0x8, Color = Color3.fromRGB(0x3E, 0x6B, 0xFF) }, { Required = 0x3.55e59, TierName = "\084\117\114\113\117\111\105\115\101\032\084\105\101\114", ID = 0x9, Color = Color3.fromRGB(0x0, 0xFF, 0xFF) }, { Required = 1e66, TierName = "\069\109\101\114\097\108\100\032\084\105\101\114", ID = 0xA, Color = Color3.fromRGB(0x0, 0xFF, 0x2A) }, { Required = 0x2.5e73, TierName = "\085\114\097\110\105\117\109\032\084\105\101\114", ID = 0xB, Color = Color3.fromRGB(0xBB, 0xFF, 0x0) }, { Required = 5e79, TierName = "\082\097\100\105\117\109\032\084\105\101\114", ID = 0xC, Color = Color3.fromRGB(0xFF, 0xFF, 0x0) }, { Required = 0x1.8e86, TierName = "\084\111\112\097\122\032\084\105\101\114", ID = 0xD, Color = Color3.fromRGB(0xFF, 0xC8, 0x0) } } local _IIIllIIIIl = _IllIllllII.ParseNumber("\054\048\048\083\120\100") local _llIlIIllII = 0x1 local _lIllIIIIll = false local _IIIllllIlI = false local _IllllIIlIl = false local _llIlIIlllI = false local _IlIlIIllll = false local _lIlIIlIIll = false local _IlllIlllIl = nil local _IIIIIlIIII = nil local _lIllllIIII = Color3.fromRGB(0x0, 0xFF, 0x64) local _llIIllIIII = Color3.fromRGB(0x50, 0xB4, 0xFF) local _IIllIlIllI = Color3.fromRGB(0xBE, 0x50, 0xFF) local _lIlIllIIII = Color3.fromRGB(0xFF, 0xD7, 0x0) local _IIIIIIIlII = _IlIlllIllI:CreateParagraph({ Title = "\083\116\097\116\117\115\032\058\032\078\111\110\101", Content = "\076\111\097\100\105\110\103\046\046\046" }) local function _IIIIllIIIl(_IIllIIllll, color) local _IIIIllIlll = math.floor(color.R * 0xFF) local _IIlIIIIIII = math.floor(color.G * 0xFF) local _lIlIIIIIII = math.floor(color.B * 0xFF) return string.format( "\060\102\111\110\116\032\099\111\108\111\114\061\034\035\037\048\050\088\037\048\050\088\037\048\050\088\034\062\037\115\060\047\102\111\110\116\062", _IIIIllIlll, _IIlIIIIIII, _lIlIIIIIII, tostring(_IIllIIllll) ) end
 local function _lIlllIlIll(value) if value == nil then return 0x0 end
 if type(value) == "\110\117\109\098\101\114" then return value end
 local _IIlIIIIIIl, _llllIllIlI = pcall( function () return _IllIllllII.ParseNumber(tostring(value)) end
 ) if _IIlIIIIIIl then return tonumber(_llllIllIlI) or 0x0 end
 return 0x0 end
 local function _IIllllIllI(value) local _IIlIIIIIIl, _llllIllIlI = pcall( function () return _IllIllllII.FormatNumber(tonumber(value) or 0x0) end
 ) if _IIlIIIIIIl and _llllIllIlI then return _llllIllIlI end
 return tostring(value or 0x0) end
 local function _IlIIlIlIIl() local _IlIlllIllI = _IIlIllllII:FindFirstChild("\108\101\097\100\101\114\115\116\097\116\115") if not _IlIlllIllI then return 0x0 end
 local _lIlIIIIlll = _IlIlllIllI:FindFirstChild("\067\111\105\110\115") if not _lIlIIIIlll then return 0x0 end
 return tonumber(_lIlIIIIlll.Value) or 0x0 end
 local function _llIIlllIII() local _IlIlllIllI = _IIlIllllII:FindFirstChild("\108\101\097\100\101\114\115\116\097\116\115") if not _IlIlllIllI then return 0x1 end
 local _llIIlIIIIl = _IlIlllIllI:FindFirstChild("\084\105\101\114") if not _llIIlIIIIl then return 0x1 end
 local _lIIlIllIll = tonumber(_llIIlIIIIl.Value) if not _lIIlIllIll then return 0x1 end
 return math.max(0x1, math.floor(_lIIlIllIll)) end
 local function _lIlIllIIII(name) return _llIIIlIlIl[name] end
 local function _llIIIIIlll(ore) if not ore then return nil end
 if ore:IsA("\077\111\100\101\108") then return ore:GetPivot().Position end
 if ore:IsA("\066\097\115\101\080\097\114\116") then return ore.Position end
 local _llIIIllIll = ore:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true) if _llIIIllIll then return _llIIIllIll.Position end
 return nil end
 local function _lllIlllllI(ore) if not ore then return nil end
 if ore:IsA("\077\111\100\101\108") then return ore:GetPivot() end
 if ore:IsA("\066\097\115\101\080\097\114\116") then return ore.CFrame end
 local _llIIIllIll = ore:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true) if _llIIIllIll then return _llIIIllIll.CFrame end
 return nil end
 local function _IlIlllllll(name) local _lIIIlIIIll = _lIlIllIIII(name) if not _lIIIlIIIll then return math.huge end
 return _lIIIlIIIll.ID end
 local function _lIlIIlllII(_lIIIlIIIll, _IIlIlIllll) if not _lIIIlIIIll then return false end
 return _IIlIlIllll >= _lIIIlIIIll.Tier end
 local function _lllllllIII(_lIIIlIIIll, _lIlIIIIlll, _IIlIlIllll) if not _lIIIlIIIll then return false end
 if not _lIlIIlllII(_lIIIlIIIll, _IIlIlIllll) then return false end
 return _lIlIIIIlll >= _lIIIlIIIll.Required end
 local function _IIlllIIIlI() local _llllIllIlI = {} local _IIIIllIIll = workspace:FindFirstChild("\079\114\101\115") if not _IIIIllIIll then return _llllIllIlI end
 local _lIlIIIIlll = _IlIIlIlIIl() local _IIlIlIllll = _llIIlllIII() for _llIIlIIIIl, ore in ipairs(_IIIIllIIll:GetChildren()) do local _lIIIlIIIll = _lIlIllIIII(ore.Name) if _lIIIlIIIll then local _IlIlllIlIl = _lIlIIlllII( _lIIIlIIIll, _IIlIlIllll ) local _IllllIIIII = _lllllllIII( _lIIIlIIIll, _lIlIIIIlll, _IIlIlIllll ) table.insert(_llllIllIlI, { Name = ore.Name, Model = ore, World = _lIIIlIIIll.Zone, Rank = _lIIIlIIIll.ID, Price = _lIIIlIIIll.Required, Gain = _lIIIlIIIll.Gain, Tier = _lIIIlIIIll.Tier, Visible = _IlIlllIlIl, Locked = _IlIlllIlIl and not _IllllIIIII, Unlocked = _IllllIIIII }) end
 end
 table.sort(_llllIllIlI, function (a, _lIlIIIIIII) if a.World ~= _lIlIIIIIII.World then return a.World < _lIlIIIIIII.World end
 return a.Rank < _lIlIIIIIII.Rank end
 ) return _llllIllIlI end
 local function _lllIIIlllI() local _llllIllIlI = {} for name, _lIIIlIIIll in pairs(_llIIIlIlIl) do table.insert(_llllIllIlI, { Name = name, World = _lIIIlIIIll.Zone, Rank = _lIIIlIIIll.ID, Price = _lIIIlIIIll.Required, Gain = _lIIIlIIIll.Gain, Tier = _lIIIlIIIll.Tier, Data = _lIIIlIIIll }) end
 table.sort(_llllIllIlI, function (a, _lIlIIIIIII) if a.World ~= _lIlIIIIIII.World then return a.World < _lIlIIIIIII.World end
 return a.Rank < _lIlIIIIIII.Rank end
 ) return _llllIllIlI end
 local function _IlIlIIlIII() local _IllIIIIIll = _IIlllIIIlI() local _IllIIllllI = nil local _IIlIlIllll = _llIIlllIII() for _llIIlIIIIl, ore in ipairs(_IllIIIIIll) do if ore.Unlocked and ore.Tier <= _IIlIlIllll then if not _IllIIllllI then _IllIIllllI = ore elseif ore.World > _IllIIllllI.World then _IllIIllllI = ore elseif ore.World == _IllIIllllI.World and ore.Rank > _IllIIllllI.Rank then _IllIIllllI = ore end
 end
 end
 return _IllIIllllI end
 local function _lIIIllIIIl() local _IllIIllllI = _IlIlIIlIII() if not _IllIIllllI then return nil end
 local _IIlIlIllll = _llIIlllIII() local _IllIlIIlIl = _lllIIIlllI() for _llIIlIIIIl, ore in ipairs(_IllIlIIlIl) do if ore.World == _IllIIllllI.World and ore.Rank == _IllIIllllI.Rank + 0x1 then if ore.Tier <= _IIlIlIllll then return ore end
 return nil end
 end
 if _IllIIllllI.World == 0x1 then for _llIIlIIIIl, ore in ipairs(_IllIlIIlIl) do if ore.World == 0x2 and ore.Rank == 0x1C then if ore.Tier <= _IIlIlIllll then return ore end
 return nil end
 end
 end
 return nil end
 local function _llllIlIllI() local _IllIIllllI = _IlIlIIlIII() if not _IllIIllllI then return nil, nil, false end
 local _IIlIIIlIll = _lIIIllIIIl() if _IIlIIIlIll then return _IllIIllllI, _IIlIIIlIll, false end
 return _IllIIllllI, nil, true end
 local function _lIIlllIIIl(cframe) if not cframe then return false end
 local _lIlIIlIIll = _IIlIllllII.Character if not _lIlIIlIIll then return false end
 local _IIlIlIlIlI = _lIlIIlIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IIlIlIlIlI then return false end
 _IIlIlIlIlI.CFrame = cframe + Vector3.new(0x0, 0x6, 0x0) return true end
 local function _IIlllllIII(ore) if not ore or not ore.Model then return false end
 local _lllIIlIlII = _lllIlllllI(ore.Model) if not _lllIIlIlII then return false end
 return _lIIlllIIIl(_lllIIlIlII) end
 local function _IlllIIllII(pathParts) local _lIIllllIll = workspace for _llIIlIIIIl, name in ipairs(pathParts) do _lIIllllIll = _lIIllllIll:FindFirstChild(name) if not _lIIllllIll then return false end
 end
 local _lllIIlIlII if _lIIllllIll:IsA("\066\097\115\101\080\097\114\116") then _lllIIlIlII = _lIIllllIll.CFrame elseif _lIIllllIll:IsA("\077\111\100\101\108") then _lllIIlIlII = _lIIllllIll:GetPivot() else local _llIIIllIll = _lIIllllIll:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true) if not _llIIIllIll then return false end
 _lllIIlIlII = _llIIIllIll.CFrame end
 return _lIIlllIIIl(_lllIIlIlII) end
 local function _IIlIlIIIll() local _IllllllIll = workspace:FindFirstChild("\071\097\109\101\112\108\097\121") if not _IllllllIll then return false end
 if _IllllllIll:FindFirstChild("\071\101\111\100\101\115\050") then return true end
 if _IllllllIll:FindFirstChild("\071\101\111\100\101\115\050", true) then return true end
 return false end
 local function _lIlllIIIlI() if _IIlIlIIIll() then return 0x2 end
 return _llIlIIllII end
 local function _IllIIlIIlI() local _IIllllllII = tick() while tick() - _IIllllllII < 0xA do if _IIlIlIIIll() then return true end
 task.wait(0.2) end
 return _IIlIlIIIll() end
 local function _llIlllIIlI() if _lIlllIIIlI() == 0x2 then _llIlIIllII = 0x2 _lIllIIIIll = true return true end
 local _lIlIIIIlll = _IlIIlIlIIl() if _lIlIIIIlll < _IIIllIIIIl then return false end
 local _IIlIIIIIIl = _IlllIIllII({ "\069\120\116\114\097\083\099\114\105\112\116\097\098\108\101", "\084\101\108\101\112\111\114\116\072\105\116\098\111\120\101\115", "\080\101\098\098\108\101\066\101\097\099\104" }) if not _IIlIIIIIIl then return false end
 local _lIlIIlllIl = _IllIIlIIlI() if _lIlIIlllIl then _llIlIIllII = 0x2 _lIllIIIIll = true return true end
 return false end
 local function _IIllIIIIIl() if _lIlllIIIlI() == 0x1 then _llIlIIllII = 0x1 return true end
 local _IIlIIIIIIl = _IlllIIllII({ "\071\097\109\101\112\108\097\121", "\082\101\116\117\114\110\083\097\108\116", "\082\105\110\103" }) if _IIlIIIIIIl then _llIlIIllII = 0x1 task.wait(0x1) return true end
 return false end
 local function _llIllIllll() if _lIlllIIIlI() == 0x2 then return false end
 local _IllIIllllI = _IlIlIIlIII() if not _IllIIllllI then return false end
 if _IllIIllllI.World ~= 0x2 then return false end
 return _IlIIlIlIIl() >= _IIIllIIIIl end
 local function _llllIIIllI() if _lIlllIIIlI() == 0x2 then _llIlIIllII = 0x2 _lIllIIIIll = true return true end
 if not _llIllIllll() then return false end
 return _llIlllIIlI() end
 local function _llIllllIIl(ore) if not ore or not ore.Model then return math.huge end
 local _lIlIIlIIll = _IIlIllllII.Character if not _lIlIIlIIll then return math.huge end
 local _IIlIlIlIlI = _lIlIIlIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IIlIlIlIlI then return math.huge end
 local _lIllllIIII = _llIIIIIlll(ore.Model) if not _lIllllIIII then return math.huge end
 return (_IIlIlIlIlI.Position - _lIllllIIII).Magnitude end
 local function _lIllIllIII() if not _lIlIIlIIll then return end
 local _lIlIIlIIll = _IIlIllllII.Character if not _lIlIIlIIll then return end
 local _lIIIlllllI = _lIlIIlIIll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") local _IIlIlIlIlI = _lIlIIlIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _lIIIlllllI or not _IIlIlIlIlI then return end
 local _llIIlIlllI = _lIIIlllllI:GetState() if _llIIlIlllI == Enum.HumanoidStateType.Physics or _llIIlIlllI == Enum.HumanoidStateType.Ragdoll or _llIIlIlllI == Enum.HumanoidStateType.FallingDown or _llIIlIlllI == Enum.HumanoidStateType.Freefall then _lIIIlllllI:ChangeState(Enum.HumanoidStateType.GettingUp) _lIIIlllllI.PlatformStand = false end
 local _lIllllIIII = _IIlIlIlIlI.Position local _lllIIllIII = _IIlIlIlIlI.CFrame.LookVector local _lIlllIlllI = Vector3.new(_lllIIllIII.X, 0x0, _lllIIllIII.Z) if _lIlllIlllI.Magnitude > 0.1 then _IIlIlIlIlI.CFrame = CFrame.new( _lIllllIIII, _lIllllIIII + _lIlllIlllI ) end
 end
 local function _llllIIIlll() local _IIlIIIIIIl, _llllIllIlI = pcall( function () local _IlIlIlIlll = _IIlIllllII.PlayerGui:FindFirstChild("\077\097\105\110\071\117\105") if not _IlIlIlIlll then return nil end
 local _lllIlllIlI = _IlIlIlIlll:FindFirstChild("\068\105\115\112\108\097\121") if not _lllIlllIlI then return nil end
 local _IllIIllllI = _lllIlllIlI:FindFirstChild("\071\101\111\100\101\115") if not _IllIIllllI then return nil end
 local _lllIIlllIl = _IllIIllllI:FindFirstChild("\084\101\120\116\076\097\098\101\108") if not _lllIIlllIl then return nil end
 local _lIIllllIll = _lllIIlllIl:FindFirstChild("\084\101\120\116\076\097\098\101\108") if not _lIIllllIll then return nil end
 return _lIIllllIll.Text end
 ) if not _IIlIIIIIIl or not _llllIllIlI then return 0x0, 0x0 end
 local _IIIIlIlIlI, gainStr = _llllIllIlI:match( "\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041\037\115\042\037\091\037\043\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041\037\093" ) if not _IIIIlIlIlI then _IIIIlIlIlI = _llllIllIlI:match("\040\091\037\100\037\046\093\043\091\065\045\090\097\045\122\093\042\041") gainStr = "\048" end
 return _lIlllIlIll(_IIIIlIlIlI or "\048"), _lIlllIlIll(gainStr or "\048") end
 local function _IlIIIlIllI() if _lIlllIIIlI() == 0x2 then return _IlllIIllII({ "\071\097\109\101\112\108\097\121", "\071\101\111\100\101\115\050", "\068\101\116\101\099\116\111\114" }) end
 return _IlllIIllII({ "\071\097\109\101\112\108\097\121", "\071\101\111\100\101\115", "\068\101\116\101\099\116\111\114" }) end
 local function _IllIIlllIl() local _lIlIllllII = _llIIlllIII() local _lIlIIIIlll = _IlIIlIlIIl() local _llIlIIIIII = _IlIllIIIIl[0x1] local _IIIllIIIII = nil for _llIIlIIIIl, _lIIlIllIll in ipairs(_IlIllIIIIl) do if _lIIlIllIll.ID == _lIlIllllII then _llIlIIIIII = _lIIlIllIll break end
 end
 for _llIIlIIIIl, _lIIlIllIll in ipairs(_IlIllIIIIl) do if _lIIlIllIll.ID == _lIlIllllII + 0x1 then _IIIllIIIII = _lIIlIllIll break end
 end
 local _IIllIlllIl = 0x64 local _IIIlIlIIII = 0x0 if _IIIllIIIII then local _lllllIlIIl = _llIlIIIIII.Required if _lllllIlIIl < 0x0 then _lllllIlIIl = 0x0 end
 local _IllIIlIIIl = _IIIllIIIII.Required - _lllllIlIIl if _IllIIlIIIl > 0x0 then _IIllIlllIl = math.clamp( ((_lIlIIIIlll - _lllllIlIIl) / _IllIIlIIIl) * 0x64, 0x0, 0x64 ) end
 _IIIlIlIIII = math.max( 0x0, _IIIllIIIII.Required - _lIlIIIIlll ) end
 return _llIlIIIIII, _IIIllIIIII, _IIllIlllIl, _IIIlIlIIII end
 local function _lIIIIIlIIl() local _IIlIIIIIIl, _llllIllIlI = pcall( function () return ReplicatedStorage .Packages ._Index["\108\101\105\102\115\116\111\117\116\095\110\101\116\119\111\114\107\101\114\064\048\046\051\046\049"] .networker ._remotes .GameNetwork .RemoteEvent end
 ) if _IIlIIIIIIl then return _llllIllIlI end
 return nil end
 local function _llIllIIlIl() local _IIlIIIIIIl, _llllIllIlI = pcall( function () return ReplicatedStorage .Packages ._Index["\108\101\105\102\115\116\111\117\116\095\110\101\116\119\111\114\107\101\114\064\048\046\051\046\049"] .networker ._remotes .GameNetwork .RemoteFunction end
 ) if _IIlIIIIIIl then return _llllIllIlI end
 return nil end
 local function _IlIlIlIIll() local _lllIIlIIII = _lIIIIIlIIl() if _lllIIlIIII then _lllIIlIIII:FireServer("\084\105\101\114\085\112") end
 end
 local function _llllIIIlII() local _IIlIIIIIIl, codesModule = pcall( function () return require( ReplicatedStorage .Shared .Indexs .CodesIndex ) end
 ) if not _IIlIIIIIIl or not codesModule or not codesModule.Codes then return end
 local _lIlIlIlIlI = _llIllIIlIl() if not _lIlIlIlIlI then return end
 local _IlIlIlIIll = os.time() local _IIIIllIIll = 0x0 local _IlIIIlIlIl = 0x0 for codeName, _lIIIlIIIll in pairs(codesModule.Codes) do if _lIIIlIIIll.ExpiresAt == nil or _lIIIlIIIll.ExpiresAt > _IlIlIlIIll then pcall( function () _lIlIlIlIlI:InvokeServer( "\082\101\100\101\101\109\067\111\100\101", codeName ) end
 ) _IIIIllIIll += 0x1 task.wait(0.3) else _IlIIIlIlIl += 0x1 end
 end
 _lIIlIlIlII:Notify({ Title = "\067\111\100\101\115", Content = "\082\101\100\101\101\109\101\100\058\032" .. _IIIIllIIll .. "\032\124\032\083\107\105\112\112\101\100\058\032" .. _IlIIIlIlIl, Duration = 0x4 }) end
 local function _lllIIIIllI() local _IIlIlIIllI = {} local _IIlIIIIIIl, content = pcall( function () return _IIlIllllII.PlayerGui.Inset.Tree.Content end
 ) if not _IIlIIIIIIl or not content then return _IIlIlIIllI end
 for _llIIlIIIIl, button in ipairs(content:GetChildren()) do local _lllIlIIlll = button:FindFirstChild("\089\101\112") if _lllIlIIlll then local _lllIIIIlII = _lllIlIIlll:FindFirstChild("\080\114\105\099\101") if _lllIIIIlII then local _lllllIlIIl = _lllIIIIlII.Text if not _lllllIlIIl then local _IllIIIIlIl = _lllIIIIlII:FindFirstChildOfClass("\084\101\120\116\076\097\098\101\108") if _IllIIIIlIl then _lllllIlIIl = _IllIIIIlIl.Text end
 end
 local _lllIIIIIIl = _lIlllIlIll(_lllllIlIIl or "\048") if _lllIIIIIIl > 0x0 then table.insert(_IIlIlIIllI, { Id = button.Name, Price = _lllIIIIIIl }) end
 end
 end
 end
 return _IIlIlIIllI end
 local function _llllIIlIlI() local _IlllIlIIlI = 0x46 local _IIlIIIIIIl, treeModule = pcall( function () return require( ReplicatedStorage .Shared .Indexs .TreeIndex ) end
 ) if _IIlIIIIIIl and treeModule and treeModule.Nodes then _IlllIlIIlI = 0x0 for _llIIlIIIIl, node in pairs(treeModule.Nodes) do if node.Levels then _IlllIlIIlI += #node.Levels end
 end
 end
 local _lIlIIIllll = #_lllIIIIllI() if _IlllIlIIlI > 0x0 then return math.clamp( ((_IlllIlIIlI - _lIlIIIllll) / _IlllIlIIlI) * 0x64, 0x0, 0x64 ) end
 return 0x0 end
 local function _IIlllIIIll(id) local _lllIIlIIII = _lIIIIIlIIl() if _lllIIlIIII then _lllIIlIIII:FireServer( "\066\117\121\085\112\103\114\097\100\101", id ) end
 end
 local function _IIlIllIllI() local _lIlIIIIlll = _IlIIlIlIIl() local _IIlIlIIllI = _lllIIIIllI() table.sort(_IIlIlIIllI, function (a, _lIlIIIIIII) return a.Price < _lIlIIIIIII.Price end
 ) for _llIIlIIIIl, upgrade in ipairs(_IIlIlIIllI) do if upgrade.Price > 0x0 and _lIlIIIIlll >= upgrade.Price then _IIlllIIIll(upgrade.Id) task.wait(0.4) _lIlIIIIlll = _IlIIlIlIIl() end
 end
 end
 local function _llIlIllIII() local _IllIIllllI = _IlIlIIlIII() local _IIlIIIlIll = _lIIIllIIIl() local _lIlIIIIlll = _IlIIlIlIIl() if not _IllIIllllI then return 0x0, 0x0 end
 if not _IIlIIIlIll then return 0x64, 0x0 end
 local _IIllllIIII = _IIlIIIlIll.Price local _IlIIIIIlII = _IllIIllllI.Price if _IIllllIIII <= 0x0 then return 0x64, 0x0 end
 if _IlIIIIIlII < 0x0 then _IlIIIIIlII = 0x0 end
 local _IllIIlIIIl = _IIllllIIII - _IlIIIIIlII if _IllIIlIIIl <= 0x0 then return 0x64, 0x0 end
 local _IIllIlllIl = math.clamp( ((_lIlIIIIlll - _IlIIIIIlII) / _IllIIlIIIl) * 0x64, 0x0, 0x64 ) local _IIIlIlIIII = math.max( 0x0, _IIllllIIII - _lIlIIIIlll ) return _IIllIlllIl, _IIIlIlIIII end
 local function _lIllIIIIll() local _IllIIllllI, _IIlIIIlIll, isMax = _llllIlIllI() local _lIIllllIll, gain = _llllIIIlll() local _lIlIIIIlll = _IlIIlIlIIl() local _lIIlIlIIll = 0x0 if _lIIllllIll <= 0x0 then _lIIlIlIIll = math.clamp( (_lIlIIIIlll / 0x2710) * 0x64, 0x0, 0x64 ) else local _IllIIlllll = _lIIllllIll * 0x2 if _IllIIlllll > 0x0 then _lIIlIlIIll = math.clamp( (gain / _IllIIlllll) * 0x64, 0x0, 0x64 ) end
 end
 local _llIlIIIIII, _IIIllIIIII, tierProgress, _IIIlIlIIII = _IllIIlllIl() local _IIllIlllII = _llllIIlIlI() local _IIIIllllIl = {} if _IIIllllIlI then table.insert(_IIIIllllIl, "\065\066\079") end
 if _IllllIIlIl then table.insert(_IIIIllllIl, "\065\071") end
 if _llIlIIlllI then table.insert(_IIIIllllIl, "\065\084") end
 if _IlIlIIllll then table.insert(_IIIIllllIl, "\065\084\082") end
 local _llllIlIIII = "\078\111\110\101" if #_IIIIllllIl > 0x0 then _llllIlIIII = table.concat(_IIIIllllIl, "\032\124\032") end
 local _IIIIlIlIlI = "\078\111\110\101" local _IllIlIllIl = 0x0 local _llIlllIlll = 0x0 if _IllIIllllI then _IIIIlIlIlI = _IIIIllIIIl( _IllIIllllI.Name, _llIIllIIII ) if isMax then _IIIIlIlIlI = _IIIIlIlIlI .. "\032\8594\032" .. _IIIIllIIIl( "\077\065\088", _lIlIllIIII ) _IllIlIllIl = 0x64 _llIlllIlll = 0x0 elseif _IIlIIIlIll then _IIIIlIlIlI = _IIIIlIlIlI .. "\032\8594\032" .. _IIIIllIIIl( _IIlIIIlIll.Name, _IIllIlIllI ) _IllIlIllIl, _llIlllIlll = _llIlIllIII() end
 end
 local _IIIIIIllII = _IIIIllIIIl( string.format( "\037\046\049\102\037\037", _IllIlIllIl ), _lIllllIIII ) if not isMax and _IIlIIIlIll and _llIlllIlll > 0x0 then _IIIIIIllII = _IIIIIIllII .. "\032\8594\032\040" .. _IIllllIllI(_llIlllIlll) .. "\041" end
 local _llIllIIlIl = _llIlIIIIII.Color or Color3.fromRGB( 0xFF, 0xFF, 0xFF ) local _lIllIIlIII = _IIIIllIIIl( _llIlIIIIII.TierName, _llIllIIlIl ) if _IIIllIIIII then local _lIlIIlIIll = _IIIllIIIII.Color or Color3.fromRGB( 0xFF, 0xFF, 0xFF ) _lIllIIlIII = _IIIIllIIIl( _llIlIIIIII.TierName, _llIllIIlIl ) .. "\032\8594\032" .. _IIIIllIIIl( _IIIllIIIII.TierName, _lIlIIlIIll ) end
 local _IlIIIIlIII = _IIIIllIIIl( string.format( "\037\046\049\102\037\037", tierProgress ), _lIllllIIII ) if _IIIllIIIII and _IIIlIlIIII > 0x0 then _IlIIIIlIII = _IlIIIIlIII .. "\032\8594\032\040" .. _IIllllIllI(_IIIlIlIIII) .. "\041" end
 local _IIllIIllll = "\079\114\101\058\032" .. _IIIIlIlIlI .. "\092\110\079\114\101\032\080\114\111\103\114\101\115\115\058\032" .. _IIIIIIllII .. "\092\110\092\110\071\101\111\100\101\032\071\097\105\110\058\032" .. _IIIIllIIIl( _IIllllIllI(gain), _llIIllIIII ) .. "\092\110\071\101\111\100\101\032\080\114\111\103\114\101\115\115\058\032" .. _IIIIllIIIl( string.format( "\037\046\049\102\037\037", _lIIlIlIIll ), _lIllllIIII ) .. "\092\110\092\110\084\105\101\114\058\032" .. _lIllIIlIII .. "\092\110\084\105\101\114\032\080\114\111\103\114\101\115\115\058\032" .. _IlIIIIlIII .. "\092\110\092\110\084\114\101\101\032\080\114\111\103\114\101\115\115\058\032" .. _IIIIllIIIl( string.format( "\037\046\049\102\037\037", _IIllIlllII ), _lIllllIIII ) _IIIIIIIlII:Set({ Title = "\083\116\097\116\117\115\032\058\032" .. _llllIlIIII, Content = _IIllIIllll }) end
 local function _lIIIllIlIl() _IlllIlllIl = nil _IIIIIlIIII = nil end
 local function _IIllllIlIl() local _IllIIllllI = _IlIlIIlIII() if _IllIIllllI then _IlllIlllIl = _IllIIllllI.Name _IIIIIlIIII = _IllIIllllI.Price else _lIIIllIlIl() end
 _lIllIIIIll() return _IllIIllllI end
 local _IlIIlllIIl = _IlIlllIllI:CreateToggle({ Name = "\065\117\116\111\032\066\101\115\116\032\079\114\101", CurrentValue = false, Flag = "\065\117\116\111\066\101\115\116\079\114\101", Callback = function (value) _IIIllllIlI = value if not value then _lIIIllIlIl() return end
 _IIllllIlIl() task.spawn( function () while _IIIllllIlI do local _IIlIlIllll = _llIIlllIII() local _llIIlIIlII = _lIlllIIIlI() _llIlIIllII = _llIIlIIlII local _IllIIllllI = _IlIlIIlIII() if _llIIlIIlII == 0x1 then if _IllIIllllI and _IllIIllllI.World == 0x2 then if _IIlIlIllll >= _IllIIllllI.Tier and _IlIIlIlIIl() >= _IIIllIIIIl then _llllIIIllI() task.wait(0.5) _llIIlIIlII = _lIlllIIIlI() _llIlIIllII = _llIIlIIlII _IllIIllllI = _IlIlIIlIII() end
 end
 elseif _llIIlIIlII == 0x2 then if not _IllIIllllI or _IllIIllllI.World == 0x1 then _IIllIIIIIl() task.wait(0.5) _IllIIllllI = _IlIlIIlIII() end
 end
 if _IllIIllllI then local _IllIlIIlll = _llIllllIIl(_IllIIllllI) if _IlllIlllIl ~= _IllIIllllI.Name then _IIlllllIII(_IllIIllllI) _IlllIlllIl = _IllIIllllI.Name _IIIIIlIIII = _IllIIllllI.Price elseif _IllIlIIlll > 0x2 then _IIlllllIII(_IllIIllllI) end
 end
 _lIllIllIII() _lIllIIIIll() task.wait(0.5) end
 end
 ) end
 }) local _lllIlIllIl = _IlIlllIllI:CreateToggle({ Name = "\065\117\116\111\032\071\101\111\100\101", CurrentValue = false, Flag = "\065\117\116\111\071\101\111\100\101", Callback = function (value) _IllllIIlIl = value if not value then return end
 task.spawn( function () while _IllllIIlIl do local _lIIllllIll, gain = _llllIIIlll() local _lIlIIIIlll = _IlIIlIlIIl() local _llIIlIIIIl, _llIIlIIIIl, tierProgress = _IllIIlllIl() local _lIIlIlIIll = 0x0 if _lIIllllIll <= 0x0 then _lIIlIlIIll = math.clamp( (_lIlIIIIlll / 0x2710) * 0x64, 0x0, 0x64 ) else local _IllIIlllll = _lIIllllIll * 0x2 if _IllIIlllll > 0x0 then _lIIlIlIIll = math.clamp( (gain / _IllIIlllll) * 0x64, 0x0, 0x64 ) end
 end
 local _lIIlIllIIl = true if _llIlIIlllI and tierProgress >= 0x46 and _lIIlIlIIll >= 0x46 then if tierProgress >= _lIIlIlIIll - 0xF then _lIIlIllIIl = false end
 end
 if _lIIlIllIIl then if _lIIllllIll <= 0x0 then if _lIlIIIIlll >= 0x2710 then _IlIIIlIllI() task.wait(0x3) _IIllllIlIl() end
 else if gain >= _lIIllllIll * 0x2 then _IlIIIlIllI() task.wait(0x3) _IIllllIlIl() end
 end
 end
 _lIllIllIII() _lIllIIIIll() task.wait(0x1) end
 end
 ) end
 }) local _IIllIlIlIl = _IlIlllIllI:CreateToggle({ Name = "\065\117\116\111\032\084\105\101\114\032\085\112", CurrentValue = false, Flag = "\065\117\116\111\084\105\101\114", Callback = function (value) _llIlIIlllI = value if not value then return end
 task.spawn( function () while _llIlIIlllI do local _lIlIllllII = _llIIlllIII() local _llIlIIIIII, _IIIllIIIII = _IllIIlllIl() if _IIIllIIIII and _lIlIllllII < _IIIllIIIII.ID and _IlIIlIlIIl() >= _IIIllIIIII.Required then _IlIlIlIIll() task.wait(1.5) _lIIIllIlIl() _IIllllIlIl() end
 _lIllIIIIll() task.wait(0x1) end
 end
 ) end
 }) local _IlIIIIIIII = _IlIlllIllI:CreateToggle({ Name = "\065\117\116\111\032\085\112\103\114\097\100\101\032\084\114\101\101", CurrentValue = false, Flag = "\065\117\116\111\084\114\101\101", Callback = function (value) _IlIlIIllll = value if not value then return end
 task.spawn( function () while _IlIlIIllll do _IIlIllIllI() _lIllIIIIll() task.wait(0x2) end
 end
 ) end
 }) _IllIIlIllI:CreateToggle({ Name = "\078\111\032\082\097\103\100\111\108\108", CurrentValue = false, Flag = "\078\111\082\097\103\100\111\108\108", Callback = function (value) _lIlIIlIIll = value end
 }) _IllIIlIllI:CreateButton({ Name = "\082\101\100\101\101\109\032\065\108\108\032\067\111\100\101\115", Callback = function () _llllIIIlII() end
 }) task.spawn( function () while true do _lIllIllIII() _lIllIIIIll() task.wait(0x1) end
 end
 ) end
 )(...)
