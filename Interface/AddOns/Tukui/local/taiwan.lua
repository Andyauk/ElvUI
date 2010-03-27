local L = GetLocale()

if L == "zhTW" then
	tukuilocal.datatext_guild = "公會"
	tukuilocal.datatext_noguild = "沒有公會"
	tukuilocal.datatext_bags = "背包: "
	tukuilocal.datatext_friends = "好友"
	tukuilocal.datatext_online = "線上: "
	tukuilocal.datatext_armor = "耐久度"
	tukuilocal.datatext_earned = "賺取:"
	tukuilocal.datatext_spent = "花費:"
	tukuilocal.datatext_deficit = "赤字:"
	tukuilocal.datatext_profit = "利潤:"
	tukuilocal.datatext_wg = "距離下一次冬握湖:"
	tukuilocal.datatext_friendlist = "好友名單:"
	tukuilocal.datatext_inprogress = "進行中"
	tukuilocal.datatext_unavailable = "不適用"
	tukuilocal.datatext_playersp = "法傷"
	tukuilocal.datatext_playerap = "強度"
	tukuilocal.datatext_playerhaste = "加速"
	tukuilocal.datatext_dps = "dps"
	tukuilocal.datatext_hps = "hps"
	tukuilocal.datatext_playerarp = "護甲穿透"
	tukuilocal.datatext_session = "本次概況: "
	tukuilocal.datatext_character = "角色: "
	tukuilocal.datatext_server = "伺服器: "
	tukuilocal.datatext_totalgold = "總額: "
	tukuilocal.datatext_savedraid = "已有進度的團隊副本"
	tukuilocal.datatext_currency = "兌換通貨:"
	tukuilocal.datatext_fps = " fps & "
	tukuilocal.datatext_ms = " ms"
	tukuilocal.datatext_playercrit = "% 致命"
	tukuilocal.datatext_playerheal = " 治療"
	tukuilocal.datatext_avoidancebreakdown = "免傷分析"
	tukuilocal.datatext_lvl = "等級"
	tukuilocal.datatext_boss = "首領"
	tukuilocal.datatext_miss = "未擊中"
	tukuilocal.datatext_dodge = "閃躲"
	tukuilocal.datatext_block = "格檔"
	tukuilocal.datatext_parry = "招架"
	tukuilocal.datatext_playeravd = "免傷: "
	tukuilocal.datatext_servertime = "伺服器時間: "
	tukuilocal.datatext_localtime = "本地時間: "
	tukuilocal.datatext_mitigation = "等級緩和: "
	tukuilocal.datatext_healing = "Healing : "
	tukuilocal.datatext_damage = "Damage : "
	tukuilocal.datatext_honor = "Honor : "
	tukuilocal.datatext_killingblows = "Killing Blows : "
	tukuilocal.datatext_ttstatsfor = "Stats for "
	tukuilocal.datatext_ttkillingblows = "Killing Blows:"
	tukuilocal.datatext_tthonorkills = "Honor Kills:"
	tukuilocal.datatext_ttdeaths = "Deaths:"
	tukuilocal.datatext_tthonorgain = "Honor Gained:"
	tukuilocal.datatext_ttdmgdone = "Damage Done:"
	tukuilocal.datatext_tthealdone = "Healing Done:"

	tukuilocal.Slots = {
		[1] = {1, "頭部", 1000},
		[2] = {3, "肩部", 1000},
		[3] = {5, "胸部", 1000},
		[4] = {6, "腰部", 1000},
		[5] = {9, "手腕", 1000},
		[6] = {10, "手", 1000},
		[7] = {7, "腿部", 1000},
		[8] = {8, "腳", 1000},
		[9] = {16, "主手", 1000},
		[10] = {17, "副手", 1000},
		[11] = {18, "遠程", 1000}
	}

	tukuilocal.popup_disableui = "Tukui並不支援此解析度, 你想要停用Tukui嗎? (若果您想要嘗試其他解析度, 請按取消)"
	tukuilocal.popup_install = "這個角色首次使用Tukui V10, 您必需先重載介面以完成設定"

	tukuilocal.merchant_repairnomoney = "您沒有足夠的金錢來修理!"
	tukuilocal.merchant_repaircost = "您的裝備已修理, 花費了"
	tukuilocal.merchant_trashsell = "您背包內的粗糙物品已被自動賣出, 您賺取了"

	tukuilocal.goldabbrev = "|cffffd700g|r"
	tukuilocal.silverabbrev = "|cffc7c7cfs|r"
	tukuilocal.copperabbrev = "|cffeda55fc|r"

	tukuilocal.error_noerror = "沒有錯誤"

	tukuilocal.unitframes_ouf_offline = "離線"
	tukuilocal.unitframes_ouf_dead = "死亡"
	tukuilocal.unitframes_ouf_ghost = "鬼魂"
	tukuilocal.unitframes_ouf_lowmana = "法力過低"
	tukuilocal.unitframes_ouf_threattext = "當前目標的仇恨:"
	tukuilocal.unitframes_ouf_offlinedps = "離線"
	tukuilocal.unitframes_ouf_deaddps = "死亡"
	tukuilocal.unitframes_ouf_ghostheal = "鬼魂"
	tukuilocal.unitframes_ouf_deadheal = "死亡"
	tukuilocal.unitframes_ouf_gohawk = "切換為雄鷹守護"
	tukuilocal.unitframes_ouf_goviper = "切換為蝮蛇守護"
	tukuilocal.unitframes_disconnected = "斷線"

	tukuilocal.tooltip_targetyou = "|cffff4444>>獲得仇恨<<|r"

	tukuilocal.priest_wsdebuff = "虛弱靈魂"
	tukuilocal.priest_ifbuff = "心靈之火"

	tukuilocal.bags_noslots = "不能再購買更多的背包欄位!"
	tukuilocal.bags_costs = "花費: %.2f 金"
	tukuilocal.bags_buyslots = "輸入 /bags purchase yes 以購買銀行背包欄位"
	tukuilocal.bags_openbank = "您需要先造訪您的銀行"
	tukuilocal.bags_sort = "將背包或銀行內的物品分類及排序"
	tukuilocal.bags_stack = "將背包或銀行內的不完整的物品堆疊重新堆疊"
	tukuilocal.bags_buybankslot = "購買銀行背包欄位. (需要造訪銀行)"
	tukuilocal.bags_search = "搜尋"
	tukuilocal.bags_sortmenu = "分類及排序"
	tukuilocal.bags_sortspecial = "分類及排序特殊物品"
	tukuilocal.bags_stackmenu = "堆疊"
	tukuilocal.bags_stackspecial = "堆疊特殊物品"
	tukuilocal.bags_showbags = "顯示背包"
	tukuilocal.bags_sortingbags = "分類及排序完成"
	tukuilocal.bags_nothingsort= "不需要分類"
	tukuilocal.bags_bids = "使用背包: "
	tukuilocal.bags_stackend = "重新堆疊完成"

	tukuilocal.chat_invalidtarget = "無效的目標"

	tukuilocal.mount_wintergrasp = "冬握湖"
	
	tukuilocal.playermenu_freeforall = "自由拾取"
	tukuilocal.playermenu_group = "|cff1eff00隊伍分配|r"
	tukuilocal.playermenu_master = "|cff0070dd隊長分配|r"
	tukuilocal.playermenu_global_needbeforegreed = "分配: %s需求優先|r"
	tukuilocal.playermenu_global_freeforall = "分配: %s自由拾取|r"
	tukuilocal.playermenu_global_group = "分配: %s隊伍分配|r"
	tukuilocal.playermenu_global_master = "分配: %s隊長分配|r"
	tukuilocal.playermenu_normal = "5 |cffffff50普通|r"
	tukuilocal.playermenu_heroic = "5 |cffff5050英雄|r"
	tukuilocal.playermenu_raid10 = "10 |cffffff50普通|r"
	tukuilocal.playermenu_raid25 = "25 |cffffff50普通|r"
	tukuilocal.playermenu_raid10h = "10 |cffff5050英雄|r"
	tukuilocal.playermenu_raid25h = "25 |cffff5050英雄|r"
	
	tukuilocal.core_autoinv_enable = "啟用自動邀請: invite"
	tukuilocal.core_autoinv_enable_c = "自動邀請功能已啟用: "
	tukuilocal.core_autoinv_disable = "自動邀請功能已關閉"
	tukuilocal.core_wf_unlock = "解鎖任務追蹤"
	tukuilocal.core_wf_lock = "鎖定任務追蹤"
	tukuilocal.core_welcome1 = "歡迎使用 |cffC495DDTukui|r "
	tukuilocal.core_welcome2 = "輸入 |cff00FFFF/uihelp|r 以獲得更多資訊"
	
	tukuilocal.core_uihelp1 = "|cff00ff00基本指令|r"
	tukuilocal.core_uihelp2 = "|cffFF0000/tracker|r - Tukui 競技場敵方冷卻監視器 - 一個精簡的PvP冷卻監視器 (Icon only)"
	tukuilocal.core_uihelp3 = "|cffFF0000/rl|r - 重載您的使用者介面"
	tukuilocal.core_uihelp4 = "|cffFF0000/gm|r - 聯繫GM或開啟魔獸世界幫助訊息"
	tukuilocal.core_uihelp5 = "|cffFF0000/frame|r - 偵測您滑鼠位置上的框架名稱 (對於lua編制者非常有幫助)"
	tukuilocal.core_uihelp6 = "|cffFF0000/heal|r - 啟用治療的ouf介面"
	tukuilocal.core_uihelp7 = "|cffFF0000/dps|r - 啟用Dps/Tank的ouf介面"
	tukuilocal.core_uihelp8 = "|cffFF0000/uf|r - 啟用或停用可移動ouf框架"
	tukuilocal.core_uihelp9 = "|cffFF0000/bags|r - 分類及排序背包, 購買銀行背包欄位或重新堆疊背包/銀行內的物品"
	tukuilocal.core_uihelp10 = "|cffFF0000/resetui|r - 重置Tukui的設定"
	tukuilocal.core_uihelp11 = "|cffFF0000/rd|r - 解散團隊"
	tukuilocal.core_uihelp12 = "|cffFF0000/wf|r - 解鎖任務追蹤框架"
	tukuilocal.core_uihelp13 = "|cffFF0000/mss|r - 移動變形列和圖騰列"
	tukuilocal.core_uihelp14 = "(向上滾動以獲得更多命令 ...)"
	tukuilocal.core_uihelp15 = "|cffFF0000/ainv|r - 輸入關鍵字(預設:/ainv)以啟用密語自動邀請, 您可以自行設定關鍵字, 指令為/ainv 關鍵字"
	
	tukuilocal.symbol_CLEAR = "清除"
	tukuilocal.symbol_SKULL = "頭顱"
	tukuilocal.symbol_CROSS = "十字"
	tukuilocal.symbol_SQUARE = "方形"
	tukuilocal.symbol_MOON = "月亮"
	tukuilocal.symbol_TRIANGLE = "三角"
	tukuilocal.symbol_DIAMOND = "鑽石"
	tukuilocal.symbol_CIRCLE = "圈圈"
	tukuilocal.symbol_STAR = "星星"
	
	tukuilocal.bind_combat = "您不能在戰鬥中設定快捷鍵"
	tukuilocal.bind_saved = "所有快捷鍵修改已儲存"
	tukuilocal.bind_discard = "這次的快捷鍵修改已重設為上一次修改"
	tukuilocal.bind_instruct = "將滑鼠指向動作列上以綁定快捷鍵, 您可以按ESC或以右鍵點擊快捷列上任何一格以清除該位置的設定"
	tukuilocal.bind_save = "儲存"
	tukuilocal.bind_discardbind = "放棄"
end