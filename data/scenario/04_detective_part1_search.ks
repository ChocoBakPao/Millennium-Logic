[iscript]
    f.evidence_of_midori = "false";
    f.evidence_of_momoi = "false";
    f.evidence_of_akira = "false";
    f.d1_momoi_talked ="false";
    f.d1_midori_talked = "false";

    f.evidence_of_midori2 = "false";
    f.evidence_of_dummy1 = "false";
    f.evidence_of_dummy2 = "false";
    f.evidence_of_momoi2 = "false";
    f.evidence_of_akira2 = "false";
[endscript]

[bg2 storage="BG06_PartyRoom.jpg" wait="true"]
[playbgm storage="Theme_68.ogg" time="3000" volume="25"]

[backlay layer="base"]
[filter layer="base" page="back" brightness="50" blur="5" ]
[trans layer="base" time="300"]

[skip_button storage="04_detective_part1_search.ks"]
;--------------------------------------------------------------------------


[talk name="" face="def"]
There are two clues that lead to the culprit.
[wait time="450"]
[click_next]

[talk name="" face="def"]
『Profile of the person』 and 『Physical evidence』.
[wait time="450"]
[click_next]

[talk name="" face="def"]
When both of these come together, the image of the culprit should naturally emerge.
[wait time="450"]
[click_next]

[talk name="" face="def"]
First, talk to people and gather information about whether anyone has seen any suspicious individuals.
[wait time="450"]
[click_next]

[talk name="" face="def"]
Next, move around the mansion and look for any suspicious traces.
[wait time="450"]
[click_next]

;[talk name=""]
;（そうなると、まずはどこに行こうか？）
;[wait time="450"]
;[click_next]

[free_filter layer="base"]
;[trans layer="base" time="100"]
[wt]

;------------------------------------------------------------------------------
;探索フラグ初期化
;------------------------------------------------------------------------------

[clearfix]
[bg2 storage="BG06_PartyRoom.jpg" wait="false"]
[layopt layer="message0" visible="true"]
[skip_button storage="04_detective_part1_search.ks"]
[button target="*book" role="sleepgame" x="1160" y="120" height="60"  graphic="Item_Icon_Material_Rohonc_3.png" fix="true" storage="system/evidence.ks"]
;探索パート1_探索1------------------------------------------------------------------
[talk name=""]
(In that case, where should I go first?)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[map_select]

;場所移動選択肢----------------------------
*map_select
[layopt layer="message0" visible="false"]
;探索終了フラグ
[iscript]
if (f.evidence_of_midori === 'true' && 
    f.evidence_of_momoi === 'true' && 
    f.evidence_of_akira === 'true' &&
    f.d1_momoi_talked === 'true' &&
    f.d1_midori_talked === 'true') {

        // チュートリアル終了フラグ
        f.detective_part1_end = "true";
}

[endscript]

;全員の話を聞いたら*endに飛ぶ
[jump target="*part1_end" storage="04_detective_part1_search.ks" cond="f.detective_part1_end =='true'"]
[talk name=""]
(I've managed to talk to people, so maybe it's time to head somewhere else?)
[wait time="450"]
[click_next]

*map_select2

[chara_hide_all  time="300"]
[layopt layer="message0" visible="false" wait="true"]
[map_select]


;エントランスホール--------------------------------------------------
*jump1
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG01_HotelLobby.jpg"]

[app name="aris" width="600" left="100" top="160" wait="true"]

[layopt layer="message0" visible="true"]

[talk name=""]
(Arrived at the entrance hall)
[wait time="450"]
[click_next]

[talk name=""]
(Aris-san the maid is diligently wiping the rain-soaked floor)
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]

