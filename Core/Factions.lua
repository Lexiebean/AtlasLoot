local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local ORANGE = "|cffFF8400";

function AtlasLootRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	AtlasLootCharDB.LastBoss = "REPMENU"
	AtlasLootCharDB.LastBossText = "Factions"
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Argent Dawn
	AtlasLootMenuItem_1_Name:SetText(AL["Argent Dawn"]);
	AtlasLootMenuItem_1_Extra:SetText("");
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_08");
	AtlasLootMenuItem_1.lootpage="Argent1";
	AtlasLootMenuItem_1:Show();
	--Bloodsail Pirates
	AtlasLootMenuItem_16_Name:SetText(AL["Bloodsail Buccaneers"]);
	AtlasLootMenuItem_16_Extra:SetText("");
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Helmet_66");
	AtlasLootMenuItem_16.lootpage="Bloodsail1";
	AtlasLootMenuItem_16:Show();
	--Brood of Nozdormu
	AtlasLootMenuItem_2_Name:SetText(AL["Brood of Nozdormu"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Ring_40");
	AtlasLootMenuItem_2.lootpage="AQBroodRings";
	AtlasLootMenuItem_2:Show();
	--Cenarion Hold
	AtlasLootMenuItem_17_Name:SetText(AL["Cenarion Circle"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Spell_Nature_HealingTouch");
	AtlasLootMenuItem_17.lootpage="Cenarion1";
	AtlasLootMenuItem_17:Show();
	--Darkmoon Faire
	AtlasLootMenuItem_3_Name:SetText(AL["Darkmoon Faire"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Ticket_Tarot_Maelstrom_01");
	AtlasLootMenuItem_3.lootpage="Darkmoon";
	AtlasLootMenuItem_3:Show();
	--Frostwolf Clan
	AtlasLootMenuItem_24_Name:SetText(AL["Frostwolf Clan"]);
	AtlasLootMenuItem_24_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_FrostwolfTrinket_01");
	AtlasLootMenuItem_24.lootpage="Frostwolf1";
	AtlasLootMenuItem_24:Show();
	--Gelkis Clan Centaur
	AtlasLootMenuItem_18_Name:SetText(AL["Gelkis Clan Centaur"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Centaur_01");
	AtlasLootMenuItem_18.lootpage="GelkisClan1";
	AtlasLootMenuItem_18:Show();
	--Hydraxian Waterlords
	AtlasLootMenuItem_4_Name:SetText(AL["Hydraxian Waterlords"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_SummonWaterElemental_2");
	AtlasLootMenuItem_4.lootpage="WaterLords1";
	AtlasLootMenuItem_4:Show();
	--Magram Clan Centaur
	AtlasLootMenuItem_19_Name:SetText(AL["Magram Clan Centaur"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Centaur_01");
	AtlasLootMenuItem_19.lootpage="MagramClan1";
	AtlasLootMenuItem_19:Show();
	--Wildhammer Clan
	AtlasLootMenuItem_7_Name:SetText(AL["Wildhammer Clan"]);
	AtlasLootMenuItem_7_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_EagleEye");
	AtlasLootMenuItem_7.lootpage="Wildhammer";
	AtlasLootMenuItem_7:Show();
	--Stormpike Guard
	AtlasLootMenuItem_9_Name:SetText(AL["Stormpike Guard"]);
	AtlasLootMenuItem_9_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_StormPikeTrinket_01");
	AtlasLootMenuItem_9.lootpage="Stormpike1";
	AtlasLootMenuItem_9:Show();
	--Dalaran
	AtlasLootMenuItem_10_Name:SetText(AL["Dalaran"]);
	AtlasLootMenuItem_10_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\Spell_Holy_MagicalSentry");
	AtlasLootMenuItem_10.lootpage="Dalaran";
	AtlasLootMenuItem_10:Show();
	--Thorium Brotherhood
	AtlasLootMenuItem_5_Name:SetText(AL["Thorium Brotherhood"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Ingot_Mithril");
	AtlasLootMenuItem_5.lootpage="Thorium1";
	AtlasLootMenuItem_5:Show();
	--Timbermaw Hold
	AtlasLootMenuItem_20_Name:SetText(AL["Timbermaw Hold"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Misc_Horn_01");
	AtlasLootMenuItem_20.lootpage="Timbermaw";
	AtlasLootMenuItem_20:Show();
	--The Wintersaber Trainers
	AtlasLootMenuItem_6_Name:SetText(AL["Wintersaber Trainers"]);
	AtlasLootMenuItem_6_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_Mount_PinkTiger");
	AtlasLootMenuItem_6.lootpage="Wintersaber1";
	AtlasLootMenuItem_6:Show();
	--Zandalar Tribe
	AtlasLootMenuItem_21_Name:SetText(AL["Zandalar Tribe"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Misc_Coin_08");
	AtlasLootMenuItem_21.lootpage="Zandalar1";
	AtlasLootMenuItem_21:Show();
	--Wardens of Time
	AtlasLootMenuItem_22_Name:SetText(AL["Wardens of Time"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Bronze");
	AtlasLootMenuItem_22.lootpage="Wardens1";
	AtlasLootMenuItem_22:Show();
	--helf
	AtlasLootMenuItem_11_Name:SetText(AL["Silvermoon Remnant"]);
	AtlasLootMenuItem_11_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\inv_misc_tournaments_symbol_bloodelf");
	AtlasLootMenuItem_11.lootpage="Helf";
	AtlasLootMenuItem_11:Show();
	--Darkspear Trolls
	AtlasLootMenuItem_25_Name:SetText(AL["Darkspear Trolls"]);
	AtlasLootMenuItem_25_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\Racial_Troll_Berserk");
	AtlasLootMenuItem_25.lootpage="DarkspearTrolls";
	AtlasLootMenuItem_25:Show();
	--raventusk
	AtlasLootMenuItem_26_Name:SetText(AL["Revantusk Trolls"]);
	AtlasLootMenuItem_26_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Troll_01");
	AtlasLootMenuItem_26.lootpage="Revantusk";
	AtlasLootMenuItem_26:Show();
	--Ironforge
	AtlasLootMenuItem_12_Name:SetText(AL["Ironforge"]);
	AtlasLootMenuItem_12_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Ability_Racial_Avatar");
	AtlasLootMenuItem_12.lootpage="Ironforge";
	AtlasLootMenuItem_12:Show();
		--Darnassus
	AtlasLootMenuItem_13_Name:SetText(AL["Darnassus"]);
	AtlasLootMenuItem_13_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Ability_Racial_ShadowMeld");
	AtlasLootMenuItem_13.lootpage="Darnassus";
	AtlasLootMenuItem_13:Show();
		--Stormwind
	AtlasLootMenuItem_14_Name:SetText(AL["Stormwind"]);
	AtlasLootMenuItem_14_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\INV_BannerPVP_02");
	AtlasLootMenuItem_14.lootpage="Stormwind";
	AtlasLootMenuItem_14:Show();
		--Gnomeregan Exiles
	AtlasLootMenuItem_15_Name:SetText(AL["Gnomeregan Exiles"]);
	AtlasLootMenuItem_15_Extra:SetText("|cff2773ff"..AL["Alliance"]);
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\INV_Gizmo_02");
	AtlasLootMenuItem_15.lootpage="GnomereganExiles";
	AtlasLootMenuItem_15:Show();
		--Durotar Labor Union
	AtlasLootMenuItem_27_Name:SetText(AL["Durotar Labor Union"]);
	AtlasLootMenuItem_27_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Misc_Coin_01");
	AtlasLootMenuItem_27.lootpage="DurotarLaborUnion";
	AtlasLootMenuItem_27:Show();
		--Undercity
	AtlasLootMenuItem_28_Name:SetText(AL["Undercity"]);
	AtlasLootMenuItem_28_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_RaiseDead");
	AtlasLootMenuItem_28.lootpage="Undercity";
	AtlasLootMenuItem_28:Show();
		--Orgrimmar
	AtlasLootMenuItem_29_Name:SetText(AL["Orgrimmar"]);
	AtlasLootMenuItem_29_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_BannerPVP_01");
	AtlasLootMenuItem_29.lootpage="Orgrimmar";
	AtlasLootMenuItem_29:Show();
		--Thunder Bluff
	AtlasLootMenuItem_30_Name:SetText(AL["Thunder Bluff"]);
	AtlasLootMenuItem_30_Extra:SetText("|cffFF0000"..AL["Horde"]);
	AtlasLootMenuItem_30_Icon:SetTexture("Interface\\Icons\\INV_Misc_Foot_Centaur");
	AtlasLootMenuItem_30.lootpage="ThunderBluff";
	AtlasLootMenuItem_30:Show();

	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Factions"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end
