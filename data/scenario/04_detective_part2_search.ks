[iscript]
    f.evidence_of_midori = "true";
    f.evidence_of_momoi = "true";
    f.evidence_of_akira = "true";
    f.d1_momoi_talked ="true";
    f.d1_midori_talked = "true";

    f.evidence_of_midori2 = "false";
    f.evidence_of_dummy1 = "false";
    f.evidence_of_dummy2 = "false";
    f.evidence_of_momoi2 = "false";
    f.evidence_of_akira2 = "false";
    f.detective_part2_end = 'false';
[endscript]

[bg_effect storage="BG06_PartyRoom.jpg"]
[fadeinbgm storage="Theme_68.ogg" time="3000" volume="25"]

[backlay layer="base"]
[filter layer="base" page="back" brightness="50" blur="5" ]
[trans layer="base" time="300"]

[button target="*book" role="sleepgame" x="1160" y="120" height="60"  graphic="Item_Icon_Material_Rohonc_3.png" fix="true" storage="system/evidence.ks"]
[skip_button storage="04_detective_part2_search.ks"]
;--------------------------------------------------------------------------

[talk name=""]
(After obtaining testimony, we returned to the cafeteria for now)
[wait time="450"]
[click_next]

[talk name=""]
(If one speaks of a false alibi, there's bound to be inconsistencies somewhere...)
[wait time="450"]
[click_next]

[talk name=""]
(In fact, during the current questioning, I felt like I saw cracks in the alibi)
[wait time="450"]
[click_next]

[talk name=""]
(...In that case, what we should search for next is--)
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="Gathering physical evidence connected to the culprit." jump1="*jump_54" storage="04_detective_part2_search.ks"]
*jump_54

[talk name=""]
(But where should we start looking?)
[wait time="450"]
[click_next]

[free_filter layer="base"]
;[wt]

[layopt layer="message0" visible="false" wait="true"]
;[hide_all]


;探索パート2_探索------------------------------------------------------------------


;場所移動選択肢----------------------------
*map_select
;探索終了フラグ
[layopt layer="message0" visible="false" wait="true"]
[iscript]
if (f.evidence_of_midori2 === 'true' && 
    f.evidence_of_momoi2 === 'true' && 
    f.evidence_of_akira2 === 'true' &&
    f.evidence_of_dummy1 === 'true' && 
    f.evidence_of_dummy2 === 'true' 
    ) {

        // チュートリアル終了フラグ
        f.detective_part2_end = "true";
}

[endscript]

;全員の話を聞いたら*endに飛ぶ

[jump target="*04_detective_part2_end" storage="04_detective_part2_search.ks" cond="f.detective_part2_end =='true'"]
[map_select storage="04_detective_part2_search.ks"]


;エントランスホール--------------------------------------------------
*jump1
;花瓶にダミー
;-------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG01_HotelLobby.jpg"]

[eval exp="tf.serched = 'false'"]

[layopt layer="message0" visible="true"]

[talk name=""]
(We arrived at the entrance hall)
[wait time="450"]
[click_next]

[talk name=""]
(Should we search for clues that might connect to the culprit?)
[wait time="450"]
[click_next]

