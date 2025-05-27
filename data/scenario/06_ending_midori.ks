
[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="Midori-san, aren't you the culprit?" jump1="*jump_71" storage="06_ending_midori.ks"]

*jump_71
[app name="midori" pos="3" face="13" wait="true"]

[talk name="midori" face="13"]
[emo name="midori" emo="surprise"]
[act name="midori" act="shake" wait="false"]
W-wait, I'm...! That's not true!
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="We also have conclusive evidence." jump1="*jump_72" storage="06_ending_midori.ks"]
*jump_72

[chara_part name="midori" face="13"]

[choice_button mode="3" choice3="That tail。" jump3="*sippo" choice1="That headphone。" jump1="*head" choice2="You're in charge of locking up, right?" jump2="*evi" storage="06_ending_midori.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
How does the tail have anything to do with it?
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="Actually, the tail is Midori-san's true form..." jump1="*sippo2" storage="06_ending_midori.ks"]

*sippo2
[talk ]
……
[wait time="450"]
[click_next]
(This story is just too absurd)
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
What about the headphones?
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="Using that transformation ability, you were impersonating the Mistress of this place..." jump1="*head2" storage="06_ending_midori.ks"]

*head2
[talk name=""]
……
[wait time="450"]
[click_next]

(I feel like this is getting way too forced)
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="midori" face="12"]
[act name="midori" act="stiff" wait="false"]
So what? So is my sister.
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="Midori-san was also in charge of bedroom duty." jump1="*evi_1" storage="06_ending_midori.ks"]
*evi_1

[wait time="400"]
[talk name="midori" face="10"]
S-, So？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="When we first met, I heard the bedroom lock was broken." jump1="*evi_2" storage="06_ending_midori.ks"]
*evi_2

[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="But when I checked the bedroom, the lock wasn't broken." jump1="*evi_3" storage="06_ending_midori.ks"]
*evi_3

[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="Wasn't it just a lie to keep people away?" jump1="*evi_4" storage="06_ending_midori.ks"]
*evi_4

[wait time="1500"]
[fadeoutbgm time="2000"]
[talk name="midori" face="07"]
[act name="midori" act="shake" wait="false"]
Umm, my counterargument is...
[wait time="450"]
[click_next]

[clearstack]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="midori" wait="true"]

[wait time="300"]

[app name="aris" pos="3"  face="09" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="respond" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" wait="true"]
[wait time="600"]

[talk name="aris" face="09"]
[emo name="aris" emo="sweat"]
Midori? What's wrong?
[wait time="300"]
[click_next]

[act name="yuzu" act="hophop" wait="false"]
[talk name="yuzu" face="10"]
If you don't say it's not true, they'll really think you're the culprit!?
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
[emo name="momoi" emo="upset"]
That's right. There's no way Midori would do something like that.
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="sweat"]
Because...
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="yuzu" wait="true"]

[fadeinbgm storage="Theme_37.ogg" volume="25" time="3000"]

[app name="midori" pos="3" mode="quick" wait="true"]

[wait time="600"]

[talk name="midori" face="smile"]
...Everyone believes in me, huh. Thank you.
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
[emo name="midori" emo="dot"]
But... in this situation, there's no way to talk my way out of it anymore.
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="07" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" mode="quick" wait="true"]
[wait time="600"]

[clearstack]
[wait time="300"]

[talk ]
!?
[emo name="momoi" emo="surprise"]
[emo name="aris" emo="surprise"]
[emo name="yuzu" emo="surprise"]
[wait time="300"]
[click_next]

[talk name="yuzu" face="respond"]
Then... does that mean Midori really...?
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
Midori was always so kind, teaching Aris how to do the work!
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[emo name="aris" emo="sweat"]
To think that Midori would steal food...
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" pos="3" mode="quick" wait="true"]
[talk name="midori" face="10"]
.........
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="520" name="midori"]
[wait time="300"]
[app name="momoi" pos="2" face="respond" wait="true"]

