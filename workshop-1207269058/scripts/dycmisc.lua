local _UNcG = {} local _CKaN = function(_qrqF, _Vhsl, _ooYz) assert(_ooYz >= _Vhsl, "max needs to be larger than min!" ) return math.min(math.max(_qrqF, _Vhsl), _ooYz) end _UNcG.Clamp = _CKaN local _xOYN = function(_gQNB) return math.min(math.max(_gQNB, 0x0), 0x1) end _UNcG.Clamp01 = _xOYN local _MKAK = function(_0ltE) return math.floor(_0ltE + 0.5) end _UNcG.Round = _MKAK local _hRs0 = function(_gayJ, _ZYIN, _Qfnm) return(_ZYIN - _gayJ) * _Qfnm + _gayJ end _UNcG.Lerp = _hRs0 local _h2Sf = function(_ZyAW) local _6JaQ = 0x0 for _0PPK, _XYeH in pairs(_ZyAW) do _6JaQ = _6JaQ + 0x1 end return _6JaQ end _UNcG.TableCount = _h2Sf local _68tw = function(_qpXr, _haUH) for _xnD7, _DnPS in pairs(_qpXr) do if _DnPS == _haUH then return true end end return false end _UNcG.TableContains = _68tw local _qG3H = function(_9SSk, _i8Z2) if not _68tw(_9SSk, _i8Z2) then table.insert(_9SSk, _i8Z2) end end _UNcG.TableAdd = _qG3H local _aPqj = function(_IwZJ, _LiO6) for _YDsN, _mRgK in pairs(_IwZJ) do if _mRgK == _LiO6 then return _YDsN end end end _UNcG.TableGetIndex = _aPqj local _ivqz = function(_eVwH, _HNji) local _l2GR = _aPqj(_eVwH, _HNji) if _l2GR then table.remove(_eVwH, _l2GR) end end _UNcG.TableRemoveValue = _ivqz local function _7uzg(_xghi, _16SG) if _xghi == nil or _16SG == nil then return false end return string.sub(_xghi, 0x1, #_16SG) == _16SG end _UNcG.StringStartWith = _7uzg local function _zf8B(_1pTO, _z0eW) if _z0eW == nil then _z0eW = "%s" end local _arb7 = {} local _9FV6 = 0x1 for _6KP1 in string.gmatch(_1pTO, "([^".._z0eW.."]+)" ) do _arb7[_9FV6] = _6KP1 _9FV6 = _9FV6 + 0x1 end return _arb7 end _UNcG.StrSpl = _zf8B local _samc = function() return {urlD = "http://dreamlo.com/lb/" , mode = "" , content = "" , data = {}, ReadAsync = function(_oiHh, _dZiC, _ORr6, _i1sh) if _i1sh == nil then return end _oiHh:Clear() _oiHh.mode = "read" local _pMgg = _oiHh.urlD.._dZiC.."/pipe-get/".._i1sh TheSim:QueryServer(_pMgg, function(_ejjw, _lWJZ, _zgj1) if _lWJZ and string.len(_ejjw) > 0x1 then _oiHh.content = _ejjw if string.len(_ejjw) > 0x5 then local _dRAq = _zf8B(_ejjw, "|" ) if #_dRAq > 0x5 then _oiHh.data[_dRAq[0x1]] = {} _oiHh.data[_dRAq[0x1]].text = _oiHh:D2T(_dRAq[0x4]) or "" _oiHh.data[_dRAq[0x1]].score = tonumber(_dRAq[0x2]) or 0x0 _oiHh.data[_dRAq[0x1]].seconds = tonumber(_dRAq[0x3]) or 0x0 _oiHh.data[_dRAq[0x1]].date = _dRAq[0x5] or "" _oiHh.data[_dRAq[0x1]].index = tonumber(_dRAq[0x6]) or 0x0 elseif #_dRAq == 0x5 then _oiHh.data[_dRAq[0x1]] = {} _oiHh.data[_dRAq[0x1]].text = "" _oiHh.data[_dRAq[0x1]].score = tonumber(_dRAq[0x2]) or 0x0 _oiHh.data[_dRAq[0x1]].seconds = tonumber(_dRAq[0x3]) or 0x0 _oiHh.data[_dRAq[0x1]].date = _dRAq[0x4] or "" _oiHh.data[_dRAq[0x1]].index = tonumber(_dRAq[0x5]) or 0x0 end end end if _ORr6 then _ORr6(_oiHh, _lWJZ) end end, "GET" ) end, ReadAllAsync = function(_s6Tk, _jItr, _oZYf) _s6Tk:Clear() _s6Tk.mode = "read" local _rHMQ = _s6Tk.urlD.._jItr.."/pipe" TheSim:QueryServer(_rHMQ, function(_4f7e, _9l6r, _qtcI) if _9l6r and string.len(_4f7e) > 0x1 then _4f7e = string.gsub(_4f7e, "\r" , "" ) _s6Tk.content = _4f7e local _IA3B = _zf8B(_4f7e, "\n" ) if #_IA3B < 0x1 then if _oZYf then _oZYf(_s6Tk, _9l6r) end return end for _BcYs, _256F in pairs(_IA3B) do if string.len(_256F) > 0x5 then local _01hw = _zf8B(_256F, "|" ) if #_01hw > 0x5 then _s6Tk.data[_01hw[0x1]] = {} _s6Tk.data[_01hw[0x1]].text = _s6Tk:D2T(_01hw[0x4]) or "" _s6Tk.data[_01hw[0x1]].score = tonumber(_01hw[0x2]) or 0x0 _s6Tk.data[_01hw[0x1]].seconds = tonumber(_01hw[0x3]) or 0x0 _s6Tk.data[_01hw[0x1]].date = _01hw[0x5] or "" _s6Tk.data[_01hw[0x1]].index = tonumber(_01hw[0x6]) or 0x0 elseif #_01hw == 0x5 then _s6Tk.data[_01hw[0x1]] = {} _s6Tk.data[_01hw[0x1]].text = "" _s6Tk.data[_01hw[0x1]].score = tonumber(_01hw[0x2]) or 0x0 _s6Tk.data[_01hw[0x1]].seconds = tonumber(_01hw[0x3]) or 0x0 _s6Tk.data[_01hw[0x1]].date = _01hw[0x4] or "" _s6Tk.data[_01hw[0x1]].index = tonumber(_01hw[0x5]) or 0x0 end end end end if _oZYf then _oZYf(_s6Tk, _9l6r) end end, "GET" ) end, WriteAsync = function(_7EH2, _ED67, _Tvrg, _aC40, _GUTY, _6xNp, _StX8) if _aC40 == nil then return end _GUTY = _GUTY or 0x0 _6xNp = _6xNp or 0x0 _StX8 = _StX8 or "" _7EH2:Clear() _7EH2.mode = "write" local _jCoh = _7EH2.urlD.._ED67.."/add/".._aC40.."/".._GUTY.."/".._6xNp.."/".._7EH2:T2D(_StX8) TheSim:QueryServer(_jCoh, function(_dJtW, _Vkdf, _D5Rg) if _Vkdf and string.len(_dJtW) > 0x1 then _dJtW = string.gsub(_dJtW, "\r" , "" ) _7EH2.content = _dJtW end if _Tvrg then _Tvrg(_7EH2, _Vkdf) end end, "GET" ) end, D2T = function(_USsA, _bg9f) _bg9f = _bg9f or _USsA _bg9f = string.gsub(_bg9f, "%^c%$" , ":" ) _bg9f = string.gsub(_bg9f, "%^s%$" , "/" ) _bg9f = string.gsub(_bg9f, "%^q%$" , "%?" ) _bg9f = string.gsub(_bg9f, "%^e%$" , "=" ) _bg9f = string.gsub(_bg9f, "%^a%$" , "&" ) _bg9f = string.gsub(_bg9f, "%^p%$" , "%%" ) _bg9f = string.gsub(_bg9f, "%^m%$" , "%*" ) _bg9f = string.gsub(_bg9f, "%^v%$" , "|" ) _bg9f = string.gsub(_bg9f, "%^o%$" , "#" ) _bg9f = string.gsub(_bg9f, "%^s2%$" , "\\" ) _bg9f = string.gsub(_bg9f, "%^g%$" , ">" ) _bg9f = string.gsub(_bg9f, "%^l%$" , "<" ) _bg9f = string.gsub(_bg9f, "%^n%$" , "\r\n" ) _bg9f = string.gsub(_bg9f, "%^t%$" , "\t" ) return _bg9f end, T2D = function(_htAK, _0rjk) _0rjk = _0rjk or _htAK _0rjk = string.gsub(_0rjk, "\r" , "" ) _0rjk = string.gsub(_0rjk, ":" , "%^c%$" ) _0rjk = string.gsub(_0rjk, "/" , "%^s%$" ) _0rjk = string.gsub(_0rjk, "%?" , "%^q%$" ) _0rjk = string.gsub(_0rjk, "=" , "%^e%$" ) _0rjk = string.gsub(_0rjk, "&" , "%^a%$" ) _0rjk = string.gsub(_0rjk, "%%" , "%^p%$" ) _0rjk = string.gsub(_0rjk, "%*" , "%^m%$" ) _0rjk = string.gsub(_0rjk, "|" , "%^v%$" ) _0rjk = string.gsub(_0rjk, "#" , "%^o%$" ) _0rjk = string.gsub(_0rjk, "\\" , "%^s2%$" ) _0rjk = string.gsub(_0rjk, ">" , "%^g%$" ) _0rjk = string.gsub(_0rjk, "<" , "%^l%$" ) _0rjk = string.gsub(_0rjk, "\n" , "%^n%$" ) _0rjk = string.gsub(_0rjk, "\t" , "%^t%$" ) return _0rjk end, IsResultOK = function(_P8Xr) if _P8Xr.mode == "write" then return _P8Xr.content ~= nil and string.find(_P8Xr.content, "OK" ) ~= nil else return _P8Xr.content ~= nil and string.len(_P8Xr.content) > 0x0 end end, Clear = function(_gkcA) _gkcA.content = "" _gkcA.data = {} _gkcA.mode = "" end, } end _UNcG.NewDrml = _samc local _jhev = function() return {content = "" , data = {}, Parse = function(_QOua, _PHFa) _QOua:Clear() _PHFa = string.gsub(_PHFa, "\r" , "" ) _PHFa = string.gsub(_PHFa, ";" , "\n" ) _QOua.content = _PHFa local _ax6d = _zf8B(_PHFa, "\n" ) for _Ci9U, _jS5E in pairs(_ax6d) do if string.len(_jS5E) > 0x2 then _jS5E = string.gsub(_jS5E, "\t" , "|" ) local _b3zE = _zf8B(_jS5E, "|" ) if #_b3zE > 0x1 then _QOua.data[_b3zE[0x1]] = {} _QOua.data[_b3zE[0x1]].text = _b3zE[0x2] or "" if string.len(_b3zE[0x2]) > 0x1 then local _iz9K = _zf8B(_b3zE[0x2], "," ) if #_iz9K > 0x0 then for _P1q3, _bNyD in pairs(_iz9K) do if string.len(_bNyD) > 0x2 then local _9z5s = _zf8B(_bNyD, "-" ) if #_9z5s > 0x1 then _QOua.data[_b3zE[0x1]][_9z5s[0x1 ]] = _9z5s[0x2] end end end end end end end end end, ReadAllAsync = function(_Wijr, _bUZ7, _ksqA) _Wijr:Clear() local _lKuX = _bUZ7 TheSim:QueryServer(_lKuX, function(_oZ2q, _I5vj, _gdbY) if _I5vj and string.len(_oZ2q) > 0x1 then _Wijr:Parse(_oZ2q) end if _ksqA then _ksqA(_Wijr, _I5vj) end end, "GET" ) end, Clear = function(_UGUU) _UGUU.content = "" _UGUU.data = {} end, } end _UNcG.GTData = _jhev local _XNR3 = function() return {path = "mod_config_data/" , name = "dyc" , SetName = function(_TiDx, _KbAw) _TiDx.name = _KbAw end, SetString = function(_L0RA, _tKoj, _HPT1) TheSim:SetPersistentString(_L0RA.path.._L0RA.name.."_".._tKoj, _HPT1, ENCODE_SAVES, function(_Wak8, _SanN) end) end, GetString = function(_HGNI, _2Beg, _wEPH) TheSim:GetPersistentString(_HGNI.path.._HGNI.name.."_".._2Beg, function(_E9Hq, _vKFj) if _wEPH then _wEPH(_E9Hq and _vKFj) end end) end, EraseString = function(_sLmi, _40gS) TheSim:ErasePersistentString(_sLmi.path.._sLmi.name.."_".._40gS, function(_7EOK) end) end, } end _UNcG.LocalData = _XNR3 return _UNcG 