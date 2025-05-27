[preload storage="data/bgm/Theme_03.ogg" single_use="true"]
[bg_effect storage="BG_ForestRailRoad_Fog.jpg" time="1500"]

[skip_button storage="02_intro_ADV_2_1.ks"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
(I'm with the Federal Investigation Bureau—Schale's Sensei.)
[wait time="450"]
[click_next]

[talk name=""]
(Today, acting as a mediator, I was driving out to a distant autonomous district, but...)
[wait time="450"]
[click_next]

[talk name=""]
(My car got a flat tire in the mountains, leaving me stranded...)
[wait time="450"]
[click_next]

[talk name=""]
(To make matters worse, there's no cell reception here, so I can't call for help—)
[wait time="450"]
[click_next]

[bg_effect storage="BG_MudFlat_cloudy.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
(On top of that, heavy clouds loom in the sky, and nightfall is approaching...)
[wait time="450"]
[click_next]

[talk name=""]
(So, I left the car behind and ventured deeper into the mountains to seek help)
[wait time="450"]
[click_next]

[bg_effect storage="BG_ForestRoad_Night.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
(And then, about 30 minutes later—)
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Where is this...?" jump1="*jump_09" storage="02_intro_ADV_2_1.ks"]
*jump_09

[talk name=""]
(Suddenly, my view cleared, revealing a somewhat eerie Western-style mansion)
[wait time="450"]
[click_next]

[talk name=""]
(Still, since rain could start any moment, I couldn’t afford to be picky)
[wait time="450"]
[click_next]

[talk name=""]
(I decided to knock on the mansion’s door and ask the residents for help)
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[bg_effect storage="BG01_HotelLobby.jpg" time="1500"]
[fadeinbgm storage="Theme_03.ogg" time="1500" wait="true" volume="30"]
[preload storage="data/bgm/Theme_04.ogg"]
[wait time="300"]
[app name="yuzu" pos="3" wait="true"]
[wait time="300"]
;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true" face="respond" ]
A flat tire... That’s unfortunate.
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true" face="smile"]
But you’re really lucky to have made it here.
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true"  face="smile"]
There aren’t any other houses around here.
[wait time="600"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-20" name="yuzu" ]
[app name="aris" pos="4" wait="true"]
[wait time="300"]

;名前？？？
[talk name="aris" hatena="true"]
So Aris recommends calling for help tomorrow and staying the night here tonight!
[wait time="600"]
[click_next]


;名前？？？
[choice_button mode="1" choice1="Is this not a bother to you?" jump1="*jump_10" storage="02_intro_ADV_2_1.ks"]
*jump_10

[talk name="yuzu" hatena="true"  face="07"]
It’s fine! The lady over there is also staying the night.
[wait time="600"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
;◆立ち絵は仮面無しでお願いします
[wait time="300"]
;名前？？？

[talk ]
(Following the maid’s gaze, there’s a woman dressed in white)
[wait time="450"]
[click_next]

[talk name="akira" face="respond" hatena="true"]
Besides, it’s pouring outside. Do you have somewhere to go?
[wait time="600"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="akira" wait="true"]

[wait time="400"]

[playse storage="SE_FootStep_10.wav" loop="false" sprite_time="0-1400"]

[app name="momoi" pos="2" wait="true" ]
[wait time="300"]
[app name="midori" pos="4" wait="true"]
[wait time="300"]

[talk name="momoi" hatena="true"]
Exactly. You might get lost, you know?
[wait time="600"]
[click_next]

[talk ]

;名前？？？
[choice_button mode="1" choice1="?" jump1="*jump_11" storage="02_intro_ADV_2_1.ks"]
*jump_11

[talk name=""]
(Looking over, two maids with identical faces were descending the stairs)
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[fadeoutbgm time="500"]
[wait time="500"]

[clearstack]

[bg_effect storage="BG01_HotelLobby.jpg" time="2000"]
[fadeinbgm storage="Theme_04.ogg" volume="25" time="2000"]
[preload storage="data/bgm/Theme_08.ogg" single_use="true"]
[wait time="300"]

[app name="momoi" pos="2" mode="quick" wait="true"]
[wait time="600"]

[app name="midori" pos="3" mode="quick" wait="true"]
[wait time="600"]

[app name="yuzu" pos="4" face="smile" mode="quick" wait="true"]
[wait time="600"]

[talk name="momoi" face="smile" hatena="true"]
Yuzu, I’ve finished checking the locks and preparing the guest room.
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" hatena="true"]
Ah, but the Mistress' bedroom window latch is broken and won’t open.
[wait time="600"]
[click_next]

[talk name="midori" face="normal" hatena="true" ]
I’ll fix it tomorrow if the rain stops.
[wait time="600"]
[click_next]

;名前？？？
[talk name="yuzu" hatena="true" face="respond"]
Good work, Momoi and Midori. Sorry to ask right after you got back, but...
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" face="respond" hatena="true"]
Yeah. That person’s staying too, right? I heard everything clearly.
[wait time="600"]
[click_next]

;名前？？？
[talk name="momoi" hatena="true" face="normal"]
If it’s about preparing the guest room, leave it to us!
[wait time="600"]
[click_next]

[talk ]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

;名前？？？
[choice_button mode="1" choice1="Thank you for having me." jump1="*jump_12" storage="02_intro_ADV_2_1.ks"]
*jump_12

[wait time="400"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="smile"]
[emo name="momoi" emo="chat"]
Ahaha, you don't have to be so formal. Oh, I'm Momoi, nice to meet you!
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]

[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="momoi" face="normal"]
This is my sister, Midori.
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
Nice to meet you, I'm Midori.
[act name="midori" act="greeting" wait="true"]
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="smile"]
[emo name="aris" emo="music"]
Yes! Aris is Aris! Pleased to meet you!
[wait time="300"]
[click_next]

[talk ]
[wait time="300"]

[chara_move time="800" wait="true" anim="true" left="-170" name="aris"]

[wait time="300"]

[app name="yuzu" pos="4" mode="quick" wait="true"]
[talk name="yuzu" face="09"]
Um... I'm Yuzu. Nice to meet you.
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="I am――" jump1="*jump_13" storage="02_intro_ADV_2_1.ks"]
*jump_13

[talk name="？？？" face="normal"]
Pardon me for interrupting your conversation. I happened to overhear...
[wait time="450"]
[click_next]

[talk ]
[fadeoutbgm time="600"]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[fadeinbgm storage="Theme_08.ogg" time="600" volume="25"]

[wait time="500"]

[app name="akira" pos="3" wait="true"]

[talk name="akira" face="respond"]
I hear you'll also be staying at this mansion tonight?
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="I got a flat tire on my car." jump1="*jump_14" storage="02_intro_ADV_2_1.ks"]
*jump_14

[talk name="akira" face="eyeclose"]
[act name="akira" act="greeting" wait="false"]
Is that so? Actually, my car's battery died...
[wait time="450"]
[click_next]

[talk name="akira" face="08_respond_02"]
I arrived at this mansion just a few hours ago.
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="What a disaster for both of us." jump1="*jump_15" storage="02_intro_ADV_2_1.ks"]
*jump_15