[talk name="momoi" face="respond"]
Midori...
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
Onee-chan... I'm sorry.
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
Midori, you idiot. Why would you do such a thing...
[wait time="450"]
[click_next]

[talk name="midori" face="depressed"]
...I'm sorry.
[wait time="450"]
[click_next]

[talk name=""]
.........
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" width="1000" left="100" top="100" mode="quick" wait="true"]
[talk name="midori" face="respond"]
Just as Sensei said.
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
I thought if I made it seem like I couldn't go through the window, no one would suspect me...
[wait time="450"]
[click_next]


[talk name="midori" face="10"]
But I even made proper disguises to divert attention to someone else.
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
But how did you figure out I was the culprit?
[wait time="450"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="Because I am Sensei of Schale" jump1="*jump_74" storage="06_ending_midori.ks"]
*jump_74

[wait time="1000"]
[talk name="midori" face="smile"]
[emo name="midori" emo="music"]
...I see. Sensei is amazing, huh?
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="But why commit such a crime?" jump1="*jump_75" storage="06_ending_midori.ks"]
*jump_75

[talk name="midori" face="serious"]
Why, you ask? Do you know, Sensei? Just how valuable this pudding is?
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Value?" jump1="*jump_76" storage="06_ending_midori.ks"]
*jump_76

[talk name="midori" face="eyeclose"]
That pudding is said to be a phantom pudding, with only five made per month.
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
[emo name="midori" emo="respond"]
What's more, due to its rarity, they say anyone who eats it will become lucky...
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Did you want to be lucky?" jump1="*jump_77" storage="06_ending_midori.ks"]
*jump_77

[talk name="midori" face="10"]
I-it's just that... we started this game, me and Onee-chan, promising 'Let's both get strong together, right?'... and yet...
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
[emo name="midori" emo="upset"]
Lately, only Onee-chan has been getting rare drop items and keeps bragging about them...
[wait time="300"]
[click_next]

[talk name="midori" face="embarrass"]
[act name="midori" act="hophop" wait="false"]
It made me so frustrated! So I wanted to boost my luck too and show her up...!
[emo name="midori" emo="sad"]
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="midori" wait="true"]

[wait time="300"]

[app name="aris" pos="3"face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="normal" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="10" mode="quick" wait="true"]
[wait time="600"]

[emo name="aris" emo="dot"]
[emo name="yuzu" emo="dot"]
.........
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[act name="momoi" act="hophop" wait="false"]
[emo name="momoi" emo="surprise"]
H-hey, don't look at me with those eyes, both of you...!
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="momoi" wait="true"]

[wait time="300"]

[clearstack]
[chara_delete name="momoi"]
[chara_delete name="aris"]
[chara_delete name="yuzu"]

;[filter layer="base" blur="3"]
[app name="midori" width="1000" left="100" top="100" mode="quick" wait="true"]

[talk name="midori" face="10"]
That's when it hit me. If no one has ever seen the legendary pudding before—
[wait time="450"]
[click_next]

[talk name="midori" face="serious"]
Maybe if I swapped it out, no one would notice...
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="It's been swapped...!?" jump1="*jump_78" storage="06_ending_midori.ks"]
*jump_78

[talk name="midori" face="embarrass"]
Yes. I did put the substitute pudding in the refrigerator.
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="No way, that can't be...!?" jump1="*jump_79" storage="06_ending_midori.ks"]
*jump_79

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="600"]

[talk name=""]
(The maid, Midori-san, ate the pudding that was in the refrigerator)
[wait time="450"]
[click_next]

[talk name=""]
(Considering the elaborate cover-up and the perpetrator's testimony, there's no doubt about it)
[wait time="450"]
[click_next]

[talk name=""]
(But if that's the case, then where on earth did the pudding that was swapped go...?)
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]
[talk name=""]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【PASSWORD】
TASH-IZAN-0549
[wait time="450"]
[click_next]
[wait time="1000"]

[iscript]
f.midori_end = 'true'
[endscript]


[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]