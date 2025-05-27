
[preload storage="data/bgm/Theme_92.ogg" single_use="true"]
[bg_effect storage="BG06_PartyRoom.jpg" time="3000" wait="false"]
[fadeinbgm storage="Theme_92.ogg" volume="25" time="500"]

[skip_button storage="02_intro_ADV_2_2.ks"]

[talk name=""]
(Heading to the dining hall, everyone had already gathered)
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="Did something happen?" jump1="*jump_24" storage="02_intro_ADV_2_2.ks"]
*jump_24

[app name="midori" pos="3" wait="true"]

[talk name="midori" face="07"]
Ah, um... I'm sorry for causing you concern.
[wait time="450"]
[click_next]

[talk name="midori" face="10"]
[emo name="midori" emo="sweat"]
Well... I'm afraid the Mistress of the mansion just collapsed...
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="Collapsed!?" jump1="*jump_25" storage="02_intro_ADV_2_2.ks"]
*jump_25

[talk name="midori" face="eyeclose"]
Though I should mention, while the Mistress is a super genius with an air of delicate purity, she is also somewhat physically frail.
[wait time="500"]
[l][cm]

[talk name="midori" face="respond"]
It's not unusual for her to fall ill.
[wait time="500"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="respond"]
By the way, there's a message from the Mistress
[wait time="300"]
[l][cm]

[talk name="momoi" face="eyeclose"]
[emo name="momoi" emo="twinkle"]
"I deeply apologize for not being able to grace the dinner table with my lovely flower-like presence."
[wait time="800"]
[l][cm]

[talk name="momoi" face="11"]
[emo name="momoi" emo="music"]
"But please don't let it concern you, and enjoy your meal to the fullest..." she said.
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="By the way, where is the Mistress now?" jump1="*jump_26" storage="02_intro_ADV_2_2.ks"]
*jump_26

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question" wait="false"]
The Mistress? She just left those words and returned to her room?
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="Huh? Then what was the reason the Mistress collapsed?" jump1="*jump_27" storage="02_intro_ADV_2_2.ks"]
*jump_27

[talk name="momoi" face="respond"]
Apparently that limited edition pudding ordered from Trinity was stolen the moment she looked away.
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[wait time="300"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
So when I panicked and tried to call Yuzu, I stubbed my little toe really hard on the wheelchair step.
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="That sounds painful!" jump1="*jump_28" storage="02_intro_ADV_2_2.ks"]
*jump_28

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]
[app name="midori" pos="4" mode="quick" wait="true"]
[talk name="midori" face="12"]
[emo name="midori" emo="upset"]
But who in the world would steal Mistress's pudding...!
[wait time="300"]
[click_next]

[talk name="midori" face="serious"]
[act name="midori" act="hophop" wait="false"]
[emo name="midori" emo="angry"]
As a maid of this mansion, I cannot overlook such wicked deeds!
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
Now now Midori, calm down.
[wait time="400"]
[l][cm]

[talk name="momoi" face="07"]
I'm sure we all share the feeling of not being able to forgive the culprit.
[wait time="500"]
[l][cm]

[talk name="midori" face="normal"]
Onee-chan... you're right.
[wait time="400"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="false"]
[hide name="midori" wait="true"]
[preload storage="data/bgm/Theme_129.ogg" single_use="true"]
[wait time="600"]

[app name="aris" pos="3"  face="serious" wait="true"]
[talk name="aris" face="serious"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="upset"]
There might be a pudding thief around, I can't stay here! Aris is going back to her room!
[wait time="300"]
[click_next]

[talk name="aris" face="smile"]
[emo name="aris" emo="twinkle"]
Aris always wanted to say this line!
[wait time="800"]
[l][cm]

[fadeoutbgm time="3000"]

[talk ]
[app name="yuzu" pos="5" wait="true"]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="sweat"]
Um, Aris-chan? That's like a death flag...
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_FootStep_10.wav" loop="false" wait="true"]
[fadeinbgm storage="Theme_129.ogg" volume="25" time="3000"]

[wait time="300"]

[app name="akira" pos="3" wait="true"]

[talk name="akira" face="08"]
Anyway, I understand the situation. But if that's the case...
[wait time="300"]
[click_next]

[talk name="akira" face="10"]
[emo name="akira" emo="question" wait="false"]
So the suspects have been narrowed down to these six people, is that correct?
[wait time="700"]
[l][cm]

[talk name="akira" face="respond"]
It was you ladies who confirmed the mansion was locked up, right?
[wait time="700"]
[l][cm]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="akira"]
[app name="momoi" pos="2" face="respond" mode="quick" wait="true"]

[talk name="momoi" face="respond"]
I'll check them off the list once confirmed, so nothing will be missed.
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="In other words, you can't enter from the outside." jump1="*jump_29" storage="02_intro_ADV_2_2.ks"]
*jump_29


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="midori" pos="2" mode="quick" wait="true"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
Speaking of which, Yuzu-chan and Aris-chan were in charge of dinner tonight, right?
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="question" wait="false"]
...Huh?
[wait time="300"]
[click_next]

[talk name="yuzu" face="08"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="surprise"]
Wha!? Midori, are you suspecting us...!?
[wait time="300"]
[click_next]

