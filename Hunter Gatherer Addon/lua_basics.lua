-- lua_basics.lua 

--[[Lokalna funkcija koja isprinta "naslov sekcije tj. funkcije
koju ucim. Komentari ako su u vise redova se pisu s ovim dvjema
uglatim zagradama na pocetku i na kraju, bez razmaka od crtica]]
--[[Print navodnici i unutarnji string navodnici mogu biti isti,
za razliku od Pythona koji zahtjeva naizmjenicne ' i " ili escape
char]]

local function section(title)
    print("\n=== " .. title .." ===")
end

--[[VELIKA RAZLIKA U ODNOSU NA PYTHON - samo nil i false su zapravo
false. 0 i "" (prazan string) su TRUE!!]]

section("1. Bool istinitost")

for _,v in ipairs({0, "", "text"}) do
    print(string.format("%-8s is %s", string.format("%q", tostring(v)), v and "TRUE" or "FALSE"))
end


section("2. Tablice: jedina struktura podataka")

-- Polja su tablice s indeksima od 1 do n (Indeksiranje od 1!!!)
-- Duljina polja s #!!!
-- Print polja/tablice mora ići s concat (ako ide samo print table(herbs))
--[[NPR ovo: print("after insert:", table(herbs)) -- ne radi, vraća grešku attempt to call a table value (global 'table')]]
local herbs = {"Peacebloom", "Silverleaf", "Earthroot"}
print("first: ", herbs[1], "| length #herbs:", #herbs)
table.insert(herbs, "Mageroyal")
--print("after insert:", table(herbs))
print("after insert:", table.concat(herbs, ", "))