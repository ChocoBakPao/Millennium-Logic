[iscript]
    f.tutorial_aris_talked = "false";
    f.tutorial_midori_talked = "false";
    f.tutorial_momoi_talked = "false";
    f.tutorial_yuzu_talked = "false";
    f.tutorial_akira_talked = "false";
    f.tutorial_end = 'false'

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
[preload storage="data/bgm/Theme_68.ogg"]
[fadeinbgm storage="Theme_68.ogg" time="3000" volume="25"]
[bg_effect storage="BG06_PartyRoom.jpg" time="1000"]

[skip_button storage="03_tutorial.ks"]

[app_all]
[layopt layer="message0" visible="false" wait="true"]

[wait time="600"]

[talk name="" face="def"]
Now, here is where the investigation finally begins!
[wait time="450"]
[click_next]

[talk name="" face="def"]
Talk to people, investigate suspicious places, and gather evidence that connects to the culprit!
[wait time="450"]
[click_next]

[talk name="" face="def"]
...But first, as practice, let's try collecting 'alibis' from the people gathered here.
[wait time="450"]
[click_next]


*tutorial_search
[iscript]
if (f.tutorial_aris_talked === 'true' && 
    f.tutorial_midori_talked === 'true' && 
    f.tutorial_momoi_talked === 'true' && 
    f.tutorial_yuzu_talked === 'true' && 
    f.tutorial_akira_talked === 'true') {

        // チュートリアル終了フラグ
        f.tutorial_end = 'true'
}
[endscript]

;全員の話を聞いたら*endに飛ぶ
[jump target="*tutorial_search_end" storage="03_tutorial.ks" cond="f.tutorial_end=='true'"]

; [talk name=""]
; 背景上のキャラ選択
; [wait time="600"]

; [talk name=""]
; ユズを選択
; [wait time="600"]

[layopt layer="message0" visible="false" wait="true"]

[clickable target="*akira" x="800" y="250" width="170" height="370"]
[clickable target="*aris" x="260" y="190" width="220" height="550"]
[clickable target="*midori" x="10" y="190" width="220" height="550"]
[clickable target="*midori" x="180" y="490" width="160" height="180"]
[clickable target="*momoi" x="1060" y="190" width="220" height="550"]
[clickable target="*momoi" x="880" y="430" width="220" height="250"]
[clickable target="*akira" x="830" y="330" width="100" height="200"]
[clickable target="*yuzu" x="510" y="100" width="320" height="700"]
[clickable target="*yuzu" x="400" y="440" width="160" height="300"]
[s]

;------------------------------------------------------------------------------------------------------------------------
;ゆずパート
*yuzu
;------------------------------------------------------------------------------------------------------------------------
[hide_all_light]
[app name="yuzu" pos="3" wait="true" ]
[eval exp="f.tutorial_yuzu_talked = 'true'"]
[layopt layer="message0" visible="true"]

[choice_button mode="1" choice1="Where were you and what were you doing at the estimated time of the crime?" jump1="*jump_48" storage="03_tutorial.ks"]
*jump_48

[talk name="yuzu" face="def"]
At the time of the crime, you mean?
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
As I mentioned earlier, I was in Master's room. Aris-chan was with me too.
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
I think Master can confirm it yourself.
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
Umm... Am I still suspected after all?
[wait time="450"]
[click_next]

[talk name=""]
(The time of the crime was likely between 3:00 PM and 4:00 PM)
[wait time="450"]
[click_next]

[talk name=""]
(However, during that time, she has a perfect alibi, she was with me.)
[wait time="450"]
[click_next]

[talk name=""]
(In other words, her alibi of being in the same room holds up)
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Don't worry. I just checked as a precaution." jump1="*jump_49" storage="03_tutorial.ks"]
*jump_49
[choice_button mode="1" choice1="Thank you for sharing your story with me." jump1="*jump_50" storage="03_tutorial.ks"]
*jump_50


[hide name="yuzu" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]


;----------------------------------------------------------------


