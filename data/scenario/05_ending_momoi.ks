
[playbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="Momoi-san, aren't you the culprit?" jump1="*jump_61" storage="05_ending_momoi.ks"]
*jump_61

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="07"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="surprise"]
Ku...!? B-but this alone isn't enough evidence...
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="We also have conclusive evidence." jump1="*jump_62" storage="05_ending_momoi.ks"]
*jump_62

[chara_part name="momoi" face="07"]

;証拠3選択肢
[choice_button mode="3" choice1="That tail." jump1="*sippo" choice2="That headphone." jump2="*head" choice3="Where did the little bottle you took go?" jump3="*evi" storage="05_ending_momoi.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
What's wrong with your tail?
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="Actually, it's an optical camouflage generator..." jump1="*sippo2" storage="05_ending_momoi.ks"]

*sippo2

[talk ]
……
[wait time="450"]
[click_next]

(No matter how you look at it, this feels way too forced)
[wait time="450"]
[click_next]

[jump target="*jump_62"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
What about the headphones?
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="Actually, it has a function to stop time..." jump1="*sippo2" storage="05_ending_momoi.ks"]

[talk ]
……
[wait time="450"]
[click_next]
(If it were possible, She would've escaped from here long ago)
[jump target="*jump_62"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="momoi" face="serious"]
[act name="momoi" act="stiff" wait="false"]
Wh-why would you...
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="Momoi-san said earlier." jump1="*talk1" storage="05_ending_momoi.ks"]
*talk1
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="You got drenched in spilled air freshener." jump1="*talk2" storage="05_ending_momoi.ks"]
*talk2
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="Could both have been deception operations?" jump1="*talk3" storage="05_ending_momoi.ks"]
*talk3
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="Please answer honestly." jump1="*talk4" storage="05_ending_momoi.ks"]
*talk4

[wait time="1500"]
[fadeoutbgm time="2000"]
[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="dot"]
…………
[wait time="300"]
[click_next]

[clearstack]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="true"]

[wait time="300"]

[app name="midori" pos="3" face="10" wait="true"]
[wait time="600"]
[app name="aris" pos="2" face="09" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" wait="true"]
[wait time="600"]

[talk name="midori" face="10"]
[emo name="midori" emo="sweat"]
No way... Onee-chan...? Wait, that can't be right? Right?
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
Momoi, if it's not true, just say it's not! Then sensei would surely investigate again!
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[act name="aris" act="hophop" wait="false"]
That's right! Momoi isn't the kind of person who'd secretly eat someone else's food!
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
Aris understands perfectly well!
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[fadeinbgm storage="Theme_37.ogg" volume="25" time="3000"]

[app name="momoi" pos="3" mode="quick" wait="true"]

[wait time="600"]

[talk name="momoi" face="07"]
E-everyone... thank you. I... I...
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
No, I'm sorry... It was me who ate Mistress' pudding.
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" pos="3" mode="quick" wait="true"]
[wait time="600"]
[app name="aris" pos="2" face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" mode="quick" wait="true"]
[wait time="300"]

[clearstack]
[wait time="300"]

[talk ]
!?
[emo name="midori" emo="surprise"]
[emo name="aris" emo="surprise"]
[emo name="yuzu" emo="surprise"]
[wait time="300"]
[click_next]

[talk name="midori" face="07"]
No way... Onee-chan, why?
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
Momoi really ate Mistress' pudding...?
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
Even if that were true, Aris can't believe it!
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="11"]
Ehehe... That's why I know you'll all believe in me.
[wait time="450"]
[click_next]

[talk name="momoi" face="smile"]
As for me, I can't bring myself to betray everyone any further.
[wait time="450"]
[click_next]

[talk name=""]
…………
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
Just as Sensei said. The small bottle... I tried to divert suspicion to others using vanilla essence.
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
But since the smell got on me too, I tried to cover it up with air freshener.
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="question"]
But how did you figure out I was the culprit?
[wait time="300"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="Well, I am Sensei of Schale after all." jump1="*jump_64" storage="05_ending_momoi.ks"]
*jump_64

[wait time="1000"]
[talk name="momoi" face="respond"]
[emo name="momoi" emo="dot"]
...Huh? That's not really a reason, is it?
[wait time="300"]
[click_next]

[talk name="momoi" face="smile"]
[emo name="momoi" emo="music"]
But...ahaha, I see. Schale's Sensei is really amazing after all.
[wait time="300"]
[click_next]


[talk ]
[choice_button mode="1" choice1="But you're the maid, why?" jump1="*jump_65" storage="05_ending_momoi.ks"]
*jump_65

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question"]
That...does sensei know? The true value of the pudding that our Mistress specially ordered.
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Value?" jump1="*jump_66" storage="05_ending_momoi.ks"]
*jump_66

[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[wait time="300"]
;[filter layer="base" blur="3"]

[app name="momoi" width="1200" left="0" top="0" mode="quick" wait="true"]

[talk name="momoi" face="eyeclose"]
Limited to just 5 pieces per month - under normal circumstances, you'd almost never get a chance to encounter such a super ultra rare pudding in your life.
[wait time="450"]
[click_next]

[talk name="momoi" face="serious"]
[act name="momoi" act="hophop" wait="false"]
[emo name="momoi" emo="exclaim"]
And yet right now, that super ultra rare pudding is right within reach if I just stretch out my hand! So...!
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="You ate it all?" jump1="*jump_67" storage="05_ending_momoi.ks"]
*jump_67

[talk name="momoi" face="07"]
[act name="momoi" act="greeting" wait="false"]
Lately, I've been completely possessed by the allure of pudding, you could say...
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
I couldn't think about anything except how to get my hands on that ultra rare pudding.
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
But right after finishing it, I finally came to my senses, and then suddenly I got scared...
[wait time="300"]
[click_next]

[wait time="300"]

[talk ]

[choice_button mode="1" choice1="So that's the camouflage operation, right?" jump1="*jump_68" storage="05_ending_momoi.ks"]
*jump_68

[talk name="momoi" face="serious"]
[act name="momoi" act="greeting" wait="false"]
That's how it was. No one has ever actually eaten - or even seen - a genuine super ultra rare pudding before--
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
Then I thought no one would notice if I swapped it with another pudding... That's what I thought.
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="You switched it...!?" jump1="*jump_69" storage="05_ending_momoi.ks"]
*jump_69

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question"]
That's right. I never imagined the swapped pudding would just disappear though.
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="No way, that can't be...!?" jump1="*jump_70" storage="05_ending_momoi.ks"]
*jump_70

[hide_all]

[wait time="600"]

[talk name=""]
(The maid, Momoi-san, ate the pudding that was in the refrigerator.)
[wait time="450"]
[click_next]

[talk name=""]
(The elaborate disguise work, the person's testimony—judging from these, there should be no mistake.)
[wait time="450"]
[click_next]

[talk name=""]
(But if that's the case, then where on earth did the pudding that was supposedly swapped go...?)
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]
[talk name=" " face="def"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【PASSWORD】
TASH-IZAN-0178
[wait time="450"]
[click_next]
[wait time="1000"]

[iscript]
f.momoi_end = 'true'
[endscript]


[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]