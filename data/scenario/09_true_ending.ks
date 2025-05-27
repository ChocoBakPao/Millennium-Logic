[iscript]
        f.bukatsu = '';
        f.ao_width = 1000;
        f.ao_offset_L = -10;
        f.ao_top = 150;
        f.ao_size = 1;
        f.ao_offset_emo_L = 0;
        f.ao_offset_emo_T = 20;     
        f.ao  = 'Ao' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
        
[endscript]

[chara_new name="ao" jname="アオ" storage="chara/ao.png" width="&f.ao_width"]
[chara_layer name="ao" part="body" id="def" storage="chara/ao.png" zindex=1 ]

[bg_effect storage="black.jpg"]

[playse storage="SE_PrisonDoor_01_Close.wav" loop="false"]
[talk name=""]
(As soon as the switch was pressed, the bookshelf moved, revealing a hidden passage)
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_48.ogg" time="2000" volume="25"]
[talk name=""]
(All the evidence has been gathered)
[wait time="450"]
[click_next]

[talk name=""]
(We've obtained the suspect's confession)
[wait time="450"]
[click_next]

[talk name=""]
(But the sequence of events and the testimony don't match up)
[wait time="450"]
[click_next]

[talk name=""]
(If the suspect's testimony is truthful, then there must be someone else who stole the substituted pudding...)
[wait time="450"]
[click_next]

[talk name=""]
(The answer must surely lie ahead...)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[choice_button mode="1" choice1="This is...!?" jump1="*jump_90" storage="09_true_ending.ks"]
[wait time="500"]
*jump_90

[bg_effect storage="BG_GameDevRoom_Night.jpg"]
[talk name=""]
(There are traces of someone living here)
[wait time="450"]
[click_next]

[talk name=""]
(People in a place like this?)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[talk name="ao" hatena="true"]
Aww, I never thought I'd get caught.
[wait time="450"]
[click_next]

;表記は？？？
[choice_button mode="1" choice1="Who's there!?" jump1="*jump_91" storage="09_true_ending.ks"]
*jump_91

[talk name="ao" hatena="true"]
Hello, Sensei of Schale. My name is Saiba Ultimate Overgod.
[wait time="450"]
[click_next]

;これ以降全てモモイの『シルエット』を使用

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[backlay]
[app name="ao" pos="3" wait="false"]
[playse storage="SE_Spotlight_01.wav" loop="false"]
[wait time="600"]
[talk name="ao"]
No, I go by Ao Saiba now.
[wait time="600"]
[click_next]

[talk ]
[hide name="ao"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="Saiba...Ao!?" jump1="*jump_92" storage="09_true_ending.ks"]

*jump_92
[wait time="500"]
[playse storage="SE_FootStep_04b.wav" loop="false"]

[app name="momoi" pos="3" face="respond" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="shake" wait="true"]
No way... Why is Ultimate Overgod Onee-chan here!?
[wait time="450"]
[click_next]

[talk ]
[hide name="momoi"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="Onee-chan!?" jump1="*jump_93" storage="09_true_ending.ks"]

*jump_93

[app name="ao" pos="3" mode="quick" wait="true"]
[act name="ao" act="hophop"]
[talk name="ao" face="def"]
Stop it, Momoi! I've abandoned that name!
[wait time="450"]
[click_next]

The current me... is an awakened existence that surpasses even gods, to reset this world!
[wait time="450"]
[click_next]

[talk name="ao" face="def"]

Because I'm Ao Saiba now!!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="ao"]
[hide name="momoi"]

[wait time="600"]
[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="yuzu" pos="3" wait="true"]
[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="true"]
Wh-what do you mean? Weren't Momoi and Midori twins!?
[wait time="450"]
[click_next]

[talk ]
[hide name="yuzu"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="300"]

[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="midori" pos="3" wait="true"]
[wait time="600"]

[talk ]
[talk name="midori" face="10"]
That's... I'm sorry, Yuzu-chan. I kept it a secret until now, but we're actually triplets.
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
But she was erased from the family because her ideology was deemed too evil...
[wait time="450"]
[click_next]

[talk name="midori" face="13"]
That's Ultimate Overgod Onee-chan for you.
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-60" name="midori"]
[wait time="300"]

[app name="momoi" pos="4" wait="true" mode="quick" face="serious"]

[talk name="momoi" face="serious"]
But I never imagined we'd reunite in a place like this...
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="600"]
[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="aris" pos="3" wait="true"]
[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="true"]
Why does the Ultimate Overgod try to reset the world!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris"]

[app name="ao" mode="quick"]
[talk name="ao"]

That... I remembered. The distant era when I achieved my fourth reincarnation.
[wait time="450"]
[click_next]

Just before my first reincarnation, I summoned a demon and obtained immortality.
[wait time="450"]
[click_next]

But in exchange, I became a body that couldn't survive without continuously eating pudding.
[wait time="450"]
[click_next]

[talk "]
[hide name="ao"]
[layopt layer="message0" visible="false" wait="true"]

[app name="momoi" mode="quick"]
[talk name="momoi" face="embarrass"]
Pudding... Then, that means the mystery of the missing pudding is—!
[wait time="450"]
[click_next]

[talk ]
[hide name="momoi"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="akira" pos="3"  face="def" wait="true"]
[wait time="300"]
[talk name="akira" face="respond"]
Oh my? What I see over there is an empty pudding cup.
[wait time="450"]
[click_next]

[talk ]
[hide name="akira"]
[layopt layer="message0" visible="false" wait="true"]

[choice_button mode="1" choice1="Could the true culprit behind this incident be!?" jump1="*jump_94" storage="09_true_ending.ks"]
*jump_94

[app name="ao" mode="quick"]
[talk name="ao" face="def"]

Fufu... Now that you've seen this, I can't let you leave alive!
[wait time="450"]
[click_next]

With my power, I shall reset the world!
[wait time="450"]
[click_next]

[playse storage="SE_BigLaser_01.wav" loop="false" wait="true"]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="false"]
[hide_all]

[fadeoutbgm time="1000"]
[unload storage="Theme_48.ogg"]

[wait time="1000"]
[camera layer="base" wait="true" zoom="1.2" y="0" x="0" rotate="0"]
[wait time="80"]

[app name="aris" face="serious" width="800" left="200" top="150" wait="true"]
[talk name="aris" face="serious"]
Blinding Light!
[wait time="1000"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]

[talk name=""]
(At that moment, the sword of light in Aris-san's hand pierced through Ao's body.)
[wait time="1600"]
[click_next]

[wait time="500"]
[reset_camera]
[wait time="500"]

[app name="ao" mode="quick" wait="true"]
[act name="ao" act="stiff"]
[talk name="ao"]
Guh...! You... it can't be!?
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="600"]