;----------------------------------------------------------------
;アリス探索パート
*aris
;----------------------------------------------------------------
[hide_all_light]
[app name="aris" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_aris_talked = 'true'"]

[choice_button mode="1" choice1="Where were you and what were you doing at the estimated time of the crime?" jump1="*jump_51" storage="03_tutorial.ks"]
*jump_51
[talk name="aris" face="def"]
Aris was in Master's room together with Yuzu!
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
Which means Aris and Yuzu couldn't have committed the crime!
[wait time="450"]
[click_next]

[talk name=""]
(The time of the crime was likely between 3:00 PM and 4:00 PM)
[wait time="450"]
[click_next]

[talk name=""]
(However, during that time, she has a perfect alibi, she was with me.)
[wait time="450"]
[click_next]

[talk name=""]
(In other words, her alibi of being in the same room holds up)
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Indeed. Your alibis are perfect." jump1="*jump_52" storage="03_tutorial.ks"]
*jump_52
[choice_button mode="1" choice1="Thank you for sharing your story with me." jump1="*jump_53" storage="03_tutorial.ks"]
*jump_53


[hide name="aris" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------


;----------------------------------------------------------------
;モモイ探索パート
*momoi
;----------------------------------------------------------------

[hide_all_light]
[app name="momoi" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_momoi_talked = 'true'"]

[choice_button mode="1" choice1="Where were you and what were you doing at the estimated time of the crime?" jump1="*jump_54" storage="03_tutorial.ks"]
*jump_54
[talk name="momoi" face="def"]
During the time of the crime?
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
Um... I was putting away the laundry, then resting in the study...
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Alone? Can anyone verify your alibi?" jump1="*jump_55" storage="03_tutorial.ks"]
*jump_55
[talk name="momoi" face="def"]
That's... I was alone though.
[wait time="450"]
[click_next]

[talk name=""]
(The time of the crime was likely between 3:00 PM and 4:00 PM)
[wait time="450"]
[click_next]

[talk name=""]
(Since alibis during that time can't be verified, it might be worth investigating)
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
Are we done here? I still have work to do.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thank you for telling me your story." jump1="*jump_56" storage="03_tutorial.ks"]
*jump_56

[hide name="momoi" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------




;----------------------------------------------------------------
;ミドリ探索パート
*midori
;----------------------------------------------------------------
[hide_all_light]
[app name="midori" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_midori_talked = 'true'"]


[choice_button mode="1" choice1="Where were you and what were you doing at the estimated time of the crime?" jump1="*jump_57" storage="03_tutorial.ks"]
*jump_57
[talk name="midori" face="def"]
Huh, during the time of the crime...?
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
At that time... I heard the weather was going to get bad, so I was bringing the outdoor potted plants inside.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Are you alone? Weren't you with someone?" jump1="*jump_58" storage="03_tutorial.ks"]
*jump_58
[talk name="midori" face="def"]
Yes. I was alone. Though... Am I being suspected?
[wait time="450"]
[click_next]

[talk name=""]
(The time of the crime was likely between 3:00 PM and 4:00 PM)
[wait time="450"]
[click_next]

[talk name=""]
(Since alibis during that time can't be verified, it might be worth investigating)
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
...Excuse me. I have another job to attend to, so I must take my leave.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Thank you for telling me your story." jump1="*jump_59" storage="03_tutorial.ks"]
*jump_59

[hide name="midori" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------


;----------------------------------------------------------------
;アキラ探索パート
*akira
;----------------------------------------------------------------

[hide_all_light]
[app name="akira" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_akira_talked = 'true'"]

[choice_button mode="1" choice1="Where were you and what were you doing at the estimated time of the crime?" jump1="*jump_60" storage="03_tutorial.ks"]
*jump_60
[talk name="akira" face="def"]
At that time, if I recall correctly...
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
It was right after arriving at this mansion, so I believe it was when I had permission to look around inside.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Already at such an early hour?" jump1="*jump_61" storage="03_tutorial.ks"]
*jump_61
[choice_button mode="1" choice1="By the way, is there anyone who can prove that for me?" jump1="*jump_62" storage="03_tutorial.ks"]
*jump_62
[talk name="akira" face="def"]
No. Unfortunately, the young lady maids seemed quite busy. I was alone.
[wait time="450"]
[click_next]

[talk name=""]
(The time of the crime was likely between 3:00 PM and 4:00 PM)
[wait time="450"]
[click_next]

[talk name=""]
(Since alibis during that time can't be verified, it might be worth investigating)
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
Fufu, so without an alibi, I'm one of the suspects?
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="I can't say for sure yet......" jump1="*jump_63" storage="03_tutorial.ks"]
*jump_63
[choice_button mode="1" choice1="Anyway, thank you for telling me your story." jump1="*jump_64" storage="03_tutorial.ks"]
*jump_64


[hide name="akira" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]



;チュートリアルエンド--------------------------------------------

*tutorial_search_end
[layopt layer="message0" visible="true"]




[choice_button mode="1" choice1="(The ones who can't prove their alibis are Momoi, Midori, and the Lady in white clothes)" jump1="*jump_65" storage="03_tutorial.ks"]
*jump_65
[choice_button mode="1" choice1="(There's no mistake that the suspects have been narrowed down to these three)" jump1="*jump_66" storage="03_tutorial.ks"]
*jump_66
[choice_button mode="1" choice1="(Now if only we could find evidence that connects to the culprit...)" jump1="*jump_67" storage="03_tutorial.ks"]
*jump_67

[layopt layer="message0" visible="true"]

[talk name=""]
(And so—)
[wait time="450"]
[click_next]

[talk name=""]
(Thus begins the investigation into the suddenly unfolding 'Secret Pudding Snacking Incident')
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[fadeoutbgm time="500"]
[wait time="500"]

*part_end

[hide_all_light]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="04_detective_part1_search.ks"]