[talk name="midori" face="10"]
I didn't say that, but there's a possibility you might have seen the culprit.
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" mode="quick" wait="true"]
[talk name="aris" face="normal"]
Aris and Yuzu last saw the pudding at 3pm snack time.
[wait time="450"]
[click_next]

[talk name="aris" face="09"]
[emo name="aris" emo="sweat"]
But we haven't seen anyone suspicious since then.
[wait time="300"]
[click_next]

[talk name=""]
(3pm... that means it was about two and a half hours ago.)
[wait time="500"]
[l][cm]


[choice_button mode="1" choice1="Are you sure about that?" jump1="*jump_30" storage="02_intro_ADV_2_2.ks"]
*jump_30

[talk name="aris" face="def"]
[act name="aris" act="hophop" wait="false"]
Yes! I put the pudding that arrived into the refrigerator, right in front of the Mistress!
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="aris"]
[app name="yuzu" pos="2" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="yuzu" act="greeting" wait="false"]
No mistake about it. After that, Aris-chan and I were cleaning your room together.
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
[emo name="yuzu" emo="twinkle"]
You should be able to testify about that, Master.
[wait time="800"]
[l][cm]

[talk name="yuzu" face="eyeclose"]
[emo name="yuzu" emo="dot"]
But Alice-chan and I started preparing dinner about an hour ago...
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
[emo name="yuzu" emo="bulb"]
Perhaps it had already been stolen by then.
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="I wonder if the time of the crime was between 3:00 PM and 4:30 PM?" jump1="*jump_31" storage="02_intro_ADV_2_2.ks"]
*jump_31

[talk name="aris" face="serious"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="upset"]
There might be a pudding thief around, I can't stay here! Aris is going back to her room!
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[emo name="yuzu" emo="sweat"]
This is becoming less of a joke by the minute...
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[clearstack]
[preload storage="data/bgm/Theme_95.ogg" single_use="true"]
[wait time="800"]

[app name="momoi" pos="2" mode="quick" wait="true"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="momoi" face="embarrass"]
Besides, it doesn't feel good to spend time suspected of being the culprit.
[wait time="300"]
[click_next]

[talk name="midori" face="07"]
[act name="midori" act="greeting" wait="false"]
...That's true. If we stop trusting each other, that might be exactly what the culprit wants.
[wait time="700"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="800"]

[talk name=""]
(The stolen pudding, the fallen mistress of this mansion, the crime committed by someone inside the mansion—)
[wait time="450"]
[click_next]

[talk name=""]
(Perhaps it was fate that brought us all together here at this moment!)
[wait time="450"]
[click_next]

[wait time="300"]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="respond"]
--Oh my? Is something the matter?
[emo name="akira" emo="exclaim"]
[wait time="300"]
[click_next]

[wait time="300"]

[layopt layer="message0" visible="false" wait="true"]
[fadeoutbgm time="500"]

[playbgm storage="Theme_95.ogg" volume="25"]
[wait time="400"]
[hide_all]

[wait time="700"]
[playse storage="SE_Flick_01.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="I understand the situation." jump1="*jump_32" storage="02_intro_ADV_2_2.ks"]
*jump_32
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="And with that, this difficult case——" jump1="*jump_33" storage="02_intro_ADV_2_2.ks"]
*jump_33
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="I'll definitely solve this successfully!!" jump1="*jump_34" storage="02_intro_ADV_2_2.ks"]
*jump_34
[clearstack]
*test
[wait time="800"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="aris" pos="1" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="momoi" pos="2" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="akira" pos="3" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="midori" pos="4" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="yuzu" pos="5" face="serious" wait="true"]
[wait time="300"]

[clearstack]
[unload storage="SE_Spotlight_01.wav"]
[wait time="300"]

[talk name=""]
!?
[emo name="momoi" emo="exclaim"]
[emo name="aris" emo="exclaim"]
[emo name="akira" emo="exclaim"]
[emo name="midori" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]

[wait time="1200"]
[l][cm]
[wait time="400"]
[talk ]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="yuzu" pos="3" mode="quick" wait="true"]
[layopt layer="message0" visible="true"]
;立ち絵並べる
[talk name="yuzu" face="normal"]
W-well, if you can solve it, that'd be a big help...
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
Is something like that really possible?
[emo name="yuzu" emo="question" wait="false"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="I can!" jump1="*jump_35" storage="02_intro_ADV_2_2.ks"]
*jump_35
;選択肢同時
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="Because despite how I look..." jump1="*jump_36" storage="02_intro_ADV_2_2.ks"]
*jump_36
;選択肢同時
[wait time="800"]
[playse storage="SE_Fall_06.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="I am Schale's Sensei, the Federal Investigation Bureau!!" jump1="*jump_37" storage="02_intro_ADV_2_2.ks"]
*jump_37

[app name="momoi" pos="3" face="serious" wait="true"]

[talk name="momoi" face="serious"]
Schale's...!
[emo name="momoi" emo="surprise"]
[wait time="300"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="momoi"]

[wait time="400"]

[app name="midori" pos="2" face="serious" wait="true"]

[talk name="midori" face="serious"]
Sensei...!?
[emo name="midori" emo="surprise"]
[wait time="300"]
[click_next]

[hide_all]
[talk ]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="09"]
Fufu, I never expected to be working alongside someone like you...
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[fadeoutbgm time="1000"]
[wait time="1000"]

*part_end

[hide_all]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="03_tutorial.ks"]
