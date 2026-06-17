local m1 = peripheral.wrap("create:mechanical_crafter_0")
local m2 = peripheral.wrap("create:mechanical_crafter_1")
local m3 = peripheral.wrap("create:mechanical_crafter_2")
local m4 = peripheral.wrap("create:mechanical_crafter_3")
local m5 = peripheral.wrap("create:mechanical_crafter_4")
local m6 = peripheral.wrap("create:mechanical_crafter_5")
local m7 = peripheral.wrap("create:mechanical_crafter_6")
local m8 = peripheral.wrap("create:mechanical_crafter_7")
local m9 = peripheral.wrap("create:mechanical_crafter_8")
local m10 = peripheral.wrap("create:mechanical_crafter_9")
local m11 = peripheral.wrap("create:mechanical_crafter_10")
local m12 = peripheral.wrap("create:mechanical_crafter_11")
local m13 = peripheral.wrap("create:mechanical_crafter_12")
local m14 = peripheral.wrap("create:mechanical_crafter_13")
local m15 = peripheral.wrap("create:mechanical_crafter_14")
local m16 = peripheral.wrap("create:mechanical_crafter_15")
local m17 = peripheral.wrap("create:mechanical_crafter_16")
local m18 = peripheral.wrap("create:mechanical_crafter_17")
local m19 = peripheral.wrap("create:mechanical_crafter_18")
local m20 = peripheral.wrap("create:mechanical_crafter_19")
local m21 = peripheral.wrap("create:mechanical_crafter_20")
local m22 = peripheral.wrap("create:mechanical_crafter_21")
local m23 = peripheral.wrap("create:mechanical_crafter_22")
local m24 = peripheral.wrap("create:mechanical_crafter_23")
local m25 = peripheral.wrap("create:mechanical_crafter_24")

local barrel = peripheral.wrap("minecraft:barrel_0")

local rr = peripheral.wrap("redstone_relay_1")

local iv = peripheral.wrap("create_connected:item_silo_0")

local minecraft_oak_planks = {"minecraft:oak_log"}
local minecraft_bucket = {"minecraft:iron_ingot",nil,"minecraft:iron_ingot",nil,nil,nil,"minecraft:iron_ingot"}  


function saySlot (item)
    for slot = 1,60,1 do
        if iv.getItemDetail(slot) ~= nil then
            name = iv.getItemDetail(slot).name
        else
            break
        end
        
        if name == item then
            return slot
        end
    end
end

function suckBarrel (stuff)
    for slot = 1,25,1 do
        if stuff[slot] == nil then
        
        elseif saySlot(stuff[slot]) ~= nil then
            iv.pushItems(peripheral.getName(barrel), saySlot(stuff[slot]), 1, slot)
        end
    end
end

function craft ()
    barrel.pushItems(peripheral.getName(m1),1)
    barrel.pushItems(peripheral.getName(m2),2)
    barrel.pushItems(peripheral.getName(m3),3)
    barrel.pushItems(peripheral.getName(m4),4)
    barrel.pushItems(peripheral.getName(m5),5)
    barrel.pushItems(peripheral.getName(m6),6)
    barrel.pushItems(peripheral.getName(m7),7)
    barrel.pushItems(peripheral.getName(m8),8)
    barrel.pushItems(peripheral.getName(m9),9)
    barrel.pushItems(peripheral.getName(m10),10)
    barrel.pushItems(peripheral.getName(m11),11)
    barrel.pushItems(peripheral.getName(m12),12)
    barrel.pushItems(peripheral.getName(m13),13)
    barrel.pushItems(peripheral.getName(m14),14)
    barrel.pushItems(peripheral.getName(m15),15)
    barrel.pushItems(peripheral.getName(m16),16)
    barrel.pushItems(peripheral.getName(m17),17)
    barrel.pushItems(peripheral.getName(m18),18)
    barrel.pushItems(peripheral.getName(m19),19)
    barrel.pushItems(peripheral.getName(m20),20)
    barrel.pushItems(peripheral.getName(m21),21)
    barrel.pushItems(peripheral.getName(m22),22)
    barrel.pushItems(peripheral.getName(m23),23)
    barrel.pushItems(peripheral.getName(m24),24)
    barrel.pushItems(peripheral.getName(m25),25)
        
    rr.setOutput("front",true)
    sleep(0.1)
    rr.setOutput("front",false)        
end

suckBarrel(minecraft_oak_planks)
craft()