;選択-----------------------------------------------------
[clickable target="*aris_search_01" x="220" y="220" width="300" height="500"]
[button target="*aris_search_01_leave" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

*aris_search_01
[chara_hide name="aris" time="300" wait="true"]
[app name="aris" pos="3" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="aris" face="def"]
Sensei! Do you need something from Aris the maid?
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
Investigation... I see. Aris understands.
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
In other words... it's the investigation part of a detective game!
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
In that case, Aris will also cooperate as Witness A to help catch the criminal.
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
Come now, sensei, please choose your questions!
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Was there anyone acting suspicious?" jump1="*jump_01" storage="04_detective_part1_search.ks"]

*jump_01
[layopt layer="message0" visible="true"]

[talk name="aris" face="normal"]
Umm...
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
Now that you mention it, around 3:30 PM, Midori-san asked me about the time the Master returned to their room.
[wait time="450"]
[click_next]

[talk name="aris" face="normal"]
She seemed to be in a bit of a hurry... but since Midori-san was on bedroom duty today, perhaps she were preparing something.
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
...That's about all Aris knows.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thanks, that was helpful." jump1="*jump_02" storage="04_detective_part1_search.ks"]
*jump_02
[layopt layer="message0" visible="true"]

[talk name="aris" face="smile"]
No, it's the witness's role to provide information about the case to the detective!
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
Sensei, please quickly identify the culprit and solve the case!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[app name="aris" width="600" left="100" top="160" time="500" wait="true"]

[eval exp="f.evidence_of_midori = 'true'"]
[wit_pop storage="midori_wit.png"]

[talk name=""]
Testimony: Regarding Midori-san's Duties
[wait time="450"]
[click_next]

[wit_remove]

;場所移動ボタン/話を聞いた場合
;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all  time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*aris_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

;場所移動ボタン/話を聞いていない場合
[talk name=""]
(I shouldn't disturb her cleaning, I'll refrain from talking now)
[wait time="450"]
[click_next]
[chara_hide_all  time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]



;アキラ------------------------------------------------------------------------
*jump2
;------------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG02_OldHouseCorridor.jpg"]
[app name="akira" width="440" left="250" top="185" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
(Arrived at the 1st floor hallway)
[wait time="450"]
[click_next]

[talk name=""]
(The lady in white is walking while looking at the wall paintings)
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*akira_search_01" x="380" y="180" width="220" height="460"]
;[clickable target="*akira_search_01_leave" x="0" y="25" width="50" height="50" ]
[button target="*akira_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]

*akira_search_01
[chara_hide  time="300"  name="akira" wait="true"]
[app name="akira" wait="true"]

[layopt layer="message0" visible="true"]

[talk name="akira" face="serious"]
Hmm... what should I do...
[wait time="450"]
[click_next]

[talk name="akira" face="08"]
Oh, sensei? No, it's nothing important.
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
Right after arriving here, I went to the kitchen to get some drinks...
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
There, the young lady in white handed me a whole cardboard box of mineral water.
[wait time="450"]
[click_next]

;白い服のお嬢さん＝ヒマリ
;ミネラルウォーター＝ヒマリの自称から。
;
[talk name="akira" face="15"]
I told her it was just enough water for one night, but this amount is rather...
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
More importantly, sensei, did you need something?
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="I was gathering information about the incident." jump1="*jump_03" storage="04_detective_part1_search.ks"]
*jump_03
[layopt layer="message0" visible="true"]

[talk name="akira" face="08"]
I see, a suspicious person, huh? Now that you mention it, there was a pink-haired maid—
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
That was before 4 PM, right? She seemed flustered as she ran through the entrance.
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
She was holding some kind of small bottle, but I wonder what it was.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="...Thanks for the info." jump1="*jump_04" storage="04_detective_part1_search.ks"]
*jump_04
[layopt layer="message0" visible="true"]

[talk name="akira" face="respond"]
Hehe, I won't hesitate to cooperate. Besides, it's none other than Sensei's request.
[wait time="450"]
[click_next]

[talk name="akira" face="09"]
Well then, please continue with the investigation.
[wait time="450"]
[click_next]

[talk name="akira" face="embarassed"]
...Oh, and would you like to take some mineral water with you?
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="akira" wait="true"]
[app name="akira" width="440" left="250" top="185" time="500" wait="true"]

