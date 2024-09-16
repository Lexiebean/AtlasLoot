local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";

function AtlasLootPvPMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	AtlasLootCharDB.LastBoss = "PVPMENU"
	AtlasLootCharDB.LastBossText = "PvP Rewards"
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	-- Alterac Valley Rewards
	AtlasLootMenuItem_2_Name:SetText(AL["Alterac Valley"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_2.lootpage="AVRepMenu";
	AtlasLootMenuItem_2:Show();
	-- Arathi Basin Rewards
	AtlasLootMenuItem_3_Name:SetText(AL["Arathi Basin"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_3.lootpage="ABRepMenu";
	AtlasLootMenuItem_3:Show();
	--PvP Mounts
	AtlasLootMenuItem_21_Name:SetText(AL["PvP Mounts"]);
	AtlasLootMenuItem_21_Extra:SetText(ORANGE..AL["Rank 11"]);
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\Ability_Mount_RidingHorse");
	AtlasLootMenuItem_21.lootpage="PvPMountsPvP";
	AtlasLootMenuItem_21:Show();
	--PvP Armor Sets
	AtlasLootMenuItem_6_Name:SetText(AL["PvP Armor Sets"]);
	AtlasLootMenuItem_6_Extra:SetText(ORANGE..AL["Rank 7-13"]);
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Helmet_05");
	AtlasLootMenuItem_6.lootpage="PVPSET";
	AtlasLootMenuItem_6:Show();
	--PvP Accessories
	AtlasLootMenuItem_7_Name:SetText(AL["PvP Accessories"]);
	AtlasLootMenuItem_7_Extra:SetText(ORANGE..AL["Rank 2-9"]);
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_09");
	AtlasLootMenuItem_7.lootpage="PvP60Accessories1";
	AtlasLootMenuItem_7:Show();
	-- Warsong Gulch Rewards
	AtlasLootMenuItem_17_Name:SetText(AL["Warsong Gulch"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_17.lootpage="WSGRepMenu";
	AtlasLootMenuItem_17:Show();
	-- Blood Ring Rewards
	AtlasLootMenuItem_18_Name:SetText(AL["Blood Ring"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_18.lootpage="BRRepMenu";
	AtlasLootMenuItem_18:Show();
	--Weapons
	AtlasLootMenuItem_22_Name:SetText(AL["PvP Weapons"]);
	AtlasLootMenuItem_22_Extra:SetText(ORANGE..AL["Rank 14"]);
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Sword_11");
	AtlasLootMenuItem_22.lootpage="PVPWeapons1";
	AtlasLootMenuItem_22:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Rewards"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootBRRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly
	AtlasLootMenuItem_2_Name:SetText("Friendly Reputation Rewards");
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_2.lootpage="BRRepFriendly";
	AtlasLootMenuItem_2:Show();
	--Honored
	AtlasLootMenuItem_3_Name:SetText("Honored Reputation Rewards");
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_3.lootpage="BRRepHonored";
	AtlasLootMenuItem_3:Show();
	--Revered
	AtlasLootMenuItem_4_Name:SetText("Revered Reputation Rewards");
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_4.lootpage="BRRepRevered";
	AtlasLootMenuItem_4:Show();
	--Exalted
	AtlasLootMenuItem_5_Name:SetText("Exalted Reputation Rewards");
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_5.lootpage="BRRepExalted";
	AtlasLootMenuItem_5:Show();
	--Token of Blood
	AtlasLootMenuItem_6_Name:SetText("Token of Blood Rewards");
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\inv_jewelry_talisman_04");
	AtlasLootMenuItem_6.lootpage="BRRepTokens";
	AtlasLootMenuItem_6:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Blood Ring"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootWSGRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	
	--Friendly Header
	AtlasLootMenuItem_2_Name:SetText(RED..AL["Friendly"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_2.isheader = true;
	AtlasLootMenuItem_2:Show();
	--Friendly
	AtlasLootMenuItem_3_Name:SetText("10-60");
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_3.lootpage="WSGRepFriendly";
	AtlasLootMenuItem_3:Show();
	--Honored Header
	AtlasLootMenuItem_7_Name:SetText(RED..AL["Honored"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_7.isheader = true;
	AtlasLootMenuItem_7:Show();
	--Honored 10-19
	AtlasLootMenuItem_8_Name:SetText("10-19");
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_8.lootpage="WSGRepHonored1019";
	AtlasLootMenuItem_8:Show();
	--Honored 20-29
	AtlasLootMenuItem_9_Name:SetText("20-29");
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_9.lootpage="WSGRepHonored2029";
	AtlasLootMenuItem_9:Show();
	--Honored 30-39
	AtlasLootMenuItem_10_Name:SetText("30-39");
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_10.lootpage="WSGRepHonored3039";
	AtlasLootMenuItem_10:Show();
	--Honored 40-49
	AtlasLootMenuItem_11_Name:SetText("40-49");
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_11.lootpage="WSGRepHonored4049";
	AtlasLootMenuItem_11:Show();
	--Honored 50-59
	AtlasLootMenuItem_12_Name:SetText("50-59");
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_12.lootpage="WSGRepHonored5059";
	AtlasLootMenuItem_12:Show();
	--Exalted Header
	AtlasLootMenuItem_24_Name:SetText(RED..AL["Exalted"]);
	AtlasLootMenuItem_24_Extra:SetText("");
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_24.isheader = true;
	AtlasLootMenuItem_24:Show();
	--Exalted 40-49
	AtlasLootMenuItem_25_Name:SetText("40-49");
	AtlasLootMenuItem_25_Extra:SetText("");
	AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_25.lootpage="WSGRepExalted4049";
	AtlasLootMenuItem_25:Show();
	--Exalted 50-59
	AtlasLootMenuItem_26_Name:SetText("50-59");
	AtlasLootMenuItem_26_Extra:SetText("");
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_26.lootpage="WSGRepExalted5059";
	AtlasLootMenuItem_26:Show();
	--Exalted 60-60
	AtlasLootMenuItem_27_Name:SetText("60");
	AtlasLootMenuItem_27_Extra:SetText("");
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_27.lootpage="WSGRepExalted60";
	AtlasLootMenuItem_27:Show();
	--Revered Header
	AtlasLootMenuItem_17_Name:SetText(RED..AL["Revered"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_17.isheader = true;
	AtlasLootMenuItem_17:Show();
	--Revered 10-19
	AtlasLootMenuItem_18_Name:SetText("10-19");
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_18.lootpage="WSGRepRevered1019";
	AtlasLootMenuItem_18:Show();
	--Revered 20-29
	AtlasLootMenuItem_19_Name:SetText("20-29");
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_19.lootpage="WSGRepRevered2029";
	AtlasLootMenuItem_19:Show();
	--Revered 30-39
	AtlasLootMenuItem_20_Name:SetText("30-39");
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_20.lootpage="WSGRepRevered3039";
	AtlasLootMenuItem_20:Show();
	--Revered 40-49
	AtlasLootMenuItem_21_Name:SetText("40-49");
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_21.lootpage="WSGRepRevered4049";
	AtlasLootMenuItem_21:Show();
	--Revered 50-59
	AtlasLootMenuItem_22_Name:SetText("50-59");
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_22.lootpage="WSGRepRevered5059";
	AtlasLootMenuItem_22:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Warsong Gulch"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootABRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly Header
	AtlasLootMenuItem_2_Name:SetText(RED..AL["Friendly"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_2.isheader = true;
	AtlasLootMenuItem_2:Show();
	--Friendly
	AtlasLootMenuItem_3_Name:SetText("10-60");
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_3.lootpage="ABRepFriendly";
	AtlasLootMenuItem_3:Show();
	--Honored Header
	AtlasLootMenuItem_5_Name:SetText(RED..AL["Honored"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_5.isheader = true;
	AtlasLootMenuItem_5:Show();
	--Honored 20-29
	AtlasLootMenuItem_6_Name:SetText("20-29");
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_6.lootpage="ABRepHonored2029";
	AtlasLootMenuItem_6:Show();
	--Honored 30-39
	AtlasLootMenuItem_7_Name:SetText("30-39");
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_7.lootpage="ABRepHonored3039";
	AtlasLootMenuItem_7:Show();
	--Honored 40-49
	AtlasLootMenuItem_8_Name:SetText("40-49");
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_8.lootpage="ABRepHonored4049";
	AtlasLootMenuItem_8:Show();
	--Honored 50-59
	AtlasLootMenuItem_9_Name:SetText("50-59");
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_9.lootpage="ABRepHonored5059";
	AtlasLootMenuItem_9:Show();
	--Exalted Header
	AtlasLootMenuItem_23_Name:SetText(RED..AL["Exalted"]);
	AtlasLootMenuItem_23_Extra:SetText("");
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_23.isheader = true;
	AtlasLootMenuItem_23:Show();
	--Exalted
	AtlasLootMenuItem_24_Name:SetText("60");
	AtlasLootMenuItem_24_Extra:SetText("");
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_24.lootpage="ABRepExalted";
	AtlasLootMenuItem_24:Show();
	--Revered Header
	AtlasLootMenuItem_17_Name:SetText(RED..AL["Revered"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_17.isheader = true;
	AtlasLootMenuItem_17:Show();
	--Revered 20-29
	AtlasLootMenuItem_18_Name:SetText("20-29");
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_18.lootpage="ABRepRevered2029";
	AtlasLootMenuItem_18:Show();
	--Revered 30-39
	AtlasLootMenuItem_19_Name:SetText("30-39");
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_19.lootpage="ABRepRevered3039";
	AtlasLootMenuItem_19:Show();
	--Revered 40-49
	AtlasLootMenuItem_20_Name:SetText("40-49");
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_20.lootpage="ABRepRevered4049";
	AtlasLootMenuItem_20:Show();
	--Revered 50-59
	AtlasLootMenuItem_21_Name:SetText("50-59");
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_21.lootpage="ABRepRevered5059";
	AtlasLootMenuItem_21:Show();							 
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Arathi Basin"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootAVRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly
	AtlasLootMenuItem_2_Name:SetText(AL["Friendly Reputation Rewards"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_2.lootpage="AVRepFriendly";
	AtlasLootMenuItem_2:Show();
	--Honored
	AtlasLootMenuItem_3_Name:SetText(AL["Honored Reputation Rewards"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_3.lootpage="AVRepHonored";
	AtlasLootMenuItem_3:Show();
	--Revered
	AtlasLootMenuItem_4_Name:SetText(AL["Revered Reputation Rewards"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_4.lootpage="AVRepRevered";
	AtlasLootMenuItem_4:Show();
	--Exalted
	AtlasLootMenuItem_5_Name:SetText(AL["Exalted Reputation Rewards"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_5.lootpage="AVRepExalted";
	AtlasLootMenuItem_5:Show();
	--Korrak
	AtlasLootMenuItem_6_Name:SetText(AL["Korrak the Bloodrager"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_6.lootpage="AVKorrak";
	AtlasLootMenuItem_6:Show();
	--LokholarIvus
	AtlasLootMenuItem_7_Name:SetText(AL["Ivus & Lokholar"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_7.lootpage="AVLokholarIvus";
	AtlasLootMenuItem_7:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Alterac Valley"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootPVPSetMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Priest
	AtlasLootMenuItem_3_Name:SetText("|cffffffff"..AL["Priest"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
	AtlasLootMenuItem_3.lootpage="PVPPriest";
	AtlasLootMenuItem_3:Show();
	--Mage
	AtlasLootMenuItem_4_Name:SetText("|cff68ccef"..AL["Mage"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
	AtlasLootMenuItem_4.lootpage="PVPMage";
	AtlasLootMenuItem_4:Show();
	--Warlock
	AtlasLootMenuItem_5_Name:SetText("|cff9382c9"..AL["Warlock"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
	AtlasLootMenuItem_5.lootpage="PVPWarlock";
	AtlasLootMenuItem_5:Show();
	--Rogue
	AtlasLootMenuItem_6_Name:SetText("|cfffff468"..AL["Rogue"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
	AtlasLootMenuItem_6.lootpage="PVPRogue";
	AtlasLootMenuItem_6:Show();
	--Druid
	AtlasLootMenuItem_7_Name:SetText("|cffff7c0a"..AL["Druid"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
	AtlasLootMenuItem_7.lootpage="PVPDruid";
	AtlasLootMenuItem_7:Show();
	--Hunter
	AtlasLootMenuItem_18_Name:SetText("|cffaad372"..AL["Hunter"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
	AtlasLootMenuItem_18.lootpage="PVPHunter";
	AtlasLootMenuItem_18:Show();
	--Shaman
	AtlasLootMenuItem_19_Name:SetText("|cff2773ff"..AL["Shaman"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
	AtlasLootMenuItem_19.lootpage="PVPShaman";
	AtlasLootMenuItem_19:Show();
	--Paladin
	AtlasLootMenuItem_20_Name:SetText("|cfff48cba"..AL["Paladin"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
	AtlasLootMenuItem_20.lootpage="PVPPaladin";
	AtlasLootMenuItem_20:Show();
	--Warrior
	AtlasLootMenuItem_21_Name:SetText("|cffc69b6d"..AL["Warrior"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
	AtlasLootMenuItem_21.lootpage="PVPWarrior";
	AtlasLootMenuItem_21:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Armor Sets"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end
