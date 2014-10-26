
;---------------------------------------------------------------◆立ち絵

;■キャラを回転しつつ変更
;[chara_left_rotate  after="sora"]
;[chara_left_rotate before="sora" after="syaro"]
[macro name="chara_left_rotate"]

	[fgzoom storage="%before|ch_dummy" layer=1 sw=248 sh=412 st=50 sl=10 dw=1 dh=412 dt=50 dl=129 time=150 accel=-3]
	[wfgzoom]
	[fgzoom storage="%after|ch_dummy" layer=1 sw=1 sh=412 st=50 sl=129 dw=248 dh=412 dt=50 dl=10 time=150 accel=3]
	[wait time=350]
	
[endmacro]

[macro name="chara_right_rotate"]

	[fgzoom storage="%before|ch_dummy" layer=2 sw=248 sh=412 st=20 sl=384 dw=0 dh=412 dt=20 dl=508 time=150 accel=-3]
	[wfgzoom]
	[fgzoom storage="%after|ch_dummy" layer=2 sw=1 sh=412 st=20 sl=508 dw=248 dh=412 dt=20 dl=384 time=150 accel=3]
	[wait time=350]
[endmacro]


; 左の立ち絵基本マクロ
[macro name="chara_left"]

	; 表示がないときだけdummyを表示しておく
	[if exp="kag.fore.layers[1].visible==false"]
		[image left="10" top="50" layer="1" storage="ch_dummy" visible="true"]
	[endif]
	[backlay layer="1"]
	[image left="10" top="50" layer="1" storage="%storage|ch_dummy" page="back" ]
	[trans time="%time|300" layer="1" method="%method|turn" from="%from|left" stay="%stay|nostay"]
	[wt]
[endmacro]

; 右の立ち絵基本マクロ
[macro name="chara_right" ]

	; 表示がないときだけdummyを表示しておく
	[if exp="kag.fore.layers[2].visible==false"]
			[image left="384" top="20" layer="2" storage="ch_dummy" visible="true"]
	[endif]

	[backlay layer="2"]
	[image left="384" top="20" layer="2" storage="%storage|ch_dummy" page="back" ]
	[trans time="%time|300" layer="2" method="%method|turn" from="%from|left" stay="%stay|nostay"]
	[wt]
[endmacro]



;------------------------------------------------------------◆メッセージレイヤ

[macro name="_setNormalMessageLayer"]
	[current layer="message0"]
	[position layer="message0" frame="frame_1_610x150" top="320" left="16" marginl="70" margint="25" marginr="60"]
	[deffont color="0x000000" shadow="false" size="22" ]
[endmacro]

[macro name="_pm"]
	[p][cm]
[endmacro]

[macro name="_per"]
	[p][er]
[endmacro]

;---------------------------------------------------------------◆キャラ名
[macro name="あ"]
	明良[indent]
[endmacro]

[macro name="ゆ"]
	柚雨[indent]
[endmacro]

[macro name="も"]
	もろ[indent]
[endmacro]

[macro name="し"]
	しゃろ[indent]
[endmacro]

[macro name="ソ"]
	ソラ[indent]
[endmacro]

[return]