[talk name="akira" face="normal"]
[emo name="akira" emo="chat"]
But if you walked all the way here, you must be quite tired.
[wait time="300"]
[click_next]

[talk name="akira" face="15_embarassed_02"]
[ruby text=I]I can wait, so why don't you show them to their rooms first?
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
Would that be alright with you young ladies?
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-50" name="akira"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="momoi" act="greeting" wait="false"]
Yes. If you're okay with it, I don't mind.
[wait time="450"]
[click_next]

[talk name="akira" face="16"]
[emo name="akira" emo="twinkle"]
Then please don't mind me. Go ahead to your rooms.
[wait time="1000"]
[l][cm]

[talk ]
[wait time="300"]

[choice_button mode="1" choice1="Thank you for your concern." jump1="*jump_16" storage="02_intro_ADV_2_1.ks"]
*jump_16

[hide_all]

[layopt layer="message0" visible="false" wait="true"]

[fadeoutbgm time="500"]
[wait time="500"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="2000" wait="true"]

[talk name=""]
(Thanks to the kind woman, I was shown to a guest room without waiting for room service)
[wait time="300"]
[click_next]

[talk name=""]
(And perhaps due to exhaustion from wandering the mountains, when I sat on the plush sofa—)
[wait time="450"]
[click_next]

[talk ]
(Before I knew it, I had fallen into a light sleep...)
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[bg_effect storage="black.jpg" time="1500"]

[reset_camera layer="base" wait="true"]

[talk ]
........
[wait time="450"]
[click_next]