[talk name=""]

[eval exp="f.evidence_of_momoi = 'true'"]
[wit_pop storage="momoi_wit.png"]

[talk name=""]
Testimony: Momoi-san was in a hurry.
[wait time="450"]
[click_next]

[wit_remove]



;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all  time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*akira_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
(It'd be rude to interrupt, so maybe I shouldn't talk to her now.)
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]


;モモイ--------------------------------------------------------
*jump3
;-------------------------------------------------------------
;[layopt layer="message0" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG03_Hotelcorridor.jpg"]
[app name="momoi" width="150" left="700" top="350" wait="true"]


[talk name=""]
(Maid Momoi-san is walking with a bucket and mop.)
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*momoi_search_01" x="700" y="325" width="125" height="200" ]
;[clickable target="*momoi_search_01_leave" x="0" y="25" width="50" height="50" ]
[button target="*momoi_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]

*momoi_search_01
;[layopt layer="message0" visible="true"]
[chara_hide time="300" name="momoi" wait="true"]
[app name="momoi" wait="true"]

[talk name="momoi" face="09"]
Sensei, listen! I just dropped an air freshener bottle in the room earlier!
[wait time="450"]
[click_next]

[talk name="momoi" face="depressed"]
Thanks to that, the liquid inside got on my clothes... Now I reek of floral scent!!
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
...Huh? Now that I think about it, why did sensei come to me?
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="I'd like your cooperation with gathering information." jump1="*jump_05" storage="04_detective_part1_search.ks"]
*jump_05
[layopt layer="message0" visible="true"]

[talk name="momoi" face="11"]
Oh right! Sensei is basically the 'detective' in this mystery game!
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
But let me say this first - I'm not the culprit!
[wait time="450"]
[click_next]

[talk name="momoi" face="normal"]
A maid who'd eat the pudding the Mistress cherished would be totally unworthy!
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
If you ask me, the culprit must be that white-haired lady!
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
After all, aside from sensei, she's the only one who isn't part of the mansion staff, right?
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
Plus, before the incident was discovered, I heard her going in and out of the room multiple times!
[wait time="450"]
[click_next]

[talk name="momoi" face="11"]
See? Suspicious, isn't it? She was definitely doing something behind our backs!
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thanks, I'll use this as reference." jump1="*jump_06" storage="04_detective_part1_search.ks"]
*jump_06
[layopt layer="message0" visible="true"]

[talk name="momoi" face="10"]
Heheh. Make good use of my testimony for solving the case!
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
I believe Sensei will solve the case in a flash!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="true"]
[app name="momoi" width="150" left="700" top="350" wait="true"]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

[eval exp="f.d1_momoi_talked = 'true'"]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]



*momoi_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
(I shouldn't disturb her cleaning, I'll refrain from talking now)
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]





