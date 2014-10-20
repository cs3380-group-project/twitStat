DROP SCHEMA IF EXISTS tweets CASCADE;
CREATE SCHEMA tweets;
SET search_path = tweets;
CREATE TABLE twit_user(
	usr_id varchar(50) primary key,
	name varchar(50),
	screen_name varchar(50),
	location varchar(50),
	desription varchar(500),
	followers integer,
	friends integer,
	created_at varchar(50),
	status_count integer,
	fav_count integer,
	lang varchar(4),
	profile_img_url varchar(400),
	default_img boolean
);
CREATE TABLE tweets(
	id serial primary key,
	tweet varchar(145) NOT NULL,
	source varchar(300),
	user_id bigint
);
CREATE TABLE geo(
	id serial references tweets,
	geo varchar(50),
	coords varchar(50)
);
INSERT INTO twit_user VALUES (
	'2780070444',
	'たろいも',
	'neconeco_sep',
	'ふくえんおっおー',
	'ちょろいもだワン',
	17,17,'Sat Aug 30 06:55:05 +0000 2014',3690,17,'ja',
	'http://pbs.twimg.com/profile_images/514612220722810880/g39QTy_0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'頭の中でぐるぐるループする曲ってだいたい女の子の声',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2780070444
);
INSERT INTO twit_user VALUES (
	'2178316596',
	'Healthe done',
	'Healthedone',
	'',
	'null',
	26,139,'Wed Nov 06 15:43:48 +0000 2013',7838,139,'tr',
	'http://pbs.twimg.com/profile_images/378800000703152840/053041418d34fda30d3980036c4896a6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'TheoryQ-Harvard Imposes Travel Restrictions: Harvard Imposes Travel RestrictionsHarvard Imposes Travel Restric... http://t.co/aGttGaDrZS',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	2178316596
);
INSERT INTO twit_user VALUES (
	'507514597',
	'AWESOME',
	'awesome_1016',
	'',
	'내 청춘, 찬란한 요섭아.',
	236,15,'Tue Feb 28 15:27:55 +0000 2012',4511,15,'ko',
	'http://pbs.twimg.com/profile_images/523861038844768256/O4m6B8ex_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'씹귀^_ㅠ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	507514597
);
INSERT INTO twit_user VALUES (
	'573954760',
	'(*´れ｀)*´も｀) *´ｎ｀)',
	'9aEas',
	'北海道の東端→道央らへん',
	'フレッシュプリキュア！のキュアピーチ様クラスタで ドキプリ（特にマナちゃん）にドハマリちう。主にニコ動のプリキュアコミュ＆自コミュで生主やってます。 　 放送頻度激減してますがどうぞよろしくお願いします。　　　　　　　　　　　　　　　　最近、ボルテのおかげで音ゲ熱が再燃。※ホーム→苫猫閉店につき恵庭猫＆千歳TAITOへ',
	236,210,'Mon May 07 20:45:27 +0000 2012',39585,210,'ja',
	'http://pbs.twimg.com/profile_images/514475613092974592/7Kd3nbdK_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'３桁ニアなんて当たり前ですよ',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	573954760
);
INSERT INTO twit_user VALUES (
	'1665254762',
	'Tatiana TT',
	'ntheamPe',
	'Москва, Россия',
	'Брэнд для компании – как репутация для человека. Вы завоевываете репутацию, хорошо справляясь со сложными задачами. Люди это со временем замечают',
	540,862,'Mon Aug 12 14:47:17 +0000 2013',5647,862,'en',
	'http://pbs.twimg.com/profile_images/378800000390130110/78d104083c6b97a9d2c990f5c6ca6626_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#спортивный #канал Брентфорд — Шеффилд Уэнсдей смотреть онлайн 21 Октября видео трансляцию: 90398 Матч: Брентфорд —… http://t.co/IVSKe6vdbL',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	1665254762
);
INSERT INTO twit_user VALUES (
	'2688930704',
	'أيمن جبالي',
	'a35155576',
	'',
	'null',
	5,1,'Tue Jul 29 02:23:20 +0000 2014',3292,1,'en',
	'http://pbs.twimg.com/profile_images/523130459622866944/eoy9HBRv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @soooo0soooo: ممرضة سعودية تنقذ شابا بفضل الله من الموت
http://t.co/rXF7EOlJ0T
#وش_تسوي_اذا_تضايقت 
#Too_Late #اشهر_تصريفه
#Pakistan #أف…',
	'<a href=::http://topretweeet.com/retweet:: rel=::nofollow::>طوب ريـتويت </a>',
	2688930704
);
INSERT INTO twit_user VALUES (
	'2288605672',
	'....',
	'smsm940255',
	'',
	'‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏سبحان الله وبحمده سبحان الله العظيم',
	314,477,'Fri Jan 17 19:59:48 +0000 2014',1170,477,'ar',
	'http://pbs.twimg.com/profile_images/483551965821947905/PXv_snhw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @M7war9: كل هالفرحة علشان 3 نقاط !! http://t.co/3qx7JfvIWI',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2288605672
);
INSERT INTO twit_user VALUES (
	'48463128',
	'Bill Barbosa',
	'photodesignsinc',
	'Jupiter',
	'Christian,Father, Son, Speaker,Teacher,Coach,Photographer.',
	233,414,'Thu Jun 18 19:40:59 +0000 2009',1549,414,'en',
	'http://pbs.twimg.com/profile_images/1394055519/BillBarbosaPhotography_red_lr_copy_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Photos by Bill Barbosa Photography
http://t.co/gRTrlLvifc

View More:... http://t.co/mzDxNpHIbZ',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	48463128
);
INSERT INTO twit_user VALUES (
	'125567823',
	'Komunitas Aleut',
	'KomunitasAleut',
	'Jl. Sumur Bandung No.4',
	'Komunitas mandiri pecinta wisata-sejarah. Bekerja swadaya dan nirlaba untuk Kota Bandung. Syarat gabung, cinta Bandung, minat belajar bersama, iuran 10rb/tahun',
	4389,253,'Tue Mar 23 05:48:22 +0000 2010',16904,253,'en',
	'http://pbs.twimg.com/profile_images/504625624867037184/lv9as79E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Selamat kepada Bapak Joko Widodo dan Bapak Jusuf Kalla yang hari ini telah dilantik sebagai Presiden dan Wakil Presiden Republik Indonesia',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	125567823
);
INSERT INTO twit_user VALUES (
	'273969704',
	'✋(;◜௰◝;)',
	'KiSaM_',
	'栃本',
	'絵、mad

icon by fKot0',
	470,336,'Tue Mar 29 13:41:07 +0000 2011',84842,336,'ja',
	'http://pbs.twimg.com/profile_images/435400519813562368/7IpRdC0p_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ハ　イ　ス　コ　ア',
	'<a href=::http://tapbots.com/tweetbot:: rel=::nofollow::>Tweetbot for iΟS</a>',
	273969704
);
INSERT INTO twit_user VALUES (
	'80110362',
	'MGT Candidates',
	'MGTCandidates',
	'',
	'Hottest Business and Management Candidates on the Web',
	781,12,'Mon Oct 05 19:54:01 +0000 2009',62663,12,'en',
	'http://pbs.twimg.com/profile_images/1122703050/reverse_climber_logo_64_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Lawn mowing and lawncare - Indianapolis, IN, 19885, USA (#jobs) http://t.co/UsXFbBNgOt',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	80110362
);
INSERT INTO twit_user VALUES (
	'2856458768',
	' مْآجد',
	'Ms2585',
	'مًفُضلَتٌيِ = سِلَة اوٌجّآعٌيِ',
	'‏‏‏‏‏آکْتٌـبً مًنِ أجّـلَ نِفُـسِـيِ وٌمًنِ أجّـلَ قُلَبًيِ آلَذِيِ تٌـکْدٍسِـ دٍآخِـلَة وٌجّـعٌ آلَسِـنِيِنِ .آذِآ آقُرأنِيِ دٍوٌنِ ضًـجّـر وٌلَآ تٌـشُـفُـقُ ع',
	1102,795,'Wed Oct 15 08:18:40 +0000 2014',527,795,'en',
	'http://pbs.twimg.com/profile_images/523849677871935490/bxbDp2BB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'هُنَاكَ قُلُوب نَقيَة ؛ تَستَحقْ أنْ نَهبهَا كُل الطَهر ؛
فَهيَ أوَطانْ أمنَة لِ أرُواحنَا ؛ التَي أعيَاهَا الوَجع',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2856458768
);
INSERT INTO twit_user VALUES (
	'2867454974',
	'تبنينيم',
	'jskdjxjxf',
	'',
	'null',
	0,1,'Mon Oct 20 15:34:53 +0000 2014',1,1,'ar',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'@ALI_ALARD1 خاص',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2867454974
);
INSERT INTO twit_user VALUES (
	'90592267',
	'wut jp',
	'wut_jp',
	'富山',
	'ゲームと映画と燻製と

気軽にリプライを返してもらえると、こちらからもフォローしやすいです。
あ、いや、無理にとは言わないので…。（笑

*FCMLなんとして続かないモノかなぁ。',
	348,286,'Tue Nov 17 08:52:26 +0000 2009',59967,286,'ja',
	'http://pbs.twimg.com/profile_images/801658357/utweet-wut_jp_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'デベロップメントはエイティングなの！？魔法大作戦！！',
	'<a href=::https://sourceforge.jp/projects/opentween/:: rel=::nofollow::>OpenTween</a>',
	90592267
);
INSERT INTO twit_user VALUES (
	'2556153298',
	'jameela.',
	'i_jooo7',
	'Saudi Arabia - Riyadh.',
	'لست لأحد ، إني لله وإني إليه راجعه ! - مفضلتي تشفع لي بعد مماتي -',
	229,205,'Tue May 20 23:03:37 +0000 2014',743,205,'ar',
	'http://pbs.twimg.com/profile_images/519602353708613632/Bxs4fvl5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'و بسمتها يا ناس تفتن عرب .',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2556153298
);
INSERT INTO twit_user VALUES (
	'784973173',
	'ほのちゃんよ           ',
	'icigokun',
	'',
	'終了。',
	743,386,'Mon Aug 27 16:05:17 +0000 2012',24046,386,'ja',
	'http://pbs.twimg.com/profile_images/503271335129133056/ITT3y0Uk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'まぬの山びこにきゅんって
きてしまったなんでよ（笑）',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	784973173
);
INSERT INTO twit_user VALUES (
	'1155045570',
	'megusama',
	'me0685',
	'',
	'null',
	108,121,'Wed Feb 06 20:48:56 +0000 2013',571,121,'ja',
	'http://pbs.twimg.com/profile_images/522620239821811713/qHdCeRpM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@m_1212r 
かえちゃんっておせっかいやもんな！笑
めぐもやしわかるでー！
うざがられたら次からどないしたえーかわからんくなるよな！',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1155045570
);

