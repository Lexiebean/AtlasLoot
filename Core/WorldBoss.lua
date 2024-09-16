local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");
local WHITE = "|cffFFFFFF";
function AtlasLoot_WorldBossMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	AtlasLootCharDB.LastBoss = "WORLDBOSSMENU"
	AtlasLootCharDB.LastBossText = "World Bosses"
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Azuregos
	AtlasLootMenuItem_1_Name:SetText(AL["Azuregos"]);
	AtlasLootMenuItem_1_Extra:SetText(WHITE..AL["Azshara"]);
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Blue");
	AtlasLootMenuItem_1.lootpage="AAzuregos";
	AtlasLootMenuItem_1:Show();
	--Emeriss
	AtlasLootMenuItem_2_Name:SetText(AL["Emeriss"]);
	AtlasLootMenuItem_2_Extra:SetText(WHITE..AL["Various Locations"]);
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Green");
	AtlasLootMenuItem_2.lootpage="DEmeriss";
	AtlasLootMenuItem_2:Show();
	--Lethon
	AtlasLootMenuItem_3_Name:SetText(AL["Lethon"]);
	AtlasLootMenuItem_3_Extra:SetText(WHITE..AL["Various Locations"]);
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Green");
	AtlasLootMenuItem_3.lootpage="DLethon";
	AtlasLootMenuItem_3:Show();
	--Taerar
	AtlasLootMenuItem_4_Name:SetText(AL["Taerar"]);
	AtlasLootMenuItem_4_Extra:SetText(WHITE..AL["Various Locations"]);
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Green");
	AtlasLootMenuItem_4.lootpage="DTaerar";
	AtlasLootMenuItem_4:Show();
	--Ysondre
	AtlasLootMenuItem_5_Name:SetText(AL["Ysondre"]);
	AtlasLootMenuItem_5_Extra:SetText(WHITE..AL["Various Locations"]);
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_Head_Dragon_Green");
	AtlasLootMenuItem_5.lootpage="DYsondre";
	AtlasLootMenuItem_5:Show();
	--Lord Kazzak
	AtlasLootMenuItem_7_Name:SetText(AL["Lord Kazzak"]);
	AtlasLootMenuItem_7_Extra:SetText(WHITE..AL["Blasted Lands"]);
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\warlock_summon_doomguard");
	AtlasLootMenuItem_7.lootpage="KKazzak";
	AtlasLootMenuItem_7:Show();
	--Nerubian Overseer
	AtlasLootMenuItem_8_Name:SetText(AL["Nerubian Overseer"]);
	AtlasLootMenuItem_8_Extra:SetText(WHITE..AL["Eastern Plaguelands"]);
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Web");
	AtlasLootMenuItem_8.lootpage="Nerubian";
	AtlasLootMenuItem_8:Show();
	--Dark Reaver
	AtlasLootMenuItem_9_Name:SetText(AL["Dark Reaver of Karazhan"]);
	AtlasLootMenuItem_9_Extra:SetText(WHITE..AL["Deadwind Pass"]);
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Ability_Mount_Dreadsteed");
	AtlasLootMenuItem_9.lootpage="Reaver";
	AtlasLootMenuItem_9:Show();
	--Ostarius
	AtlasLootMenuItem_10_Name:SetText(AL["Ostarius"]);
	AtlasLootMenuItem_10_Extra:SetText(WHITE..AL["Tanaris"]);
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Misc_Platnumdisks");
	AtlasLootMenuItem_10.lootpage="Ostarius";
	AtlasLootMenuItem_10:Show();
	--Concavius
	AtlasLootMenuItem_11_Name:SetText(AL["Concavius"]);
	AtlasLootMenuItem_11_Extra:SetText(WHITE..AL["Desolace"]);
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_SummonVoidWalker");
	AtlasLootMenuItem_11.lootpage="Concavius";
	AtlasLootMenuItem_11:Show();
	--Cow level
	AtlasLootMenuItem_13_Name:SetText(AL["There Is No Cow Level"]);
	AtlasLootMenuItem_13_Extra:SetText(WHITE..AL["Moomoo Grove"]);
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Polymorph_Cow");
	AtlasLootMenuItem_13.lootpage="CowKing";
	AtlasLootMenuItem_13:Show();

    for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["World Bosses"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end