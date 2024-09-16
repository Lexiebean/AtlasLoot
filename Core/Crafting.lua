local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";
local WHITE = "|cffFFFFFF";

function AtlasLoot_CraftingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	AtlasLootCharDB.LastBoss = "CRAFTINGMENU"
	AtlasLootCharDB.LastBossText = "Crafting"
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Alchemy
	AtlasLootMenuItem_2_Name:SetText(AL["Alchemy"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_2.lootpage="ALCHEMYMENU";
	AtlasLootMenuItem_2:Show();
	--Enchanting
	AtlasLootMenuItem_3_Name:SetText(AL["Enchanting"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_3.lootpage="ENCHANTINGMENU";
	AtlasLootMenuItem_3:Show();
	--Engineering
	AtlasLootMenuItem_4_Name:SetText(AL["Engineering"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_4.lootpage="ENGINEERINGMENU";
	AtlasLootMenuItem_4:Show();
	--Leatherworking
	AtlasLootMenuItem_5_Name:SetText(AL["Leatherworking"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_5.lootpage="LEATHERWORKINGMENU";
	AtlasLootMenuItem_5:Show();
	--Blacksmithing
	AtlasLootMenuItem_6_Name:SetText(AL["Blacksmithing"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_6.lootpage="SMITHINGMENU";
	AtlasLootMenuItem_6:Show();
	--Tailoring
	AtlasLootMenuItem_7_Name:SetText(AL["Tailoring"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_7.lootpage="TAILORINGMENU";
	AtlasLootMenuItem_7:Show();
	--Herbalism
	AtlasLootMenuItem_8_Name:SetText(AL["Herbalism"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Herbalism");
	AtlasLootMenuItem_8.lootpage="Herbalism1";
	AtlasLootMenuItem_8:Show();
	--Mining
	AtlasLootMenuItem_9_Name:SetText(AL["Mining"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Mining");
	AtlasLootMenuItem_9.lootpage="MININGMENU";
	AtlasLootMenuItem_9:Show();
	--Cooking
	AtlasLootMenuItem_11_Name:SetText(AL["Cooking"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_11.lootpage="COOKINGMENU";
	AtlasLootMenuItem_11:Show();
	--First Aid
	AtlasLootMenuItem_12_Name:SetText(AL["First Aid"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfSacrifice");
	AtlasLootMenuItem_12.lootpage="FirstAid1";
	AtlasLootMenuItem_12:Show();
	--Survival
	AtlasLootMenuItem_13_Name:SetText(AL["Survival"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_Survival");
	AtlasLootMenuItem_13.lootpage="Survival1";
	AtlasLootMenuItem_13:Show();
	--Gardening
	AtlasLootMenuItem_14_Name:SetText(AL["Gardening"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\Trade_Herbalism");
	AtlasLootMenuItem_14.lootpage="Survival2";
	AtlasLootMenuItem_14:Show();
	--Poisons
	AtlasLootMenuItem_15_Name:SetText(AL["Poisons"]);
	AtlasLootMenuItem_15_Extra:SetText("|cfffff468"..AL["Rogue"]);
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\Trade_BrewPoison");
	AtlasLootMenuItem_15.lootpage="Poisons1";
	AtlasLootMenuItem_15:Show();
	--Crafted Armor Sets
	AtlasLootMenuItem_17_Name:SetText(AL["Crafted Sets"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Pants_Wolf");
	AtlasLootMenuItem_17.lootpage="CRAFTSET";
	AtlasLootMenuItem_17:Show();
	--Crafted Epic Weapons
	AtlasLootMenuItem_19_Name:SetText(AL["Crafted Epic Weapons"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Hammer_Unique_Sulfuras");
	AtlasLootMenuItem_19.lootpage="CraftedWeapons1";
	AtlasLootMenuItem_19:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Crafting"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootCraftedSetMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Tailoring Header
	AtlasLootMenuItem_1_Name:SetText(RED..AL["Tailoring"]);
	AtlasLootMenuItem_1_Extra:SetText("");
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_1.isheader = true;
	AtlasLootMenuItem_1:Show();
	--Augerer's Attire
	AtlasLootMenuItem_2_Name:SetText(AL["Augerer's Attire"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Helmet_11");
	AtlasLootMenuItem_2.lootpage="AugerersAttire";
	AtlasLootMenuItem_2:Show();
	--Shadoweave
	AtlasLootMenuItem_3_Name:SetText(AL["Shadoweave"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Helmet_27");
	AtlasLootMenuItem_3.lootpage="ShadoweaveSet";
	AtlasLootMenuItem_3:Show();
	--Diviner's Garments
	AtlasLootMenuItem_4_Name:SetText(AL["Diviner's Garments"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Helmet_33");
	AtlasLootMenuItem_4.lootpage="DivinersGarments";
	AtlasLootMenuItem_4:Show();
	--Pillager's Garb
	AtlasLootMenuItem_5_Name:SetText(AL["Pillager's Garb"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Helmet_28");
	AtlasLootMenuItem_5.lootpage="PillagersGarb";
	AtlasLootMenuItem_5:Show();
	--Bloodvine Garb
	AtlasLootMenuItem_6_Name:SetText(AL["Bloodvine Garb"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_14");
	AtlasLootMenuItem_6.lootpage="BloodvineG";
	AtlasLootMenuItem_6:Show();
	--Mooncloth Regalia
	AtlasLootMenuItem_7_Name:SetText(AL["Mooncloth Regalia"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\inv_chest_cloth_08");
	AtlasLootMenuItem_7.lootpage="MoonclothSet";
	AtlasLootMenuItem_7:Show();
	--Mail Blacksmithing Header
	AtlasLootMenuItem_9_Name:SetText(RED..AL["Blacksmithing"]);
	AtlasLootMenuItem_9_Extra:SetText(WHITE..AL["Mail"]);
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_9.isheader = true;
	AtlasLootMenuItem_9:Show();
	--Bloodsoul Embrace
	AtlasLootMenuItem_10_Name:SetText(AL["Bloodsoul Embrace"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_15");
	AtlasLootMenuItem_10.lootpage="BloodsoulEmbrace";
	AtlasLootMenuItem_10:Show();
	--Plate Blacksmithing header
	AtlasLootMenuItem_12_Name:SetText(RED..AL["Blacksmithing"]);
	AtlasLootMenuItem_12_Extra:SetText(WHITE..AL["Plate"]);
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_12.isheader = true;
	AtlasLootMenuItem_12:Show();
	--Steel Plate
	AtlasLootMenuItem_13_Name:SetText(AL["Steel Plate"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\INV_Helmet_25");
	AtlasLootMenuItem_13.lootpage="SteelPlate";
	AtlasLootMenuItem_13:Show();
	--Imperial Plate
	AtlasLootMenuItem_14_Name:SetText(AL["Imperial Plate"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\INV_Belt_01");
	AtlasLootMenuItem_14.lootpage="ImperialPlate";
	AtlasLootMenuItem_14:Show();
	--The Darksoul
	AtlasLootMenuItem_15_Name:SetText(AL["The Darksoul"]);
	AtlasLootMenuItem_15_Extra:SetText("");
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_01");
	AtlasLootMenuItem_15.lootpage="TheDarksoul";
	AtlasLootMenuItem_15:Show();
	AtlasLootMenuItem_15:Show();
	--Leatherworking Leather Header
	AtlasLootMenuItem_16_Name:SetText(RED..AL["Leatherworking"]);
	AtlasLootMenuItem_16_Extra:SetText(WHITE..AL["Leather"]);
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\inv_misc_armorkit_17");
	AtlasLootMenuItem_16.isheader = true;
	AtlasLootMenuItem_16:Show();
	--Grifter's Armor
	AtlasLootMenuItem_17_Name:SetText(AL["Grifter's Armor"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Helmet_33");
	AtlasLootMenuItem_17.lootpage="GriftersArmor";
	AtlasLootMenuItem_17:Show();
	--Primalist's Trappings
	AtlasLootMenuItem_18_Name:SetText(AL["Primalist's Trappings"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Helmet_04");
	AtlasLootMenuItem_18.lootpage="PrimalistsTrappings";
	AtlasLootMenuItem_18:Show();
	--Volcanic Armor
	AtlasLootMenuItem_19_Name:SetText(AL["Volcanic Armor"]);
	AtlasLootMenuItem_19_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Pants_06");
	AtlasLootMenuItem_19.lootpage="VolcanicArmor";
	AtlasLootMenuItem_19:Show();
	--Ironfeather Armor
	AtlasLootMenuItem_20_Name:SetText(AL["Ironfeather Armor"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_06");
	AtlasLootMenuItem_20.lootpage="IronfeatherArmor";
	AtlasLootMenuItem_20:Show();
	--Stormshroud Armor
	AtlasLootMenuItem_21_Name:SetText(AL["Stormshroud Armor"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_08");
	AtlasLootMenuItem_21.lootpage="StormshroudArmor";
	AtlasLootMenuItem_21:Show();
	--Devilsaur Armor
	AtlasLootMenuItem_22_Name:SetText(AL["Devilsaur Armor"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Pants_Wolf");
	AtlasLootMenuItem_22.lootpage="DevilsaurArmor";
	AtlasLootMenuItem_22:Show();
	--Blood Tiger Harness
	AtlasLootMenuItem_23_Name:SetText(AL["Blood Tiger Harness"]);
	AtlasLootMenuItem_23_Extra:SetText("");
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_23");
	AtlasLootMenuItem_23.lootpage="BloodTigerH";
	AtlasLootMenuItem_23:Show();
	--Primal Batskin
	AtlasLootMenuItem_24_Name:SetText(AL["Primal Batskin"]);
	AtlasLootMenuItem_24_Extra:SetText("");
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_03");
	AtlasLootMenuItem_24.lootpage="PrimalBatskin";
	AtlasLootMenuItem_24:Show();
	--Leatherworking Mail Header
	AtlasLootMenuItem_26_Name:SetText(RED..AL["Leatherworking"]);
	AtlasLootMenuItem_26_Extra:SetText(WHITE..AL["Mail"]);
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\inv_misc_armorkit_17");
	AtlasLootMenuItem_26.isheader = true;
	AtlasLootMenuItem_26:Show();
	--Red Dragon Mail
	AtlasLootMenuItem_30_Name:SetText(AL["Red Dragon Mail"]);
	AtlasLootMenuItem_30_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_30_Icon:SetTexture("Interface\\Icons\\inv_chest_chain_06");
	AtlasLootMenuItem_30.lootpage="RedDragonM";
	AtlasLootMenuItem_30:Show();
	--Green Dragon Mail
	AtlasLootMenuItem_27_Name:SetText(AL["Green Dragon Mail"]);
	AtlasLootMenuItem_27_Extra:SetText(ORANGE..AL["Nature Resistance Gear"]);
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Pants_05");
	AtlasLootMenuItem_27.lootpage="GreenDragonM";
	AtlasLootMenuItem_27:Show();
	--Blue Dragon Mail
	AtlasLootMenuItem_28_Name:SetText(AL["Blue Dragon Mail"]);
	AtlasLootMenuItem_28_Extra:SetText(ORANGE..AL["Arcane Resistance Gear"]);
	AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\INV_Chest_Chain_04");
	AtlasLootMenuItem_28.lootpage="BlueDragonM";
	AtlasLootMenuItem_28:Show();
	--Black Dragon Mail
	AtlasLootMenuItem_29_Name:SetText(AL["Black Dragon Mail"]);
	AtlasLootMenuItem_29_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_Pants_03");
	AtlasLootMenuItem_29.lootpage="BlackDragonM";
	AtlasLootMenuItem_29:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Crafted Sets"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_AlchemyMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Alchemy"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_2.lootpage = "AlchemyApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Alchemy"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_3.lootpage = "AlchemyJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Alchemy"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_4.lootpage="AlchemyExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Alchemy"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_5.lootpage="AlchemyArtisan1";
	AtlasLootMenuItem_5:Show();
	--Flasks
	AtlasLootMenuItem_7_Name:SetText(AL["Flasks"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_7.lootpage="AlchemyFlasks1";
	AtlasLootMenuItem_7:Show();
	--Protection Pots
	AtlasLootMenuItem_8_Name:SetText(AL["Protection Potions"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_8.lootpage="AlchemyProtectionPots1";
	AtlasLootMenuItem_8:Show();
	--Healing and Mana
	AtlasLootMenuItem_9_Name:SetText(AL["Healing and Mana Potions"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_9.lootpage="AlchemyHealingAndMana1";
	AtlasLootMenuItem_9:Show();
	--Transmutes
	AtlasLootMenuItem_10_Name:SetText(AL["Transmutes"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_10.lootpage="AlchemyTransmutes1";
	AtlasLootMenuItem_10:Show();
	--Defensive pots
	AtlasLootMenuItem_11_Name:SetText(AL["Defensive Potions and Elixirs"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_11.lootpage="AlchemyDefensive1";
	AtlasLootMenuItem_11:Show();
	--Offensive pots
	AtlasLootMenuItem_12_Name:SetText(AL["Offensive Potions and Elixirs"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_12.lootpage="AlchemyOffensive1";
	AtlasLootMenuItem_12:Show();
	--Other
	AtlasLootMenuItem_13_Name:SetText(AL["Other"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_13.lootpage="AlchemyOther1";
	AtlasLootMenuItem_13:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Alchemy"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_SmithingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Blacksmithing"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_2.lootpage = "SmithingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Blacksmithing"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_3.lootpage = "SmithingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Blacksmithing"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_4.lootpage="SmithingExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Blacksmithing"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_5.lootpage="SmithingArtisan1";
	AtlasLootMenuItem_5:Show();
	--BS Helm
	AtlasLootMenuItem_7_Name:SetText(AL["Blacksmithing"]..": "..AL["Helm"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_7.lootpage="SmithingHelm1";
	AtlasLootMenuItem_7:Show();
	--BS Shoulders
	AtlasLootMenuItem_8_Name:SetText(AL["Blacksmithing"]..": "..AL["Shoulders"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_8.lootpage="SmithingShoulders1";
	AtlasLootMenuItem_8:Show();
	--BS Chest
	AtlasLootMenuItem_9_Name:SetText(AL["Blacksmithing"]..": "..AL["Chest"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_9.lootpage="SmithingChest1";
	AtlasLootMenuItem_9:Show();
	--BS Bracers
	AtlasLootMenuItem_10_Name:SetText(AL["Blacksmithing"]..": "..AL["Bracers"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_10.lootpage="SmithingBracers1";
	AtlasLootMenuItem_10:Show();
	--BS Gloves
	AtlasLootMenuItem_11_Name:SetText(AL["Blacksmithing"]..": "..AL["Gloves"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_11.lootpage="SmithingGloves1";
	AtlasLootMenuItem_11:Show();
	--BS Belt
	AtlasLootMenuItem_12_Name:SetText(AL["Blacksmithing"]..": "..AL["Belt"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_12.lootpage="SmithingBelt1";
	AtlasLootMenuItem_12:Show();
	--BS Pants
	AtlasLootMenuItem_13_Name:SetText(AL["Blacksmithing"]..": "..AL["Pants"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_13.lootpage="SmithingPants1";
	AtlasLootMenuItem_13:Show();
	--BS Boots
	AtlasLootMenuItem_14_Name:SetText(AL["Blacksmithing"]..": "..AL["Boots"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_14.lootpage="SmithingBoots1";
	AtlasLootMenuItem_14:Show();
	--BS Belt Buckles
	AtlasLootMenuItem_15_Name:SetText(AL["Blacksmithing"]..": "..AL["Belt Buckles"]);
	AtlasLootMenuItem_15_Extra:SetText("");
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_15.lootpage="SmithingBuckles1";
	AtlasLootMenuItem_15:Show();
	--BS Axes
	AtlasLootMenuItem_17_Name:SetText(AL["Blacksmithing"]..": "..AL["Axes"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_17.lootpage="SmithingAxes1";
	AtlasLootMenuItem_17:Show();
	--BS Swords
	AtlasLootMenuItem_18_Name:SetText(AL["Blacksmithing"]..": "..AL["Swords"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_18.lootpage="SmithingSwords1";
	AtlasLootMenuItem_18:Show();
	--BS Maces
	AtlasLootMenuItem_19_Name:SetText(AL["Blacksmithing"]..": "..AL["Maces"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_19.lootpage="SmithingMaces1";
	AtlasLootMenuItem_19:Show();
	--BS Fist
	AtlasLootMenuItem_20_Name:SetText(AL["Blacksmithing"]..": "..AL["Fist"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_20.lootpage="SmithingFist1";
	AtlasLootMenuItem_20:Show();
	--BS Daggers
	AtlasLootMenuItem_21_Name:SetText(AL["Blacksmithing"]..": "..AL["Daggers"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_21.lootpage="SmithingDaggers1";
	AtlasLootMenuItem_21:Show();
	--BS Misc
	AtlasLootMenuItem_22_Name:SetText(AL["Blacksmithing"]..": "..AL["Misc"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_22.lootpage="SmithingMisc1";
	AtlasLootMenuItem_22:Show();
	--Armorsmith
	AtlasLootMenuItem_26_Name:SetText(AL["Blacksmithing"]..": "..AL["Armorsmith"]);
	AtlasLootMenuItem_26_Extra:SetText("");
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Chest_Plate04");
	AtlasLootMenuItem_26.lootpage="Armorsmith1";
	AtlasLootMenuItem_26:Show();
	--Weaponsmith
	AtlasLootMenuItem_27_Name:SetText(AL["Blacksmithing"]..": "..AL["Weaponsmith"]);
	AtlasLootMenuItem_27_Extra:SetText("");
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Sword_25");
	AtlasLootMenuItem_27.lootpage="Weaponsmith1";
	AtlasLootMenuItem_27:Show();
	--Master Axesmith
	AtlasLootMenuItem_28_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Axesmith"]);
	AtlasLootMenuItem_28_Extra:SetText("");
	AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\INV_Axe_05");
	AtlasLootMenuItem_28.lootpage="Axesmith1";
	AtlasLootMenuItem_28:Show();
	--Master Hammersmith
	AtlasLootMenuItem_29_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Hammersmith"]);
	AtlasLootMenuItem_29_Extra:SetText("");
	AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_Hammer_23");
	AtlasLootMenuItem_29.lootpage="Hammersmith1";
	AtlasLootMenuItem_29:Show();
	--Master Swordsmith
	AtlasLootMenuItem_30_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Swordsmith"]);
	AtlasLootMenuItem_30_Extra:SetText("");
	AtlasLootMenuItem_30_Icon:SetTexture("Interface\\Icons\\INV_Sword_41");
	AtlasLootMenuItem_30.lootpage="Swordsmith1";
	AtlasLootMenuItem_30:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Blacksmithing"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EnchantingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Enchanting"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_2.lootpage = "EnchantingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Enchanting"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_3.lootpage = "EnchantingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Enchanting"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_4.lootpage="EnchantingExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Enchanting"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_5.lootpage="EnchantingArtisan1";
	AtlasLootMenuItem_5:Show();
	--Enchanting Cloak
	AtlasLootMenuItem_7_Name:SetText(AL["Enchanting"]..": "..AL["Cloak"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_7.lootpage="EnchantingCloak1";
	AtlasLootMenuItem_7:Show();
	--Enchanting Chest
	AtlasLootMenuItem_8_Name:SetText(AL["Enchanting"]..": "..AL["Chest"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_8.lootpage="EnchantingChest1";
	AtlasLootMenuItem_8:Show();
	--Enchanting Bracer
	AtlasLootMenuItem_9_Name:SetText(AL["Enchanting"]..": "..AL["Bracer"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_9.lootpage="EnchantingBracer1";
	AtlasLootMenuItem_9:Show();
	--Enchanting Gloves
	AtlasLootMenuItem_10_Name:SetText(AL["Enchanting"]..": "..AL["Gloves"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_10.lootpage="EnchantingGlove1";
	AtlasLootMenuItem_10:Show();
	--Enchanting Boots
	AtlasLootMenuItem_11_Name:SetText(AL["Enchanting"]..": "..AL["Boots"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_11.lootpage="EnchantingBoots1";
	AtlasLootMenuItem_11:Show();
	--Enchanting 2H Weapon
	AtlasLootMenuItem_12_Name:SetText(AL["Enchanting"]..": "..AL["2H Weapon"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_12.lootpage="Enchanting2HWeapon1";
	AtlasLootMenuItem_12:Show();
	--Enchanting Weapon
	AtlasLootMenuItem_13_Name:SetText(AL["Enchanting"]..": "..AL["Weapon"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_13.lootpage="EnchantingWeapon1";
	AtlasLootMenuItem_13:Show();
	--Enchanting Shield
	AtlasLootMenuItem_14_Name:SetText(AL["Enchanting"]..": "..AL["Shield"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_14.lootpage="EnchantingShield1";
	AtlasLootMenuItem_14:Show();
	--Enchanting Misc
	AtlasLootMenuItem_14_Name:SetText(AL["Enchanting"]..": "..AL["Misc"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_14.lootpage="EnchantingMisc1";
	AtlasLootMenuItem_14:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Enchanting"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EngineeringMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Engineering"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_2.lootpage = "EngineeringApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Engineering"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_3.lootpage = "EngineeringJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Engineering"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_4.lootpage="EngineeringExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Engineering"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_5.lootpage="EngineeringArtisan1";
	AtlasLootMenuItem_5:Show();
	--Equipment
	AtlasLootMenuItem_7_Name:SetText(AL["Engineering"]..": "..AL["Equipment"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_7.lootpage="EngineeringEquipment1";
	AtlasLootMenuItem_7:Show();
	--Trinkets
	AtlasLootMenuItem_8_Name:SetText(AL["Engineering"]..": "..AL["Trinkets"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_8.lootpage="EngineeringTrinkets1";
	AtlasLootMenuItem_8:Show();
	--Explosives
	AtlasLootMenuItem_9_Name:SetText(AL["Engineering"]..": "..AL["Explosives"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_9.lootpage="EngineeringExplosives1";
	AtlasLootMenuItem_9:Show();
	-- Weapons
	AtlasLootMenuItem_10_Name:SetText(AL["Engineering"]..": "..AL["Weapons"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_10.lootpage="EngineeringWeapons1";
	AtlasLootMenuItem_10:Show();
	--Parts
	AtlasLootMenuItem_11_Name:SetText(AL["Engineering"]..": "..AL["Parts"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_11.lootpage="EngineeringParts1";
	AtlasLootMenuItem_11:Show();
	--Misc
	AtlasLootMenuItem_12_Name:SetText(AL["Engineering"]..": "..AL["Misc"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_12.lootpage="EngineeringMisc1";
	AtlasLootMenuItem_12:Show();
	--Gnomish Engineering
	AtlasLootMenuItem_17_Name:SetText(AL["Gnomish Engineering"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_17.lootpage="Gnomish1";
	AtlasLootMenuItem_17:Show();
	--Goblin Engineering
	AtlasLootMenuItem_18_Name:SetText(AL["Goblin Engineering"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_18.lootpage="Goblin1";
	AtlasLootMenuItem_18:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Engineering"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_LeatherworkingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Leatherworking"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_2.lootpage = "LeatherApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Leatherworking"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_3.lootpage = "LeatherJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Leatherworking"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_4.lootpage="LeatherExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Leatherworking"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_5.lootpage="LeatherArtisan1";
	AtlasLootMenuItem_5:Show();
	--Dragonscale Leatherworking
	AtlasLootMenuItem_20_Name:SetText(AL["Dragonscale Leatherworking"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Misc_MonsterScales_03");
	AtlasLootMenuItem_20.lootpage="Dragonscale1";
	AtlasLootMenuItem_20:Show();
	--Elemental Leatherworking
	AtlasLootMenuItem_21_Name:SetText(AL["Elemental Leatherworking"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Spell_Fire_Volcano");
	AtlasLootMenuItem_21.lootpage="Elemental1";
	AtlasLootMenuItem_21:Show();
	--Tribal Leatherworking
	AtlasLootMenuItem_22_Name:SetText(AL["Tribal Leatherworking"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Spell_Nature_NullWard");
	AtlasLootMenuItem_22.lootpage="Tribal1";
	AtlasLootMenuItem_22:Show();

	--Leatherworking Helm
	AtlasLootMenuItem_7_Name:SetText(AL["Leatherworking"]..": "..AL["Helm"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_7.lootpage="LeatherHelm1";
	AtlasLootMenuItem_7:Show();
	--Leatherworking Shoulders
	AtlasLootMenuItem_8_Name:SetText(AL["Leatherworking"]..": "..AL["Shoulders"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_8.lootpage="LeatherShoulders1";
	AtlasLootMenuItem_8:Show();	
	--Leatherworking Cape
	AtlasLootMenuItem_9_Name:SetText(AL["Leatherworking"]..": "..AL["Cloak"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_9.lootpage="LeatherCloak1";
	AtlasLootMenuItem_9:Show();	
	--Leatherworking Chest
	AtlasLootMenuItem_10_Name:SetText(AL["Leatherworking"]..": "..AL["Chest"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_10.lootpage="LeatherChest1";
	AtlasLootMenuItem_10:Show();
	--Leatherworking Bracers
	AtlasLootMenuItem_11_Name:SetText(AL["Leatherworking"]..": "..AL["Bracers"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_11.lootpage="LeatherBracers1";
	AtlasLootMenuItem_11:Show();	
	--Leatherworking Gloves
	AtlasLootMenuItem_12_Name:SetText(AL["Leatherworking"]..": "..AL["Gloves"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_12.lootpage="LeatherGloves1";
	AtlasLootMenuItem_12:Show();
	--Leatherworking Belt
	AtlasLootMenuItem_13_Name:SetText(AL["Leatherworking"]..": "..AL["Belt"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_13.lootpage="LeatherBelt1";
	AtlasLootMenuItem_13:Show();
	--Leatherworking Pants
	AtlasLootMenuItem_14_Name:SetText(AL["Leatherworking"]..": "..AL["Pants"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_14.lootpage="LeatherPants1";
	AtlasLootMenuItem_14:Show();	
	--Leatherworking Boots
	AtlasLootMenuItem_15_Name:SetText(AL["Leatherworking"]..": "..AL["Boots"]);
	AtlasLootMenuItem_15_Extra:SetText("");
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_15.lootpage="LeatherBoots1";
	AtlasLootMenuItem_15:Show();
	--Leatherworking Bags
	AtlasLootMenuItem_17_Name:SetText(AL["Leatherworking"]..": "..AL["Bags"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_17.lootpage="LeatherBags1";
	AtlasLootMenuItem_17:Show();
	--Leatherworking Misc
	AtlasLootMenuItem_18_Name:SetText(AL["Leatherworking"]..": "..AL["Misc"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_18.lootpage="LeatherMisc1";
	AtlasLootMenuItem_18:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Leatherworking"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_TailoringMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Tailoring"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_2.lootpage = "TailoringApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Tailoring"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_3.lootpage = "TailoringJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Tailoring"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_4.lootpage="TailoringExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Tailoring"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_5.lootpage="TailoringArtisan1";
	AtlasLootMenuItem_5:Show();

	--Tailoring Helm
	AtlasLootMenuItem_7_Name:SetText(AL["Tailoring"]..": "..AL["Helm"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_7.lootpage="TailoringHelm1";
	AtlasLootMenuItem_7:Show();
	--Tailoring Shoulders
	AtlasLootMenuItem_8_Name:SetText(AL["Tailoring"]..": "..AL["Shoulders"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_8.lootpage="TailoringShoulders1";
	AtlasLootMenuItem_8:Show();	
	--Tailoring Cape
	AtlasLootMenuItem_9_Name:SetText(AL["Tailoring"]..": "..AL["Cloak"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_9.lootpage="TailoringCloak1";
	AtlasLootMenuItem_9:Show();	
	--Tailoring Chest
	AtlasLootMenuItem_10_Name:SetText(AL["Tailoring"]..": "..AL["Chest"]);
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_10.lootpage="TailoringChest1";
	AtlasLootMenuItem_10:Show();
	--Tailoring Bracers
	AtlasLootMenuItem_11_Name:SetText(AL["Tailoring"]..": "..AL["Bracers"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_11.lootpage="TailoringBracers1";
	AtlasLootMenuItem_11:Show();	
	--Tailoring Gloves
	AtlasLootMenuItem_12_Name:SetText(AL["Tailoring"]..": "..AL["Gloves"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_12.lootpage="TailoringGloves1";
	AtlasLootMenuItem_12:Show();
	--Tailoring Belt
	AtlasLootMenuItem_13_Name:SetText(AL["Tailoring"]..": "..AL["Belt"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_13.lootpage="TailoringBelt1";
	AtlasLootMenuItem_13:Show();
	--Tailoring Pants
	AtlasLootMenuItem_14_Name:SetText(AL["Tailoring"]..": "..AL["Pants"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_14.lootpage="TailoringPants1";
	AtlasLootMenuItem_14:Show();	
	--Tailoring Boots
	AtlasLootMenuItem_15_Name:SetText(AL["Tailoring"]..": "..AL["Boots"]);
	AtlasLootMenuItem_15_Extra:SetText("");
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_15.lootpage="TailoringBoots1";
	AtlasLootMenuItem_15:Show();
	--Tailoring Shirt
	AtlasLootMenuItem_17_Name:SetText(AL["Tailoring"]..": "..AL["Shirt"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_17.lootpage="TailoringShirt1";
	AtlasLootMenuItem_17:Show();
	--Tailoring Bags
	AtlasLootMenuItem_18_Name:SetText(AL["Tailoring"]..": "..AL["Bags"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_18.lootpage="TailoringBags1";
	AtlasLootMenuItem_18:Show();
	--Tailoring Misc
	AtlasLootMenuItem_19_Name:SetText(AL["Tailoring"]..": "..AL["Misc"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_19.lootpage="TailoringMisc1";
	AtlasLootMenuItem_19:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Tailoring"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_CookingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Cooking"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_2.lootpage = "CookingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Cooking"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_3.lootpage = "CookingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Cooking"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_4.lootpage="CookingExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Cooking"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_5.lootpage="CookingArtisan1";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Cooking"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_MiningMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Mining
	AtlasLootMenuItem_2_Name:SetText(AL["Mining"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Mining");
	AtlasLootMenuItem_2.lootpage = "Mining1";
	AtlasLootMenuItem_2:Show();
	--Smelting
	AtlasLootMenuItem_3_Name:SetText(AL["Smelting"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Fire_FlameBlades");
	AtlasLootMenuItem_3.lootpage = "Smelting1";
	AtlasLootMenuItem_3:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Mining"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end
