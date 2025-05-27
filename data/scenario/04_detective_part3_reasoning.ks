[iscript]
    f.evidence_of_midori = "true";
    f.evidence_of_momoi = "true";
    f.evidence_of_akira = "true";
    f.d1_momoi_talked ="true";
    f.d1_midori_talked = "true";

    f.evidence_of_midori2 = "true";
    f.evidence_of_dummy1 = "true";
    f.evidence_of_dummy2 = "true";
    f.evidence_of_momoi2 = "true";
    f.evidence_of_akira2 = "true";
[endscript]

;最後の推理-----------------------------------------------------------------
*reasoning_part
;------------------------------------------------------------------
[bg_effect storage="BG06_PartyRoom.jpg"]
[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]

[button target="*book" role="sleepgame" x="1170" y="40" height="60"  graphic="Item_Icon_Material_Rohonc_3.png" fix="true" storage="system/evidence.ks"]
[talk name=""]
(Having grasped the clue, everyone except the Mistress was gathered in the dining hall)
[wait time="450"]
[click_next]

[talk name=""]
(Now all that's left is to deduce the culprit from the evidence we've gathered so far)
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thank you all for gathering here." jump1="*jump_x1" storage="04_detective_part3_reasoning.ks"]
*jump_x1

[choice_button mode="1" choice1="I've got a lead on the culprit." jump1="*jump_x2" storage="04_detective_part3_reasoning.ks"]
*jump_x2

[wait time="200"]

[app name="yuzu" face="serious" pos="2" wait="true"]
[talk name="yuzu" face="serious"]
The culprit...! Really!?
[wait time="450"]
[click_next]

[talk ]
[wait time="200"]

[app name="aris" face="serious" pos="4" wait="true"]
[talk name="aris" face="serious"]
Who in the world would take the Mistress's pudding!?
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[choice_button mode="1" choice1="While gathering testimonies from everyone..." jump1="*jump_x3" storage="04_detective_part3_reasoning.ks"]
*jump_x3

;【答え合わせ】　証拠1と証拠2の正解の組み合わせを探す
*reasoning_part2

;@【証拠1】通常選択肢として犯人を指定
[iscript]
    tf.momoi_flag = 'false';
    tf.midori_flag = 'false';
    tf.akira_flag = 'false';
[endscript]


[choice_button mode="3" choice1="Momoi-san" jump1="*jump_momoi" choice2="Midori-san" jump2="*jump_midori" choice3="The Lady in White" jump3="jump_white" storage="04_detective_part3_reasoning.ks"]

*jump_momoi
    [eval exp="tf.momoi_flag = 'true'"]
    [jump target="*jump_56" storage="04_detective_part3_reasoning.ks"]

*jump_midori
    [eval exp="tf.midori_flag = 'true'"] 
    [jump target="*jump_56" storage="04_detective_part3_reasoning.ks"]
*jump_white
    [eval exp="tf.akira_flag = 'true'"] 
    [jump target="*jump_56" storage="04_detective_part3_reasoning.ks"]

*jump_56
[layopt layer="message0" visible="true"]

[choice_button mode="1" choice1="I felt something strange about your actions." jump1="*jump_x4" storage="04_detective_part3_reasoning.ks"]
*jump_x4
[choice_button mode="1" choice1="And also――" jump1="*jump_x5" storage="04_detective_part3_reasoning.ks"]
*jump_x5

[layopt layer="message0" visible="false" wait="true"]

[glink x="240" y="100" width="700" height="25" text="The scent of roses" target="*dummy" color="blue" name="glink4" storage="04_detective_part3_reasoning.ks" graphic="choice.png" font_color="0x445160"]
[glink x="240" y="200" width="700" height="25" text="The wet floor by the window" target="*midori_evi" color="blue" name="glink2" storage="04_detective_part3_reasoning.ks" graphic="choice.png" font_color="0x445160"]
[glink x="240" y="300" width="700" height="25" text="Scent of vanilla" target="*momoi_evi" color="blue" name="glink1" storage="04_detective_part3_reasoning.ks" graphic="choice.png" font_color="0x445160"]
[glink x="240" y="400" width="700" height="25" text="Entering using a ladder" target="*dummy" color="blue" name="glink5" storage="04_detective_part3_reasoning.ks" graphic="choice.png" font_color="0x445160"]
[glink x="240" y="500" width="700" height="25" text="Hollow dot by the footprints" target="*akira_evi" color="blue" name="glink3" storage="04_detective_part3_reasoning.ks" graphic="choice.png" font_color="0x445160"]

[s]

*momoi_evi
[jump target="*jump_57" storage="04_detective_part3_reasoning.ks" cond="tf.momoi_flag =='true'"]
[jump target="*mistake" storage="04_detective_part3_reasoning.ks"]

*midori_evi
[jump target="*jump_57" storage="04_detective_part3_reasoning.ks" cond="tf.midori_flag =='true'"]
[jump target="*mistake" storage="04_detective_part3_reasoning.ks"]

*akira_evi
[jump target="*jump_57" storage="04_detective_part3_reasoning.ks" cond="tf.akira_flag =='true'"]
[jump target="*mistake" storage="04_detective_part3_reasoning.ks"]

*jump_57
[choice_button mode="1" choice1="I believe this is the decisive evidence." jump1="*jump_x6" storage="04_detective_part3_reasoning.ks"]
*jump_x6

[fadeoutbgm time="1000"]
[wait time="1000"]

[jump target="*momoi_end" storage="04_detective_part3_reasoning.ks" cond="tf.momoi_flag == 'true'"]
[jump target="*midori_end" storage="04_detective_part3_reasoning.ks" cond="tf.midori_flag == 'true'"]
[jump target="*akira_end" storage="04_detective_part3_reasoning.ks" cond="tf.akira_flag == 'true'"]

*momoi_end
[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]
[clearstack]
[jump  storage="system/init_05_momoi.ks"]


*midori_end
[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]
[clearstack]
[jump  storage="system/init_06_midori.ks"]

*akira_end
[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]
[clearstack]
[jump  storage="system/init_07_akira.ks"]


*dummy
*mistake
[layopt layer="message0" visible="true"]


[talk name=""]
(Something about this doesn't seem to add up...)
[wait time="450"]
[click_next]

[talk name=""]
(Let's go through the reasoning one more time)
[wait time="450"]
[click_next]
[jump target="*reasoning_part2"]
