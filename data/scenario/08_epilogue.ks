
;エピローグ

[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[fadeinbgm storage="Theme_64.ogg" time="2000" volume="25"]

[wait time="600"]

[choice_button mode="1" choice1="Eh, is this the end!? It's not even resolved in the first place!?" jump1="*jump_86" storage="08_epilogue.ks"]
*jump_86

[app name="momoi_def" pos="3"]

[talk name="momoi_def" face="def"]
[act name="momoi_def" act="greeting" wait="false"]
Yeah. That's why I told you at the beginning, right? This time it's a full-fledged mystery!
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="For Momoi, what is the definition of mystery...?" jump1="*jump_87" storage="08_epilogue.ks"]
*jump_87


[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="respond"]
[act name="momoi_def" act="hophop" wait="false"]
Anyway, we got the password, and clearing it means clearing it!
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respod"]
I won't say too much because it'd be spoilers, but...
[wait time="450"]
[click_next]

[talk name="momoi_def" face="respod"]
If you collect all three, they'll give you a hint to open the final door!
[wait time="450"]
[click_next]

[emo name="momoi_def" emo="twinkle"]
[talk name="momoi_def" face="smile"]
Anyway, how to use that password is something you'll have to figure out for yourself, sensei!
[wait time="1000"]
[l][cm]

[if exp="f.momoi_end == 'true'" ]
【Momoi's Password】[r]
TASH-IZAN-0178
[elsif exp="f.midori_end == 'true'"]
【Midori's Password】[r]
TASH-IZAN-0549
[elsif exp="f.akira_end == 'true'"]
【Lady in white's Password】[r]
TASH-IZAN-0273[r]
[endif]

[wait time="1000"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[wait time="600"]
[fadeoutbgm time="500"]
[unload all_sound="true"]
[jump storage="game_title.ks"]
;[パスワードの表示]