;選択-----------------------------------------------------
*lobbyselect
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*kaidan" x="495" y="360" width="370" height="150"]
[clickable target="*tesuri" x="785" y="275" width="70" height="180"]
[clickable target="*tesuri" x="485" y="275" width="150" height="180"]
[clickable target="*kabin" x="1100" y="380" width="100" height="100"]
[clickable target="*sofa" x="10" y="390" width="300" height="120"]
[clickable target="*shoumei" x="640" y="15" width="100" height="280"]
[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

*tesuri
[eval exp="tf.serched = 'true'"]
[layopt layer="message0" visible="true"]

[talk name=""]
(It's a handrail painted pure white)
[wait time="450"]
[click_next]

[talk name=""]
(The surface is shiny without a single stain)
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kabin
[eval exp="tf.serched = 'true'"]
[eval exp="f.evidence_of_dummy1 = 'true'"]

[talk name=""]
(Roses arranged in a vase)
[wait time="450"]
[click_next]
;証拠：ダミー証拠入手
[talk name=""]
(A sweet, somehow elegant fragrance drifts through the air)
[wait time="450"]
[click_next]

[evidence_pop storage="Item_Icon_Favor_Lv2_Package.png" width="290"]
[talk name=""]
(It resembles the scent of the air freshener Momoi-san spilled, I think)
[wait time="450"]
[click_next]

[evidence_remove]


[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*sofa
[eval exp="tf.serched = 'true'"]

[talk name=""]
(The sofa looks so luxurious that I hesitate to sit down)
[wait time="450"]
[click_next]

[talk name=""]
(There are no signs of recent use by anyone)
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kaidan
[eval exp="tf.serched = 'true'"]

[talk name=""]
(It's a gorgeous marble staircase)
[wait time="450"]
[click_next]

[talk name=""]
(With each step, the sound of footsteps echoes throughout the entrance)
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*shoumei
[eval exp="tf.serched = 'true'"]

[talk name=""]
(It's a stylish chandelier hanging from the ceiling)
[wait time="450"]
[click_next]

[talk name=""]
(Just imagining if that were to fall... is slightly frightening)
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------



;1かい廊下------------------------------------------------------------------------
*jump2
;------------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG02_OldHouseCorridor.jpg"]

[eval exp="tf.serched = 'false'"]

[talk name=""]
(I've arrived at the first floor hallway)
[wait time="450"]
[click_next]

[talk name=""]
(Should we search for clues that might connect to the culprit?)
[wait time="450"]
[click_next]

*corridor_1f
    [layopt layer="message0" visible="false" wait="true"]

    [clickable target="*ka-petto" x="0" y="510" width="1150" height="400"]
    [clickable target="*ka-petto" x="330" y="450" width="400" height="300"]
    [clickable target="*fuukeiga" x="240" y="300" width="70" height="100"]
    [clickable target="*jinbutsuga" x="770" y="300" width="60" height="100"]
    [clickable target="*tobira_migi" x="670" y="250" width="60" height="250"]
    [clickable target="*tobira_hidari" x="330" y="250" width="60" height="250"]

    [button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
    [s]

    *tobira_migi
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]
        [eval exp="f.evidence_of_momoi2 = 'true'"]


        [talk name=""]
        (This is the room assigned to the white woman)[wait time="300"]
        [click_next]

        [talk name=""]
        (A faint vanilla-like sweet fragrance lingers)[wait time="300"]
        [click_next]
        ;証拠：モモイの証拠入手
        [evidence_pop storage="BG02_momoi.png"]

        [talk name=""]
        (It smells like vanilla essence, but why here of all places?)[wait time="300"]
        [click_next]

        [evidence_remove]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *tobira_hidari
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        (A door that exudes a sense of history)[wait time="300"]
        [click_next]

        [talk name=""]
        (No sounds can be heard from inside either)[wait time="300"]
        [click_next]



        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *ka-petto
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        (On the carpeted hallway, there are footprints of three different types)[wait time="300"]
        [click_next]

        [talk name=""]
        (Two types of footprints have rounded toes, while one type appears pointed)[wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *fuukeiga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        (It appears to be a painting depicting the mansion's garden)[wait time="300"]
        [click_next]

        [talk name=""]
        (The frame is slightly tilted, but otherwise nothing seems particularly unusual)[wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *jinbutsuga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        (A painting of a person wearing a confident smile)[wait time="300"]
        [click_next]

        ;※ヒマリの絵かも……と思わせる形にしてます。（実際のイラストは違うので表情のみの描写）
        [talk name=""]
        (Gazing at it gives the unsettling feeling of being seen through completely, though nothing seems particularly odd about it)[wait time="300"]
        [click_next]


        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]


    ;二階廊下--------------------------------------------------------
*jump3
;-------------------------------------------------------------
    [layopt layer="message0" visible="false" wait="true"]
    [bg_effect storage="BG03_Hotelcorridor.jpg"]

    [layopt layer="message0" visible="true"]
    [eval exp="tf.serched = 'false'"]

    [talk name=""]
    (Arrived at the second-floor hallway)[wait time="300"]
    [click_next]

    [talk name=""]
    (Should I look for clues that might lead to the culprit?)[wait time="300"]
    [click_next]

*corridor_2f
    [layopt layer="message0" visible="false" wait="true"]

    [clickable target="*rouka_2f" x="380" y="620" width="570" height="100"]
    [clickable target="*rouka_2f" x="500" y="525" width="400" height="100"]
    [clickable target="*rouka_2f" x="610" y="480" width="240" height="50"]
    [clickable target="*rouka_2f" x="665" y="415" width="170" height="70"]
    [clickable target="*hidari_tobira_2f" x="30" y="150" width="280" height="600"]
    [clickable target="*tana" x="800" y="400" width="50" height="60"]
    [clickable target="*migi_tobira_2f" x="1080" y="140" width="160" height="600"]

    [button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
    [s]

    ;--------------------------------------
    *rouka_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [eval exp="f.evidence_of_akira2 = 'true'"]

        [talk name=""]
        (The round-toed footprints lead to the Mistress' room)[wait time="300"]
        [click_next]


        [talk name=""]
        (On the left side of the footprints, there are small circular stains dotted about...)[wait time="300"]
        [click_next]
        ;証拠：アキラの証拠入手
        [evidence_pop storage="BG03_akira.png"]

        (What could these small dotted indentations be traces of?)[wait time="300"]
        [click_next]
        [evidence_remove]


        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *hidari_tobira_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        (A door painted pure white)[wait time="300"]
        [click_next]

        [talk name=""]
        (I try the knob, but it's locked and won't open)[wait time="300"]
        [click_next]

        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *tana
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        (A small cabinet with a door)[wait time="300"]
        [click_next]

        [talk name=""]
        (Inside are bullets and grenades packed tightly)[wait time="300"]
        [click_next]
        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *migi_tobira_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        (A doorknob with a card reader attached)[wait time="300"]
        [click_next]

        [talk name=""]
        (Seems like an important room, but probably unrelated to the current incident)[wait time="300"]
        [click_next]

        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]




;書庫---------------------------------------------------------
*jump4
;-------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG04_TrinityOldLibrary.jpg"]

[eval exp="tf.serched = 'false'"]

[talk name=""]
(Arrived at the mansion's library)
[wait time="450"]
[click_next]

[talk name=""]
(Should we search for clues that might connect to the culprit?)
[wait time="450"]
[click_next]

*shoko
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*hondana" x="190" y="135" width="280" height="250"]
[clickable target="*hondana2" x="955" y="175" width="440" height="220"]
[clickable target="*isu" x="520" y="360" width="480" height="150"]
[clickable target="*hashigo" x="575" y="125" width="100" height="210"]
[clickable target="*hashigo" x="560" y="320" width="100" height="100"]
[clickable target="*futariyou" x="0" y="360" width="295" height="150"]

[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

;--------------------------------------
*hashigo
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]
[talk name=""]
(A sturdy wooden ladder)
[wait time="450"]
[click_next]
;証拠：ダミーはしご

[talk name=""]
(Judging by the wear on the surface, it doesn't seem to be used much)
[wait time="450"]
[click_next]
[eval exp="f.evidence_of_dummy2 = 'true'"]
[evidence_pop storage="Event_806_BuffSelect_Icon_05.png" x="520" width="220"]
[talk name=""]
(Using this should make it possible to move between the first and second floors of the mansion)
[wait time="450"]
[click_next]

[evidence_remove]
[jump target="*shoko" storage="04_detective_part2_search.ks"]

;--------------------------------------
*isu
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]
[talk name=""]
(A reading space with single-seater chairs lined up)
[wait time="450"]
[click_next]

[talk name=""]
(The surface of the chairs is cracked due to age deterioration)
[wait time="450"]
[click_next]

[jump target="*shoko" storage="04_detective_part2_search.ks"]
;--------------------------------------
*futariyou
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]

[talk name=""]
(A reading space with a two-seater chair placed)
[wait time="450"]
[click_next]

;※証拠1の方でユズが座っていたため。
[talk name=""]
(Perhaps someone sat here recently - there are wrinkles on the cushion)
[wait time="450"]
[click_next]
[jump target="*shoko" storage="04_detective_part2_search.ks"]

;--------------------------------------
*hondana
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]


[talk name=""]
(A bookshelf lined with fortune-telling related books)
[wait time="450"]
[click_next]

;※ヒマリがよく占いの本を読んでいる
[talk name=""]
(The books are haphazardly arranged, as if frequently taken out and put back?)
[wait time="450"]
[click_next]

[talk name=""]
(Moreover, a dozen or so books are missing from the middle shelf)
[wait time="450"]
[click_next]

[talk name=""]
……
[wait time="450"]
[click_next]

[talk name=""]
…
[wait time="450"]
[click_next]

[fadeoutbgm time="500"]
[wait time="1000"]

[playse storage="SE_Fall_06.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="There's something strangely intriguing about this bookshelf!" jump1="*jump_89" storage="04_detective_part2_search.ks"]
*jump_89
[talk name=""]
(There's some kind of switch hidden at the back of the bookshelf!)
[wait time="450"]
[click_next]

[talk name=""]
(Apparently, it requires a 4-digit passcode from 0~4)
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[iscript]
    tf.bangou_counter = 0;
[endscript]

[anshoubangou jump2="*anshou1"]

*anshou1
[iscript]
    tf.bangou_counter +=1;
[endscript]

[anshoubangou jump1="*anshou2"]

*anshou2
[iscript]
    tf.bangou_counter +=1;
[endscript]
[anshoubangou jump1="*anshou3"]

*anshou3
[iscript]
    tf.bangou_counter +=1;
[endscript]
[anshoubangou jump1="*anshou4"]

*anshou4
[stopbgm]
[clearfix]
[clearstack]
[jump storage="09_true_ending.ks"]


*miss
[iscript]
    tf.bangou_counter +=1;
[endscript]
[if exp="tf.bangou_counter >= 4"]

    [talk name=""]
    (Seems like the code entered was incorrect)[wait time="450"]
[click_next]

    [talk name=""]
    (This doesn't seem relevant right now, let's come back later)[wait time="450"]
[click_next]

    [fadeinbgm storage="Theme_68.ogg" time="500" volume="25"]

    [jump target="*shoko" storage="04_detective_part2_search.ks"]
[endif]
[anshoubangou]


[jump target="*shoko" storage="04_detective_part2_search.ks"]


;--------------------------------------
*hondana2
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]

[talk name=""]
(This is a bookshelf filled with PC and programming-related books)
[wait time="450"]
[click_next]

;※ヒマリはプログラミング関係ほぼすべて知ってそうなので、本はあったとしてもあんまり開いていなさそうなので。
[talk name=""]
(Every shelf is neatly organized, with no signs of recent use)
[wait time="450"]
[click_next]



[jump target="*shoko" storage="04_detective_part2_search.ks"]

;主の部屋--------------------------------------------------------
*jump5
;-------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG05_LuxuriousRooms_Night.jpg"]

[eval exp="tf.serched = 'false'"]


[talk name=""]
(Arrived at the Mistress' bedroom)
[wait time="450"]
[click_next]

[talk name=""]
(Should we search for clues that might connect to the culprit?)
[wait time="450"]
[click_next]

*arujinoheya
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*fukafuka" x="150" y="470" width="1000" height="400"]
[clickable target="*madogiwa" x="500" y="370" width="350" height="100"]
[clickable target="*bed" x="0" y="385" width="550" height="200"]
[clickable target="*bigsofa" x="880" y="370" width="250" height="125"]
[clickable target="*kagami" x="1150" y="200" width="300" height="220"]

[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

;--------------------------------------
*madogiwa

[eval exp="tf.serched = 'true'"]
[eval exp="f.evidence_of_midori2 = 'true'"]

[talk name=""]
(There are traces of rainwater seeping in near the window on the floor)
[wait time="450"]
[click_next]

;証拠：ミドリの証拠入手
[talk name=""]
(It seems the window was recently opened)
[wait time="450"]
[click_next]
(I heard the window wouldn't open, but...)
[wait time="450"]
[click_next]

[evidence_pop storage="My_Defaultroom_Window.png"]

[talk name=""]
(Come to think of it, the rain started falling after I arrived at this mansion)
[wait time="450"]
[click_next]
[evidence_remove]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;------------------------
*bed

[eval exp="tf.serched = 'true'"]

[talk name=""]
(It's a neatly made bed)
[wait time="450"]
[click_next]

[talk name=""]
(Beside the pillow, a pile of fortune-telling related books are stacked)
[wait time="450"]
[click_next]

;※BG04のDで抜き取られていた本

[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*bigsofa

[eval exp="tf.serched = 'true'"]

[talk name=""]
(A long sofa that looks like it can seat three people)
[wait time="450"]
[click_next]

[talk name=""]
(Perhaps it's rarely used, as it still looks brand new)
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*fukafuka

[eval exp="tf.serched = 'true'"]

[talk name=""]
(A plush, expensive-looking carpet)
[wait time="450"]
[click_next]

[talk name=""]
(Looks like something heavy was placed here - there are two long, thin marks)
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*kagami

[eval exp="tf.serched = 'true'"]

[talk name=""]
(A large, state-of-the-art TV)
[wait time="450"]
[click_next]

[talk name=""]
(This is no time to watch TV)
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]


*leave_map
[cm]
[layopt layer="message0" visible="true"]

[jump target="*no_touch" storage="04_detective_part2_search.ks" cond="tf.serched == 'false'"]

[talk name=""]
(I've checked the places I was curious about, maybe it's time to move somewhere else?)
[wait time="450"]
[click_next]

[jump target="*map_select" storage="04_detective_part2_search.ks"]


;none
;----------------------------------------------
*no_touch

[talk name=""]
(There are other places to investigate. Should we move?)
[wait time="450"]
[click_next]

[jump target="*map_select" storage="04_detective_part2_search.ks"]

*04_detective_part2_end
*part_end
[hide_all]
[fadeoutbgm time="500"]
[stopbgm]
[clearfix]
[clearstack]
[jump storage="04_detective_part3_reasoning.ks"]