;ユズ---------------------------------------------------------
*jump4
;-------------------------------------------------------------
;[layopt layer="message0" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG04_TrinityOldLibrary.jpg"]
[app name="yuzu" width="280" left="250" top="250" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
(Arrived at the mansion's library)
[wait time="450"]
[click_next]

[talk name=""]
(The maid Yuzu-san is looking around nervously, surveying the surroundings)
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*yuzu_search_01" x="330" y="250" width="150" height="270" ]
[button target="*yuzu_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]


*yuzu_search_01
[chara_hide  name="yuzu" wait="true" time="300"]
[app name="yuzu" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="yuzu" face="07"]
Phew... I'll just rest on the sofa for a bit...
[wait time="450"]
[click_next]

[talk name="yuzu" face="embarrass"]
Eek, Sensei...!? W-why are you here...?
[wait time="450"]
[click_next]

[talk name="yuzu" face="08"]
W-w-w-wait, don't tell me you came to arrest me as the culprit...!?
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
A-ah, i-is this about questioning...? Sorry, I jumped to conclusions...
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Sorry for surprising you." jump1="*jump_07" storage="04_detective_part1_search.ks"]
*jump_07
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="normal"]
N-no. Um... suspicious people, right? But sorry, I don't think I can be of any help...
[wait time="450"]
[click_next]

[talk name="yuzu" face="eyeclose"]
Even small things? Hmm... oh.
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
It's n-not about a person... but actually, this morning there was a strange letter dropped at the entrance...
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
The sender was only identified as 'The Phantom Thief of Benevolence.' But I don't know anyone like that...
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
I thought it was just a prank, so I threw it away immediately.
[wait time="450"]
[click_next]

[talk name="yuzu" face="10"]
Could it possibly be related to this incident?
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="I'll use it as a reference. Thank you." jump1="*jump_08" storage="04_detective_part1_search.ks"]
*jump_08
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="07"]
No! I'd be happy if I could be of any help to you, Sensei...!
[wait time="450"]
[click_next]

[talk name="yuzu" face="smile"]
If there's anything else I can do, please don't hesitate to ask.
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="yuzu" wait="true"]
[app name="yuzu" width="280" left="250" top="250" wait="true" time="500"]

[eval exp="f.evidence_of_akira = 'true'"]
[wit_pop storage="white_wit.png"]

;証拠：アキラの証拠入手
[talk name=""]
Testimony: The Suddenly Delivered Letter
[wait time="450"]
[click_next]

[wit_remove]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]



*yuzu_search_01_leave
[cm]

[talk name=""]
(They seem tired, maybe I shouldn't approach them now)
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]



;ミドリ---------------------------------------------------------------
*jump5
;---------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG05_LuxuriousRooms_Night.jpg"]
[app name="midori" width="600" left="75" top="190" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
(Arrived at the master bedroom)
[wait time="450"]
[click_next]

[talk name=""]
(Maid Midori-san is making the bed)
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*midori_search_01" x="240" y="200" width="320" height="470"]
[button target="*midori_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]
*midori_search_01
[chara_hide  name="midori" wait="true" time="300"]
[app name="midori" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="midori" face="normal"]
Sensei, have you figured out who the culprit is?
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
I see... Who could have taken Mistress's pudding...
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Could you tell me a bit about it?" jump1="*jump_09" storage="04_detective_part1_search.ks"]
*jump_09
[layopt layer="message0" visible="true"]

[talk name="midori" face="respond"]
Of course. Please let me help too!
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
Though to be honest, I was busy cleaning the rooms today, so I don't have much to tell...
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
Someone suspicious? Now that you mention it, I did see a guest in white clothes wandering the first floor hallway.
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
The time was... I think between 4:00 to 4:30 PM.
[wait time="450"]
[click_next]

[talk name="midori" face="normal"]
It's not like they were doing anything suspicious, but I thought I should mention it.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thanks, I'll use this as reference." jump1="*jump_10" storage="04_detective_part1_search.ks"]
*jump_10
[layopt layer="message0" visible="true"]

[talk name="midori" face="eyeclose"]
I'm glad if I could be of help to Sensei.
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
Well, I should get going now. Good luck with the investigation.
[wait time="450"]
[click_next]

[talk name="midori" face="smile"]
I believe in you, Sensei. You'll definitely find the culprit.
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="midori"]
[app name="midori" width="600" left="75" top="190" wait="true"]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]
[eval exp="f.d1_midori_talked = 'true'"]


;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*midori_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
(I shouldn't disturb their cleaning... I'll hold off on talking to them for now.)
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]

*part1_end
[talk name=""]
(Alright, I've heard testimony from everyone now)
[click_next]

[layopt layer="message0" visible="false" wait="true"]
*part_end
[hide_all]
[fadeoutbgm time="500"]
[stopbgm]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="04_detective_part2_search.ks"]
