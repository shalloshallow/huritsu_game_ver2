[wait time=200]
*start|スタート

[layopt layer=message visible=false]

;プラグインの読み込み

[loadplugin module="extrans.dll"]
[loadplugin module="wuvorbis.dll"]


; マクロファイルの読み込み
[call storage="zoom.ks"]

; 自作マクロファイルの読み込み
[call storage="macro.ks"]


; 初期設定
[laycount layers="10"]

[wait time=200]
*start|スタート
[layopt index="1010000" layer="9"]

[_setNormalMessageLayer]
[layopt layer=message visible=true]

[cm]
[startanchor enabled="true"]

[call storage="0_0_op.ks"]
[jump target="*start"]


