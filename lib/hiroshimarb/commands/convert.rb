# -*- coding: utf-8 -*-
require 'hiroshimarb/command'

module Hiroshimarb::Commands
  class Convert < Hiroshimarb::Command
    def call(*args)
	word = ''
	for arg in ARGV
	  word << arg
	  word << ' '
	end
	
        $dictionary.each{|key, value|
	 word.gsub!(key, value)
	}
	puts("[広島弁に変換]\n")
	puts(word)
    end

$dictionary = {
"もしかして"=>"ひょっとして",
"なくちゃ"  =>  "なくては",
"なきゃ"  =>  "なければ",
"ってて"  =>  "っていて",
"ちまった"  =>  "てしまった",
"ちまう"  =>  "てしまう",
"しました"  =>  "した",
"しいです"  =>  "しい",
"ありがとうございました"  =>  "ありがとさんじゃった",
"ありがとうございます"  =>  "ありがとの",
"しなければならない"  =>  "せんにゃぁいけん",
"なければならない"  =>  "んにゃぁいけん",
"りませんでした"  =>  "らんかった",
"おっしゃるとき"  =>  "ゆうてのとき",
"おっしゃいます"  =>  "ゆうてです",
"ありませんので"  =>  "なぁけぇ",
"ありませんから"  =>  "なぁけぇ",
"手が届かない"  =>  "手がたわん",
"歯が痛ければ"  =>  "歯がはしりゃぁ",
"もしかしたら"  =>  "ひょっとしたら",
"むちゃくちゃ"  =>  "わやくそ",
"ムチャクチャ"  =>  "わやくそ",
"みたいですが"  =>  "みとぉなが",
"はじめまして"  =>  "おはつでがんす",
"のであります"  =>  "んじゃ",
"といっしょに"  =>  "と一緒に",
"でありますが"  =>  "じゃが",
"でありました"  =>  "じゃった",
"たいへんよい"  =>  "ぶちえぇ",
"すくなくとも"  =>  "すくのぉても",
"しかしながら"  =>  "ほぃじゃが",
"くすぐったけ"  =>  "こそばゆけ",
"くすぐったく"  =>  "こそばゆぅ",
"くすぐったか"  =>  "こそばゆか",
"くすぐったい"  =>  "こそばゆい",
"おられるとき"  =>  "おってのとき",
"おっしゃる時"  =>  "ゆぅてん時",
"おっしゃると"  =>  "ゆぅてと",
"おっしゃらな"  =>  "ゆってんな",
"いただければ"  =>  "くれちゃったら",
"いただきます"  =>  "もらいます",
"いただきまし"  =>  "もろぉ",
"いただかない"  =>  "もらわん",
"いいかげんに"  =>  "たいがいに",
"ありませんか"  =>  "なぁんか",
"ありましたら"  =>  "あったら",
"来られます"  =>  "来てです",
"非常によい"  =>  "ぶちえぇ",
"頂きました"  =>  "もろぉた",
"少なくとも"  =>  "少のぉても",
"初めまして"  =>  "おはつでがんす",
"手が届けば"  =>  "手がとうたら",
"困難ならば"  =>  "いたしけりゃぁ",
"んであれば"  =>  "んじゃったら",
"わなければ"  =>  "わんにゃぁ",
"わたしたち"  =>  "わしら",
"ろいました"  =>  "ろぉた",
"れなければ"  =>  "れんにゃぁ",
"れなくては"  =>  "れんにゃぁ",
"りますので"  =>  "るけぇ",
"りますから"  =>  "るけぇ",
"らなければ"  =>  "らんにゃぁ",
"らなくては"  =>  "らんにゃぁ",
"らいました"  =>  "ろぉた",
"よいました"  =>  "よぉた",
"やわらかな"  =>  "やおい",
"やわらかけ"  =>  "やおけ",
"やわらかく"  =>  "やおぉ",
"やわらかか"  =>  "やおか",
"やわらかい"  =>  "やおい",
"ややこしけ"  =>  "やねこけ",
"ややこしく"  =>  "やねこく",
"ややこしか"  =>  "やねこか",
"ややこしい"  =>  "やねこい",
"ものもらい"  =>  "めぼ",
"もたれかか"  =>  "さば",
"もういちど"  =>  "もっぺん",
"もいました"  =>  "もおった",
"めなければ"  =>  "めんにゃぁ",
"めなくては"  =>  "めんにゃぁ",
"みなければ"  =>  "みんにゃぁ",
"みなくては"  =>  "みんにゃぁ",
"まなければ"  =>  "まんにゃぁ",
"まいました"  =>  "もぉた",
"べなければ"  =>  "べにゃぁ",
"べなくては"  =>  "べにゃぁ",
"ばなければ"  =>  "ばにゃぁ",
"ばなくては"  =>  "ばにゃぁ",
"のですから"  =>  "んじゃけぇ",
"のでしょう"  =>  "んじゃろぉ",
"のであれば"  =>  "んじゃったら",
"ねなければ"  =>  "ねんにゃぁ",
"ねなくては"  =>  "ねんにゃぁ",
"にいました"  =>  "におった",
"なんですか"  =>  "なんか",
"なのですか"  =>  "なんか",
"ななければ"  =>  "なんにゃぁ",
"ななくては"  =>  "なんにゃぁ",
"なさるとき"  =>  "してのとき",
"なくなって"  =>  "のぉなって",
"ないました"  =>  "なった",
"とてもよい"  =>  "ぶちええ",
"とてもいい"  =>  "ぶちええ",
"てなければ"  =>  "たんにゃぁ",
"てなくては"  =>  "てにゃぁ",
"でしょうか"  =>  "じゃろぉか",
"てください"  =>  "てつかぁさい",
"できません"  =>  "でけん",
"できました"  =>  "できたんじゃ",
"でいました"  =>  "どった",
"ていました"  =>  "とった",
"である場合"  =>  "じゃったら",
"であるなら"  =>  "じゃったら",
"であるとき"  =>  "じゃったら",
"であること"  =>  "じゃゆぅこと",
"であります"  =>  "じゃ",
"ってました"  =>  "っとった",
"っていない"  =>  "っとらん",
"ちなければ"  =>  "ちにゃぁ",
"ちなくては"  =>  "ちにゃぁ",
"たなければ"  =>  "たにゃぁ",
"たなくては"  =>  "たにゃぁ",
"たいへんな"  =>  "わやな",
"せなければ"  =>  "せにゃぁ",
"せなくては"  =>  "せにゃぁ",
"じょうずに"  =>  "ええがいに",
"じなければ"  =>  "じにゃぁ",
"しなければ"  =>  "せんにゃぁ",
"じなくては"  =>  "じにゃぁ",
"しなくては"  =>  "せにゃぁ",
"さようなら"  =>  "さいなら",
"さなければ"  =>  "さんにゃぁ",
"さなくては"  =>  "さにゃぁ",
"こんにちは"  =>  "こんちわ",
"こわさない"  =>  "めがん",
"こいました"  =>  "こぉた",
"げなければ"  =>  "げにゃぁ",
"けなければ"  =>  "けにゃぁ",
"げなくては"  =>  "げにゃぁ",
"けなくては"  =>  "けにゃぁ",
"くいました"  =>  "くぅた",
"きなければ"  =>  "きにゃぁ",
"きなくては"  =>  "きにゃぁ",
"カラになる"  =>  "みてる",
"カラになり"  =>  "みて",
"カラになっ"  =>  "みて",
"かなければ"  =>  "かにゃぁ",
"かなくては"  =>  "かにゃぁ",
"おられる時"  =>  "おっての時",
"おられると"  =>  "おってと",
"おられます"  =>  "おってです",
"おられない"  =>  "おってんない",
"おもしろく"  =>  "おもろぉ",
"おもしろか"  =>  "おもろか",
"おもしろい"  =>  "おもろい",
"おとうさん"  =>  "おとん",
"おっしゃる"  =>  "ゆうて",
"おっしゃっ"  =>  "ゆっちゃっ",
"おそろしい"  =>  "いびせぇ",
"おかあさん"  =>  "おかん",
"えなければ"  =>  "えんにゃぁ",
"えなくては"  =>  "えにゃぁ",
"えなかった"  =>  "えんかった",
"いなければ"  =>  "おらにゃぁ",
"いただけば"  =>  "くれちゃったら",
"いじらない"  =>  "いらわん",
"ありません"  =>  "なぁ",
"あたたかけ"  =>  "ぬくけ",
"あたたかく"  =>  "ぬくぅ",
"良さそう"  =>  "えげ",
"良ければ"  =>  "えかったら",
"来られる"  =>  "来て",
"来られな"  =>  "来ちゃってんな",
"無茶苦茶"  =>  "わやくそ",
"複雑なら"  =>  "やねこけりゃぁ",
"複雑だろ"  =>  "やねこかろ",
"複雑だと"  =>  "やねこいと",
"複雑だっ"  =>  "やねこかっ",
"不思議な"  =>  "いなげな",
"頂かない"  =>  "もらわん",
"大変よい"  =>  "ぶちえぇ",
"小さそう"  =>  "こまいげ",
"柔らかけ"  =>  "やおけ",
"柔らかく"  =>  "やおぉ",
"柔らかか"  =>  "やおか",
"柔らかい"  =>  "やおい",
"手が届く"  =>  "手がたう",
"手が届い"  =>  "手がとぉ",
"歯が痛か"  =>  "歯がはし",
"歯が痛い"  =>  "歯がはしる",
"困難なら"  =>  "いたしけりゃぁ",
"困難だろ"  =>  "いたしかろ",
"困難だと"  =>  "いたしいと",
"困難だっ"  =>  "いたしかっ",
"言わない"  =>  "ゆわん",
"恐ろしい"  =>  "いびせぇ",
"帰らない"  =>  "いなん",
"寄りかか"  =>  "さば",
"簡単なら"  =>  "みやすけりゃぁ",
"簡単だろ"  =>  "みやすかろ",
"簡単だと"  =>  "みやすいと",
"簡単だっ"  =>  "みやすかっ",
"壊れれば"  =>  "めげりゃぁ",
"壊れない"  =>  "めげん",
"壊さない"  =>  "めがん",
"んでいる"  =>  "んどる",
"んでいた"  =>  "んどった",
"をしない"  =>  "をせん",
"わんぱく"  =>  "がんぼ",
"われわれ"  =>  "わしら",
"れません"  =>  "れん",
"るのです"  =>  "るんじゃ",
"り始める"  =>  "りだす",
"りません"  =>  "らん",
"りました"  =>  "った",
"られない"  =>  "らりゃぁせん",
"らないと"  =>  "らんと",
"よろしい"  =>  "えぇ",
"よりかか"  =>  "さば",
"よさそう"  =>  "えげ",
"よければ"  =>  "えかったら",
"ものたち"  =>  "もんら",
"もう一度"  =>  "もっぺん",
"めません"  =>  "めん",
"み始める"  =>  "みだす",
"みません"  =>  "まん",
"みたいな"  =>  "みとぉな",
"ほんとに"  =>  "げに",
"ホントに"  =>  "げに",
"ほとんど"  =>  "たいがい",
"ぼくたち"  =>  "わしら",
"崩壊した"  =>  "めげた",
"べません"  =>  "べん",
"ふたたび"  =>  "もっぺん",
"びません"  =>  "ばん",
"ひとたち"  =>  "ひとら",
"はしない"  =>  "はせん",
"破壊した"  =>  "めいだ",
"のならば"  =>  "んじゃったら",
"のですが"  =>  "んじゃが",
"のですか"  =>  "んか",
"のである"  =>  "んじゃ",
"のだろう"  =>  "んじゃろう",
"のだから"  =>  "んじゃけぇ",
"ねません"  =>  "ねん",
"にません"  =>  "にん",
"なんです"  =>  "なんじゃ",
"ならない"  =>  "ならん",
"ならでは"  =>  "じゃのぉたらでけんゆぅほど",
"なのです"  =>  "なんじゃ",
"なったら"  =>  "なりゃぁ",
"なさる時"  =>  "してのとき",
"なさると"  =>  "してと",
"なければ"  =>  "のぉたら",
"ないです"  =>  "なぁんじゃ",
"と言った"  =>  "ゆぅた",
"と言えば"  =>  "ゆぅたら",
"どんなに"  =>  "どがぁに",
"といった"  =>  "ゆぅた",
"といえば"  =>  "ゆぅたら",
"てみます"  =>  "てみます",
"てません"  =>  "てん",
"てました"  =>  "とった",
"ではなく"  =>  "じゃぁのぉて",
"ですから"  =>  "じゃけぇ",
"できます"  =>  "でける",
"できない"  =>  "でけん",
"ていない"  =>  "とらん",
"であった"  =>  "じゃった",
"つめたけ"  =>  "ひやけ",
"つめたく"  =>  "つめとぉ",
"つめたか"  =>  "ひやか",
"つめたい"  =>  "ひやい",
"ってます"  =>  "っとる",
"ってない"  =>  "っとらん",
"ち始める"  =>  "ちだす",
"ちょっと"  =>  "ちぃと",
"ちません"  =>  "たん",
"だけれど"  =>  "じゃが",
"たくさん"  =>  "えっと",
"だいたい"  =>  "おおかた",
"そんなに"  =>  "そがぁに",
"それでは"  =>  "ほいじゃぁ",
"そうだろ"  =>  "ほうじゃろ",
"全壊した"  =>  "みなめげた",
"すくなく"  =>  "すくのぉ",
"し始める"  =>  "しだす",
"し始めな"  =>  "しださな",
"じません"  =>  "じん",
"しなくな"  =>  "せんな",
"しなくて"  =>  "せんで",
"しかない"  =>  "しかありゃぁせん",
"しかたな"  =>  "しゃぁな",
"こんなに"  =>  "こがぁに",
"こわそう"  =>  "めごう",
"こわした"  =>  "めいだ",
"このごろ"  =>  "きょうび",
"こうした"  =>  "こがぁな",
"げません"  =>  "げん",
"けません"  =>  "けん",
"くやしけ"  =>  "はぐいけ",
"くやしく"  =>  "はぐゆぅ",
"くやしか"  =>  "はぐいか",
"くやしい"  =>  "はぐいい",
"ください"  =>  "つかぁさい",
"き始める"  =>  "きだす",
"ぎません"  =>  "がん",
"きません"  =>  "かん",
"きいろく"  =>  "きいろぉ",
"かない。"  =>  "かん。",
"ができる"  =>  "がでける",
"かったら"  =>  "けりゃぁ",
"かたづけ"  =>  "おさめ",
"お母さん"  =>  "おかん",
"お父さん"  =>  "おとん",
"おられる"  =>  "おって",
"おられた"  =>  "おってじゃった",
"おばさん"  =>  "おばはん",
"おじさん"  =>  "おっさん",
"おおむね"  =>  "おおかた",
"おおきく"  =>  "おおきゅぅ",
"えらそう"  =>  "えらそげ",
"えません"  =>  "えん",
"い始める"  =>  "いだす",
"いわない"  =>  "ゆわん",
"いまどき"  =>  "きょうび",
"いですね"  =>  "いの",
"いっぱい"  =>  "えっと",
"いただこ"  =>  "もらお",
"いただく"  =>  "もらう",
"いただき"  =>  "もらい",
"いただい"  =>  "もろぉ",
"いい加減"  =>  "たいがい",
"いいだろ"  =>  "えかろ",
"あんなに"  =>  "あがぁに",
"あるいは"  =>  "そーでのぉたら",
"あのひと"  =>  "あんなぁ",
"あなたは"  =>  "あんたぁ",
"あたたか"  =>  "ぬく",
"あたしは"  =>  "うちゃぁ",
"あいまし"  =>  "おぉ",
"ああした"  =>  "あがぁな",
"」として"  =>  "」ゆぅて",
"冷たけ"  =>  "ひやけ",
"冷たく"  =>  "つめとぉ",
"冷たか"  =>  "ひやか",
"冷たい"  =>  "ひやい",
"来られ"  =>  "来ちゃっ",
"面白け"  =>  "おもろけ",
"面白く"  =>  "おもろぉ",
"面白か"  =>  "おもろか",
"面白い"  =>  "おもろい",
"本当に"  =>  "げに",
"僕たち"  =>  "わしら",
"母さん"  =>  "おかん",
"片づけ"  =>  "おさめ",
"複雑な"  =>  "やねこい",
"父さん"  =>  "おとん",
"微妙な"  =>  "こまい",
"非常に"  =>  "ぶち",
"難しけ"  =>  "いたしけ",
"難しく"  =>  "いたしゅぅ",
"難しか"  =>  "いたしか",
"難しい"  =>  "いたしい",
"珍妙な"  =>  "いなげな",
"頂いた"  =>  "もろうた",
"着替え"  =>  "しかえ",
"暖かけ"  =>  "ぬくけ",
"暖かく"  =>  "ぬくぅ",
"暖かか"  =>  "ぬくか",
"暖かい"  =>  "ぬくい",
"大変な"  =>  "わやな",
"大きく"  =>  "大きゅぅ",
"多少は"  =>  "ちぃたぁ",
"多くの"  =>  "えっとの",
"遭えば"  =>  "おぉたら",
"人たち"  =>  "ひとら",
"神妙な"  =>  "まじめげな",
"食らっ"  =>  "食ろぉ",
"上手に"  =>  "ええがいに",
"少なく"  =>  "すくのぉ",
"小さけ"  =>  "こまけ",
"小さく"  =>  "こもぉ",
"小さか"  =>  "こまか",
"小さい"  =>  "こまい",
"借りる"  =>  "かる",
"借りた"  =>  "かった",
"者たち"  =>  "もんら",
"私たち"  =>  "わしら",
"仕方な"  =>  "しゃぁな",
"困難な"  =>  "いたしい",
"困難だ"  =>  "いたしい",
"合えば"  =>  "おぉたら",
"言った"  =>  "ゆぅた",
"言えば"  =>  "ゆやぁ",
"近くな"  =>  "ちこぅな",
"居れば"  =>  "おりゃぁ",
"居よう"  =>  "おろう",
"居ます"  =>  "おります",
"居まし"  =>  "おりまし",
"居ない"  =>  "おらん",
"貴兄は"  =>  "あんたぁ",
"帰った"  =>  "いんだ",
"奇妙な"  =>  "いなげな",
"簡単な"  =>  "みやすい",
"簡単だ"  =>  "みやすい",
"悔しけ"  =>  "はぐいけ",
"悔しく"  =>  "はぐゆぅ",
"悔しか"  =>  "はぐいか",
"悔しい"  =>  "はぐいい",
"壊れる"  =>  "めげる",
"壊れた"  =>  "めげた",
"壊そう"  =>  "めごう",
"壊した"  =>  "めいだ",
"会えば"  =>  "おぉたら",
"我輩は"  =>  "わし",
"我が輩"  =>  "わし",
"下さい"  =>  "つかぁさい",
"温かけ"  =>  "ぬくけ",
"温かく"  =>  "ぬくぅ",
"温かか"  =>  "ぬくか",
"温かい"  =>  "ぬくい",
"遠くな"  =>  "とゆぅな",
"引きず"  =>  "ひこず",
"易しけ"  =>  "みやすけ",
"易しく"  =>  "みやすぅ",
"易しか"  =>  "みやすか",
"易しい"  =>  "みやすい",
"偉そう"  =>  "えらそげ",
"逢えば"  =>  "おぉたら",
"んでる"  =>  "んどる",
"わない"  =>  "わん",
"わたし"  =>  "わし",
"ワタシ"  =>  "ワシ",
"れなか"  =>  "れんか",
"れない"  =>  "れん",
"るので"  =>  "るけぇ",
"るのだ"  =>  "るんじゃ",
"り始め"  =>  "りだし",
"ります"  =>  "るんじゃ",
"らなか"  =>  "らんか",
"らない"  =>  "らん",
"らって"  =>  "ろぉて",
"らった"  =>  "ろぉた",
"らずに"  =>  "らんとぉに",
"よかっ"  =>  "えかっ",
"もので"  =>  "もんで",
"もう遅"  =>  "はぁ遅",
"もいた"  =>  "もおった",
"めなか"  =>  "めんか",
"むちゃ"  =>  "わや",
"ムチャ"  =>  "わや",
"みます"  =>  "むんじゃ",
"みなか"  =>  "みんか",
"まない"  =>  "まん",
"ます。"  =>  "ますけぇの。",
"へんな"  =>  "いなげな",
"べなか"  =>  "べんか",
"ひきず"  =>  "ひこず",
"ばなか"  =>  "ばんか",
"ばない"  =>  "ばん",
"のなら"  =>  "んじゃったら",
"のでは"  =>  "んじゃぁ",
"のです"  =>  "んじゃ",
"ので、"  =>  "けぇ、",
"のだと"  =>  "んじゃっちゅぅて",
"のだが"  =>  "んじゃが",
"のかと"  =>  "んかっちゅぅて",
"ねなか"  =>  "ねんか",
"にます"  =>  "ぬんじゃ",
"にいた"  =>  "におった",
"ならば"  =>  "じゃったら",
"なので"  =>  "なんで",
"なのだ"  =>  "なんじゃ",
"ななか"  =>  "なんか",
"なない"  =>  "なん",
"なさる"  =>  "して",
"なさら"  =>  "してん",
"なさい"  =>  "んさい",
"なくて"  =>  "のぉて",
"なく、"  =>  "のぉて、",
"ない。"  =>  "なぁで。",
"と考え"  =>  "ゆぅて考え",
"どんな"  =>  "どがぁな",
"とても"  =>  "ぶち",
"どいつ"  =>  "どんなぁ",
"といっ"  =>  "ゆぅ",
"という"  =>  "っちゅう",
"て行っ"  =>  "てっ",
"てやっ"  =>  "ちゃっ",
"てなか"  =>  "てんか",
"てない"  =>  "てん",
"ですよ"  =>  "じゃ",
"ですね"  =>  "じゃの",
"ですが"  =>  "じゃが",
"ですか"  =>  "か",
"です」"  =>  "じゃ」",
"です。"  =>  "じゃ。",
"でしょ"  =>  "じゃろ",
"でした"  =>  "じゃった",
"ている"  =>  "とる",
"ていま"  =>  "とりま",
"ていて"  =>  "とって",
"ていっ"  =>  "てっ",
"ていた"  =>  "とった",
"であろ"  =>  "じゃろ",
"である"  =>  "じゃ",
"ってる"  =>  "っとる",
"ってた"  =>  "っとった",
"ちます"  =>  "つんじゃ",
"ちなか"  =>  "ちんか",
"ちない"  =>  "ちゃぁせん",
"だろう"  =>  "じゃろう",
"だよ」"  =>  "じゃぁや」",
"たなか"  =>  "たんか",
"たない"  =>  "たん",
"だと聞"  =>  "じゃゆぅて聞",
"だと信"  =>  "じゃゆぅて信",
"だと思"  =>  "じゃゆぅて思",
"だと言"  =>  "じゃゆ",
"だった"  =>  "じゃった",
"ただ、"  =>  "じゃが、",
"だけど"  =>  "じゃが",
"たくな"  =>  "とぉな",
"だから"  =>  "じゃけぇ",
"たから"  =>  "たけぇ",
"そんな"  =>  "そがぁな",
"そして"  =>  "ほいで",
"そこで"  =>  "ほいで",
"そうか"  =>  "ほうか",
"そいつ"  =>  "そんなぁ",
"せなか"  =>  "せんか",
"ぜない"  =>  "ぜん",
"せない"  =>  "せん",
"せずに"  =>  "せんとぉに",
"すれば"  =>  "すりゃぁ",
"ずるけ"  =>  "こすけ",
"ずるく"  =>  "こすぅ",
"ずるか"  =>  "こすか",
"ずるい"  =>  "こすい",
"ずには"  =>  "んにゃぁ",
"すでに"  =>  "はぁ",
"すこし"  =>  "ちぃと",
"しまっ"  =>  "しもぉ",
"じなか"  =>  "じんか",
"しなか"  =>  "せんか",
"しない"  =>  "せん",
"した。"  =>  "したんじゃ。",
"しかし"  =>  "ほぃじゃが",
"しい。"  =>  "しぃんじゃ。",
"さほど"  =>  "そんとに",
"さない"  =>  "さん",
"こんな"  =>  "こがぁな",
"こわせ"  =>  "めげ",
"こわす"  =>  "めぐ",
"この頃"  =>  "きょうび",
"こども"  =>  "ガキ",
"こいつ"  =>  "こんなぁ",
"ければ"  =>  "けりゃぁ",
"げなか"  =>  "げんか",
"けなか"  =>  "けんか",
"げない"  =>  "げん",
"けない"  =>  "けん",
"きます"  =>  "くんじゃ",
"きなか"  =>  "きんか",
"きない"  =>  "きん",
"きさま"  =>  "われ",
"からね"  =>  "けぇね",
"かない"  =>  "かん",
"かなぁ"  =>  "かのぉ",
"がいた"  =>  "がおった",
"おもっ"  =>  "おもう",
"おまえ"  =>  "われ",
"オマエ"  =>  "われ",
"おそけ"  =>  "とろけ",
"おそか"  =>  "とろか",
"おそい"  =>  "とろい",
"えなか"  =>  "えんか",
"えない"  =>  "えん",
"うまく"  =>  "うもぉ",
"いれば"  =>  "おりゃぁ",
"いです"  =>  "い",
"いだろ"  =>  "かろ",
"いたら"  =>  "おったら",
"いじろ"  =>  "いらお",
"いじれ"  =>  "いらえ",
"いじる"  =>  "いらう",
"いくら"  =>  "なんぼ",
"いえば"  =>  "ゆやぁ",
"いいの"  =>  "ええん",
"いいね"  =>  "ええの",
"あんな"  =>  "あがぁな",
"ある。"  =>  "あるんじゃ。",
"あらん"  =>  "な",
"あの人"  =>  "あんなぁ",
"あなた"  =>  "あんた",
"あたし"  =>  "うち",
"アタシ"  =>  "ウチ",
"ぁじゃ"  =>  "ぁです",
"あいつ"  =>  "あんなぁ",
"腕白"  =>  "がんぼ",
"良く"  =>  "よう",
"良か"  =>  "えか",
"良い"  =>  "ええ",
"無茶"  =>  "わや",
"妙な"  =>  "いなげな",
"本当"  =>  "ほんま",
"僕達"  =>  "わしら",
"母親"  =>  "おかん",
"変な"  =>  "いなげな",
"父親"  =>  "おとん",
"彼女"  =>  "あんなぁ",
"白く"  =>  "白ぉ",
"買っ"  =>  "こぉ",
"濃け"  =>  "こゆけ",
"濃く"  =>  "こゆぅ",
"濃か"  =>  "こゆか",
"濃い"  =>  "こゆい",
"痛く"  =>  "いとぉ",
"頂き"  =>  "もらい",
"長く"  =>  "なごぉ",
"遅け"  =>  "とろけ",
"遅か"  =>  "とろか",
"遅い"  =>  "とろい",
"短く"  =>  "みじこぉ",
"沢山"  =>  "えっと",
"大体"  =>  "おおかた",
"多数"  =>  "えっと",
"多少"  =>  "ちぃと",
"多く"  =>  "おゆぅ",
"遭っ"  =>  "おぉ",
"早く"  =>  "はよぉ",
"全部"  =>  "みな",
"全く"  =>  "いっこも",
"赤く"  =>  "あこぉ",
"青く"  =>  "青ぉ",
"食っ"  =>  "食ぅ",
"少々"  =>  "ちぃと",
"少し"  =>  "ちぃと",
"重く"  =>  "おもぉ",
"蹴ろ"  =>  "けつろ",
"蹴れ"  =>  "けつれ",
"蹴る"  =>  "けつる",
"蹴り"  =>  "けつり",
"蹴ら"  =>  "けつら",
"蹴っ"  =>  "けつっ",
"実に"  =>  "げに",
"私達"  =>  "わしら",
"思っ"  =>  "思う",
"子供"  =>  "ガキ",
"細く"  =>  "細ぉ",
"最近"  =>  "きょうび",
"再度"  =>  "もっぺん",
"再び"  =>  "もっぺん",
"黒く"  =>  "黒ぉ",
"合っ"  =>  "おぉ",
"交換"  =>  "かえっこ",
"言わ"  =>  "ゆわ",
"言お"  =>  "ゆお",
"言う"  =>  "ゆう",
"言い"  =>  "ゆい",
"軽く"  =>  "かるぅ",
"叫ん"  =>  "おらん",
"叫ぼ"  =>  "おらぼ",
"叫べ"  =>  "おらべ",
"叫ぶ"  =>  "おらぶ",
"叫び"  =>  "おらび",
"叫ば"  =>  "おらば",
"居る"  =>  "おる",
"居た"  =>  "おった",
"貴様"  =>  "われ",
"貴兄"  =>  "あんた",
"帰ろ"  =>  "いの",
"帰れ"  =>  "いね",
"帰る"  =>  "いぬる",
"帰り"  =>  "いに",
"既に"  =>  "はぁ",
"寒く"  =>  "さぶぅ",
"概ね"  =>  "おおかた",
"壊せ"  =>  "めげ",
"壊す"  =>  "めぐ",
"会っ"  =>  "おぉ",
"我々"  =>  "わしら",
"何故"  =>  "なんで",
"永く"  =>  "なごぉ",
"逢っ"  =>  "おぉ",
"れば"  =>  "りゃぁ",
"るの"  =>  "るん",
"りは"  =>  "りゃぁ",
"らぬ"  =>  "らん",
"よね"  =>  "よの",
"よく"  =>  "よう",
"よか"  =>  "えか",
"もの"  =>  "もん",
"めは"  =>  "みゃぁ",
"むの"  =>  "むん",
"みは"  =>  "みゃぁ",
"ぼく"  =>  "わし",
"ぶの"  =>  "ぶん",
"のよ"  =>  "んよ",
"のは"  =>  "なぁ",
"のだ"  =>  "んじゃ",
"のか"  =>  "んか",
"の？"  =>  "ん？",
"ねは"  =>  "ねゃぁ",
"ね。"  =>  "のぉ。",
"ぬの"  =>  "ぬん",
"には"  =>  "にゃぁ",
"なの"  =>  "なん",
"など"  =>  "やら",
"なぜ"  =>  "なんで",
"な？"  =>  "の？",
"な。"  =>  "の。",
"と聞"  =>  "ゆぅて聞",
"と伝"  =>  "ゆぅて伝",
"と信"  =>  "ゆぅて信",
"と思"  =>  "ゆぅて思",
"と言"  =>  "ゆ",
"とい"  =>  "ゆ",
"てや"  =>  "ちゃ",
"では"  =>  "じゃぁ",
"ては"  =>  "ちゃぁ",
"です"  =>  "じゃ",
"てお"  =>  "と",
"つの"  =>  "つん",
"ちは"  =>  "ちゃぁ",
"だろ"  =>  "じゃろ",
"だよ"  =>  "で",
"だね"  =>  "じゃのぉ",
"だな"  =>  "じゃのぉ",
"だが"  =>  "じゃが",
"だ」"  =>  "じゃ」",
"だ。"  =>  "じゃ。",
"だ、"  =>  "じゃ、",
"せは"  =>  "しゃぁ",
"すの"  =>  "すん",
"ずに"  =>  "んとぉに",
"じは"  =>  "じゃぁ",
"しく"  =>  "しゅう",
"げは"  =>  "げゃぁ",
"けは"  =>  "けゃぁ",
"けど"  =>  "が",
"ぐの"  =>  "ぐん",
"くの"  =>  "くん",
"きみ"  =>  "われ",
"キミ"  =>  "われ",
"ぎは"  =>  "ぎゃぁ",
"きは"  =>  "きゃぁ",
"お前"  =>  "われ",
"オレ"  =>  "わし",
"えば"  =>  "やぁ",
"えは"  =>  "やぁ",
"いわ"  =>  "ゆわ",
"いは"  =>  "やぁ",
"いお"  =>  "ゆお",
"いう"  =>  "ゆう",
"」と"  =>  "」ゆぅて",
"僕"  =>  "わし",
"母"  =>  "おかん",
"父"  =>  "おとん",
"彼"  =>  "あんなぁ",
"私"  =>  "わし",
"俺"  =>  "わし",
"んんじゃ"  =>  "んのんじゃ",
"れは"  =>  "りゃぁ",
"らは"  =>  "らぁ",
"ゆい、"  =>  "言い、",
"とは"  =>  "たぁ",
"っゆ"  =>  "っとい",
"じゃったらん"  =>  "ならん",
"じゃか"  =>  "か",
"しは"  =>  "しゃぁ"
}



  end
end
