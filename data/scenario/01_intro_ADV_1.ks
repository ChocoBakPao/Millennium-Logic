;-----------------------------------------------------------
;------------------------------------------------------------------------------
;イントロ用ADV-1-
;背景の表示:ゲーム開発部
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[fadeinbgm storage="Theme_64.ogg" time="3000" volume="25"]
[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[skip_button storage="01_intro_ADV_1.ks"]

[app name="momoi_def" pos="3" wait="false"]

[talk name="momoi_def" face="def"]
Sensei, you're here! I've been waiting!
[act name="momoi_def" act="hophop"]
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Sorry, my work just wouldn't wrap up." jump1="*jump_01" storage="01_intro_ADV_1.ks"]
*jump_01

;先生のセリフはすべて選択肢で想定しています。
;（）はゲーム内のメイドイベでも多用されていたモノローグ扱いです。
[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="shake" wait="false"]
[emo name="momoi_def" emo="upset"]
No, don't worry about it... Just you coming here is enough for me... *thud*...
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="momoi_def" act="falldownR" wait="true"]

[choice_button mode="1" choice1="Are you okay!?" jump1="*jump_02" storage="01_intro_ADV_1.ks"]
*jump_02

[hide_all]

[app name="momoi_def" pos="3" from="bottom" wait="true" face="smile"]

[talk name="momoi_def" face="embarrass"]
Whoa there, almost fell asleep.
[wait time="450"]
[click_next]

;これ以降読み込まなくなります…

[talk name="momoi_def" face="normal"]
[act name="momoi_def" act="hophop" wait="false"]
Ah, it's not like I'm pushing myself too hard or anything, so don't worry.
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="twinkle"]
Because this is proof of how hard we've worked!
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="Proof? Now that you mention it, where is everyone else?" jump1="*jump_03" storage="01_intro_ADV_1.ks"]
*jump_03

[talk name="momoi_def" face="respond"]
Oh right, I haven't even explained why I called you here.
[wait time="300"]
[click_next]

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
Actually, until just now, we were debugging our latest game.
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
We were trying to surprise you, so we kept it secret.
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="The latest work...!? I'm curious about it!" jump1="*jump_04" storage="01_intro_ADV_1.ks"]
*jump_04

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="chat"]
Right? Right? I knew you'd say something like that!
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
So that's why I let Midori and the others who worked all night go home first.
[wait time="700"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
Aris said she was waiting for Sensei to come, but...
[wait time="450"]
[click_next]

[talk name="momoi_def" face="09"]
[act name="momoi_def" act="greeting" wait="false"]
[emo name="momoi_def" emo="sweat"]
Yuzu completely collapsed, so we had to carry her to her room.
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="I see. Good work, everyone." jump1="*jump_05" storage="01_intro_ADV_1.ks"]
*jump_05

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" le"]
Ehehe. Thanks, sensei.
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
But I'd like you to say those words after playing the latest game.
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="What kind of game is it?" jump1="*jump_06" storage="01_intro_ADV_1.ks"]
*jump_06

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
Fufufu. That is...
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]

[clearstack]
[app name="momoi_def" width="1200" left="-130" top="50" mode="quick" wait="false"]
;立ち絵サイズ大きく

[talk name="momoi_def" face="normal"]
Behold! A full-fledged mystery game from the Game Development Club!
[emo name="momoi_def" emo="twinkle"]
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="Mystery?" jump1="*jump_07" storage="01_intro_ADV_1.ks"]
*jump_07

[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]
[wait time="300"]
[app name="momoi_def" pos="3" mode="quick"]

;立ち絵サイズ通常に戻す

[talk name="momoi_def" face="respond"]
Exactly! But we're not used to making mystery games, you see.
[wait time="500"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
[emo name="momoi_def" emo="sweat"]
I'm a little worried about whether it'll work properly as intended.
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
[emo name="momoi_def" emo="chat"]
So I was hoping sensei could play it and give us feedback!
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respond"]
Of course I know you're busy, so no pressure. What do you think?
[wait time="800"]
[l][cm]

[talk ]

[choice_button mode="1" choice1="If you want me to, then I'd be glad to!" jump1="*jump_08" storage="01_intro_ADV_1.ks"]
*jump_08

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="music"]
As expected of you, sensei! Thank you!
[wait time="300"]
[click_next]

;
;[hide_all]

[talk name="momoi_def" face="def"]
Then... here, this is the controller.
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
Basically, just play along with the story, and you'll be fine!
[wait time="450"]
[click_next]

[playse storage="SE_Typing_02.wav" loop="false"]
[talk name="momoi_def" face="smile"]
Alright then... game... start♪
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[fadeoutbgm time="1000"]
[wait time="1000"]

*part_end

[hide name="momoi_def"]
[stopbgm]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="02_intro_ADV_2_1.ks"]
