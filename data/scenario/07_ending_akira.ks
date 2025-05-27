[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]
[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="白いお姉さん、あなたではありませんか？" jump1="*jump_80" storage="07_ending_akira.ks"]
*jump_80

[wait time="600"]
[app name="akira" pos="3" wait="true"]
[wait time="600"]

[talk name="akira" face="respond"]
Fufu, will that truly serve as evidence?
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
Could it be that someone [${${dat[2]}}] is attempting to frame me?
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="決定的な証拠もあります。" jump1="*jump_81" storage="07_ending_akira.ks"]
*jump_81

[chara_part name="akira" face="eyeclose"]

;証拠3選択肢

[choice_button mode="3" choice3="Those ear." jump3="*mimi" choice1="That Cane." jump1="*tue" choice2="That tail." jump2="*sippo" storage="07_ending_akira.ks"]

*sippo

[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
Is there something wrong with my tail?
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="実は尻尾がムチのように伸びて……" jump1="*sippo_1" storage="07_ending_akira.ks"]

*sippo_1

[talk ]
……
[wait time="450"]
[click_next]
(But what can I do even if it's grown longer?)
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*mimi
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
Is there something wrong with my ears?
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="実は耳がドリルになっていて壁に穴を……" jump1="*mimi_1" storage="07_ending_akira.ks"]

*mimi_1

[talk ]
……
[wait time="450"]
[click_next]
(If so, I should have been noticed by sound)
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*tue

[wait time="1500"]
[talk name="akira" face="eyeclose" ]
The cane... you say?
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="廊下で不審な足跡を見つけました。" jump1="*tue_1" storage="07_ending_akira.ks"]
*tue_1
[wait time="800"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="それはメイドさんの靴なんですが……" jump1="*tue_2" storage="07_ending_akira.ks"]
*tue_2
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="その脇には小さな丸い窪みがあって。" jump1="*tue_3" storage="07_ending_akira.ks"]
*tue_3
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="丸い窪み、お姉さんの杖ではありませんか？" jump1="**tue_4" storage="07_ending_akira.ks"]
*tue_4
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="あなたはメイドさんの靴を履き――" jump1="**tue_5" storage="07_ending_akira.ks"]
*tue_5
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="彼女たちに罪をなすり付けようとした。" jump1="**tue_6" storage="07_ending_akira.ks"]
*tue_6


[wait time="1000"]
[fadeoutbgm time="2000"]
[talk name="akira" face="normal"]
Hmm—I'm surprised to be exposed so easily.
[emo name="akira" emo="twinkle"]
[wait time="1000"]
[l][cm]

[talk name="akira" face="eyeclose"]
[act name="momoi" act="greeting" wait="false"]
You're absolutely right, sensei. Yes—
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_114.ogg" volume="25" time="3000"]
[unload storage="Theme_19.ogg"]

[talk name="akira" face="respond"]
The pudding was indeed taken by me—this [${${dat[5]}}] Phantom Thief of Benevolence.
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
Fufu. Regarding the disguise work, you're exactly right.
[wait time="450"]
[click_next]


[talk ]
[chara_move time="800" wait="true" anim="true" left="650" name="akira"]
[wait time="600"]
[app name="midori" pos="3" face="serious" wait="true"] 
[wait time="600"]
[app name="aris" pos="2" face="serious" wait="true"]
[wait time="600"]

[talk name="midori" face="serious"]
[act name="midori" act="jump" wait="false"]
Then the car trouble was also a lie from the very beginning...?
[emo name="midori" emo="question"]
[wait time="300"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
You came here to steal the pudding, didn't you!
[emo name="aris" emo="upset"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
[act name="akira" act="greeting" wait="false"]
However, I did properly send a notice as part of my greeting.
[wait time="450"]
[click_next]

[talk ]
[hide name="midori" wait="true"]

[app name="yuzu" pos="3" wait="true"]
[wait time="600"]

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
Then that strange letter I saw this morning was... could it have been a calling card...?
[wait time="450"]
[click_next]

[talk ]
[hide name="aris" wait="true"]

[app name="momoi" pos="2" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="jump" wait="false"]
I don't really understand, but if we've identified the culprit, we have to catch her! Everyone, let's go!
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="akira" wait="true"]

[app name="midori" pos="2" face="serious" mode="quick" wait="true"]
[wait time="600"]
[app name="aris" pos="3" face="serious" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="serious" mode="quick" wait="true"]
[wait time="600"]

[wait time="300"]

[talk ]
!?
[emo name="midori" emo="exclaim"]
[emo name="aris" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]
[wait time="300"]
[click_next]

[wait time="800"]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

*test
[wait time="800"]

[app name="akira" pos="3" wait="true"]
[wait time="600"]

[talk name="akira" face="normal"]
Please wait, young ladies. [${${dat[2]}}] I have neither fled nor hidden.
[wait time="450"]
[click_next]


[talk name="akira" face="eyeclose"]
No, far from it - I've actually become quite interested in uncovering the truth of this case.
[emo name="akira" le"]
[wait time="800"]
[l][cm]

[choice_button mode="1" choice1="どういうこと？" jump1="*jump_83" storage="07_ending_akira.ks"]
*jump_83

[talk name="akira" face="normal"]
[act name="akira" act="greeting" wait="false"]
I'm impressed by sensei's keen insight.
[emo name="akira" emo="heart"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
[act name="akira" act="hophop" wait="false"]
Yes—that is precisely why I dare to say this.
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
Indeed, [${${dat[2]}}]I was aware of the day the pudding would arrive at this mansion and came accordingly.
[wait time="450"]
[click_next]

[talk name="akira" face="serious"]
But—in such a situation where the pudding disappeared, who do you think would be the first to be suspected?
[emo name="akira" emo="question"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
Excluding Sensei, the only outsider is [${${dat[5]}}]me alone.
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
In that case, suspicion would naturally turn toward me. The risk is far too great.
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="つまり？" jump1="*jump_84" storage="07_ending_akira.ks"]
*jump_84

[talk name="akira" face="respond"]
It's simple, really. It's all about creating a false lead.
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="smile"]
As long as the incident isn't discovered until after I leave this mansion, it's fine.
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="normal"]
[act name="akira" act="hophop" wait="false"]
That's why I replaced the pudding in the fridge with a fake.
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-100" name="akira"]
[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
Eh? But the mistress noticed the pudding was missing...
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
Yes. It's a very strange story. That's exactly why [${${dat[8]}}]I, too, want to know the truth.
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
[talk name="akira" face="respond"]
Or perhaps... Sensei?
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
Will you capture me right here, right now?
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
[act name="akira" act="hophop" wait="false"]
Look, as you can see. Hehe, if you're going to catch me, now's the perfect chance while I'm defenseless.
[wait time="450"]
[click_next]


Well then, Sensei? What kind of ending are you hoping for?
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]

[talk ]
[choice_button mode="1" choice1="いったいこの屋敷で何が……？" jump1="*jump_85" storage="07_ending_akira.ks"]
*jump_85


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="akira" wait="true"]

[wait time="600"]

[talk name=""]
(A woman who calls herself the Phantom Thief of Benevolence had stolen the pudding from the fridge)
[wait time="450"]
[click_next]

[talk name=""]
(The elaborate disguise, her own testimony - judging from these, there should be no mistake)
[wait time="450"]
[click_next]

[talk name=""]
(But if that's the case, then where on earth is the pudding she supposedly swapped it with...?)
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【PASSWORD】[r]
TASH-IZAN-0273

*end

[wait time="450"]
[click_next]
[iscript]
f.akira_end = 'true'
[endscript]
[wait time="1000"]

[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]