[fadeinbgm storage="Theme_45.ogg" time="3000" volume="25"]

[app name="aris" face="serious" wait="true"]
[wait time="600"]
[talk name="aris" face="def"]
You were a bit slow to notice, weren't you?
[act name="aris" act="greeting"]
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
[act name="aris" act="jump"]
Aris is the legendary hero who reincarnates repeatedly to defeat the false gods!
[wait time="450"]
[click_next]

[wait time="300"]
[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[wait time="400"]

[app name="ao"]
[talk name="ao"]
A hero? Why is a hero here...! No, how did you know I'd be here!?
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[wait time="1000"]
[talk name="？？？" tag="true"]
Why? Hehe, that's a foolish question.
[wait time="450"]
[click_next]

[talk name="Himari" tag="true"]
For this super genius pure-type delicate beauty hacker, Akeboshi Himari, there's no mystery I can't solve.
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]

[app name="aris" pos="1" face="respond" wait="true"]
[wait time="600"]
[app name="yuzu" pos="5" face="respond" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="respond" wait="true"]
[wait time="600"]
[app name="midori" pos="4" face="respond" wait="true"]
[wait time="300"]

[talk name="Aris・Momoi・Midori・Yuzu" tag="true"]
[chara_part name="aris" face="smile"]
[chara_part name="momoi" face="smile"]
[chara_part name="midori" face="smile"]
[chara_part name="yuzu" face="smile"]
Master!!
[wait time="450"]
[click_next]

[talk name="Himari" tag="true"]

Now everyone, let's correct the singularity and restore the era to its proper form.
[wait time="450"]
[click_next]