INSERT INTO twit_user VALUES (
	'976486118',
	'Estela.',
	'estelajeje',
	'La Flecha (Valladolid) ',
	'15. Te quiero VII @fran_ubk. Si nada nos salva de la muerte, al menos que el amor nos salve de la vida. @MartinGarrix',
	1231,364,'Wed Nov 28 16:35:33 +0000 2012',33471,364,'es',
	'http://pbs.twimg.com/profile_images/515651656286212096/Ot5P8LOu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @UnSimpIeChico: Las tardes así serían lo mejor, joder. 😍😍😍😍😍😍😍😍😍😍😍😍 http://t.co/zqmlsQNLCC',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	976486118
);
INSERT INTO twit_user VALUES (
	'312118166',
	'deboramelo ✌',
	'deboralm_',
	'Fortaleza',
	'Antes de julgar , me conheça (y;;   ; #DEUS ς੭',
	701,1039,'Mon Jun 06 16:20:20 +0000 2011',2958,1039,'en',
	'http://pbs.twimg.com/profile_images/378800000463970659/7d1519ab79fc6d1bc2a81ac2861895f3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'status de visita: perfil visualizado 6 vezes http://t.co/JGnUPzCuwv',
	'<a href=::http://twitcom.com.br:: rel=::nofollow::>Twitcom - Comunidades </a>',
	312118166
);
INSERT INTO twit_user VALUES (
	'959056333',
	'beatriz',
	'bvisacri',
	'brazil',
	'urban mermaid | Caniffuck ya',
	132,126,'Tue Nov 20 00:33:12 +0000 2012',669,126,'pt',
	'http://pbs.twimg.com/profile_images/488438315310645248/yATP5IXp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@babacaniff entendeu agora?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	959056333
);
INSERT INTO twit_user VALUES (
	'2591211048',
	'ยังทำไม่ได้ ',
	'poypbloy',
	'',
	'null',
	6,115,'Fri Jun 27 11:32:01 +0000 2014',1908,115,'en',
	'http://pbs.twimg.com/profile_images/506292824778625024/Jjldd6Hl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Kwaiii_: หวังอะไร แม่งก็ผิดหวังตลอด.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2591211048
);
INSERT INTO twit_user VALUES (
	'157246229',
	'いちご（imyu）',
	'ichigo_yume',
	'カントー地方',
	'日々妄想を垂れ流すアニメとかゲームとか漫画とか大好きなオタアカウント。基本は夢女子亜種だがBLGLNLなんでも美味しく頂く食物連鎖頂点の雑食。 日常ツイートも多い。 そのときはまってるものや創作ネタについて語り散らし、自分で絵を描きそれで騒ぎ、一人で盛り上がってます。 どうぞ構ってくだされば幸いです。',
	168,165,'Sat Jun 19 07:36:57 +0000 2010',93699,165,'ja',
	'http://pbs.twimg.com/profile_images/520975560269246464/AUGJY4ir_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ねよ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	157246229
);
INSERT INTO twit_user VALUES (
	'335249763',
	'ลูกอมฮอลล์',
	'hchidnok',
	'',
	'TUN26 | Line&IG : Hchidnok | S♥NE | Chocolate https://www.facebook.com/7Amity.Hall',
	416,360,'Thu Jul 14 11:43:25 +0000 2011',63028,360,'en',
	'http://pbs.twimg.com/profile_images/524218496297603073/o68MNXac_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ของขึ้นและอิสัส',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	335249763
);
INSERT INTO twit_user VALUES (
	'133294783',
	'ともちん☻',
	'tomochin_25',
	'Zushi ⇔ Yokohama ⇔ Shibuya',
	'気まぐれマイペースな自由人(ﾟ_ﾟ)♡♡ 音霊すき。いたずらっ子。← Smile !!! :) Allies / 東京無礼者（GF Bb BBT 3K-RAT 0TU1）/ ｷﾏｸﾞﾚﾝ / 平井大 / ALEXXX ☻♡',
	393,416,'Thu Apr 15 13:36:16 +0000 2010',62833,416,'ja',
	'http://pbs.twimg.com/profile_images/515888161675673600/8fQzm5Rr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@iku1030 慎吾ちゃんなんですね！(((o(*ﾟ▽ﾟ*)o)))てっきり中居くんかと！慎吾ちゃん‥神♡w',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	133294783
);
INSERT INTO twit_user VALUES (
	'1635871590',
	'ファウジ',
	'xfauzyx',
	'404 Not Found',
	'╭∩╮ (︶.︶メ) ╭∩╮',
	38,227,'Wed Jul 31 16:46:21 +0000 2013',3977,227,'id',
	'http://pbs.twimg.com/profile_images/480432216879931392/Yf-UJb5-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'((( CIHUY ))) ::@Ayen_JKT48: @kinalJKT48 idol nanteeee :D cihuuuyy::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1635871590
);
INSERT INTO twit_user VALUES (
	'634306553',
	'優奈',
	'h_yuuna0413',
	'',
	'America × Japan } の混血 [ 16歳 ]',
	525,382,'Fri Jul 13 05:06:05 +0000 2012',905,382,'ja',
	'http://pbs.twimg.com/profile_images/508296718564069376/KEMugqrn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@HimeTkid 
ありがとう(´；ω；`)♡

智ちゃんも頑張ってな～󾭠
あ、後体育祭の時
優奈も髪の毛
やってほしい(´・ω・｀)',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	634306553
);
INSERT INTO twit_user VALUES (
	'1732186950',
	'こいぬい',
	'mtnrxxx',
	'そのへん',
	'BSR/tns/舞台/瀬戸内/DS/華アワセ/特撮/鍋nmmn 成人済♀ お気軽にFBRどうぞ( ´ ▽ ` )',
	266,270,'Thu Sep 05 15:08:40 +0000 2013',38241,270,'ja',
	'http://pbs.twimg.com/profile_images/488343958397796352/Bv461WcA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'おやすみ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1732186950
);
INSERT INTO twit_user VALUES (
	'489241856',
	'HOSSE™',
	'HosseTM',
	'Surabaya Indonesia',
	'I;;m is GAY and i love KONTOL',
	11854,4,'Sat Feb 11 10:02:22 +0000 2012',5837,4,'id',
	'http://pbs.twimg.com/profile_images/516304581123244033/te0EI1se_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/nuJc8EOx4D',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	489241856
);
INSERT INTO twit_user VALUES (
	'2178170455',
	'wahid kurniawan',
	'wahid_147',
	'Lampung',
	'Berani Jujur Itu Hebat..',
	7,340,'Wed Nov 06 14:20:53 +0000 2013',2802,340,'id',
	'http://pbs.twimg.com/profile_images/435051869275033600/OT4nolx-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KarirID: Spesifikasi dan Harga iPhone 6 Terbaru 2014, baca selengkapnya -&gt; http://t.co/VtlUkMBCLe',
	'<a href=::http://m.ubersocial.com:: rel=::nofollow::>UberSociaI Mobile</a>',
	2178170455
);
INSERT INTO twit_user VALUES (
	'1365964765',
	' ♚ hanoi ♚',
	'han_hufiyuirina',
	'           hobin jang hobin :)',
	'| Walk on the right path and have faith. Insyaa Allah | Going to PLKN | My Straw Hat |',
	357,332,'Sat Apr 20 02:31:32 +0000 2013',5179,332,'en',
	'http://pbs.twimg.com/profile_images/520125876638195712/xkB2irq8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Episode yang Amir bagi dekat aku ni cukup buat untuk aku survive time cuti sem. Yosh.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1365964765
);
INSERT INTO twit_user VALUES (
	'2659696410',
	'.',
	'datTrippymaya',
	'',
	'EJ',
	158,113,'Sat Jul 19 15:18:21 +0000 2014',6900,113,'en',
	'http://pbs.twimg.com/profile_images/524216807700172801/6x5TemUU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I swear i will really cry because i went through alot of creepy stuffs today stopp!!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2659696410
);
INSERT INTO twit_user VALUES (
	'182848962',
	'Tom',
	'tamaash',
	'Rock City Beach',
	'NBA. Pistons @DetroitFr . http://www.posterdunk.com',
	468,75,'Wed Aug 25 15:05:07 +0000 2010',25628,75,'fr',
	'http://pbs.twimg.com/profile_images/514716501669326849/kAlX4vW0_normal.jpeg',
	'false'
);
INSERT INTO twit_user VALUES (
	'2585583625',
	'░░░',
	'snmrur',
	'',
	'月山習をゴリ推す腐女子　FRBはお気軽に',
	7,7,'Tue Jun 24 11:01:24 +0000 2014',514,7,'ja',
	'http://pbs.twimg.com/profile_images/519831398711312384/nwQ8XJLi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'しゅたゃに感情の８割支配されてるマンだから日々苦しんでいる',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2585583625
);
INSERT INTO twit_user VALUES (
	'808603698',
	'슙',
	'swaaag39',
	'슈가 민윤기 95년생',
	'null',
	51,52,'Fri Sep 07 10:29:43 +0000 2012',3107,52,'ja',
	'http://pbs.twimg.com/profile_images/493713863540355072/TX3gltN4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'焼きイモ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	808603698
);
INSERT INTO twit_user VALUES (
	'2855602411',
	'::睡蓮::',
	'ymsuirenjp',
	'',
	'◆A専用垢。純さん大好き。成人済み。無言フォロー失礼します。好きなCPは純さん総受け(特に哲純、御純、東純など)　本垢では御沢呟いてます。FRBはフリーで。よろしくです！',
	24,22,'Tue Oct 14 13:21:55 +0000 2014',198,22,'ja',
	'http://pbs.twimg.com/profile_images/522015040233152513/pVRkke3m_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ご馳走様でした…もー…興奮して…寝られんばい…',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2855602411
);
INSERT INTO twit_user VALUES (
	'577136349',
	'Lenore Trussell',
	'LenoreTrussell',
	'',
	'null',
	3744,0,'Fri May 11 11:23:05 +0000 2012',168800,0,'en',
	'http://pbs.twimg.com/profile_images/2249067235/56_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/IiQY4PdqQb http://t.co/9oOtApNZer Horny homemade amateur housewife sex blonde04:3872%130,255 #porn #xxx #adult #porno #pussy',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	577136349
);
INSERT INTO twit_user VALUES (
	'207620587',
	'Just Bugs',
	'bugauctions',
	'USA! USA! USA!',
	'Tweeting out the best in VW Bug related auctions!',
	384,28,'Mon Oct 25 17:54:07 +0000 2010',55258,28,'en',
	'http://pbs.twimg.com/profile_images/1152339000/old_new_beetle_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'2006 Hot Wheels # 197 VW Bug http://t.co/5UU9d90Ar5',
	'<a href=::https://buzcast.com:: rel=::nofollow::>BuzCAST.com</a>',
	207620587
);
INSERT INTO twit_user VALUES (
	'2495656561',
	'じぇみお',
	'jabydig',
	'apple',
	'世界最後の愚痴を呟く',
	144,139,'Thu May 15 04:24:16 +0000 2014',10616,139,'ja',
	'http://pbs.twimg.com/profile_images/522499856212836353/dOWMpYq9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'クールです',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2495656561
);
INSERT INTO twit_user VALUES (
	'544756262',
	'樺鈴＠カメコしたい',
	'karinmicyu',
	'関東中心に活動中',
	'コス垢。コス名：樺鈴（かりん）成人済。Free・うたプリ・進撃・K・ボカロ・青エク・黒バス・ヘタリア等、男装が中心。NL・BLどちらも好きです。カメラも好きなので、被写体になってくれるレイヤー様とも繋がりたい！',
	355,332,'Wed Apr 04 02:01:14 +0000 2012',32946,332,'ja',
	'http://pbs.twimg.com/profile_images/520559111226683392/k7amQDSY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@yume_tamago11 ゆめさん、おやすみなさーい！',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	544756262
);
INSERT INTO twit_user VALUES (
	'2852484110',
	'♨十六族(生)♨',
	'ultraJiro',
	'October 10 2014 at 6;55PM ',
	'No More IFTTT',
	171,0,'Sun Oct 12 00:31:32 +0000 2014',20878,0,'ja',
	'http://pbs.twimg.com/profile_images/521616394438189057/ZKK_fx0J_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@null 123456789',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2852484110
);
INSERT INTO twit_user VALUES (
	'2326183044',
	'おたく貴婦人',
	'namamoi0423',
	'',
	'おたくな人生。♡ツイキャス♡雑談枠、バイオ枠、マイクラ枠やってます。',
	56,122,'Mon Feb 03 23:37:59 +0000 2014',439,122,'ja',
	'http://pbs.twimg.com/profile_images/430491677434712064/BFO5VDmh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'マイクラ枠♡コメントください(｡◉ˇω◉) ( マイクラ枠♡コメントよろしく http://t.co/cHFiMs5LI9 )',
	'<a href=::http://twitcasting.tv/:: rel=::nofollow::>TwitCasting</a>',
	2326183044
);
INSERT INTO twit_user VALUES (
	'2386243339',
	'uno',
	'un_ch9',
	'',
	'肛門より生み出されし闇、又の名をunkoと言う',
	157,209,'Thu Mar 13 03:22:21 +0000 2014',56256,209,'ja',
	'http://pbs.twimg.com/profile_images/519292382743781376/1PNWYPjn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ゆちゆち',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2386243339
);
INSERT INTO twit_user VALUES (
	'2754567577',
	'つぶつぶこ@妖怪時計垢',
	'yuttsubu',
	'妖怪の出るところ',
	'妖怪ウォッチ2、元祖をメインにのんびりプレイ中です。カッパさんたちの妄想他、妖怪ウォッチ話が主です！色々食いついて、ついついリプします、ご迷惑でしたらごめんなさい(´Д` )',
	11,12,'Fri Aug 22 10:20:37 +0000 2014',503,12,'ja',
	'http://pbs.twimg.com/profile_images/519820312569843713/X6nlu0pW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@2mi6e わーー、いっぱいありがとうございます、アップで見れるのですごく助かります！！
河童先輩はホンモノとしてのプライドが高そうな気もしますが、河童の川流れのやつとか、皿に触るなとか、すごくカワイイですね♥︎
ノガッパと一緒にさんぽしたいです…。',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2754567577
);
INSERT INTO twit_user VALUES (
	'1624897734',
	'درر الكلام',
	'BrianaSailer',
	'UAE',
	'اللهُمَ إني أسألُكَ صدرا رَحباً كَتِلك السمَاء الشاسِعة وَ مثْلها عشراً',
	17,155,'Sat Jul 27 07:57:06 +0000 2013',1931,155,'en',
	'http://pbs.twimg.com/profile_images/378800000576439742/7ccf1193926ef1aa7c89b9555ab16140_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @nashet__8: للآجل مستقبل بارع 
للآجل اطفالنا
للآجل حمايه بيوتنا
للآجل كرامتنا
ووللآجل الروز رايز بو ثمن اللوان 

#انزل_الارادة  طيح الله…',
	'<a href=::http://www.t6p.net:: rel=::nofollow::>t6p</a>',
	1624897734
);
INSERT INTO twit_user VALUES (
	'1536517362',
	'Amihceh/へちま',
	'AmihcehP',
	'',
	'回復事故のカリスマ(失笑',
	455,182,'Fri Jun 21 13:40:17 +0000 2013',12520,182,'ja',
	'http://pbs.twimg.com/profile_images/494027264456011776/lKk6YJ61_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@pz_tomato アーラッシャー',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1536517362
);
INSERT INTO twit_user VALUES (
	'2457814518',
	'みにょら',
	'minyo_rappa22',
	'',
	'サブ垢 / 京都 / 高3 / 化けるのが得意です / 詐欺メイク / STYLLE (チャムガ) / model / fashion / メイクme / 月刊CUG搭載 / フォローなくてリムるならフォローしないでね / ダイエットなうですブログ更新中',
	1703,1400,'Tue Apr 22 08:25:52 +0000 2014',4462,1400,'ja',
	'http://pbs.twimg.com/profile_images/524148755008724992/qZ8rfJJO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'最近ねんの遅いし肌荒れやばいっ。',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2457814518
);
INSERT INTO twit_user VALUES (
	'379054749',
	'H I L M I',
	'MohdHilmiii',
	'Kuala Lumpur',
	'157cm. ig : mohdhilmiii',
	347,360,'Sat Sep 24 08:44:31 +0000 2011',29116,360,'en',
	'http://pbs.twimg.com/profile_images/520046911777013761/WrTxncKC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KKIAZM sungai klang best',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	379054749
);
INSERT INTO twit_user VALUES (
	'1396933814',
	'すずな',
	'suwna1227',
	'',
	'Only you are all right.You are good.
❤︎2012.09.20start❤︎ ひーろとっ♡♡',
	442,502,'Thu May 02 11:14:44 +0000 2013',18988,502,'ja',
	'http://pbs.twimg.com/profile_images/521617970401783808/x_qVlINn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@hiroto5347 
だからちゃうってゆってるやん？
2人ともが悪いって何回
ゆったらわかる？',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1396933814
);
INSERT INTO twit_user VALUES (
	'1266771180',
	'あゆん子',
	'box_bian423',
	'山の頂上',
	'山坂ちゃん大好き。ペダルに関しては地雷無いのでどんなお話でも聞きます話します。ペダル好きすぎて爆発しそう、洋楽とか英語好きの18↑。ゆらちゃんらーぶ♡F/B/Rお気軽に！最近Fateがアツい。ジャンル問わず腐ってます。http://twpf.jp/box_bian423',
	131,161,'Thu Mar 14 10:57:33 +0000 2013',22361,161,'ja',
	'http://pbs.twimg.com/profile_images/522241329967820800/Yan3VMEw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@shino_pdr しのさんおかえりなさーい！！ギャルソン山坂充は出来ましたか？？💕',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1266771180
);
INSERT INTO twit_user VALUES (
	'20073838',
	'SOPDOGG',
	'SOPDOGG',
	'Portland, Oregon',
	'Randomness, Ducks, Sports, Technology, Games, Comics & Ladies. That;;s how I roll.',
	266,805,'Wed Feb 04 17:53:37 +0000 2009',2138,805,'en',
	'http://pbs.twimg.com/profile_images/438210846037008384/NvZVe452_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'50 Shades Of Oregon Ducks Football Uniforms http://t.co/e2ibuUIlTW via @HuffPostSports',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	20073838
);
INSERT INTO twit_user VALUES (
	'2775091183',
	'Alcantar2012',
	'orizco5',
	'',
	'null',
	1,15,'Wed Aug 27 23:22:32 +0000 2014',103,15,'en',
	'http://pbs.twimg.com/profile_images/507553918549626880/nB5m1lwD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@raulbrindis mi miedo.es escuchar al turky con las babosadas k saca 😠',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2775091183
);
INSERT INTO twit_user VALUES (
	'2524691300',
	'うみキチ@ラブライバー',
	'umieri_lovelive',
	'',
	'null',
	18,29,'Mon May 26 10:19:49 +0000 2014',7480,29,'ja',
	'http://pbs.twimg.com/profile_images/518779055844229120/yuLvuWjj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lovecainfo: С Днем Рождения Эричка！！ #lovelive #絢瀬絵里生誕祭2014 http://t.co/bcEmgJkeR8',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2524691300
);
INSERT INTO twit_user VALUES (
	'751010376',
	'Marsyaaaaaaaaa❄️',
	'MarsyaAzimi',
	'',
	'|bestie @eyesyah_| bae @Joe_Sugg ❤️',
	337,286,'Sat Aug 11 09:47:54 +0000 2012',11706,286,'en',
	'http://pbs.twimg.com/profile_images/521608755297796098/FV74mhzu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mum sometimes talks in chinese and she;;ll just leave me clueless',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	751010376
);
INSERT INTO twit_user VALUES (
	'130126186',
	'ねこきち＠祝賀27昼',
	'nekokichi44',
	'アークスシップ九番艦『ネオヨコハマ』',
	'ヘーイ提督ゥ！活動拠点だった九州に帰りたいサンホラーにしてレイヤーだったもの。PSO2はShip9『ねこきちG（アンジュ/マリオン）』で活動中。アイコンは頂き物です。',
	196,199,'Tue Apr 06 11:34:16 +0000 2010',65920,199,'ja',
	'http://pbs.twimg.com/profile_images/481465673877434369/l1E3OOAd_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@perfume893 ああ＾～',
	'<a href=::http://janetter.net/:: rel=::nofollow::>Janetter</a>',
	130126186
);
INSERT INTO twit_user VALUES (
	'804680922',
	'fukaumi',
	'sujikovo',
	'トイレ',
	'ついっぷる http://p.twipple.jp/user/sujikovo',
	69,51,'Wed Sep 05 14:14:34 +0000 2012',10427,51,'ja',
	'http://pbs.twimg.com/profile_images/523308310405996544/Xr-vQHks_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'私が無二のお米好き、というので新米を頂いて、別で2袋お米の頂き物があるってあぁ…ほんと幸せ。特に魚沼産コシヒカリの新米は最高の贅沢品だよ。この光沢と瑞々しさ、ロマンと歴史を感じさせる気高き白。釜を開ければ夢と共に広がる誘惑の香り。上品な甘さと弾力が織りなすハーモニーは、(字余り)',
	'<a href=::http://twicca.r246.jp/:: rel=::nofollow::>twicca</a>',
	804680922
);
INSERT INTO twit_user VALUES (
	'1890249080',
	'キョウ(ё)峰廃1023大阪試写会',
	'karuta_69',
	'何もない世界',
	'絵を描くアカウント。無言フォローすみません。成人済。絵のお仕事ありましたら下記まで。 ｇｏｏｄｂｙｄａｙｄｒｅａｍ＠ｇｍａｉｌ.ｃｏｍ//邦楽：THE BACK HORN/ART-SCHOOL/9mm/People In The Box/時雨/etc|| 他：関ジャニ∞、特撮やドラマ',
	328,404,'Sat Sep 21 13:47:57 +0000 2013',40926,404,'ja',
	'http://pbs.twimg.com/profile_images/523482934158708736/w7s21wWJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Namino_Maminami: イケメン店員爆笑やり取り①

「（待っていたお客さんに）…今回のこのバンドの中で……誰が一番嫌い？」

（お客さん苦笑）

「13人…14人いるか、その中で……誰が一番嫌い？？」

（お客さんさらに苦笑）',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1890249080
);
INSERT INTO twit_user VALUES (
	'90906290',
	'Akbar Bimo Prastio',
	'BimomoMomo',
	'jakarta-bekasi IS MISTAKE!!',
	'Just The one who Founded in18october 1992th. I Am Honest and Being My Self,i dont care if woman likes it or not :) at least !! i;;m trying to be young ikhwan :)',
	877,758,'Wed Nov 18 16:40:52 +0000 2009',40392,758,'en',
	'http://pbs.twimg.com/profile_images/522556848973807616/Yy3xMrjg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@febrianadwi pasti doanya mah. Aamiin sesegera mungkin. Semoga yang khitbah sesuai :D',
	'<a href=::http://ubersocial.com:: rel=::nofollow::>UberSocial for BlackBerry</a>',
	90906290
);
INSERT INTO twit_user VALUES (
	'403229853',
	'Dza',
	'maudinurfajriah',
	'BAITULLAH | Mekah',
	'line: Maudifajriah, path : Maudi nur fajriah, IG: Maudifajriah | Save palestine | An-nur 31  | stay cool with Allah',
	228,192,'Wed Nov 02 06:18:27 +0000 2011',3150,192,'en',
	'http://pbs.twimg.com/profile_images/523137448621010944/2YDZU58q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TeladanRasul: ::Orang makan yg bersyukur setara dengan orang berpuasa yg bersabar.:: (HR Bukhari)',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	403229853
);
INSERT INTO twit_user VALUES (
	'2831645063',
	'genrry_p_n',
	'genrry_p_n',
	'',
	'null',
	2,38,'Wed Oct 15 14:06:46 +0000 2014',176,38,'es',
	'http://pbs.twimg.com/profile_images/522388606090883072/3YmDXQkS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#AlbaUnidadPorLaSalud #AlbaTCPxLaVida Comenzó Cumbre extraordinaria del Alba-TCP sobre la lucha contra el ébola! http://t.co/UwoelUMVx8::',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2831645063
);
INSERT INTO twit_user VALUES (
	'410477331',
	'وطنہ آلخاآاآص ‏..❥',
	'24_abeer',
	'••',
	'‏عادل ﺇﻧﻚ ﺍﻟﻨﺼﻒ ﺍﻵﺧﺮ مني نصفي ﺍﻟﺬي يشبهني ﻭيكملني ♡',
	348,948,'Sat Nov 12 04:43:15 +0000 2011',6263,948,'ar',
	'http://pbs.twimg.com/profile_images/483129618245750784/GMsbUXDP_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اكمل المؤمنين إيمانا أحسنهم خلقا وخياركم خياركم لنسائهم   http://t.co/DufprvuM5C',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	410477331
);
INSERT INTO twit_user VALUES (
	'1076335098',
	'라타진영♥',
	'LATA_JY',
	'♡LIFETIME :: 일생/평생/생애♡',
	'B1A4 팬블로그 라이프타임 운영자 라타♥                                         home :: @Lifetime423 / insta :: @LATA_JY',
	1175,118,'Thu Jan 10 11:18:24 +0000 2013',20317,118,'ko',
	'http://pbs.twimg.com/profile_images/523289937055973376/itQrJhbc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_ti2po 카톡에요...? 그렇구나... 알겠습니다😊 멘션 자주해요^^',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1076335098
);
INSERT INTO twit_user VALUES (
	'101170568',
	'magnoliatalk',
	'magnoliatalk',
	'千葉',
	'兵庫県出身。フッと笑えるつぶやきを見つけるのが好き。',
	36,139,'Sat Jan 02 08:02:24 +0000 2010',3649,139,'ja',
	'http://pbs.twimg.com/profile_images/1789696782/image_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @chihiro_nishi: どんなに夜遊びしても子供のお弁当づくりだけは欠かさないのとYOUさんが髪の毛クシャクシャしながら言ってたけど私は夜遊びもしたくないしお弁当も作りたくない',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	101170568
);
INSERT INTO twit_user VALUES (
	'1274572776',
	'[Halloween]✧ 쫑팔이 ✧ ',
	'Bell_Rhyme',
	'',
	'97 남/잡덕/죠죠러/초보코스어/욕트,진짜진짜어쩌다가 섹드립/리밋계:@Bell_Rhyme_l/팔로후 멘션주시라요.',
	351,431,'Sun Mar 17 10:06:03 +0000 2013',44092,431,'ko',
	'http://pbs.twimg.com/profile_images/520968013030240256/dz64VUJ__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@El_vav 쫑팔이',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1274572776
);
INSERT INTO twit_user VALUES (
	'36399901',
	'Love 22',
	'Flawless_s1',
	'Making moves',
	'Im the perfect verse over a tight beat ❤❤. Graduating senior #HU15',
	297,162,'Wed Apr 29 16:29:28 +0000 2009',20913,162,'en',
	'http://pbs.twimg.com/profile_images/378800000680686372/1450eff724fcc1e264ebaa54402a0fdb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Homecoming....recapping with @YourNamesHoward',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	36399901
);
INSERT INTO twit_user VALUES (
	'2164060358',
	'semo',
	'f7ltkm',
	'',
	'--i7',
	1152,148,'Wed Oct 30 04:03:03 +0000 2013',51242,148,'ar',
	'http://pbs.twimg.com/profile_images/520096172099117056/srYHBC5R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ديوث زوجته مع فحلها http://t.co/Ql3t7WMJET فحل #زب_كبير #محارم_البدو #اغتصاب_ورعان #فجور #ذليلة #تنزيل #مرطبه #متحررات #الخوال #بدوية',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	2164060358
);
INSERT INTO twit_user VALUES (
	'296911202',
	'carlos zapata',
	'Carluchin14',
	'venezuela',
	'null',
	25,1961,'Wed May 11 16:09:53 +0000 2011',4138,1961,'es',
	'http://pbs.twimg.com/profile_images/1349124337/Imagen_085_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/0G5LyE0Kxk http://t.co/GguzamxZ5G http://t.co/N1d2VO0hSM 13 ноября 2013 года исполнилос',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	296911202
);
INSERT INTO twit_user VALUES (
	'52794561',
	'City of Hoops',
	'cityofhoops',
	'DMV & Colorado Springs',
	'City of Hoops uses animation to engage, educate, and empower the youth to reach their full potential.  ·  #COH #CityOfHoops',
	116,149,'Wed Jul 01 17:44:30 +0000 2009',1610,149,'en',
	'http://pbs.twimg.com/profile_images/504353964037398529/CrZu23o2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@XavierHenry City of Hoops is more than buildings and basketball. The game of life is shown full circle. http://t.co/IWe9EFqDcQ',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	52794561
);
INSERT INTO twit_user VALUES (
	'109741115',
	'eda',
	'eda_castro',
	'londres',
	'null',
	32,1964,'Sat Jan 30 03:03:00 +0000 2010',4046,1964,'es',
	'http://pbs.twimg.com/profile_images/1643169105/090101155146_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/YEnqlhqcoX http://t.co/O6Ecd7fIyO http://t.co/6GHzLaC0Op Приветствую всех тех, кто, к',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	109741115
);
INSERT INTO twit_user VALUES (
	'535942397',
	'♥Adriana Marin♥',
	'adrianahnz11',
	'MANIZALES',
	'SE RÍEN DE MI POR SER DIFERENTE, YO ME RIO DE ELLOS PORQUE ESTOY DROGADO
#DANIELAMUÑOZ#05 #OSCARJULIANTRONCOSO#17 ♥ONCE CALDAS♥',
	185,145,'Sun Mar 25 03:10:06 +0000 2012',14810,145,'es',
	'http://pbs.twimg.com/profile_images/522102116845092865/7ZcNxX78_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_Hnz11: Domingo YAAA ©',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	535942397
);
INSERT INTO twit_user VALUES (
	'948595434',
	'Anastasia ',
	'flower210585',
	'',
	'null',
	0,1,'Wed Nov 14 22:22:39 +0000 2012',1732,1,'ru',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'Комната Алисы - еще одно место, которое я могу посещать! А вы уже открыли эту комнату? http://t.co/E05ykApt5A #Android #AndroidGames',
	'<a href=::http://www.game-insight.com/:: rel=::nofollow::>Mirrors of Albion</a>',
	948595434
);
INSERT INTO twit_user VALUES (
	'172510069',
	'Hiedra NO BAJA',
	'_discozen_',
	'Montevideo',
	'Esto es La Ilíada: Caos y Cosmos      κόσμος   /  κόσμος',
	436,336,'Thu Jul 29 22:05:41 +0000 2010',19702,336,'es',
	'http://pbs.twimg.com/profile_images/506890530014248960/MZTH9xOU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@lamar_nobaja Ola, Lamartina? Lamarti? La mar? El mar? Lamarea? Las olas y el viento sundun?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	172510069
);
INSERT INTO twit_user VALUES (
	'305007015',
	'pellito09',
	'pellito09',
	'',
	'si te pica el dorito rascate la cherry',
	229,232,'Wed May 25 13:48:17 +0000 2011',22013,232,'en',
	'http://pbs.twimg.com/profile_images/507014405448826880/9Z30O5U__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PuertoRicoPUR: Un Puerto Rico limpio es más bello ☀ Esta Isla es tuya, cuidala #BORICUA',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	305007015
);
INSERT INTO twit_user VALUES (
	'409647221',
	'Pimp.',
	'elasiamicolee',
	'',
	'Chilling, smoking, pimp slapping.
Instagram: elasiamicolee',
	579,542,'Fri Nov 11 01:27:53 +0000 2011',5769,542,'en',
	'http://pbs.twimg.com/profile_images/449188505559007232/tMyeez2R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'You need the patience of a saint to deal with me',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	409647221
);
INSERT INTO twit_user VALUES (
	'180693497',
	'Virgilio Giunta',
	'virgiliogiunta',
	'Guárico - Venezuela',
	'Político y abogado. Defensor de los derechos humanos y del ambiente. Amo a mis ausentes padres, a toda mi familia... a mis hijos.',
	674,938,'Fri Aug 20 06:56:51 +0000 2010',8156,938,'es',
	'http://pbs.twimg.com/profile_images/459038253367058432/UbEEe9TV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Chamita216: @SairamRivas Felicito a Venezuela, por tener una dirigente como la niña Sairam Rivas.Que orgullo.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	180693497
);
INSERT INTO twit_user VALUES (
	'2364511226',
	'Marcos Landa',
	'mar_da12',
	'campeche',
	'soy alegre divertido',
	49,63,'Thu Feb 27 18:14:50 +0000 2014',1457,63,'es',
	'http://pbs.twimg.com/profile_images/507180436162768896/8-BMqNFd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Las mejores tuitpics de los famosos este fin de semana http://t.co/opgW9fK4nt',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	2364511226
);
INSERT INTO twit_user VALUES (
	'2666163607',
	'iphone da Blue',
	'iphonedablue',
	'',
	'QUEEN B RAINHA',
	26,55,'Mon Jul 21 15:22:39 +0000 2014',754,55,'pt',
	'http://pbs.twimg.com/profile_images/491242579350941699/gQ3kddP8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @beyscoitodaMez: RT NAS FOTOS  @Beyonce Artist of the Year #AMAs http://t.co/v3Jzroc3Fb',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2666163607
);
INSERT INTO twit_user VALUES (
	'90777878',
	'El Puerto',
	'elpuertowr',
	'Santo Domingo, RD',
	'El Puerto es un Periodico Digital  y programa de investigación, y es el lugar  por donde entran y salen todas las noticias de República Dominicana y el mundo.',
	4454,1375,'Wed Nov 18 02:10:30 +0000 2009',30365,1375,'es',
	'http://pbs.twimg.com/profile_images/1160573944/FACCEBOOK_FOTO_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Emilio Guerrero se estrena con hit da el triunfo al Licey http://t.co/Vj8nEwIsnU',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	90777878
);
INSERT INTO twit_user VALUES (
	'593603917',
	'Saidir',
	'Dirsaidir',
	'Palembang,Indonesia',
	'Stop Wishing,Start Doing',
	288,195,'Tue May 29 10:59:24 +0000 2012',8489,195,'en',
	'http://pbs.twimg.com/profile_images/523121958121009152/IEmO-VGQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MuhRTP sakitnya tuh disiniii aduhaduhh hahaha',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	593603917
);
INSERT INTO twit_user VALUES (
	'2582705418',
	'رفيق الشوق',
	'kh14191',
	'',
	'@Khiran1411',
	1106,1344,'Sun Jun 22 19:29:23 +0000 2014',492,1344,'ar',
	'http://pbs.twimg.com/profile_images/522855321581023232/P2JEciC4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @moonmona7: أتلهفَ لرؤيتكَ ،.....
 وإذا أتيتَ أتعمدِ أني لا أراك . http://t.co/Ltj3HV0rh8',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2582705418
);
INSERT INTO twit_user VALUES (
	'562910652',
	'Une libellule',
	'Soumayah_',
	'',
	'الحمد لله 16.6.14 ♥',
	526,494,'Wed Apr 25 12:11:11 +0000 2012',40265,494,'fr',
	'http://pbs.twimg.com/profile_images/523722579513974784/nRuWDHKx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Raabiaa_: Pence a Allah quand tout va bien , et y pensera a toi quand tout va mal .',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	562910652
);
INSERT INTO twit_user VALUES (
	'490656595',
	'whitney',
	'Whitsterrrr_',
	'',
	'cliché',
	840,1013,'Sun Feb 12 19:39:18 +0000 2012',18148,1013,'en',
	'http://pbs.twimg.com/profile_images/520453451214749697/8pfKStc5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@iIllumiinati: The older I get... http://t.co/Gv6dFoWlEM”👏💯',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	490656595
);
INSERT INTO geo VALUES (
	DEFAULT,
	'[object Object]',
	'[object Object]'
);INSERT INTO twit_user VALUES (
	'2247496678',
	'Juh',
	'CABEYOUGURT',
	'',
	'[3/6]',
	1163,102,'Sat Dec 28 05:45:03 +0000 2013',31099,102,'pt',
	'http://pbs.twimg.com/profile_images/524211279616294912/6yFey_s-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @justinbieber: https://t.co/hbViKdHEB5',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2247496678
);
INSERT INTO twit_user VALUES (
	'102110659',
	'karla Aymá',
	'karla_ayma',
	'',
	'I;;m from Monterrey, México ☀️, 23 years old and study Lic. Communication. My 2 favorite artists are Ha*Ash and María León.',
	229,151,'Tue Jan 05 17:09:05 +0000 2010',7001,151,'es',
	'http://pbs.twimg.com/profile_images/523231005659123712/4jEX6C1d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@genteregiatv quiero estar ahí #LosClaxonsComoTu (2,402)',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	102110659
);