[playse storage="SE_Knock_01.wav" loop="false"]
Knock, knock
[wait time="450"]
[click_next]

[talk name=""]
(I wake to the sound of a quiet knock)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="1000"]

[choice_button mode="1" choice1="Come in" jump1="*jump_17" storage="02_intro_ADV_2_1.ks"]
*jump_17

[wait time="800"]

[playse storage="SE_DoorSlowOpen_01.wav" loop="false" volume="20" wait="true"]

[wait time="1000"]

[talk name=""]
(Checking the time, about 30 minutes had passed since entering the room)
[wait time="450"]
[click_next]

[wait time="300"]

[fadeinbgm storage="Theme_04.ogg" volume="25" time="3000"]

[app name="yuzu" pos="3" wait="true"]

[talk name="yuzu" face="respond"]
Um, excuse me... were you asleep by any chance?
[wait time="450"]
[click_next]

[talk ]

;立ち絵表示
[choice_button mode="1" choice1="I was just dozing off." jump1="*jump_18" storage="02_intro_ADV_2_1.ks"]
*jump_18
[choice_button mode="1" choice1="By the way, did you need something?" jump1="*jump_19" storage="02_intro_ADV_2_1.ks"]
*jump_19

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="sweat"]
No, well... it's nothing that important...
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[act name="yuzu" act="hophop" wait="false"]
[emo name="yuzu" emo="upset"]
S-sorry...! I'll just return to my post~!
[wait time="300"]
[click_next]

[playse storage="SE_FootStep_10.wav" loop="false" sprite_time="0-1400" wait="true"]
[talk ]
[move pos="4" name="yuzu" anime="true" ]
[wait time="300"]

[app name="aris" pos="2" wait="true"]
[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="sweat"]
Wait, Yuzu! The tea and sweets we prepared will go to waste!
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Tea and sweets?" jump1="*jump_20" storage="02_intro_ADV_2_1.ks"]
*jump_20

[talk name="aris" face="def"]
Dinner will take a little longer to prepare, so Yuzu suggested bringing you some tea and cookies instead!
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="Thank you for going out of your way." jump1="*jump_21" storage="02_intro_ADV_2_1.ks"]
*jump_21

[talk name="yuzu" face="normal"]
N-no, not at all! I'm sorry we can't offer you proper hospitality...!
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="yuzu" wait="true"]

[talk name=""]
(The two of them skillfully pour tea into cups, place them on saucers, and offer them to you)
[wait time="450"]
[click_next]

[app name="yuzu" width="800" left="200" top="100" face="smile" mode="quick" wait="true"]

[talk name="yuzu" face="smile"]
I hope it suits your taste...
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[playse storage="SE_Eat_01.wav" loop="false"]
[wait time="1400"]

[choice_button mode="1" choice1="It's so delicious...!" jump1="*jump_22" storage="02_intro_ADV_2_1.ks"]
*jump_22

[wait time="300"]

[talk name="yuzu" face="07" wait="true"]
[emo name="yuzu" emo="heart"]
......! I'm glad you seem to like it!
[wait time="300"]
[click_next]

[talk name=""]
(The bitterness of the tea and the subtle sweetness of the cookies match perfectly)
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[talk name=""]
(It was during this slightly late teatime, while savoring the flavors, that it happened)
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]

[wait time="600"]

[playse storage="SE_Throw_01.wav" loop="false"]
[talk name="？？？" face="def"]
Kyaaaaaaaaaaahhhhhh!!!!
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[app name="aris" pos="4" face="serious" wait="true"]
[wait time="300"]
[app name="yuzu" pos="2" face="serious" wait="true"]

;表記　？？？
;セリフのみ
[talk name=""]
(Startled by a scream that seemed to come from nowhere, I nearly dropped my cup)
[emo name="aris" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]
[wait time="400"]
[click_next]



[choice_button mode="1" choice1="What was that scream just now!?" jump1="*jump_23" storage="02_intro_ADV_2_1.ks"]
*jump_23

[talk name="yuzu" face="10"]
That's... the Mistress of this mansion!! Excuse me, I'll go see what's wrong right away!
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="yuzu"]
[wait time="300"]
[talk name="aris" face="serious"]
Aris is coming too!
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="aris"]
[wait time="300"]
[talk name=""]
(Following the two who rushed out of the room, I also stepped out into the hallway)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

*part_end

[hide_all]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="02_intro_ADV_2_2.ks"]