;//◆立ち絵使うかセリフのみか考え中

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="ao" wait="true"]
[talk name="ao"]
[act name="ao" act="jump"]
;[front_talker name="ao"]
; [br name="midori" br="false"]
; [br name="aris" br="false"]
; [br name="yuzu" br="false"]
Uwoooooo! Here goes! Hyper Momoitornado!
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="500"]

[app name="yuzu" pos="2" face="embarrass" wait="true"]
[talk name="yuzu" face="embarrass"]
H-hyah! Moldy old rag!
[wait time="450"]
[click_next]

[talk ]
[app name="midori" pos="4" face="serious" wait="true"]
[talk name="midori" face="serious"]
Then I'm the smelly milk-stained rag!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="serious"]
[act name="aris" act="jump"]
The finishing blow... Here I go! Blinding Light!
[wait time="400"]
[playse storage="SE_BigLaser_02.wav" loop="false" wait="true"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="ao" wait="true"]
[talk name="ao" face="def" tag="false"]
Gwaaaaah! For me to... lose in a place like this... Gyaaaaaaaah!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="ao" act="shake"]
[act name="ao" act="falldownL" wait="true"]
[wait time="600"]
[hide name="ao" wait="true"]
[bg_effect storage="black.jpg"]

[talk name=""]
(And thus, the mystery of the stolen pudding was solved—)
[wait time="450"]
[click_next]

[talk name=""]
(Thanks to Sensei and the hero Aris, peace returned to the world)
[wait time="450"]
[click_next]

~ The End ~
[wait time="450"]
[click_next]

[fadeoutbgm time="1500"]
……
[wait time="450"]
[click_next]
…
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[unload storage="Theme_45.ogg"]
[clearstack]

[iscript]
        f.bukatsu = 'Game Development Club';
        f.momoi_def_width = 900;
        f.momoi_def_offset_L = 110;
        f.momoi_def_top = 140;
        f.momoi_def_size = 1;
        f.momoi_def_offset_emo_L = 110;
        f.momoi_def_offset_emo_T = 10;     
        f.momoi_def  = 'Momoi' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
[endscript]
[chara_new name="momoi_def" jname="&f.momoi_def" storage="chara/momoi/momoi_body.png" width=&f.momoi_width]
[chara_layer name="momoi_def" part="face" id="def" storage="chara/momoi/momoi_def.png" zindex=2 ]
[chara_layer name="momoi_def" part="face" id="eyeclose" storage="chara/momoi/momoi_eyeclose.png" zindex=2 ]
[chara_layer name="momoi_def" part="face" id="smile" storage="chara/momoi/momoi_smile.png" zindex=2 ]

[wait time="600"]

[bg_effect storage="BG_GameDevRoom.jpg"]
[fadeinbgm storage="Theme_64.ogg" time="2000" volume="25"]
[unload storage="Theme_45.ogg"]
[app name="momoi_def" from="bottom" wait="true"]
[talk name="momoi_def" face="smile"]
Sensei, good work! With that hidden ending, it's a full clear!
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
So? Did you manage to predict the true culprit this time?
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="It's very much like the Game Development Club..." jump1="*jump_95" storage="09_true_ending.ks"]
*jump_95
[choice_button mode="1" choice1="Maybe it's impossible to predict this?" jump1="*jump_96" storage="09_true_ending.ks"]
*jump_96
[talk name="momoi_def" face="eyeclose"]
That part was a full-fledged mystery, after all! It wouldn't be fun if the culprit was too easy to figure out, right?
[wait time="450"]
[click_next]

[talk name="momoi_def" face="def"]
But at least we've confirmed there are no falling bugs left in this.
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
Now we're just waiting for feedback from sensei! Please include your impressions too!
[wait time="600"]

*part_end
*rewrite
[layopt layer="message1" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[hide name="momoi_def" wait="true"]
[fadeoutbgm time="3000"]
[bg_effect storage="black.jpg"]

;[position layer="message1" left="1280" top="310" width="330" height="120" visible="true" margin="0" opacity="0"] 
[mtext layer="message1" x="800" y="600" size="40" text="Thank you for playing!" time="5000" in_effect="fadeInLeftBig" out_effect="fadeOut"]

*part_end
[clearstack]
[hide_all]

[jump storage="game_title.ks"]