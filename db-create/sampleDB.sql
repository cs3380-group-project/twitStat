DROP SCHEMA IF EXISTS twitStat CASCADE;
CREATE SCHEMA twitStat;
SET search_path = twitStat;
CREATE TABLE twit_user(
	usr_id varchar(50) primary key,
	name varchar(50),
	screen_name varchar(50),
	location varchar(50),
	desription varchar(500),
	followers integer,
	friends integer,
	created_at text,
	status_count integer,
	fav_count integer,
	lang varchar(6),
	profile_img_url varchar(300),
	default_img boolean
);
CREATE TABLE tweets(
	id serial primary key,
	tweet text NOT NULL,
	source varchar(300),
	user_id bigint
);
CREATE TABLE geo(
	id serial references tweets,
	lat double precision,
	long double precision
);
INSERT INTO twit_user VALUES (
	'457819843',
	'Amanda DeJong',
	'adeejong',
	'',
	'Believe in make-believe',
	147,166,'Sat Jan 07 21:22:28 +0000 2012',1654,166,'en',
	'http://pbs.twimg.com/profile_images/525816835401588737/b4YVtaBx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Sleeping beauty @RileyMcClintock http://t.co/7hmAN8S6eP',
	'<a href=::http://www.apple.com:: rel=::nofollow::>iOS</a>',
	457819843
);
INSERT INTO twit_user VALUES (
	'894605492',
	'popyourculture',
	'popyourculture',
	'vancouver',
	'I’m Alexandre Davidov. I take abstract surreal conceptual art photographs of the everyday life around me. I am also a graphic design professional.',
	232,695,'Sun Oct 21 04:22:28 +0000 2012',854,695,'en',
	'http://pbs.twimg.com/profile_images/462419131917033472/vMvjouJ8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'graffiti tag on a store window frame / #streetart #abstract #photography #lettering #Vancouver http://t.co/UKnVTCTXMD',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	894605492
);
INSERT INTO twit_user VALUES (
	'1649602015',
	'水精鱗－アビスグンデ',
	'Abyssgunde_bot',
	'忘却の都 レミューリア',
	'《水精鱗－アビスグンデ》の非公式botです！30分に1回呟きます。水精鱗についてのお話が多めです。マスターの設定なので、イメージが違ったらごめんなさいです。何かありましたらDMでお願いします！たまに中の人がいますよっ　※プロフィールご一読お願いします',
	124,140,'Tue Aug 06 05:45:53 +0000 2013',15000,140,'ja',
	'http://pbs.twimg.com/profile_images/378800000249961772/daf465130981e0c22a3d97974f35225b_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'タージさんのモチーフはチョウザメです！卵の塩漬けがキャビアとして有名ですよね！鱗の形が蝶に似てるので蝶鮫と言うんです。蝶鮫、なんて名前ですけど鮫ではないんですよ？あと古代魚でもありますね。英名のスタージオンとアビスを掛けて、アビスタージですね！',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1649602015
);
INSERT INTO twit_user VALUES (
	'16747818',
	'Owl In A Spooky Tree',
	'sheanam',
	'Pacific Northwest',
	'It;;s Shay-nuh.',
	244,120,'Tue Oct 14 23:32:36 +0000 2008',22556,120,'en',
	'http://pbs.twimg.com/profile_images/3199278497/28c1a20dd9553dabc4f3c0a46920a253_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Listening to Sips be anxious as all hell in Ethan Carter is what;;s keeping me going atm',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	16747818
);
INSERT INTO twit_user VALUES (
	'309058196',
	'北原元気',
	'fczaku2tw',
	'千葉市',
	'東京の中野区に引っ越しました。ラーメンが大好きです。iPhoneが好きです。AKB48が大好きです。コーヒーは毎朝飲んでいます。相互フォローお願いします。リフォロー１００％しています。よろしくお願いします。',
	10584,11251,'Wed Jun 01 13:22:13 +0000 2011',97849,11251,'ja',
	'http://pbs.twimg.com/profile_images/1377532190/ffg_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'第3回チキチキKis-My-Ft2（キスマイ）の北山宏光くん画像がまとめてある画像まとめ発表会(ブログ) http://t.co/wKRoczeRK3',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	309058196
);
INSERT INTO twit_user VALUES (
	'233458429',
	'Denise',
	'_klowi',
	'',
	'senior •',
	1252,1493,'Mon Jan 03 08:23:10 +0000 2011',113057,1493,'en',
	'http://pbs.twimg.com/profile_images/526076023620640768/eGfT863v_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ErlaineDi gege atnup meh',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	233458429
);
INSERT INTO twit_user VALUES (
	'2738853385',
	'AKB❤画像café',
	'cafe_akb_akb',
	'',
	'みんなの大好きなAKB48の画像、名言集をつぶやいています♡ かわいかったり、お気に入りなものはRTお願いします♡ლ(´ڡ`ლ)',
	68,912,'Sun Aug 17 02:32:19 +0000 2014',2075,912,'ja',
	'http://pbs.twimg.com/profile_images/501166284403269632/bDP6nUZK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @god_adnews_: 刺激でエッチな大人の恋愛ゲーム♡
普通の恋愛ゲームに飽きた人に
オススメだよ♡

iphoneもAndroidも
→http://t.co/Oxk2N6L8QK

もう普通の恋じゃ満足できない…。 http://t.co/xYbu8zo1yq',
	'<a href=::https://twitter.com/ticytyhonufo:: rel=::nofollow::>m9itmHoZy</a>',
	2738853385
);
INSERT INTO twit_user VALUES (
	'2833014697',
	'スタバ何でも情報',
	'sutaba_nandemo',
	'',
	'スタバでためになる情報とかつぶやきます。',
	178,485,'Fri Sep 26 13:47:48 +0000 2014',1147,485,'ja',
	'http://pbs.twimg.com/profile_images/515498524440395777/BNTZ6I94_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @hana_M__: ありがとうございます＼(^o^)／',
	'<a href=::https://twitter.com/_md_m_:: rel=::nofollow::>_md_m_</a>',
	2833014697
);
INSERT INTO twit_user VALUES (
	'232079074',
	'東京カンカンブラザーズ',
	'tkankanbrothers',
	'',
	'東京カンカンブラザーズ公式アカウントです。
笑ったり怒ったり、泣いたり腹が立ったり、痛かったりくすぐったかったり、いじめたり悪口言われたり……
そんな日常を切なくおかしくリアルに描き出す作品を提供するユニットです。
人間ってずるいし嘘つきだし身勝手だけど……でも、本当はやっぱり温かいんだよなぁ。',
	925,781,'Thu Dec 30 05:46:09 +0000 2010',978,781,'ja',
	'http://pbs.twimg.com/profile_images/458489136035282944/YklPqsco_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ブログを更新しました。
「☆ギャルメイク？！☆」→http://t.co/vmixCx5fss',
	'<a href=::http://www.apple.com:: rel=::nofollow::>iOS</a>',
	232079074
);
INSERT INTO twit_user VALUES (
	'147520985',
	'Subbanna Kannur',
	'Subbannak',
	'Gurgaon',
	'A nationalist Indian',
	110,116,'Mon May 24 10:30:53 +0000 2010',358,116,'en',
	'http://pbs.twimg.com/profile_images/2534159329/9cydd3kn95xrjil14702_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Swamy39: Remembering the Jewish refugee who composed the All India Radio caller tune http://t.co/bGCg9XxxXu via @scroll_in',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	147520985
);
INSERT INTO twit_user VALUES (
	'1134021516',
	'波多野卓巳',
	'hatano_t_bot',
	'帝都大学医学部付属病院高度先端医療センター',
	'ドラマ「ラストホープ」波多野卓巳非公式botです。ドラマ中のセリフを30分に1回つぶやきます。TL上の言葉にも反応します。@でドラマ中の難しい用語を尋ねると解説してくれるかも。（追々増やします）',
	1749,1798,'Wed Jan 30 13:06:54 +0000 2013',179387,1798,'ja',
	'http://pbs.twimg.com/profile_images/378800000817769752/662f71a005b0f9e3bf56d69092fcbe87_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AtbU2jGyVk @___SAIPUBW___ししょーさん、おはようございます。',
	'<a href=::http://www.studio-itoh.net/bot/:: rel=::nofollow::>帝都大学医学部付属病院高度先端医療センター</a>',
	1134021516
);
INSERT INTO twit_user VALUES (
	'2258314676',
	'sue heck',
	'princexeu',
	'',
	'BRING ME THE HORIZON',
	353,517,'Mon Dec 23 01:26:27 +0000 2013',2235,517,'en-gb',
	'http://pbs.twimg.com/profile_images/519407210367963137/Wrs1vnmT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@meteochuuu gotta get popular somehow, eh?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2258314676
);
INSERT INTO twit_user VALUES (
	'304385286',
	'Vodio Sports News',
	'VodioSports',
	'United States',
	'Popular Sports News from Vodio',
	119,192,'Tue May 24 12:31:58 +0000 2011',98208,192,'en',
	'http://pbs.twimg.com/profile_images/2788927422/14cfc75f24007a264b14791bc624d8cc_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Video: WNT vs. Costa Rica: Abby Wamba... http://t.co/nfsViX4OnF via http://t.co/lt1jPDz9PV',
	'<a href=::http://www.vod.io:: rel=::nofollow::>Vodio</a>',
	304385286
);
INSERT INTO twit_user VALUES (
	'41316305',
	'めるブイ×三村かな子',
	'meltbui',
	'モバゲーID：59214135',
	'アケマスPでスターライト学園生徒で超次元サッカーやっててポケモントレーナーで犬と共に戦車を乗り回す、ゲーム好きアラサーおじさんこと私こそが、三村かな子をこの世界で一番愛しているプロデューサーです。 この世に僕以上に三村かな子が好きな人なんか存在しません。 

めるブイです。 
最近はアストルティアにいます。',
	385,264,'Wed May 20 07:33:24 +0000 2009',115965,264,'ja',
	'http://pbs.twimg.com/profile_images/378800000694479784/84be1d5b152daf32c1c93eccf0410897_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'口調とか僕らに話しかける感じが敬語じゃなくて、なんとなく十時っぽくない気がするのｗ',
	'<a href=::http://www.echofon.com/:: rel=::nofollow::>Echofon</a>',
	41316305
);
INSERT INTO twit_user VALUES (
	'1606261818',
	'Ash',
	'ashley_nic6',
	'@kanecastillo ',
	'future esthetician, freelance mua',
	531,313,'Fri Jul 19 16:27:22 +0000 2013',23765,313,'en',
	'http://pbs.twimg.com/profile_images/525498122856701952/agn3vpdr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Verified_Ink: when u high Af at Walmart  https://t.co/wd3JPb52yg',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1606261818
);
INSERT INTO twit_user VALUES (
	'1923988716',
	'2chアンテナ速報',
	'nicovideo1',
	'',
	'2chの新着情報を流してます　◆相互フォロー100％です◆',
	1113,1042,'Tue Oct 01 17:05:48 +0000 2013',332042,1042,'ja',
	'http://pbs.twimg.com/profile_images/378800000740754491/6aa8145557f274d8e704266a1c7f5e27_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【フィギュア】艦隊これくしょん -艦これ- 北上改 1/8 完成品フィギュア[キューズQ]《',
	'<a href=::http://niconicovideo.info/:: rel=::nofollow::>wpposttools</a>',
	1923988716
);
INSERT INTO twit_user VALUES (
	'2249115619',
	'進撃の4コマbot',
	'shingeki_4coma',
	'',
	'null',
	19299,0,'Mon Dec 16 18:07:38 +0000 2013',6176,0,'ja',
	'http://pbs.twimg.com/profile_images/412647594796412928/Ck28wUUE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @nyanko_news: 【にゃんこニュース】

韓国の整形技術が世界レベルで「凄すぎ」と話題に ⇒ http://t.co/0sCMe8D7HH

元の方がはるかに綺麗やん！ｗ',
	'<a href=::http://twitter.com/super_trainz0:: rel=::nofollow::>super_trainz0</a>',
	2249115619
);
INSERT INTO twit_user VALUES (
	'137129342',
	'CatyBaraj❤',
	'catybaraja',
	'@MiguelCancelFCI ',
	'http://www.facebook.com/pages/Miguel-Cancel-Fc-Internacional/288545694527272 @MiguelCancelFCI Disponible https://www.cdbaby.com/Artist/MiguelCancel',
	354,888,'Sun Apr 25 22:11:57 +0000 2010',4786,888,'en',
	'http://pbs.twimg.com/profile_images/2977337727/597f94180b007afb19dafdd7226af507_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@vanemeg Gracias por linda foto de @MiguelCancelFCI!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	137129342
);
INSERT INTO twit_user VALUES (
	'2862745201',
	'                عباس',
	'Abdou74Omar',
	'',
	'null',
	12,4,'Sat Oct 18 13:50:49 +0000 2014',1910,4,'ar',
	'http://pbs.twimg.com/profile_images/523471453522374656/EK61_7yN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bndro11: للبيع رتويت ومتابعين التفعيل فوري
#اسيا 
#فاضت_دموع_المشجع_الاسترالي
#لو_خيروك_مجرم
#يلا_دورى #رتويت 
http://t.co/FsAcYi2jbz 5…',
	'<a href=::http://www.bandar-alagili1.com:: rel=::nofollow::>الموقع 37سعرد</a>',
	2862745201
);
INSERT INTO twit_user VALUES (
	'427970683',
	'Russell Harmon',
	'BooyahHarmon',
	'Pacifica CA',
	'Zero Limitations 
Hell is when you die & meet the person you could have been
~Om AF~',
	307,256,'Sun Dec 04 05:42:48 +0000 2011',3247,256,'en',
	'http://pbs.twimg.com/profile_images/488753938707914752/tByZNvp5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @basebal_is_Iife: R.I.P. Oscar Taveras..... Still crazy to believe this actually happened 😔 http://t.co/qzhD5FoUXa',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	427970683
);
INSERT INTO twit_user VALUES (
	'2219560443',
	'DA TYPICAL BLACK BOY',
	'NtwanaYakoKasi',
	'PITORI|MAMELODI',
	'GAONA MMAO KA YISO TSEK NOW GO «««BACK',
	2809,1801,'Wed Dec 11 13:49:48 +0000 2013',83378,1801,'en',
	'http://pbs.twimg.com/profile_images/526081195101409280/yC45DE14_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT::@SpoonsCHAMP: Fuck that shit::',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	2219560443
);
INSERT INTO twit_user VALUES (
	'778953300',
	'فريق زيادة المتابعين',
	'all_bahrain',
	'الوطن العربي UK',
	'الأقوى عربيا لزيادة عدد متابعينك: بطريقة الفلو والفلوباك ،، أسرع طريقه لزيادة الفلورز عن طريق إعلاناتنا التي نقوم بارسالها بشكل منتظم',
	8003,2997,'Fri Aug 24 20:57:29 +0000 2012',115836,2997,'en',
	'http://pbs.twimg.com/profile_images/378800000481801739/8cfbe6748fadddbac3ea56fba74059c5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'لزيادة المتابعين بسشكـل سريع #تابعني وتابع من قام بالرتويت ضيفوا من يسوي #رتويت #الرجاء_الإلتزام_بالفولو_باك #لاتنسى_تابعني',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	778953300
);
INSERT INTO twit_user VALUES (
	'1109659627',
	'YunG LS #RNS',
	'RichHomieSnvgg',
	' Zone 3 l ATL',
	'478 / GT :Snvggles 6 Golds 1 Bronze 570$',
	412,101,'Mon Jan 21 17:52:30 +0000 2013',3107,101,'en',
	'http://pbs.twimg.com/profile_images/526452629899968512/tO60XoA-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MLG_ReasoN are they all in there?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1109659627
);
INSERT INTO twit_user VALUES (
	'2539891719',
	'Leilah',
	'Duhleeluh12',
	'KU',
	'Evolve.',
	76,60,'Sat May 10 23:04:41 +0000 2014',1766,60,'en',
	'http://pbs.twimg.com/profile_images/519299482580942848/VI76-y66_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;ve got so much work to do but all I;;ve been doing is napping smh',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2539891719
);
INSERT INTO twit_user VALUES (
	'244761286',
	'bitch.',
	'RollinOG',
	'gone.',
	'Ninety;;s Baby!',
	232,100,'Sun Jan 30 02:33:04 +0000 2011',18159,100,'en',
	'http://pbs.twimg.com/profile_images/521832867186233345/Tp6NPRtY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheNBAallDay: Shaq so Disrespectful😂 

https://t.co/QzwvqsPWng',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	244761286
);
INSERT INTO twit_user VALUES (
	'330047592',
	'⛽️',
	'naeONLYmatters',
	'',
	'SKY‼️TEE',
	4646,3771,'Wed Jul 06 01:03:09 +0000 2011',138755,3771,'en',
	'http://pbs.twimg.com/profile_images/526419164861587457/mS-BdX8k_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'💪⛽️/i like you header',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	330047592
);
INSERT INTO twit_user VALUES (
	'2706756053',
	'Mina ',
	'NOCHILLCASHEW',
	'',
	'International fan and it sucks ~ 1/6 of The Crew ~ 7/12 + Sammy+Dillon ~ Sweden',
	4376,2142,'Sun Jul 13 11:08:21 +0000 2014',44519,2142,'sv',
	'http://pbs.twimg.com/profile_images/526413659506237441/Q43VlmoC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2706756053
);
INSERT INTO twit_user VALUES (
	'2606162779',
	'➳ lana mcknight ☪',
	'lanababbbby',
	'',
	'i burn down them saturday nights but sunday morning i get back right. hunter wilson ❤️',
	428,174,'Sat Jul 05 21:08:32 +0000 2014',6507,174,'en',
	'http://pbs.twimg.com/profile_images/526223908480237568/YgEi8e_i_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@CauseWereGuys: Nothing sexier than a girl that is willing to make the first move” hmm @hunterwilson322 😂😘',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2606162779
);
INSERT INTO twit_user VALUES (
	'373011216',
	'Yule!.',
	'Yulee_NoriegaBK',
	'barranquilla',
	'@Justinbieber I love both. He is my world my everything Nunca renuncies a tus sueños, siempre y cuando creas que todo es posible! M;;M♥',
	712,588,'Tue Sep 13 20:45:24 +0000 2011',10039,588,'es',
	'http://pbs.twimg.com/profile_images/526002572319281152/uDvIMUCf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Y bueno.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	373011216
);
INSERT INTO twit_user VALUES (
	'264676386',
	'lauren ✻',
	'laurengallant_',
	'',
	'you call the shots babe, i just wanna be yours',
	445,286,'Sat Mar 12 08:25:46 +0000 2011',12128,286,'en',
	'http://pbs.twimg.com/profile_images/523478541485490176/Mq4h8Th9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @katyramsayxo: ::boys are so hard::
::was that a pun?::
English class ruined my conversations',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	264676386
);
INSERT INTO twit_user VALUES (
	'2188613856',
	'Negan',
	'TWD_Negan',
	'',
	'Ill follow anyone who wants to talk about TWD. Helix. Resident Evil. Vampires or comic books. Other than that stuff , doesnt look to good for a follow.',
	631,1075,'Mon Nov 11 15:56:05 +0000 2013',939,1075,'en',
	'http://pbs.twimg.com/profile_images/378800000726626330/83a43627906dd6fa155e69ca566a74c4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'What;;s with the ::A:: ? Pll?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2188613856
);
INSERT INTO twit_user VALUES (
	'21341874',
	'∞Caitlin∞ RIP Sandy♥',
	'woohyunff',
	'Woohyun::s heart (aka Canada)',
	'♡ 케이틀린. 95 line. Inspirit~! 111613 Woohyun noticed me / 041114 Woohyun told my friend I was cute ㅠㅠ Woohyun is a baked potato ♥ #RIPEunB #RIPRiSe ♡ ●¿●',
	651,429,'Thu Feb 19 21:36:47 +0000 2009',63017,429,'en',
	'http://pbs.twimg.com/profile_images/520414770437316608/8K4Xdv5J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WalkingDead_AMC: #BobOnTheCob',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	21341874
);
INSERT INTO twit_user VALUES (
	'1001497422',
	'س̶آرﮬ̌.الجـﮬـني›̵(̵̵',
	'sarah_x160',
	'',
	'الحمدللہ : هي أول كَلمہ قَالہَا آدم ، وأوَل كَلمہ ف القُرأن واَفضَل النَاس يَوم القِيامَة  الحَامدون ، يَ رَب إنا نحْمدُك على كل شَيء',
	202,593,'Mon Dec 10 11:49:56 +0000 2012',1824,593,'ar',
	'http://pbs.twimg.com/profile_images/378800000787800363/08789b751661c8c8545b3e5aff55a3be_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله و لا تكلني إلى نفسي طرفـة عيـن http://t.co/1ePxxWLuyW',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	1001497422
);
INSERT INTO twit_user VALUES (
	'1109732232',
	'::Sippi Duck Hunter',
	'CamoWearinGirl',
	'',
	'Waterfowl. @TeamHoytBabe. Golf. Barrel racin son of a bitch.',
	2420,691,'Mon Jan 21 18:31:31 +0000 2013',35748,691,'en',
	'http://pbs.twimg.com/profile_images/522187241062682624/PHVLYugY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ThatShine2 that;;s what I was hopin you;;d say 😏😍',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1109732232
);
INSERT INTO twit_user VALUES (
	'1063934954',
	'AntonioAGG▲',
	'AndruwGuedez',
	'Lejos de lo ficticio. ',
	'No soy perfecto, pero mis defectos son encantadores.',
	12659,4242,'Sat Jan 05 20:33:16 +0000 2013',2204,4242,'es',
	'http://pbs.twimg.com/profile_images/510494774952873985/60trj1JJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iMisterHacker: Descubre la vulnerabilidad de Facebook con http://t.co/ZuQTDN5vKN http://t.co/DbPxmBXJWF',
	'<a href=::http://twitter.com:: rel=::nofollow::>Super General Deck</a>',
	1063934954
);
INSERT INTO twit_user VALUES (
	'2417818314',
	'Liaa',
	'LiaPeirano',
	'',
	'null',
	184,263,'Sat Mar 29 18:33:05 +0000 2014',1437,263,'es',
	'http://pbs.twimg.com/profile_images/524314883853008898/VUbL5_5f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'El frente decía que no a la baja pero tampoco tiró una idea mejor',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2417818314
);
INSERT INTO twit_user VALUES (
	'85378181',
	'Gisa_',
	'gih_lemos',
	'PE',
	'euu ;)',
	100,60,'Mon Oct 26 18:22:07 +0000 2009',4039,60,'en',
	'http://pbs.twimg.com/profile_images/522410193284763648/Qr2TZ1FX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @marinaecologia: Respeito é bom e todo mundo gosta.',
	'<a href=::http://seesmic.com/:: rel=::nofollow::>Seesmic</a>',
	85378181
);
INSERT INTO twit_user VALUES (
	'148491887',
	'Sharkbait ✨',
	'Steanaa_xoxo',
	'',
	'Business Mind It Please And Thank You ✨ | SCSu 18` | October 21 | 0914 | 0214 | #UnbreakableEmpire | IG @_itsanaaaaa |',
	1097,968,'Wed May 26 21:04:44 +0000 2010',52238,968,'en',
	'http://pbs.twimg.com/profile_images/525478257710604289/iSp0gUef_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_xashlayy: “@fvckinstinaa: No female wants to hear about all ::the bitches:: you got 😒🙅💁”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	148491887
);
INSERT INTO twit_user VALUES (
	'2340743510',
	'آلصعب .',
	'Al9abb',
	'',
	'احزاني عناويني',
	1622,1240,'Wed Feb 12 18:17:05 +0000 2014',29180,1240,'ar',
	'http://pbs.twimg.com/profile_images/437753199462584320/mkW4YcFu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(حتى إذا رأوا ما يوعدون فسيعلمون من أضعف ناصرا وأقل عددا) [الجن:24]',
	'<a href=::http://www.rt14.a77mad.com:: rel=::nofollow::>rt14new</a>',
	2340743510
);
INSERT INTO twit_user VALUES (
	'2843572227',
	'Perigou ',
	'AhDudaa',
	'',
	'me chama de Duda/ Whats: 81-87964817/ Insta: Kramba_duda14/ Sou legal ©',
	121,228,'Sat Oct 25 12:23:24 +0000 2014',71,228,'pt',
	'http://pbs.twimg.com/profile_images/525987465589706752/t3GWJlxV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @instagranzin: Desculpa mas se eu quisesse uma criança do meu lado, eu teria um filho.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2843572227
);
INSERT INTO twit_user VALUES (
	'532290856',
	'NativeAmericanGhost',
	'Bboy7886',
	'Virginia/Lumberton, NC',
	'#TeamLumbee #TeamCancer♋ #PantherNation #KeepPounding #TeamTarHeels #TeamCeltics #IG: Bboy7886 Father to a beautiful little girl named Tessa Aiyana!',
	276,267,'Wed Mar 21 14:56:37 +0000 2012',22658,267,'en',
	'http://pbs.twimg.com/profile_images/497510230000168961/mqsJUQU__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@EElsesser learn a need playbook mid season. I;;m sure he;;s gone in the offseason. We need a quality OC that calls better plays in RZ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	532290856
);
INSERT INTO twit_user VALUES (
	'2563049226',
	'| i met them(: |',
	'tbhguhlinsky',
	'',
	'jack and jack are my cinnamon apples hbu 1/12 + sammy, sierra and cody',
	2693,2590,'Thu Jun 12 09:27:08 +0000 2014',9099,2590,'en',
	'http://pbs.twimg.com/profile_images/506623355261579264/rBN8nY_4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2563049226
);
INSERT INTO twit_user VALUES (
	'2582288383',
	'عاشق الاسطوره15',
	'y15_mylove',
	'',
	'null',
	181,450,'Sun Jun 22 13:55:18 +0000 2014',11319,450,'ar',
	'http://pbs.twimg.com/profile_images/480721433375432704/YohSX9KZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @naif6145: ابغي النوم وقالت لي عيوني بعد 

مايجي النوم للي غارقٍ ف الهموم 

م',
	'<a href=::http://twitlamp.com/:: rel=::nofollow::>GroupinApp</a>',
	2582288383
);
INSERT INTO twit_user VALUES (
	'1543730520',
	'Manda FOUR ',
	'horanloucura',
	'brazil ',
	'Niall fucks me in several ways, less the way I really want.  ✨',
	2914,2342,'Mon Jun 24 17:37:46 +0000 2013',51951,2342,'pt',
	'http://pbs.twimg.com/profile_images/526529869643927552/DAdtZNW1_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@zaynswagz olHA AQUI NÃO FALA ASSIM COMIGO NÃO #EMABiggestFans1D',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1543730520
);
INSERT INTO twit_user VALUES (
	'68008585',
	'Luka Bizarri',
	'LukaBizarri',
	'Planeta Terra',
	'Liberdade,justiça,igualdade,conhecimento,autenticidade,fé,paz e amor.Somos aquilo em que acreditamos.',
	3950,3723,'Sat Aug 22 23:07:34 +0000 2009',52562,3723,'pt',
	'http://pbs.twimg.com/profile_images/524720414811910144/3trDNYFC_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @echoes48: Não é Bali, Cancum ou Bora Bora, é em Porto de Galinhas no Litoral de Pernambuco.#SouDoNordesteMesmoEComOrgulho http://t.co/P…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	68008585
);
INSERT INTO twit_user VALUES (
	'2712011406',
	'الحــــمــــدلـلـه ',
	'kmamhon',
	'',
	'#جيش_السنة @BADRY_16',
	66,10,'Wed Aug 06 13:34:25 +0000 2014',6534,10,'ar',
	'http://pbs.twimg.com/profile_images/513745529612668928/69mpkwOk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Memoniya1: #حساب_تهديه_وسام_افضل_مغرد

 دكتوووور حنظلة http://t.co/wGJyUsJ25R',
	'<a href=::http://faisal-m.com/r10:: rel=::nofollow::>faisal 10</a>',
	2712011406
);
INSERT INTO twit_user VALUES (
	'165578164',
	'Lulú',
	'LuzBonaldi',
	'Villa del Totoral, Córdoba. ',
	'Soy una loca de mierda pero buena en el fondo. Amo nadar. La familia es lo primero. Rosa todo rosa. Minnies por todos lados. River.',
	545,433,'Mon Jul 12 00:20:33 +0000 2010',8392,433,'es',
	'http://pbs.twimg.com/profile_images/497176234238148608/lDy_GdZZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @natijota: Yo tan propensa a adelantarme y vos tan juez de línea estricto.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	165578164
);
INSERT INTO twit_user VALUES (
	'2551115509',
	'gisselle',
	'deckingdallas',
	'1/12 +cody',
	'Cam, i wasn;;t here from the beginning but i can promise you that i;;ll be here until the end',
	1617,894,'Fri Jun 06 22:31:13 +0000 2014',4751,894,'en',
	'http://pbs.twimg.com/profile_images/512786694546812928/Xb5csJ-B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2551115509
);
INSERT INTO twit_user VALUES (
	'919850953',
	'Pickel',
	'_chrispic',
	'',
	'you can find us where the partys at',
	238,162,'Thu Nov 01 21:03:06 +0000 2012',1956,162,'en',
	'http://pbs.twimg.com/profile_images/526440489088991232/PC3CGf0F_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @drunk: #tbt http://t.co/kkESCvWi06',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	919850953
);
INSERT INTO twit_user VALUES (
	'2729535694',
	'jackie',
	'lashtonnarry69',
	'',
	'✖️waiting for 2 dorky bands to follow me✖️ 0/5•0/4',
	3180,169,'Thu Jul 31 01:03:43 +0000 2014',21029,169,'en',
	'http://pbs.twimg.com/profile_images/515271804605440001/Z0t-4RcK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2729535694
);
INSERT INTO twit_user VALUES (
	'1410198266',
	'thalita',
	'zaynciumento',
	' 1d . ddl  ',
	'close your eyes and imagine zayn malik laughing this is the vision of paradise',
	4124,3502,'Tue May 07 13:00:23 +0000 2013',14160,3502,'pt',
	'http://pbs.twimg.com/profile_images/526472261583114240/YcanoWFz_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Still not found the one',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1410198266
);
INSERT INTO twit_user VALUES (
	'1021175654',
	'Catharina ',
	'cathacavallini_',
	'',
	'null',
	177,143,'Wed Dec 19 02:52:08 +0000 2012',4775,143,'pt',
	'http://pbs.twimg.com/profile_images/499995832222220288/sBxV1jS7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @YasminMarue: Vou comer e dormir q eu ganho mais. E vc q tava torcendo p Dilma, vai toma no seu cu também',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1021175654
);
INSERT INTO twit_user VALUES (
	'450405221',
	'Mesha',
	'TameshaErvin',
	'',
	'7.17.14',
	2171,1790,'Fri Dec 30 06:17:01 +0000 2011',68106,1790,'en',
	'http://pbs.twimg.com/profile_images/523935943586492416/ZhR0kr4E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Chipoley: goals http://t.co/a5G2u3AW9L',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	450405221
);
INSERT INTO twit_user VALUES (
	'231853830',
	'Julí ',
	'jujugimenez_',
	'Campo Grande- MS ',
	'null',
	1033,544,'Wed Dec 29 17:01:28 +0000 2010',24188,544,'en',
	'http://pbs.twimg.com/profile_images/496057089832550400/nmawxspT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@umbomuser vai brincando mininha, rum',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	231853830
);
INSERT INTO twit_user VALUES (
	'1514887591',
	'good-girl',
	'__aangiee',
	'',
	'i still want a pet rat',
	157,188,'Fri Jun 14 00:44:43 +0000 2013',3567,188,'en',
	'http://pbs.twimg.com/profile_images/522776523968114688/i_eYPqhE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @trinhhh_: “@__aangiee: ::@TypicalGirI: when you;;re just too ugly http://t.co/cLXK92Kqix::me”me 2',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1514887591
);
INSERT INTO twit_user VALUES (
	'2201291678',
	'Jeff ✞',
	'Franciscoo123D',
	'Deán Funes',
	'Tengo un cuerno de mammut, y te lo meto por el culo :3',
	331,251,'Mon Nov 18 13:13:19 +0000 2013',6411,251,'es',
	'http://pbs.twimg.com/profile_images/521148156986155008/_KJXzO25_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FotoDeDoble: NuncaXD http://t.co/FO0LC12KVA',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2201291678
);
INSERT INTO twit_user VALUES (
	'320016747',
	'DWPTRMS',
	'Dewi_PutriMS',
	'Kalimantan Timur , Indonesia',
	'Instagram & LINE : dewiputrim',
	696,331,'Sun Jun 19 04:37:56 +0000 2011',12936,331,'id',
	'http://pbs.twimg.com/profile_images/516335783699951616/uUbrBWcI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @elwa: Kalau sudah bertemu yang baik, jadilah terbaik bagi satu sama lain. Jangan malah mencari lagi.',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	320016747
);
INSERT INTO twit_user VALUES (
	'624004559',
	'nicole',
	'camyoubewilk',
	'Long Island, NY',
	'16, The Wanted❤️ Met TW 10/19/12& 8/24/13❤️ obsessed with some youtubers/viners❤️',
	2813,2678,'Sun Jul 01 19:11:56 +0000 2012',37622,2678,'en',
	'http://pbs.twimg.com/profile_images/514509329987555328/Izb_bhec_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@benmadermusic @JoeDiasOfficial call me maybe?!  #callmeben 6316242533 💋💋💋💋💋💋💋💋',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	624004559
);
INSERT INTO twit_user VALUES (
	'268581178',
	'___________________',
	'___LoveNayy',
	'',
	'null',
	1726,2001,'Sat Mar 19 02:12:05 +0000 2011',102268,2001,'en',
	'http://pbs.twimg.com/profile_images/526237192440782848/-_xXxg4C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ZekeShock: Its always the least expected that ends up gettin it',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	268581178
);
INSERT INTO twit_user VALUES (
	'117896605',
	'lisa montalbano',
	'msmontie64',
	'Long Island, NY',
	'teaching assistant in high school~works with teens w/autism',
	78,325,'Fri Feb 26 23:59:15 +0000 2010',2116,325,'en',
	'http://pbs.twimg.com/profile_images/505753022660902912/Ug94LOnM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dcdNYC: ::@Baseball_Photos: Harold Reynolds: ::It takes your breath away...shows you how vulnerable life can be:: http://t.co/bTqXrvNCe1:: …',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	117896605
);
INSERT INTO twit_user VALUES (
	'454149812',
	'Dan',
	'Smeats_',
	'',
	'7778818405',
	218,123,'Tue Jan 03 17:40:47 +0000 2012',17698,123,'en',
	'http://pbs.twimg.com/profile_images/525712763793207296/NK3Wnlj3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TmenzZ no http://t.co/E2QikWgF4a',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	454149812
);
INSERT INTO twit_user VALUES (
	'2376708902',
	'IPS細胞',
	'_5ARI_',
	'',
	'アクションポイントとはアプリダウンロードなどです。
自動返信です',
	7117,1428,'Fri Mar 07 06:58:23 +0000 2014',88298,1428,'ja',
	'http://pbs.twimg.com/profile_images/479224689089183745/UD170EPX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@null 123',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2376708902
);
INSERT INTO twit_user VALUES (
	'2878094850',
	'on punishment ',
	'hotlikeoned_',
	'',
	'i love daddy harry, but then theres daddy liam and daddy zayn and daddy louis and daddy niall. || they make me happy ;)',
	19,37,'Sun Oct 26 10:34:48 +0000 2014',292,37,'en',
	'http://pbs.twimg.com/profile_images/526321401297256449/8JzqrtNv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'can some1 buy me a pig costume',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2878094850
);
INSERT INTO twit_user VALUES (
	'314385034',
	'Tony Franco ',
	'_TonyFranco_',
	'Bay Area',
	'“Be who you are and say what you feel, because those who mind don;;t matter and those who matter don;;t mind',
	1075,85,'Fri Jun 10 05:08:51 +0000 2011',6387,85,'en',
	'http://pbs.twimg.com/profile_images/498662369208184832/7yfNNV6e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'That play by Belt at 1st was so sick.
#SFGiants 
#WorldSeriesGame5',
	'<a href=::http://www.tweetcaster.com:: rel=::nofollow::>TweetCaster for Android</a>',
	314385034
);
INSERT INTO twit_user VALUES (
	'587665172',
	'Rachel Trouten',
	'RachelTrouten13',
	'',
	'null',
	304,286,'Tue May 22 19:00:05 +0000 2012',10193,286,'en',
	'http://pbs.twimg.com/profile_images/521421077504069633/wkLe0v0U_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I sound like I smoke 3 packs a day..boy Rachel is making a return soon😳',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	587665172
);
INSERT INTO twit_user VALUES (
	'69250347',
	'ふわとろ',
	'pro7810',
	'東京',
	'ビールと餃子とAKBが大好きです♪よろしくお願いします☆☆',
	2377,2629,'Thu Aug 27 09:46:52 +0000 2009',24637,2629,'ja',
	'http://pbs.twimg.com/profile_images/2410252109/81lnavtkrhg09k9l2qmz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'3ヶ月で8kg痩せた！

無理な運動、食事制限ナシでできる！ 

ロイヤル・ロード・ダイエット
http://t.co/DDyvdUfowP',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	69250347
);
INSERT INTO twit_user VALUES (
	'1239150840',
	'Caleb Rivas',
	'rivas_caleb',
	'Deer Park, TX',
	'No better friend, no worse enemy. Isaiah 6:8⚓@roblezcheergirl',
	646,437,'Sun Mar 03 15:26:37 +0000 2013',36289,437,'en',
	'http://pbs.twimg.com/profile_images/525775070791073792/SFLvTmy6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Skip tech n9ne and go to Volbeat #Knotfest',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1239150840
);
INSERT INTO twit_user VALUES (
	'2569081927',
	'Shera Love',
	'SheraLove4',
	'',
	'❤️ lesbian. Fav toy: dildo, strap-on.',
	3156,721,'Sun Jun 15 13:52:43 +0000 2014',2617,721,'en',
	'http://pbs.twimg.com/profile_images/478173435776860160/Cw8bB6DG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Face strap.  http://t.co/bGpD3sbbuN”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2569081927
);
INSERT INTO twit_user VALUES (
	'22022747',
	'Dandelion ✌️',
	'SwiftieCaroline',
	'',
	'“We should consider every day lost on which we have not danced at least once.”',
	223,199,'Thu Feb 26 15:45:10 +0000 2009',7674,199,'en',
	'http://pbs.twimg.com/profile_images/524033818991546368/gsT8N4dF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@SoDamnTrue: relationship goals ☺️💕 http://t.co/RtHniAnncc”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	22022747
);
INSERT INTO twit_user VALUES (
	'2291623333',
	'defuq',
	'dann_jocelyn',
	'CALI',
	'im on some dumb shit SC joceywierdo IG lets_get_crazy2202 #FDB',
	142,488,'Tue Jan 14 19:51:58 +0000 2014',258,488,'en',
	'http://pbs.twimg.com/profile_images/522246643224039424/_HXLymSo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SAADTHESAV: sundays were made to mentally prepare yourself for the next five days of bullshit',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2291623333
);
INSERT INTO twit_user VALUES (
	'469168779',
	'名鉄国府駅bot',
	'kohstationbot',
	'国府駅(愛知県豊川市久保町葉善寺35)',
	'名鉄国府駅のbotです。おもにアナウンスをツイートします。
平日ダイヤで動いてます。
名鉄6800系のbot(@meitetsu6800bot )の方もどうぞ！
名古屋鉄道(株)とは一切関係ないです。お問い合わせ等はご遠慮ください。
リフォロー、リプライ非対応です！',
	395,239,'Fri Jan 20 09:31:29 +0000 2012',56354,239,'ja',
	'http://pbs.twimg.com/profile_images/2151514238/0NsIhQ8l_normal',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'「まもなく、4番線に電車が参ります。黄色い線までお下がりください。伊奈行き、普通です。小田渕に、停まります。」',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	469168779
);
INSERT INTO twit_user VALUES (
	'2760030682',
	'~I LOVE ARI~',
	'AriButGra',
	'Ariana::s Soul',
	'YOU FOUND MY PERSONAL ACCOUNT. GO AWAY. #OurSecretIsOut',
	57,315,'Wed Sep 03 02:18:25 +0000 2014',20,315,'en',
	'http://pbs.twimg.com/profile_images/507709104169963520/_aMo5LqV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'5 new followers in the last week and it is more than just stats, I use it for growing my account! Try it http://t.co/994BUf1hCe',
	'<a href=::http://www.justunfollow.com:: rel=::nofollow::>JustUnfollow</a>',
	2760030682
);
INSERT INTO twit_user VALUES (
	'121681286',
	'ヒロキックス',
	'mizogu1203',
	'栃木県大田原市',
	'ラルクヲタです。hyde様は神様です。ゲーム、音楽、iPad、iPhone4s、3ds
ネット、何でも興味があります。興味が無いのは、ギャンブルと酒とタバコくらいです。',
	7,25,'Wed Mar 10 07:32:56 +0000 2010',323,25,'ja',
	'http://pbs.twimg.com/profile_images/971023451/image_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bty_labo: 仕事をやめたい女性必見！！

今、２０代に人気の在宅でできる高収入のお仕事がヤバいwww
⇒http://t.co/ZRDWakbHoV

時間を自由に使えるって最高♡
エステもジムも通えるし♡

お金を気にせず使えるとか幸せ♡ http://t.c…',
	'<a href=::http://twwi.jp/:: rel=::nofollow::>瞬感♪apptter</a>',
	121681286
);
INSERT INTO twit_user VALUES (
	'2716832330',
	'嵐☆最新情報てんこもり',
	'arasi_news0001',
	'',
	'嵐の最新情報をつぶやきます。非公式です☆個人的には相葉君好きです。',
	272,653,'Fri Aug 08 10:41:00 +0000 2014',67,653,'ja',
	'http://pbs.twimg.com/profile_images/521387729481764864/Ts-4hMlO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @app_LOVE002: 無料でオリジナル漫画が読み放題「comico」 

スマホから手軽に読めるのが便利  

And⇒ http://t.co/JvRoZNtfQm   

iOS⇒ http://t.co/XWqgXxSOci http://t.co/vSAJY…',
	'<a href=::http://www.yahoo.co.jp/:: rel=::nofollow::>tamweet</a>',
	2716832330
);
INSERT INTO twit_user VALUES (
	'2487707222',
	'StopGenocide',
	'Fr33P4l3st1n3',
	'Indonesia',
	'Bekasi ~ Jakarta ~ Bekasi',
	90,223,'Sat May 10 11:30:45 +0000 2014',6556,223,'en',
	'http://pbs.twimg.com/profile_images/522876923211292672/guFsct_H_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @panca66: Ngapain pd ributin sekolah dan kebiasaan merokoknya. Mending cari tahu utangnya 1T ke BRI mangkrak. Itu lbh bahaya buat negara',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2487707222
);
INSERT INTO twit_user VALUES (
	'339529286',
	'agitaerfan',
	'erfanAR',
	'Ngasur',
	'null',
	284,246,'Thu Jul 21 07:34:06 +0000 2011',11906,246,'en',
	'http://pbs.twimg.com/profile_images/515147821977055232/nYwhQsTj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Footy_Jokes: - 6 Ballons d;;or
- 6 Golden Boots
- 857 Goals
- 2 Legends

In one picture. http://t.co/5c7EMKqnFg',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for BlackBerry</a>',
	339529286
);
INSERT INTO twit_user VALUES (
	'2823381903',
	'inactive bc holiday ',
	'zjmforeign',
	'starbucks',
	'that band called one direction saved me. 0/5 0/4',
	541,975,'Sat Oct 11 19:20:55 +0000 2014',486,975,'en-gb',
	'http://pbs.twimg.com/profile_images/526472691227066368/Nrl88Nij_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Boarding the plane ✈️✈️✈️ see y;;all later ily',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2823381903
);
INSERT INTO twit_user VALUES (
	'797666408',
	'Jessica Matheny',
	'Michelle_Jesss',
	'',
	'3/15/14 I love & miss you so much Gary. Fly high baby boy. Never forget. @HarringtonTrent',
	357,195,'Sun Sep 02 06:34:04 +0000 2012',5235,195,'en',
	'http://pbs.twimg.com/profile_images/506111895208996864/2sXJgCyC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Cora_Hall_98 no',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	797666408
);
INSERT INTO twit_user VALUES (
	'724468284',
	'jnpvintagejewelry ',
	'jnpvintagejewel',
	' Southern Cali ',
	'I;;m a vintage jewelry collector and designer. Visit me on etsy find me at http://www.etsy.com/shop/JNPVintageJewelry',
	6681,2399,'Sun Jul 29 19:01:07 +0000 2012',255548,2399,'en',
	'http://pbs.twimg.com/profile_images/2446096002/i8nredx829xtugueymcd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JazzAgeJewels: http://t.co/JNGPAcXUaS #calvoguet #voguet #vogueteam #vintage ?FASHION? #boho #collection #fashion #dress #wear #sale #b…',
	'<a href=::https://roundteam.co:: rel=::nofollow::>RoundTeam</a>',
	724468284
);
INSERT INTO twit_user VALUES (
	'545465652',
	'Diego Garcia',
	'Diegogoxp',
	'algún lugar  de caracas ',
	'UCV.. Pensador #Gamer #Gym #Aventurero #Funny',
	119,254,'Wed Apr 04 19:31:58 +0000 2012',3498,254,'es',
	'http://pbs.twimg.com/profile_images/462069220201619456/NWRK5Zid_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'PDVSA es de todos... los aviones también?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	545465652
);
INSERT INTO twit_user VALUES (
	'2203768978',
	'☹☯☮',
	'AriasJanie',
	'',
	'jaron♥️',
	706,701,'Sun Dec 01 22:10:24 +0000 2013',7475,701,'en',
	'http://pbs.twimg.com/profile_images/526389964049637376/UDwInC3p_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2203768978
);
INSERT INTO twit_user VALUES (
	'343925736',
	'わさみ',
	'wsm_n',
	'',
	'準備中(2014.3.22〜)',
	78,160,'Thu Jul 28 08:56:16 +0000 2011',4953,160,'ja',
	'http://pbs.twimg.com/profile_images/485391450025099264/RluQEzTe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dddo2it: #スズメ の #慣性飛行

スズメが波型に飛ぶ時の翼を閉じている状態、直線的に飛んでいる時より追いかけにくいけど今までで一番綺麗に撮れた一枚^^

#鳥 #写真
#bird #sparrow #photo http://t.co/tEpFhnpv1J',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	343925736
);
INSERT INTO twit_user VALUES (
	'258718114',
	'Ashok Kumar Verma',
	'akverma1961',
	'',
	'null',
	7,0,'Mon Feb 28 10:03:18 +0000 2011',9763,0,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/JtKMjwc5dC',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	258718114
);
INSERT INTO twit_user VALUES (
	'1191632857',
	'freak show.',
	'RooCastello',
	'wonderland.',
	'« мυѕιc || вooĸѕ. »',
	0,0,'Mon Feb 18 00:56:27 +0000 2013',28683,0,'es',
	'http://pbs.twimg.com/profile_images/526537760216068096/4ucA7QX-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Yayonena: El que no hace 👏 es un 🐱',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1191632857
);
INSERT INTO twit_user VALUES (
	'116000155',
	'Fulanita de Tal. ',
	'Alee__rgica',
	'',
	'La de la risa delicada que se escucha a 3 cuadras. Psicóloga de profesión, risueña por vocación y cursi por culpa de @Mal_influencia',
	644,527,'Sat Feb 20 19:19:08 +0000 2010',18949,527,'es',
	'http://pbs.twimg.com/profile_images/525976673410629632/yfM6mOdM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Fergicienta: Hay mujeres que se disfrazan de putas todo el año.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	116000155
);
INSERT INTO twit_user VALUES (
	'274884833',
	'ツ',
	'castleregui',
	'',
	'null',
	22579,367,'Thu Mar 31 06:21:51 +0000 2011',101267,367,'es',
	'http://pbs.twimg.com/profile_images/526531567741833216/SQsG3ZRk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dafnehurley: ♛ TWEET GANADOR ♛

✓ #SIGUEME BABY :)

✓ #RT Y #FAV

✓ #SIGUE A

✓ @yagerlot 

✓ SIGUE A LOS 700 #RTS

✓UNETE AL #TEAMDAFN…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	274884833
);
INSERT INTO twit_user VALUES (
	'68774817',
	'B$',
	'Bitchie_Brit',
	'Mason::s❤World',
	'No1s Perfect In A Imperfected World......Stack,Live&Pray',
	936,702,'Tue Aug 25 18:58:24 +0000 2009',130315,702,'en',
	'http://pbs.twimg.com/profile_images/515882265503875072/KRFe0bz3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @fuckisyoumean: Stay down 😏',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	68774817
);
INSERT INTO twit_user VALUES (
	'592300516',
	'oe',
	'manditoria',
	'Paraná',
	'ser feliz é o que interessa',
	317,358,'Mon May 28 01:28:33 +0000 2012',7486,358,'pt',
	'http://pbs.twimg.com/profile_images/521891330524741632/cqo8_hsY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'E MINHA MAE QUE INVENTOU DE DAR UM IPHONE PRO THETEU,EU FIQUEI TIPO WTF?! FALOU QUE EU NAO MEREÇO',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	592300516
);
INSERT INTO twit_user VALUES (
	'275211767',
	'Silvia ortega',
	'bylzitha15',
	'',
	'null',
	11,61,'Thu Mar 31 21:04:14 +0000 2011',2119,61,'es',
	'http://pbs.twimg.com/profile_images/454459234957012992/D2UmMy1m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Foto: rapchileno-ctm: pizzaconnutella: 😞😞😞 siempre nos hacíamos está pregunta y hoy en día como vamos dudo... http://t.co/CupUrbZkpf',
	'<a href=::http://www.tumblr.com/:: rel=::nofollow::>Tumblr</a>',
	275211767
);
INSERT INTO twit_user VALUES (
	'2560347314',
	'ㅤ',
	'imydlovato',
	'mex',
	'✩ perla, pablo, yece, cristian, javier ✩',
	4218,1355,'Wed Jun 11 02:13:59 +0000 2014',9958,1355,'es',
	'http://pbs.twimg.com/profile_images/524642297762177025/8k0fBRI9_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @onfivesos: LARRY ES MÁS REAL QUÉ TÚ EXISTENCIA 

SÍGUEME Y TE SIGO',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2560347314
);
INSERT INTO twit_user VALUES (
	'157829109',
	'☾ vic',
	'505VM',
	'021 babylon',
	'Um peso no pulmão, mas continuo com a minha calma de monge',
	2025,1100,'Mon Jun 21 01:06:29 +0000 2010',43470,1100,'en',
	'http://pbs.twimg.com/profile_images/525526350174879745/zq0uLAjx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_drog4lizado: se eu tiver você, vou vencer, pode crer, a gente combina...',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	157829109
);
INSERT INTO twit_user VALUES (
	'2777275073',
	'Noémie',
	'NoeLoveBelieve',
	'',
	'null',
	240,1168,'Sat Sep 20 01:07:37 +0000 2014',586,1168,'fr',
	'http://pbs.twimg.com/profile_images/522536168387522560/71QXCDv8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2777275073
);
INSERT INTO twit_user VALUES (
	'2826360384',
	'((¯°ǥąǥą ℓąď¥°¯))',
	'gagalady_69',
	'',
	'Trust is like a mirror, you can fix it if it;;s broken, but you can still see the crack in that mother fucker;;s reflection. #LadyGaGa',
	16927,17382,'Mon Sep 22 13:34:02 +0000 2014',27804,17382,'nl',
	'http://pbs.twimg.com/profile_images/514064518893555712/n-uNhVdr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @M_G_W_V: ╭━༄━╯
╰💢➊💢╮
╭━༄━╯RETWEET
╰💢➋💢╮
╭━༄━╯FOLLOW ALL WHO RT
╰💢➌💢╮
╭━༄━╯FOLLOWBACK
╰💢➍💢╮
╭━༄━╯GAIN WITH #MGWV
╰💢➎💢╮
╭━༄━╯FOLLOW @Jose…',
	'<a href=::https://twitter.com/:: rel=::nofollow::>gagalady_69</a>',
	2826360384
);
INSERT INTO twit_user VALUES (
	'1544864724',
	'DJ',
	'DaveMitchell_11',
	' kd❤️',
	'null',
	590,359,'Tue Jun 25 05:36:16 +0000 2013',5932,359,'en',
	'http://pbs.twimg.com/profile_images/523379306157060096/FnYyAdZU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@Gia_cammisa: I need a boyfriend who will rub my feet and crack my back” @j_podolski24',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1544864724
);
INSERT INTO twit_user VALUES (
	'2834460365',
	'Morgan White',
	'htty_tddy',
	'Senatobia, MS',
	'null',
	14,84,'Thu Oct 16 18:27:44 +0000 2014',70,84,'en',
	'http://pbs.twimg.com/profile_images/522816593110503424/-JZ6APtE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @OleMissEvie: Rebels are a 3 point favorite over Auburn.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2834460365
);
INSERT INTO twit_user VALUES (
	'88516950',
	'Nath',
	'naathmedeiros',
	'Rio de Janeiro',
	'Snap: nathhmedeiros / (16)',
	849,525,'Sun Nov 08 21:41:20 +0000 2009',11050,525,'pt',
	'http://pbs.twimg.com/profile_images/521839318252666880/svNESQZ__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'To mal 😔',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	88516950
);
INSERT INTO twit_user VALUES (
	'293745338',
	'VI',
	'_itsIsaely',
	'',
	'all about ymas',
	639,638,'Thu May 05 22:12:10 +0000 2011',5689,638,'en',
	'http://pbs.twimg.com/profile_images/524632068576530432/aSHQi2HQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WalkingDead_AMC: #ShishKaBOB',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	293745338
);
INSERT INTO twit_user VALUES (
	'226673782',
	'amparo daries gimeno',
	'amparodargi',
	'ESPAÑA',
	'La vida esta llena de buenos ratitos!!!',
	256,280,'Tue Dec 14 19:41:44 +0000 2010',10324,280,'es',
	'http://pbs.twimg.com/profile_images/517467397448404992/6KCWyecC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Anita_Berta Me fije en Arana,pero hay muchisimos',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	226673782
);
INSERT INTO twit_user VALUES (
	'615919530',
	'Julio Roman',
	'RomanVLS',
	'',
	'| Wavy nigga | Dominican | Junior |',
	375,290,'Sat Jun 23 05:38:32 +0000 2012',8060,290,'en',
	'http://pbs.twimg.com/profile_images/526175747275513856/diqS2Iis_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @rxthIess: WHEN YOU ASK YOUR MOM A SIMPLE ASS QUESTION AND SHE WANNA YELL BACK AT YOU http://t.co/ZUkSI2T5FA',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	615919530
);
INSERT INTO twit_user VALUES (
	'259901980',
	'hunter lamar sulliva',
	'hunter199614',
	'',
	'I;;m a good country boy that has the best most beautiful angel in the world i love her so much my shelby sullivan.',
	53,212,'Wed Mar 02 20:46:17 +0000 2011',192,212,'en',
	'http://pbs.twimg.com/profile_images/509517059257270272/YZVMdiUR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Twin_Shelby: Walking Dead 🙌',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	259901980
);
INSERT INTO twit_user VALUES (
	'1932178500',
	'yungkay',
	'kaitlinatkinss',
	'tx forever',
	'i really don;;t care',
	293,598,'Thu Oct 03 22:12:17 +0000 2013',3859,598,'en',
	'http://pbs.twimg.com/profile_images/524751288819793920/TwLu1VbJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@aphili_ I know! But even Mikayla was up before me tho!😁',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1932178500
);
INSERT INTO twit_user VALUES (
	'544004434',
	'Jeremy Arzuaga',
	'jeremyarzuaga2',
	'The Baseball Diamond',
	'Class of ;;16| Baseball ⚾️| R.I.P Dad 5-21-10| R.I.P Tio Rafeal 1-14-14| Go cubs go',
	267,201,'Tue Apr 03 05:37:20 +0000 2012',14466,201,'en',
	'http://pbs.twimg.com/profile_images/497625478300463104/fmByZ4KH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @UncleCharlie50: Thanks to everyone for the prayers and get well soons.  I;;m doing great and will be ready to rock next spring!  Go Card…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	544004434
);
INSERT INTO twit_user VALUES (
	'2472006361',
	'محمد الهليمه',
	'fopokoqurozu',
	'',
	'null',
	1012,1999,'Thu May 01 05:36:47 +0000 2014',31190,1999,'en',
	'http://pbs.twimg.com/profile_images/493269887402246144/jM8L6R5y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @m511mss: @smoo511vip تصميمي/قصيدهـ للشاعر الكبير:حبيب العازمي ::الطيب اللي تطيب الناس من طيبه..وإلا الردي لو خدم ربعه يفشلها http://t.co…',
	'<a href=::http://www.tot-rt.net/:: rel=::nofollow::>علي 2</a>',
	2472006361
);
INSERT INTO twit_user VALUES (
	'2876276588',
	'Hiring Todaykdvu',
	'clr874ujz6',
	'',
	'null',
	0,0,'Sat Oct 25 05:33:45 +0000 2014',62,0,'en',
	'http://pbs.twimg.com/profile_images/526427661849993216/GGWWx-ZE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'We saw that you need a job @aleeeccccc we would like to hire you To join our team now go to @_Your_Job',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2876276588
);
INSERT INTO twit_user VALUES (
	'2457237163',
	'Breanna casares',
	'Breannaaarenee',
	'',
	'☺️❤️☀️',
	135,65,'Mon Apr 21 22:58:37 +0000 2014',1169,65,'en',
	'http://pbs.twimg.com/profile_images/525931156500275200/8hVNdp3a_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @codeineediva: i wanna lay in a field of sunflowers and look at the clouds',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2457237163
);
INSERT INTO twit_user VALUES (
	'619358301',
	'9 DaZe',
	'ArJayLoud',
	'',
	'bitch im up in marz',
	7565,1540,'Tue Jun 26 17:44:43 +0000 2012',8943,1540,'en',
	'http://pbs.twimg.com/profile_images/526223939283210240/lx5e8E0e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @GarrettSaysss: when home girl sitting in the back hit the blunt Hella hard and try not to cough http://t.co/XWX8LUXwHj',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	619358301
);
INSERT INTO twit_user VALUES (
	'228268724',
	'muh arif dara',
	'arifdara',
	'Palopo - Makassar',
	'null',
	313,294,'Sun Dec 19 06:38:24 +0000 2010',2649,294,'en',
	'http://pbs.twimg.com/profile_images/501140967387168768/8LkprFld_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@mherychamiago @intensaridewi cie anak clabing',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	228268724
);
INSERT INTO twit_user VALUES (
	'1704851042',
	'LISM BE MY BOYFRIEND',
	'CaraWeloveU',
	'Mrs Porse',
	'Cara, Jourdan, Iggy and Alexsandra follow ♡ started on 27.08.13 // Alberte & Malu ♕',
	13801,78,'Tue Aug 27 14:35:02 +0000 2013',25576,78,'fr',
	'http://pbs.twimg.com/profile_images/525734158082244609/yfiiFioc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne be Tarzan',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1704851042
);
INSERT INTO twit_user VALUES (
	'2673369556',
	'nicolas stgermain',
	'lilbronick21',
	'',
	'sup',
	19,64,'Fri Jul 04 21:39:33 +0000 2014',19,64,'en',
	'http://pbs.twimg.com/profile_images/485181390775128065/kimG9ziR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WalkingDead_AMC: #ShishKaBOB',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2673369556
);
INSERT INTO twit_user VALUES (
	'2800997030',
	'Nena y Lejo',
	'cazabrujas16',
	'',
	'null',
	315,113,'Wed Sep 10 03:11:26 +0000 2014',510,113,'es',
	'http://pbs.twimg.com/profile_images/522246491105021952/B-MZdqou_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Alguien se masturba por mi? http://t.co/yyNfICmryV',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2800997030
);
INSERT INTO twit_user VALUES (
	'1100128526',
	'salman ',
	'spiiv',
	' إن لم تعرفني فأكرمني بحسن ظنك',
	'‏‏‏‏‏‏‏‏‏‏‏[ﻻ شيء يستحق♥;;.',
	33510,48,'Fri Jan 18 05:43:42 +0000 2013',3757,48,'ar',
	'http://pbs.twimg.com/profile_images/476318170886594560/oK0o3A4Y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(ويسبح الرعد بحمده والملائكة من خيفته ويرسل الصواعق فيصيب بها من يشاء وهم يجادلون في الله .... 
http://t.co/Q0skF16ACl
 #تطبيق_قرآنى',
	'<a href=::http://qurani.tv:: rel=::nofollow::>تطبيق قرآني</a>',
	1100128526
);
INSERT INTO twit_user VALUES (
	'1664489564',
	'Czarina L.',
	'zuhreenuh7',
	'WA // SF',
	'California face with a down south booty Instagram: @zuhreenuh7',
	228,486,'Mon Aug 12 08:01:13 +0000 2013',6183,486,'en',
	'http://pbs.twimg.com/profile_images/520497863806427136/i_rwLof-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'UGH http://t.co/HuwZbaQCRG http://t.co/z4yhDTik0n',
	'<a href=::http://timehop.com/:: rel=::nofollow::>Timehop</a>',
	1664489564
);
INSERT INTO twit_user VALUES (
	'2834942575',
	'@___SAIPUBW___ししょー',
	'Fh4BlM5Yn0',
	'',
	'アルファです',
	892,1415,'Sun Sep 28 09:55:50 +0000 2014',33086,1415,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'寝る 寝ます 229178960',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2834942575
);
INSERT INTO twit_user VALUES (
	'194021889',
	'Antonio Montana',
	'BotTonyMontana',
	'Miami, FL',
	'Just your average Drug Lord.',
	360,503,'Thu Sep 23 07:02:23 +0000 2010',25471,503,'es',
	'http://pbs.twimg.com/profile_images/1129998086/27_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'And you;;re looking like these rich fucking mummies in here.',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	194021889
);
INSERT INTO twit_user VALUES (
	'1017344960',
	'【bot】資格保有者連絡求む',
	'shikaku_free',
	'様々な資格保有者が集まる場所',
	'公認会計士/税理士/弁理士/司法書士/行政書士/不動産鑑定士/獣医師/調理師/製菓衛生士/美容師/宅地建物取引主任者/歯科医師/はり師/システム監査技術者/ネットワークスペシャリスト/基本情報技術者/保育士/社会福祉士/介護福祉士/栄養士/助産士/看護師/歯科衛生士/FP/社会保険労務士/気象予報士/など(｡･ω･｡)',
	2534,2724,'Mon Dec 17 12:16:40 +0000 2012',49155,2724,'ja',
	'http://pbs.twimg.com/profile_images/3010558702/d175e44c5be74ab6247d833eb3f65a0e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ツイッターのフォロワー募集：#followmejp',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1017344960
);
INSERT INTO twit_user VALUES (
	'162397772',
	'ちくわパフェだよ†Leggendaria',
	'Tamadomeeeeeeee',
	'ちくわ工場',
	'魚のすり身を使った食品は広く知られているが特にその中でもちくわは汎用性に優れており、色々な食材と合わせても食べられる。ちくわは何にでも合う、ちくわis GODちくわ大明神おでん食べる時はごはんも一緒に食べるあと

佐倉綾音のブラのサイズ知りたい
@hinabitter',
	2539,1013,'Sat Jul 03 14:54:31 +0000 2010',289213,1013,'ja',
	'http://pbs.twimg.com/profile_images/468356982156451842/IsYVOgyD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'んーーーーーーーｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗちんぽちんぽちんぽちんぽｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗｗ',
	'<a href=::http://twpf.jp/Tamadomeeeeeeee:: rel=::nofollow::>ミサカネットワーク (NetWork for Misaka)</a>',
	162397772
);
INSERT INTO twit_user VALUES (
	'602626018',
	'フジテレピ fan',
	'fujjtv',
	'',
	'フジテレピ！ #sougofollow #followmejp #followdaibosyu #相互フォロー #フジテレビ #fujitv (このアカウントは個人アカウントです。フジテレビのアカウントではありません。)',
	5627,5805,'Fri Jun 08 09:46:46 +0000 2012',236296,5805,'ja',
	'http://pbs.twimg.com/profile_images/425617356887293952/YCWFYeX__normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ヤフオク!:U○フジテレビ開局30周年記念作品　優駿/映画パンフレット:現在価格:6 円,入札数:-,終了日時:2014/10/27 20:14 http://t.co/rVeI5vwkdT #ヤフオク #フジテレビ #sougofollow #相互フォロー',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	602626018
);
INSERT INTO twit_user VALUES (
	'1580004679',
	'さやねぇ',
	'LvingS',
	'',
	'武中(63期)→越高→大東文化 教育 2-E 大合宿 / やっとバイト始めました(*｀艸´)',
	248,297,'Tue Jul 09 10:08:31 +0000 2013',3878,297,'ja',
	'http://pbs.twimg.com/profile_images/462466160403816449/YFg-LARr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ん、なんか1人だけ情報が遅いんだけどなんでだ？（笑）',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1580004679
);
INSERT INTO twit_user VALUES (
	'99125520',
	'Anwar Sadath P P',
	'amnsad',
	'',
	'null',
	204,542,'Thu Dec 24 15:47:37 +0000 2009',12336,542,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @utamafirstROMI: “Lebih mudah memaafkan musuh daripada memaafkan teman” (Madame Dorothee Deluzy)',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	99125520
);
INSERT INTO twit_user VALUES (
	'2285022698',
	'Jasa Tambah Follower',
	'JalanFollower2',
	'PIN 2855E9B5 / 081996362500',
	'Solusi untuk bisnis anda | Kami menyediakan Follower Aktif ( bukan robot ) asli INDONESIA | Tertarget Berkualitas | Garansi uang kembali | Cbg @JalanFollower',
	6576,3998,'Fri Jan 10 12:30:44 +0000 2014',30492,3998,'en',
	'http://pbs.twimg.com/profile_images/428094957899890688/Ns0opaNN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mana nih yg mau banyak follower aktif &amp; asli? Murah. juga aman. WhatApp 081996362500 / PIN : 2855E9B5',
	'<a href=::http://www.grabinbox.com:: rel=::nofollow::>GrabInbox</a>',
	2285022698
);
INSERT INTO twit_user VALUES (
	'2298778662',
	'NHK番組bot（京都）',
	'nhkprg_kyoto',
	'',
	'【情報提供：NHK】NHK番組表API（ http://api-portal.nhk.or.jp/ja/ ）を用いてNHK京都局の番組情報をツイートします。お問い合わせは @nhkprg_main まで。NHK公式アカウントではありません。',
	60,65,'Sun Jan 19 01:35:54 +0000 2014',21990,65,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'【ランダムセレクション・Eテレ】
12:55「みんなのうた「フレ！フレ！大丈夫！」」
13:50「視点・論点「葉っぱの不思議」」',
	'<a href=::http://nhkprgbot.daiwa-hotcom.com:: rel=::nofollow::>NHK番組bot</a>',
	2298778662
);
INSERT INTO twit_user VALUES (
	'111514121',
	'Jonathan Lounds',
	'jonathanlounds',
	'Indianapolis',
	'null',
	47,73,'Fri Feb 05 05:27:29 +0000 2010',17,73,'en',
	'http://pbs.twimg.com/profile_images/520700186029752320/CDOU2IZJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'The Case for Reparations - The Atlantic http://t.co/jxUiMeCf90',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	111514121
);
INSERT INTO twit_user VALUES (
	'2254200134',
	'follow @jauregunit',
	'laurendelreygui',
	'',
	'null',
	4,18,'Thu Dec 19 23:42:05 +0000 2013',6198,18,'en',
	'http://pbs.twimg.com/profile_images/445225291271532544/Y722RVTK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/54re6VO4Zt
x21',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2254200134
);
INSERT INTO twit_user VALUES (
	'2276735502',
	'+18 gay',
	'JorgeWiiz',
	'',
	'null',
	163,505,'Sat Jan 04 22:33:48 +0000 2014',240,505,'es',
	'http://pbs.twimg.com/profile_images/505848063416479744/u5Ljtebs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BuenosTextos: —Amor, ¿en dónde dejaste al bebé?
—En su cama.
—En la cama sólo hay una bolsa de palomitas.
—¡NO MAMES! ¡APAGA EL MICROON…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2276735502
);
INSERT INTO twit_user VALUES (
	'477180347',
	'Kylie',
	'kylie_lee3',
	'',
	'null',
	9,45,'Sat Jan 28 22:45:48 +0000 2012',2,45,'en',
	'http://pbs.twimg.com/profile_images/1788213781/image_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I am in the major prize draw to WIN A CAR. For your chance to win, dig the grid here http://t.co/wlNptoGRUR #startdigging',
	'<a href=::http://www.apple.com:: rel=::nofollow::>iOS</a>',
	477180347
);
INSERT INTO twit_user VALUES (
	'2856372170',
	'ムラムラ動画集',
	'muramura_mo',
	'',
	'ムラムラする動画をツイートしてます。おかずにどうですか？堪能してください。堪能したらRTお願いします。',
	211,499,'Wed Oct 15 06:19:15 +0000 2014',525,499,'ja',
	'http://pbs.twimg.com/profile_images/522270679698141184/0aodvlNY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @soft_room1: ファイナルファンタジーⅦのミニゲーム【G-BIKE】が完全新作で登場！
事前登録でアイテムゲットwww

And・iOS⇒http://t.co/oHeHnQvHTy

FINAL FANTASY VII G-BIKE http://t.co/H…',
	'<a href=::https://twitter.com/muramura_mo:: rel=::nofollow::>ムラムラ動画集!!</a>',
	2856372170
);
INSERT INTO twit_user VALUES (
	'170948021',
	'風嵐P@ｳｨｯｸ@モン娘流行れ',
	'fuuranp',
	'長崎県',
	'1205P。アイマスとかLOLとかポケモンとか。
擬人化好きな初心者絵描きなので苦手な方は注意を　Xフレコ・0232　8266　4852　ｻﾌﾞ1865 0583 0774
投稿ポケモン動画→http://www.nicovideo.jp/mylist/39616095',
	496,340,'Mon Jul 26 05:14:59 +0000 2010',39066,340,'ja',
	'http://pbs.twimg.com/profile_images/521421742170836992/7OU3aLoI_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'この2戦目を保存しておけば次回収録の手間が省ける・・・',
	'<a href=::http://janetter.net/:: rel=::nofollow::>Janetter</a>',
	170948021
);
INSERT INTO twit_user VALUES (
	'436122268',
	'camila',
	'MilaMariano_',
	'Minas, BH ',
	'الربيع',
	614,384,'Tue Dec 13 20:29:59 +0000 2011',28041,384,'pt',
	'http://pbs.twimg.com/profile_images/524713929579429888/Vt1h_uLW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@liviamariano_ @raphamilton não pra frase absurda q eu li com gracinha e livinha, vei naooooo, n mesmo, eu te criei',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	436122268
);
INSERT INTO twit_user VALUES (
	'614290208',
	'Matthew S Muller',
	'msmullermd',
	'',
	'Father. EM-CCM trng, EM by choice. Go Navy, Go Duke. Seriously, take your kids outside...',
	48,107,'Thu Jun 21 12:52:51 +0000 2012',463,107,'en',
	'http://pbs.twimg.com/profile_images/3750436614/5636b30ec69f71584230cfa78632c8ed_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'For record, I agree with ::Keep Calm:: but can we scientists stop saying ::not infectious if no symptoms:: nature is never that black or white',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	614290208
);
INSERT INTO twit_user VALUES (
	'170351544',
	'IKEAWest_Sac',
	'IKEAWest_Sac',
	'Sacramento, California',
	'The official handle of IKEA West Sacramento.  Visit our site http://www.IKEA-usa.com/westsacramento. Also visit @IKEAUSA for design tips & more!',
	740,160,'Sat Jul 24 16:04:47 +0000 2010',2670,160,'en',
	'http://pbs.twimg.com/profile_images/1398761989/IKEATwitterProfileLogo_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Free small breakfast plate in the @IKEAWest_Sac restaurant from 9:30am to 11am tomorrow! http://t.co/CfFBiU6LBO',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	170351544
);
INSERT INTO twit_user VALUES (
	'2254356348',
	'follow @jauregunit',
	'jauregaaye',
	'',
	'null',
	3,18,'Fri Dec 20 02:32:35 +0000 2013',6021,18,'en',
	'http://pbs.twimg.com/profile_images/445232208559620096/B7uhGc1G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/BbUgVXeBQe
x21',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2254356348
);
INSERT INTO twit_user VALUES (
	'221534877',
	'Selene ⑭',
	'SeleneCamila',
	'',
	'No alcanzan las tribunas , no alcanzan las entradas',
	66,51,'Tue Nov 30 22:47:21 +0000 2010',915,51,'es',
	'http://pbs.twimg.com/profile_images/504474900510568448/RwWlVlCt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Como se nota que los dos estan enamorados! Admiro a agus y lauti que apesar de todo siguen juntos y demostrandose cuanto se aman .',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	221534877
);
INSERT INTO twit_user VALUES (
	'140597520',
	'Rul_ass',
	'rul_ass',
	'',
	'Chilango egresado de la UNAM refugiado en Cuernavaca amante del nixtamal y las quesadillas de Huitlacoche. Novio oficial de Mafalda.',
	429,525,'Wed May 05 22:58:33 +0000 2010',17751,525,'es',
	'http://pbs.twimg.com/profile_images/501779526981267456/1T9NYpwB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Aburrimiento nivel: Viendo ::InActividad Paranormal::.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	140597520
);
INSERT INTO twit_user VALUES (
	'2150949894',
	'⚛あいみん⚛岩田っち☃',
	'xxx_sa0804',
	'',
	'✿LDH垢✿ ˳˚̊̊⌖∙◌岩田剛典に夢中です˳˚̊̊⌖∙◌ ☃⚛ひなたちゃん→@2998_berry☃⚛',
	556,491,'Wed Oct 23 13:07:24 +0000 2013',1414,491,'ja',
	'http://pbs.twimg.com/profile_images/524229486502375424/nPl_DZ9a_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@saeken5924 高3ですか？？',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2150949894
);
INSERT INTO twit_user VALUES (
	'981263694',
	'hi',
	'liamzbabe',
	'29 avril . 20 juin | v & m',
	'shoutout to liam payne;;s parents for not using protection',
	6365,839,'Fri Nov 30 21:29:15 +0000 2012',68572,839,'fr',
	'http://pbs.twimg.com/profile_images/526376834737635328/4XPsY4Q6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	981263694
);
INSERT INTO twit_user VALUES (
	'1270934910',
	'メット',
	'mariomet_bot',
	'氷寒洞窟',
	'こんにちは、メットです。これからもよろしくお願いします。僕は半手動半自動botですのでゲームの中で思っていることをつぶやいたりしています｡　フォロー返しは必ずとはいえません。　　　管理人:@vrton2　　あと、フォロー返しはあんまりしないと思うけどかんべんしてね',
	187,183,'Fri Mar 15 23:24:35 +0000 2013',16336,183,'ja',
	'http://pbs.twimg.com/profile_images/3384882004/848530844b7856ff2b522b24dba2f8ef_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'誰だ!僕をヘルメットがわりにしているのは!',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1270934910
);
INSERT INTO twit_user VALUES (
	'560549353',
	'Awesome .',
	'HotGirlJay__',
	'',
	'#ғяεεMүDα∂∂ү ♥ :Mү ℓιғε, мү cнσιcεs, мү мιsтαкεs. ƒяєє ∂ωιgнт. нσтgιяℓ т.ƒσℓℓσω мє ση ιg. @тнєjαуgιяℓ_ They Say My Bitches Be Dikin Lowkey I Be Liking That Shit',
	848,808,'Sun Apr 22 19:45:16 +0000 2012',32156,808,'en',
	'http://pbs.twimg.com/profile_images/524406102520516610/6vehOW4s_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I got some brown contact 👀, im look so sexy tomorrow 😘',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	560549353
);
INSERT INTO twit_user VALUES (
	'1648907712',
	'soydejosue el&yo♥♥',
	'LuaYanez5',
	'Bahía Blanca.',
	'One Direction, Miley Cyrus, Electronica.     15-8-14 J&L jps ♥♥',
	638,478,'Mon Aug 05 23:30:30 +0000 2013',10026,478,'es',
	'http://pbs.twimg.com/profile_images/524608202625646593/HvIYRiBR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Que raro que no me fui a dormir',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1648907712
);
INSERT INTO twit_user VALUES (
	'2571853058',
	'ORA plus ORA',
	'ora_plus',
	'rita::s heart',
	'My fucking Rita. I love her !!!!!',
	84,92,'Mon Jun 16 23:58:51 +0000 2014',29778,92,'pt',
	'http://pbs.twimg.com/profile_images/478688320453505024/p3hbqECI_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'karaoke  @Drake Favorite Rap/Hip-Hop Artist #AMAs',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2571853058
);
INSERT INTO twit_user VALUES (
	'1191782946',
	'Sarah Deming',
	'sarahisawsome',
	'New York❤️',
	'i sold my soul for chipotle • @Allicatttx & @Lilgratata talks about me all da time • #FIERCENATION #NakitaAndSarahSycoBuddies',
	587,398,'Mon Feb 18 02:27:39 +0000 2013',12939,398,'en',
	'http://pbs.twimg.com/profile_images/524299155070406657/GK8P3aBd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne what',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1191782946
);
INSERT INTO twit_user VALUES (
	'500395921',
	'nani✌',
	'Nahir_Cristaldo',
	'',
	'Del mismo dolor, vendrá un nuevo amanecer -Tell me your secrets 
and ask me your questions- INJ13•future english teacher•18navidades',
	543,496,'Thu Feb 23 03:06:34 +0000 2012',27795,496,'es',
	'http://pbs.twimg.com/profile_images/520464197424250882/oQLd7zjO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@micagui grrrr te extraño pelotuda!!!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	500395921
);
INSERT INTO twit_user VALUES (
	'258362440',
	'♛ Princess Tay ♛',
	'dallasdanado',
	'Brazil',
	'P9: 1/4 ❤ Magcon: 2/14 ❤ One Direction ❤ 5SOS ❤ Justin ❤ Bryant ❤ Willie ❤ Rudy ❤ Lucas ❤ Little Mix ❤',
	1091,351,'Sun Feb 27 15:11:29 +0000 2011',49038,351,'pt',
	'http://pbs.twimg.com/profile_images/517074709973065728/wJyesl-k_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	258362440
);
INSERT INTO twit_user VALUES (
	'157011961',
	'たかくら･まさる',
	'MDR7506er',
	'冥府魔道',
	'null',
	142,255,'Fri Jun 18 15:53:05 +0000 2010',17159,255,'ja',
	'http://pbs.twimg.com/profile_images/378800000638638196/8de7722d4f76cc26304b6effe39b4595_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'MS70CDR、リバーブは気に入ったし、ハーモナイザーもいい。オクターバーはちょっとダメかな？',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	157011961
);
INSERT INTO twit_user VALUES (
	'139850998',
	'Ermitaña del Valle',
	'cerraelpico',
	'uruguay',
	'EL PLACER DEL ANONIMATO Y DEL WABI SABI ,SENTIPENSANTE',
	1198,682,'Mon May 03 21:40:08 +0000 2010',18535,682,'es',
	'http://pbs.twimg.com/profile_images/526118136072790017/tTDnDspL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_DoctorFelipe: *tuitea como si supiera de política*',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	139850998
);
INSERT INTO twit_user VALUES (
	'749341513',
	'miyana',
	'MariameHem',
	'paris ',
	'tu fait pleurer ta mere? Ta couler ......',
	180,127,'Fri Aug 10 13:12:04 +0000 2012',1369,127,'fr',
	'http://pbs.twimg.com/profile_images/526049532518617088/8afrIHik_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Envie ee changer d`air',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	749341513
);
INSERT INTO twit_user VALUES (
	'18953632',
	'Robertdraaitdoor.nl',
	'Rdraaitdoor',
	'Nederland',
	'Ik zeg maar zo het is me hobby. ♪♫•*¨*•.¸¸♪♫♪♫•*¨*•.¸¸♪♫
http://Www.Gigantenteam.nl',
	148,241,'Tue Jan 13 21:12:01 +0000 2009',95690,241,'nl',
	'http://pbs.twimg.com/profile_images/463724292308758529/4Xk4XBGp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Nu voor u.. Jeroen Spierenburg - Nu leef ik mijn leven ..hier bij http://t.co/IVO9UjPAmq',
	'<a href=::http://www.sam-song.info:: rel=::nofollow::>SAM Broadcaster Song Info</a>',
	18953632
);
INSERT INTO twit_user VALUES (
	'544594921',
	'Nyquil ',
	'_missmonettxo3',
	'',
	'null',
	749,782,'Tue Apr 03 21:09:30 +0000 2012',48127,782,'en',
	'http://pbs.twimg.com/profile_images/521052220906029056/RFLkA0_x_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Hate peeping shit 😤😤',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	544594921
);
INSERT INTO twit_user VALUES (
	'136064340',
	'ingridf',
	'ingrprincesita',
	'venezuela ',
	'simplenente yo ✌️',
	110,467,'Thu Apr 22 23:15:51 +0000 2010',949,467,'es',
	'http://pbs.twimg.com/profile_images/484156000967327744/Afj4i8-U_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Siempre hay alguien que te cambia la vida,para bien o para mal',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	136064340
);
INSERT INTO twit_user VALUES (
	'1384863864',
	'Melissa Caito',
	'Melissa_Caito1',
	' Keep The Peace ✌',
	'▼◣18 ▲ Indiana ▼ Center Grove ◥▲                         life happens when you stop living to impress others and start living to impress yourself',
	86,134,'Sat Apr 27 16:29:37 +0000 2013',1391,134,'en',
	'http://pbs.twimg.com/profile_images/518933191512846337/oG0TfwGj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Dad is seriously pissing me off. Like how selfish can one person be. @mandiee742',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1384863864
);
INSERT INTO twit_user VALUES (
	'2341492966',
	'Lettizia Cubas',
	'LettiziaW',
	'Curitiba',
	'Põe quanto és no mínimo que fazes...',
	127,172,'Thu Feb 13 15:28:12 +0000 2014',847,172,'pt',
	'http://pbs.twimg.com/profile_images/526528872532414464/V0VdVUlx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Amor que não se mede, amor que não se pede, que não se repetee',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2341492966
);
INSERT INTO twit_user VALUES (
	'2801298798',
	'とことん♡リラックマ',
	'kuma_rirra',
	'',
	'かわいい～♡癒し～♡なリラックの画像をどんどんツイートしていきます♡フォローお願いします♡',
	1014,969,'Wed Sep 10 07:53:29 +0000 2014',1117,969,'ja',
	'http://pbs.twimg.com/profile_images/509611459932717056/2uHhlryY_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'コリラックマミルフィーユ♡ http://t.co/Bf3zI2BBEE',
	'<a href=::https://twitter.com/for5htc:: rel=::nofollow::>for5htc</a>',
	2801298798
);
INSERT INTO twit_user VALUES (
	'1328538409',
	'Emiux',
	'emmaflores42',
	'',
	'null',
	50,277,'Fri Apr 05 06:30:37 +0000 2013',677,277,'es',
	'http://pbs.twimg.com/profile_images/452676600677429248/u4R2fyWw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @loz_carlos: @padresolalinde #TodosSomosAyotzinapa en cd de México de luto y por la humanidad. http://t.co/dMkdAyahN3',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1328538409
);
INSERT INTO twit_user VALUES (
	'233222499',
	'Arlenys patricia.',
	'soyarlenys_',
	' Edo-Zulia, Venezuela.',
	'16. Gimnasta.             Dios es mi fortaleza,                           ¡Visca Barça!',
	5119,3112,'Sun Jan 02 17:12:12 +0000 2011',8787,3112,'es',
	'http://pbs.twimg.com/profile_images/525369656089907200/kr0CTTJ2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_AleRomeroo si yo se :((, llévame a verlo..',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	233222499
);
INSERT INTO twit_user VALUES (
	'1378352148',
	'milk',
	'milktonn',
	'nyc',
	'waffleo',
	67,73,'Thu Apr 25 01:19:51 +0000 2013',9707,73,'en',
	'http://pbs.twimg.com/profile_images/525528580537982976/tdLYG8kY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'The beginning of the darkest days of my life',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1378352148
);
INSERT INTO twit_user VALUES (
	'493521396',
	'A.Blayita♤',
	'andreeablaya',
	'Murcia,Las torres de cotillas',
	'Nada mejor que un 5 letras|| Me la jugaron un día y hoy juego mejor que nadie ♛-Vive de tal manera que mañana mires atrás y sonrías. La vie est belle ♥ fifteen',
	771,527,'Wed Feb 15 21:58:07 +0000 2012',16734,527,'es',
	'http://pbs.twimg.com/profile_images/522349261929738240/58eI5mdD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MejorHoroscopo: CÁNCER. La Luna crece y tú te sientes mucho mejor. El amor está que arde. Lucha por lo que es tuyo con la confianza de …',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	493521396
);
INSERT INTO twit_user VALUES (
	'73740462',
	'philipdude65',
	'philipdude65',
	'philiee123@yahoo.com  ',
	'Kicks all day.',
	208,267,'Sat Sep 12 21:38:32 +0000 2009',649,267,'en',
	'http://pbs.twimg.com/profile_images/422422129808637952/b8wDFPbC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @thosemynikes: Something worth a cop finally. RT for the chance at an oop!! More you RT more chance you got! http://t.co/mQQ6HhbBEG',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	73740462
);
INSERT INTO twit_user VALUES (
	'35910704',
	'Gābby',
	'MCMXCVII____',
	'Where Heaven and Earth Meet',
	'#TeamLeo ♌️. Life is a play with no rehearsals.',
	366,583,'Mon Apr 27 23:49:44 +0000 2009',4724,583,'en',
	'http://pbs.twimg.com/profile_images/526168605827014657/jBBUKbcH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'This #TheWalkingDead scratch off commercial tho 😒',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	35910704
);
INSERT INTO twit_user VALUES (
	'1122671372',
	'chanou',
	'ArthurChanh',
	'Paris',
	'75093 - snap/kik: arthurcnh - insta: arthurchanh',
	577,378,'Sat Jan 26 17:35:16 +0000 2013',15761,378,'fr',
	'http://pbs.twimg.com/profile_images/526418712338137090/079XA_Jz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'bonne nuit',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1122671372
);
INSERT INTO twit_user VALUES (
	'2435828953',
	'ghost',
	'REPSL1',
	'SW ENTERTAINMENT',
	'REPSUP | For booking of features ~ weapons.mtl@gmail.com',
	12,23,'Wed Apr 09 17:40:59 +0000 2014',9,23,'en',
	'http://pbs.twimg.com/profile_images/459773107662647296/adAmMqYl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @IBLASTDG: S/O to the major blogs fuckin wit my new shit! Brand new joint ::IN MY ZONE:: feat. justmugz &amp; @repsl1… http://t.co/6r1wcVsIHo',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2435828953
);
INSERT INTO twit_user VALUES (
	'2736379453',
	'Jongin::s ',
	'azzanizawaty',
	'',
	'Kim Jongin;;s. Exo-L. KPop only.',
	86,272,'Sat Aug 16 03:23:06 +0000 2014',8987,272,'en',
	'http://pbs.twimg.com/profile_images/509749729530363904/HrT5-Dxq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @wufanqins: D.O singing for Cart OST http://t.co/9tNRDgWDUs',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2736379453
);
INSERT INTO twit_user VALUES (
	'545147519',
	'SnazzyValues',
	'SnazzyValues',
	'',
	'Handmade Jewelry for sale via Etsy https://www.etsy.com/shop/SnazzyTrinkets?ref=ss_profile',
	3352,3234,'Wed Apr 04 13:58:55 +0000 2012',114246,3234,'en',
	'http://pbs.twimg.com/profile_images/378800000644516857/3111ae5cde0a65aaeb90c6f22666aed1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Check out http://t.co/wRIWtSSC0z  #EcoChic #bizhype  #celtic',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	545147519
);
INSERT INTO twit_user VALUES (
	'1529006472',
	'PLEASE LIAM ',
	'liamstriptease',
	'',
	'sophia smith follows / 10.05 best day ever',
	6711,5993,'Tue Jun 18 22:41:59 +0000 2013',63738,5993,'pt',
	'http://pbs.twimg.com/profile_images/519693992154238976/cDvP7j5j_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1529006472
);
INSERT INTO twit_user VALUES (
	'17954637',
	'Lillian Ruiz',
	'Lillian_Ruiz',
	'ÜT: 40.67814,-73.98292',
	'Social media director for Flavorpill Media (home to Flavorwire & Flavorpill); music hobbyist; cheese plate stalker',
	393,278,'Mon Dec 08 03:19:12 +0000 2008',2498,278,'en',
	'http://pbs.twimg.com/profile_images/1485150606/yammerpic_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Everyone calm down with the personal #brand agendas! http://t.co/sQK9ZJmJuM',
	'<a href=::http://www.everypost.me:: rel=::nofollow::>Everypost</a>',
	17954637
);
INSERT INTO twit_user VALUES (
	'1493443549',
	'Lorenzo♣',
	'blanquito435',
	'',
	'La vida es una, disfruta, ama y sientete libre.',
	57,43,'Sat Jun 08 17:08:41 +0000 2013',2424,43,'en',
	'http://pbs.twimg.com/profile_images/511691243102167040/946JOV7g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Creyes2Bstat1: WOW. RIP Oscar Taveras 
#BeGreatful',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1493443549
);
INSERT INTO twit_user VALUES (
	'1497282840',
	'Tweets Malignos',
	'tweetsmaligno',
	'',
	'✉ SIGAM :::::: @JovemAflito',
	2311,1404,'Mon Jun 10 04:07:36 +0000 2013',931,1404,'pt',
	'http://pbs.twimg.com/profile_images/503319225256005633/CQQFybhz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @daisaantana: Por um mundo onde os ingressos não esgotem toda vez que eu vou no cine ver @OficialAnabelle 💕🙏',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1497282840
);
INSERT INTO twit_user VALUES (
	'55162039',
	'Marley Duketii',
	'MarleyDuketii',
	'Houston, Tx',
	'Artist - Black Winter Album Available NOW at http://www.datpiff.com/Marley-Duketii-Black-Winter-mixtape.570813.html | IG : @MarleyDuketii',
	2276,2000,'Thu Jul 09 06:19:52 +0000 2009',2918,2000,'en',
	'http://pbs.twimg.com/profile_images/516021057795280897/W-hMgYWk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ORO X SABIDURIA http://t.co/KxvNXAyEm8',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	55162039
);
INSERT INTO twit_user VALUES (
	'1215069164',
	'الغارية',
	'FahadAlkuwari2',
	'Doha-Qatar',
	'null',
	204,797,'Sun Feb 24 10:06:33 +0000 2013',4359,797,'ar',
	'http://pbs.twimg.com/profile_images/497669756665593857/2HoTXJRN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(اللَّهُمَّ إني أسألكُ الهُدَى والتُّقى والعَفَافَ والغِنَى)   http://t.co/LXrfwry1z3',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	1215069164
);
INSERT INTO twit_user VALUES (
	'708488090',
	'denta_ady',
	'denta_ady',
	'Gresik,Jawa Timur',
	'null',
	5098,353,'Sat Jul 21 06:23:07 +0000 2012',35467,353,'en',
	'http://pbs.twimg.com/profile_images/378800000590082483/071312cb78f93328ccea36696ac5368f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Jika kamu ingin seseorang percaya padamu, hal pertama yg harus dilakukan adalah meyakinkan mereka bahwa kamu mempercayai mereka.',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	708488090
);
INSERT INTO twit_user VALUES (
	'2296498366',
	'Brianna',
	'bri_aaaa',
	'',
	'class of 18;; // alex ♡',
	98,140,'Wed Jan 22 00:51:41 +0000 2014',1015,140,'en',
	'http://pbs.twimg.com/profile_images/525052016444600320/w22vfMM2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'today at practice 🎀🔐💍😌 http://t.co/awUyIq90T0',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2296498366
);
INSERT INTO twit_user VALUES (
	'548114659',
	'★Alexander Ramirez★',
	'Alexxxander__',
	'',
	'Sangre X Sangre. Los D;;Sonso. FAS♥.            Turba Roja 94.',
	545,272,'Sun Apr 08 03:47:03 +0000 2012',9419,272,'es',
	'http://pbs.twimg.com/profile_images/518627553473728513/LUrfbNmq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Gano FAS&lt;3 CARAJOOOO!!!!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	548114659
);
INSERT INTO twit_user VALUES (
	'2718811485',
	'drew!1!2!',
	'drewmyboo_',
	'',
	'whos drew? im a dylanator 4 ever!',
	283,224,'Sun Jul 20 15:48:46 +0000 2014',8844,224,'en',
	'http://pbs.twimg.com/profile_images/526209206354182144/jOdbyxZr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;m very emotionally attached to this wow http://t.co/OSG90j6hLI',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2718811485
);
INSERT INTO twit_user VALUES (
	'2294717868',
	'Macarena Soto Saaved',
	'Macarena1007',
	'Chile',
	'Porque un abrazo en el momento indicado, no tiene precio.',
	130,297,'Thu Jan 16 16:47:18 +0000 2014',5725,297,'es',
	'http://pbs.twimg.com/profile_images/490597298510901249/0S7F_KSb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#STYYElReencuentro @GaboUzcategui7 http://t.co/eBFiNWRFX0',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2294717868
);
INSERT INTO twit_user VALUES (
	'2377811581',
	'闇',
	'ya3yuki',
	'猫の垢',
	'ツイ稼',
	103,1,'Fri Mar 07 23:41:32 +0000 2014',68067,1,'ja',
	'http://pbs.twimg.com/profile_images/442082921520693248/gQpByOjN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'11234',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2377811581
);
INSERT INTO twit_user VALUES (
	'2565718470',
	'なお＠アラジン声真似/マギ相方:kuro',
	'___nao_magi',
	'マグノシュタット／サンジのお膝の上♡',
	'声真似▷アラジン【*⋈ 大切 ⋈*】マギ相方❥kuro／旦那❥煌羽／弟❥バカイ／妹❥ｈｓちょこ　バ家族。℞廃。サンジ狂愛♡石原夏織ちゃんor喜多村英梨ちゃん主になりたい✿詳しくは☞【http://twpf.jp/___nao_magi】どっかの紅足のせいでヘラりましたぁ♡ ▷▷@LOVEsick__xxx（鍵垢）',
	511,521,'Fri Jun 13 18:36:26 +0000 2014',8475,521,'ja',
	'http://pbs.twimg.com/profile_images/525902298027810816/K3b25uMr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'《 定期 ✿ 》
OPLにヴァイオレットで所属してます▷◁｡･･｡)ﾉ ♡.゜',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2565718470
);
INSERT INTO twit_user VALUES (
	'862912219',
	'gipan김',
	'kmtaeng',
	'elite',
	'▪ 1st GIPAN as kid leader Kim Taeyeon ▪ GIBOI penyuka ikan buntel♡ #09▪',
	5780,5490,'Fri Oct 05 11:36:32 +0000 2012',67440,5490,'en',
	'http://pbs.twimg.com/profile_images/526394727315156993/3TYaFv_6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@IndoKoreaRP: #WGF [SR14B] need rp snsd,shinee,suju yg ramah, bala di mt. Quote!::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	862912219
);
INSERT INTO twit_user VALUES (
	'1449029377',
	'かわいい動物の画像/動画ボット',
	'syokudokinanpan',
	'',
	'過去にあったツイートの中から、かわいい動物を中心に再ツイートしていきます！気に入ったものがあれば、お気に入りやRTしてもらえると嬉しいです！',
	14146,4478,'Wed May 22 13:53:40 +0000 2013',7831,4478,'ja',
	'http://pbs.twimg.com/profile_images/3694471660/35954c304c33ce2a67959f8ba6f52c03_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【動画】　甘え上手な美人犬♪  http://t.co/5oWIeV94TQ',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1449029377
);
INSERT INTO twit_user VALUES (
	'2698578528',
	'ぶどう٩(｡•ω•｡)و',
	'COCOLORENchan',
	'あいち名古屋',
	'【PSiD : RuBy_l3udou : OMG_l3udou】【Skype : l3udou1220】 【Member of @ClanRuBy】【@L3Dren】',
	427,342,'Fri Aug 01 16:00:34 +0000 2014',8973,342,'ja',
	'http://pbs.twimg.com/profile_images/523099734546735104/Ce9zTFkn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@iN4BA__SR_ おけです',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2698578528
);
INSERT INTO twit_user VALUES (
	'510027919',
	'チャップリン',
	'Chaplin95881',
	'',
	'銀幕の世界は夢の世界。笑いあり、涙あり、驚きあり。すべては感動。ふる～い映画から、ホラー、ミステリー、ＳＦ、幅広く観ます。',
	2446,2600,'Thu Mar 01 10:25:02 +0000 2012',2153,2600,'ja',
	'http://pbs.twimg.com/profile_images/1864469291/mt2_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'夢物語「３Ｄグラフィックスで遊ぶ」　http://t.co/9oX4qhrFM5',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	510027919
);
INSERT INTO twit_user VALUES (
	'202962589',
	'かせっち*           ',
	'yutakase',
	'',
	'堀合華奈しか！堀合華奈しか！堀合華奈しか！ 10color;;sも大好きです。あぁ大原萌ちゃんGALETTe* 山本久恵福間杏実柴田ゆいか松本亜季堀合琳華宮内彩夏しなさん百花このみんれいちぇる 【ゆいかせっち】はしゆか、花奏、崎野萌、小嶋菜生',
	656,1075,'Fri Oct 15 06:08:30 +0000 2010',25081,1075,'en',
	'http://pbs.twimg.com/profile_images/525495891583451136/pHUM_jyI_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'春川桃菜さん可愛すぎ問題',
	'<a href=::http://theworld09.com/:: rel=::nofollow::>TheWorld⠀</a>',
	202962589
);
INSERT INTO twit_user VALUES (
	'1237494596',
	'zaynmalik1D',
	'ZaynsMaIilk',
	'england',
	'just close your eyes and enjoy the roller coaster that is life :) x Love @perriieele ♥',
	5326,33,'Sun Mar 03 02:56:07 +0000 2013',128,33,'en',
	'http://pbs.twimg.com/profile_images/517177995019038720/hzfQ_g57_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@perriieele please answer your dms love :(',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1237494596
);
INSERT INTO twit_user VALUES (
	'54456712',
	'Pantipa::parn',
	'Impantipa',
	'',
	'เบอร์สาม /http://facebook.com/impantipa',
	34,36,'Tue Jul 07 05:03:28 +0000 2009',1143,36,'en',
	'http://pbs.twimg.com/profile_images/505728778778050562/8au8ForL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Mmamo_: เรื่องบางเรื่องแม่งก็พูดได้แค่กับคนไม่กี่คนจริงๆนะ.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	54456712
);
INSERT INTO twit_user VALUES (
	'2841050349',
	'احمد العنزى',
	'AJHgwq0yWoRXlTo',
	'',
	'ربّ اجذبني إليك بحبلك الممدود لأخرج من ظلمتي إلى نورك و من عدميتي إلى وجودك',
	0,2,'Wed Oct 22 10:25:01 +0000 2014',25,2,'hu',
	'http://pbs.twimg.com/profile_images/526181422688526336/3TF5kKla_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اللهم إني أسألك العافية في الدنيا والآخرة اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي اللهم استر عوراتي وآمن روعاتي9c5',
	'<a href=::http://rt.rtwty.com:: rel=::nofollow::>rt.rtwty.com</a>',
	2841050349
);
INSERT INTO twit_user VALUES (
	'2616790268',
	'sbanken13',
	'sbanken13',
	'',
	'null',
	1527,1854,'Fri Jul 11 06:09:26 +0000 2014',30000,1854,'ja',
	'http://pbs.twimg.com/profile_images/488182935053299712/cHeyCKe7_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ソフトバンク「公式」アカウントです！
私たちの目標は、
着実にお客様のご要望にお答えし、
１００年先も世の中に求められる
会社であることです。
1976年11月25日創立です。
世間は「給料日」でした。
http://t.co/PK2g6n0ov4 51',
	'<a href=::http://www.twisuke.com:: rel=::nofollow::>ツイ助。</a>',
	2616790268
);
INSERT INTO twit_user VALUES (
	'341801913',
	'GR Supremo',
	'GrSupremo',
	'',
	'Es un proyecto que nace para informar',
	869,180,'Mon Jul 25 00:13:27 +0000 2011',34015,180,'es',
	'http://pbs.twimg.com/profile_images/1478707148/logo_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'GRSupremo Deportes Tamaulipas, tercero en Profesor Distinguido http://t.co/ypp3jXsdS9 #cdvictoria #tampico #madero #matamoros #reynosafollow',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	341801913
);
INSERT INTO twit_user VALUES (
	'2822964980',
	'Michael Is Bae',
	'michaelciffordz',
	'',
	'5SOS and 1D family❤ 0/4||0/5',
	405,521,'Sat Sep 20 23:26:31 +0000 2014',1492,521,'en-gb',
	'http://pbs.twimg.com/profile_images/524100549851889664/AAaZzqTo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2822964980
);
INSERT INTO twit_user VALUES (
	'362885885',
	'Kinky Sammy',
	'MizeProvostoqx',
	'',
	'No regrets. Just lessons learned. DM me ;) xo',
	212,1542,'Sat Aug 27 04:23:07 +0000 2011',320,1542,'en',
	'http://pbs.twimg.com/profile_images/378800000417747962/34d03b88b55bab68ac98aa572fcdb089_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KimKadashiran: My WEDDING SEX TAPE 😍🙌  http://t.co/Drs2iXEQpc',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	362885885
);
INSERT INTO twit_user VALUES (
	'2860766755',
	'相互フォロー＠お得情報',
	'ken_sougoff',
	'',
	'【 拡 散 希 望 】フォロバ１００％フォロー支援アカウント！
皆さんで相互フォローしましょう。このアカウントの「フォローされてる」方をフォローして、
相互フォローの輪を広げていきましょう！自動フォロー返し対応！
#follow #followme #followmejp #sougofollow',
	513,198,'Fri Oct 17 16:26:02 +0000 2014',4477,198,'ja',
	'http://pbs.twimg.com/profile_images/523148328469426176/45bIkhjW_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'相互フォロー支援アカウントです！みんなでフォローの輪を広げましょう。即日リフォロー致します。
#sougofollow #followme #followback #refollow #相互フォロー',
	'<a href=::http://www.twisuke.com:: rel=::nofollow::>ツイ助。</a>',
	2860766755
);
INSERT INTO twit_user VALUES (
	'2543454925',
	'いぐっちゃん ordinary()',
	'igucchan00',
	'',
	'大阪三島高校一年。部活=パルクール部(仮)w　　KingdomHeartsヲタク♪/気軽につぶやきま～す。',
	21,27,'Tue Jun 03 12:48:51 +0000 2014',113,27,'ja',
	'http://pbs.twimg.com/profile_images/473809453557350400/pixzaZQn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【定期】相互希望♪(必死)
☆キングダムハーツ
☆アサシンクリード
☆ブラックロック★シューター
☆すばらしきこのせかい
☆パンティ&amp;ストッキングwithガーターベルト
☆モンハン
☆ガゲプロ
☆パルクール&amp;その他w

被りRTで99.9%フォローしま腐♪…ｷﾓｯ。',
	'<a href=::http://autotweety.net:: rel=::nofollow::>autotweety.net</a>',
	2543454925
);
INSERT INTO twit_user VALUES (
	'405321715',
	'gingerprince',
	'smoothyhwang',
	'',
	'Love Girls;; Generation Forever. Red Velvet;;s Seulgi',
	9,31,'Sat Nov 05 04:43:39 +0000 2011',1083,31,'en',
	'http://pbs.twimg.com/profile_images/525862278847946753/KsFnJD0f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Its like my heart about to burst out. I need laugh a lot.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	405321715
);
INSERT INTO twit_user VALUES (
	'2166853603',
	'0 paciência ',
	'flordlis_',
	'',
	'Quem se descreve se limita.',
	164,212,'Thu Oct 31 15:58:54 +0000 2013',5774,212,'pt',
	'http://pbs.twimg.com/profile_images/523486032965427201/j-xD6IDl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Stefany ja ta mal,  eu ainda to boazinha',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2166853603
);
INSERT INTO twit_user VALUES (
	'138010582',
	'#인터넷카지노사이트주소',
	'Orgasm83',
	'#인터넷카지노사이트주소',
	'#인터넷카지노사이트주소
 ♥-( CACA77 . COX . KR )-♥
신규 10%, 매입금 3%, 오링 8% Bonus 
및 다양한 이벤트 진행중 ♥
안전하고 신뢰할 수 잇는 사이트 #인터넷카지노사이트주소',
	3,4,'Wed Apr 28 11:27:20 +0000 2010',1265,4,'ko',
	'http://pbs.twimg.com/profile_images/525513367717281792/aaootLw0_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'🇸 온라인카지노 추천 🇸 클릭☞♥ http://t.co/19LVZ6NsbU ♥☜클릭  신규이벤트중~^^ #엠카지노💨#엠카지노 http://t.co/0ldZ9Qby1w 릴게임주소',
	'<a href=::http://tweetadder.com:: rel=::nofollow::>TweetAdder v4</a>',
	138010582
);
INSERT INTO twit_user VALUES (
	'1941888900',
	'Muhamad khaled ',
	'Muhamadkhaled19',
	'',
	'null',
	136,229,'Sun Oct 06 20:09:48 +0000 2013',9463,229,'ar',
	'http://pbs.twimg.com/profile_images/499433937525952513/m5-GLG73_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_BePositive: تذكر ماضيك لتستفيـد منه
واحلم بمستقبلك ليلهمـك 
وعش حاضرك لتستثمـره ✨',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1941888900
);
INSERT INTO twit_user VALUES (
	'2740158722',
	'アオハライド♡大好き',
	'aohar_love',
	'',
	'アオハライド好き同士交流しましょう！ イラストや画像は毎日どんどん追加してます♪リフォロー率、相互フォロー率100％なので皆で楽しみましょう！',
	973,975,'Sun Aug 17 17:41:45 +0000 2014',2289,975,'ja',
	'http://pbs.twimg.com/profile_images/513004200909758464/6maCejsG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @anohana_love_: アニメキャラの
ボイスが聴けるアプリが
凄すぎるｗｗｗｗｗ

Android→http://t.co/b2GACpIdxD
　
人気声優・人気キャラの
ここでしか聴けない録りおろしボイス満載！ http://t.co/suAhc7DP99',
	'<a href=::https://twitter.com/haikyu_GIF_mato:: rel=::nofollow::>twipon01 oka3new</a>',
	2740158722
);
INSERT INTO twit_user VALUES (
	'2844648531',
	'VOTEM PLEASE!!',
	'Louis_Macaco',
	'',
	'Directioner aki baby ;) Votem: #EMABiggest1D',
	9,49,'Sun Oct 26 04:04:15 +0000 2014',478,49,'pt',
	'http://pbs.twimg.com/profile_images/526225121489334272/250fOq4N_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @isaa_silvaah: Vinte e oito shampoos para o Harry MutirãoDirectioners #EMABiggestFans1D',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2844648531
);
INSERT INTO twit_user VALUES (
	'333393246',
	'坂戸市のネイルサロン リ ボーン ネイル',
	'Re_Born_Nail',
	'埼玉県坂戸市',
	'埼玉県坂戸市
ネイルサロン
＊Re Born Nail＊リ ボーン ネイル
  ジェルネイル☆スカルプ☆フット☆などお客様の綺麗のお手伝いをさせていただいてマス  お得な情報やブログの更新情報などお伝えいたします♪',
	369,156,'Mon Jul 11 13:32:20 +0000 2011',3988,156,'ja',
	'http://pbs.twimg.com/profile_images/1922600844/225_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ブログ更新しました♪

グッとモニン

さてさてまだまだ忙しい１０月

週末の楽しかったハロウィンパーリーが終わりーのー明日は日本橋にてネイル雑誌の撮影なのだ

多忙なのにちっとも痩せません... http://t.co/GtQm7ZOpWd',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	333393246
);
INSERT INTO twit_user VALUES (
	'234466026',
	'marcela guerra',
	'_marcelaguerrav',
	'Rio verde ',
	'☪',
	612,116,'Wed Jan 05 18:42:53 +0000 2011',14160,116,'pt',
	'http://pbs.twimg.com/profile_images/523287628704411648/B-WDOowk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @hillarycborges: mar putinha curtindo tudo essa bichinha eh nota mil',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	234466026
);
INSERT INTO twit_user VALUES (
	'1030693176',
	'Young Markei™',
	'trevonxp200',
	'',
	'Young Markei.    Just a blessed kid from the 757 trying to make it . {KHS}',
	178,131,'Sun Dec 23 14:44:00 +0000 2012',770,131,'en',
	'http://pbs.twimg.com/profile_images/519303893923430401/ZOzjtNbQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Bob was 💀 at tainted meat',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1030693176
);
INSERT INTO twit_user VALUES (
	'72399456',
	'P.',
	'zombii6',
	'Kansas City, KS',
	'I like to live-tweet horror films. Here there be spoilers.',
	53,51,'Mon Sep 07 22:27:43 +0000 2009',3737,51,'en',
	'http://pbs.twimg.com/profile_images/526451727847809024/xuSspVG6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ShawneePD There are a ton of fireworks going off around Pflumm and Shawnee Mission Pkwy. Is that even legal?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	72399456
);
INSERT INTO twit_user VALUES (
	'485326400',
	'SRTA.PAYNE',
	'gabipontes_111',
	'coxa do harry :)',
	'Directioner :) 5sosFamily :)',
	1119,1397,'Tue Feb 07 02:45:56 +0000 2012',7890,1397,'pt',
	'http://pbs.twimg.com/profile_images/459910108513071104/z-PQ7yjj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Pollyanne_Zeni: PAREM de usar números, o voto Ñ conta
#EMABiggestFans1D',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	485326400
);
INSERT INTO twit_user VALUES (
	'208485825',
	'Haberciniz Biz',
	'habercinizbiz',
	'Turkey',
	'Sizin haberciniz biziz.',
	1214,1,'Wed Oct 27 11:06:03 +0000 2010',1230175,1,'en',
	'http://pbs.twimg.com/profile_images/1154101191/logo_225x75_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Fatih Terim Stadı;;nda İsyan; ::Göremiyorum:: http://t.co/MCa3Pj4ExZ',
	'<a href=::http://www.haberciniz.biz:: rel=::nofollow::>Haberciniz Biz</a>',
	208485825
);
INSERT INTO twit_user VALUES (
	'1457329903',
	'Vale Montero',
	'MonterValeria',
	'',
	'No nothing can come between, me and pieeeeeee♥  I;;m Directioner ∞',
	55,110,'Sat May 25 15:36:26 +0000 2013',2073,110,'es',
	'http://pbs.twimg.com/profile_images/467777985165012992/5ixi0j0f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1457329903
);
INSERT INTO twit_user VALUES (
	'2456920255',
	'KB✖️HS',
	'Real_1Dlife',
	'',
	'Alright? Alright. ✖️',
	1387,795,'Mon Apr 21 17:35:30 +0000 2014',4239,795,'en',
	'http://pbs.twimg.com/profile_images/516265974212079617/y9zbOSFQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne ?!?!?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2456920255
);
INSERT INTO twit_user VALUES (
	'235812095',
	'ShaniceT',
	'TehyaShanice',
	'',
	'❤️',
	1506,650,'Sun Jan 09 04:02:09 +0000 2011',102550,650,'en',
	'http://pbs.twimg.com/profile_images/526287237789782016/iKAMRhZu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_NaeeNaee: @TehyaShanice @HomeboyHarry_ @Reighannn_ y;;all forever petty 😂😂😂😂😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	235812095
);
INSERT INTO twit_user VALUES (
	'2829415964',
	'Team Promo LinkJKT48',
	'PromotLinkJKT48',
	'Indonesia',
	'BOT | Team Promotor @LinkJKT48',
	1,1,'Wed Sep 24 07:09:35 +0000 2014',766,1,'id',
	'http://pbs.twimg.com/profile_images/526254302071750656/UiyBR9MT_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@fahrychi Hae kak yuk go follow @LinkJKT48 lg open follback sampai 23.000 followers loh.makasih &gt;.&lt;',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2829415964
);
INSERT INTO twit_user VALUES (
	'2276733667',
	'Caroline Garrison',
	'songofsunset',
	'',
	'War will be endless, because peace isn;;t profitable~~wannabe writer~~high school senior~~way too excited over youtubers~~I has a blog!',
	40,187,'Sat Jan 04 22:23:53 +0000 2014',116,187,'en',
	'http://pbs.twimg.com/profile_images/424283452750327809/MSQUQNFx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tyleroakley: I;;ve got a pet peeve of people using ;;straight;; &amp; ;;normal;; interchangeably when discussing sexual orientation. All orienta…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2276733667
);
INSERT INTO twit_user VALUES (
	'418124213',
	'Valeria Márquez ',
	'vale_marquez',
	'',
	'growing up is realizing that Shaggy was a weed smoker hippie that talked to a dog and ate all the time because of the munchies ❕',
	217,151,'Mon Nov 21 19:53:49 +0000 2011',2136,151,'es',
	'http://pbs.twimg.com/profile_images/526540359397310464/KCRRlC2L_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @EsTextos: Callemos nuestros ;;te amo;; con hechos que griten lo que sentimos.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	418124213
);
INSERT INTO twit_user VALUES (
	'291978844',
	'Regina Garza',
	'reginagarza1',
	'México ',
	'I have a serious addiction with The Walking Dead ❤️I am from Mexico and I am living in ottawa for 1 year. Studying in Gloucester High School',
	435,423,'Mon May 02 22:39:46 +0000 2011',11993,423,'es',
	'http://pbs.twimg.com/profile_images/525726572289208320/e8pH-QBE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MeetRickGrimes: ::A:: 

You think you;;re funny huh u lil shit Gareth',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	291978844
);
INSERT INTO twit_user VALUES (
	'2168978409',
	'sarah',
	'arianastarbux',
	'Honeymoon ave.',
	'u got me like nananananananaaa',
	5976,444,'Tue Nov 05 03:51:39 +0000 2013',39371,444,'en',
	'http://pbs.twimg.com/profile_images/523997224364425218/aVqvVEg0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I AM CRYIN HYTERCIALLY',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2168978409
);
INSERT INTO twit_user VALUES (
	'719217457',
	'cmb✖️',
	'ChloeButtle',
	'Brockville, Ontario',
	'5;;3 && full of sass',
	591,399,'Fri Jul 27 02:06:25 +0000 2012',3256,399,'en',
	'http://pbs.twimg.com/profile_images/526198550846132224/lcNtUPaB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @StallTalla: My dad is unreal http://t.co/VD4VdMCk3H',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	719217457
);
INSERT INTO twit_user VALUES (
	'193639438',
	'Uncle Buck',
	'JustKaarl',
	'Lost inside my own world ',
	'G.A.B.O.S.',
	199,99,'Wed Sep 22 10:09:32 +0000 2010',7698,99,'en',
	'http://pbs.twimg.com/profile_images/519459916688658432/z3ISwDEz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'It;;s cold. I want my bed',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	193639438
);
INSERT INTO twit_user VALUES (
	'2691204444',
	'∞ Rita Ora ∞',
	'oravote2',
	'LA BABY',
	'hot right now',
	11,28,'Tue Jul 29 22:49:21 +0000 2014',13856,28,'pt',
	'http://pbs.twimg.com/profile_images/494253710449467393/aXUyAAxQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'karaoke  @Drake Favorite Rap/Hip-Hop Artist #AMAs',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2691204444
);
INSERT INTO twit_user VALUES (
	'260552545',
	'Luchoo',
	'luciano_chavez',
	'Saint Michael',
	'I wish you were here//EVERYBODY LIES',
	198,154,'Fri Mar 04 03:03:36 +0000 2011',9294,154,'es',
	'http://pbs.twimg.com/profile_images/475407440276905984/eR6auCBK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@juliaobetko_ watsap yaya',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	260552545
);
INSERT INTO twit_user VALUES (
	'308815081',
	'Dad❤',
	'becerra_dany',
	'Ibagué - Colombia.',
	'❤❤Tsunami❤❤   11 de septiembre ❤ CHEER...         ❤Tulipanes Rojos♥ 21❤ 14/08/2013 #Cholito♥.',
	757,1164,'Wed Jun 01 01:46:03 +0000 2011',50592,1164,'es',
	'http://pbs.twimg.com/profile_images/524769668457070593/szWZAPYD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @nosoycigarrillo: En 1400:

—::Estudiaré para ser un importante científico que aporte grandes descubrimientos a la humanidad.::

Hoy:

—::Q…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	308815081
);
INSERT INTO twit_user VALUES (
	'46190973',
	'BuiltFordTough✊',
	'LegsOn_Jazz',
	'',
	'#AmbitiousGirl #USFBulls #WoopNation #WoopLingo',
	631,495,'Wed Jun 10 18:47:56 +0000 2009',36668,495,'en',
	'http://pbs.twimg.com/profile_images/521026468231806977/u6fwzE8f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PRETTIER_THANU7: SHE DONT YIELD AT STOP SIGNS SHAWTY ON GOOOO!! 😏😏',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	46190973
);
INSERT INTO twit_user VALUES (
	'18302658',
	'Jasmine Shea',
	'SheaDiamond',
	'518',
	'Equal rights activist. Comedian. Mets fan. LGBT supporter. Dork.',
	940,360,'Mon Dec 22 06:49:29 +0000 2008',67041,360,'en',
	'http://pbs.twimg.com/profile_images/519921027896594433/q9corqTR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MotherJones: Texas has been on the cutting edge of minority disenfranchisement since emancipation http://t.co/bU7yDeteR5 http://t.co/Hy…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	18302658
);
INSERT INTO twit_user VALUES (
	'116331189',
	'GISELE SANTIAGO',
	'giselesantiago',
	'RIO DE JANEIRO',
	'null',
	17,75,'Mon Feb 22 02:33:53 +0000 2010',161,75,'pt',
	'http://pbs.twimg.com/profile_images/2574652649/j7s5fab3uz8a47k4hiy8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Saatchi Online Artist: Innes McDougall; Watercolor, 2012, Painting ::Gaze:: http://t.co/Vl8NTpavO6',
	'<a href=::http://pinterest.com:: rel=::nofollow::>Pinterest</a>',
	116331189
);
INSERT INTO twit_user VALUES (
	'898603975',
	'agus',
	'hxrrybrave',
	'',
	'i love this guy so much more than i love myself',
	3595,1842,'Mon Oct 22 22:46:19 +0000 2012',22245,1842,'es',
	'http://pbs.twimg.com/profile_images/526462636264030209/95Lzx5Xn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne follow me',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	898603975
);
INSERT INTO twit_user VALUES (
	'338966749',
	'M E L L Y ✊',
	'CondomsOverHoes',
	'',
	'danyale is my queen ❤️',
	1255,1122,'Wed Jul 20 11:22:38 +0000 2011',19967,1122,'en',
	'http://pbs.twimg.com/profile_images/525485142039871488/yZGWYSrB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Too_Lindaa: Jameel think I;;m playing , he won;;t tell me a story',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	338966749
);
INSERT INTO twit_user VALUES (
	'2869514202',
	'ya girl lil plantain',
	'moodmango',
	'',
	'j chillin',
	54,50,'Tue Oct 21 21:51:29 +0000 2014',213,50,'en',
	'http://pbs.twimg.com/profile_images/524691271739138048/QmAfP4jr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@yungliibra Weeds on Netflix',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2869514202
);
INSERT INTO twit_user VALUES (
	'2372452793',
	'gabi',
	'DESTINYCUSPE',
	'Bangerz Tour 28.09 eu fui',
	';;;;Não desistam de mim. Eu voltarei.;;;;',
	1525,928,'Sat Mar 01 04:57:14 +0000 2014',9638,928,'pt',
	'http://pbs.twimg.com/profile_images/523927706288013313/BLRViDdD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ollgprostituta: quando eu entrar em férias vou soltar foguete #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2372452793
);
INSERT INTO twit_user VALUES (
	'2815959366',
	'Micaela Poket',
	'MicaelaPoket',
	'',
	'null',
	37,149,'Thu Sep 18 00:56:00 +0000 2014',736,149,'es',
	'http://pbs.twimg.com/profile_images/512406034497822720/EseV6j20_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FutFrases: ::El Balón y la Mujer tienen algo en común, sino  la proteges viene otro y te la arrebata::',
	'<a href=::http://store.ovi.com/content/256340:: rel=::nofollow::>Twitter for Nokia S40</a>',
	2815959366
);
INSERT INTO twit_user VALUES (
	'466072700',
	'ɓɽooƙɭɣɳɳ❥',
	'bkingrey4',
	'',
	'just a small town girl with big city dreams✈️',
	690,618,'Tue Jan 17 01:27:07 +0000 2012',5775,618,'en',
	'http://pbs.twimg.com/profile_images/526382561552236544/Xy22HTH3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@kaitlynpayne30 text me? I can help🙋😘',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	466072700
);
INSERT INTO twit_user VALUES (
	'396712934',
	'Gabs ',
	'wtflobato',
	'Viamão - RS ',
	'Que teu afeto me afeta, é fato - Snap e Insta: Gabiblobato',
	423,386,'Sun Oct 23 17:27:14 +0000 2011',17287,386,'pt',
	'http://pbs.twimg.com/profile_images/521838250521276416/OvRIIEbn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MuriloOzorio_: Pior que levar 7 da Alemanha, é ficar 8 anos com a Dilma.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	396712934
);
INSERT INTO twit_user VALUES (
	'234209817',
	'Jake Mata',
	'jakeheem',
	'Burrington, Heemland',
	'I am the heemgod. I am 20.',
	212,187,'Wed Jan 05 02:50:04 +0000 2011',28698,187,'en',
	'http://pbs.twimg.com/profile_images/524004734286725120/_qGPyPRb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'OS X Yosemite doe',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	234209817
);
INSERT INTO twit_user VALUES (
	'1626068257',
	'✨Gabbi✨ #5sosfam',
	'Gabbiisapenguin',
	'',
	'i wish that i could wake up with wamwesia',
	432,907,'Sat Jul 27 18:27:41 +0000 2013',3073,907,'en',
	'http://pbs.twimg.com/profile_images/512766403410001920/xrSkeCy2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1626068257
);
INSERT INTO twit_user VALUES (
	'2261654340',
	'Tu Esposa #18',
	'KathizLds',
	'Ibague',
	'null',
	235,199,'Wed Dec 25 16:33:06 +0000 2013',1888,199,'es',
	'http://pbs.twimg.com/profile_images/505875949619929088/lRMdh5Dq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eres mis ganas de no estar con nadie mas',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	2261654340
);
INSERT INTO twit_user VALUES (
	'2325860077',
	'Won::tStopToSurrender',
	'Jade_1Ddarling',
	'Bird Cage',
	'I;;m In love with Lou, and all His little things-Harry And I;;d marry you Harry- Louis ❝ ❞ Oops Hi ∆ ⚓ @vazapninJeimie is my sunshine!',
	1486,1993,'Mon Feb 03 18:13:53 +0000 2014',11236,1993,'en',
	'http://pbs.twimg.com/profile_images/526071710731468800/pFbwLxFH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2325860077
);
INSERT INTO twit_user VALUES (
	'68469780',
	'U. Esco',
	'Uesco',
	'NJ.PA.NY',
	'21. Mexican. Rowan University. Journalism. Determined. Music Is Life. Random Lyrics, Movie References & Minutia. #TDE #DreamVille #Austin316',
	275,663,'Mon Aug 24 18:07:17 +0000 2009',4997,663,'en',
	'http://pbs.twimg.com/profile_images/460584395368185856/0SLa7CSc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @khal: weird thought: do you think Cena buys those shorts at walmart day-of PPV?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	68469780
);
INSERT INTO twit_user VALUES (
	'169339499',
	'17k',
	'Yaboyhoop_',
	'Always on the field',
	'C/o 17 DB HHS ;;',
	426,401,'Thu Jul 22 03:07:36 +0000 2010',24983,401,'en',
	'http://pbs.twimg.com/profile_images/526504287078469632/4UNvVbM3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@selenadestiny__ dislocated my finger the tech game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	169339499
);
INSERT INTO twit_user VALUES (
	'298640723',
	'Brebs da Looira *-*',
	'BrendaMooreC',
	'Bragança Paulista',
	'@podeserGaristo ❤ @O_Duutra ❤❤    @luansantana ❤',
	669,604,'Sat May 14 17:32:28 +0000 2011',45622,604,'pt',
	'http://pbs.twimg.com/profile_images/520934716988739584/ill_GCU-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lhp_nandinho: Cê precisa ser no mínimo Deus pra me julgar !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	298640723
);
INSERT INTO twit_user VALUES (
	'1447911882',
	'Eunice',
	'AllPayno',
	'Vancity Chick VanVancity Chick',
	'Tweet as if your grandma is gonna read it. ♡LJP♡ Joint lit, happy days. Adi - @larrylovenotes - the bar.',
	2898,2161,'Wed May 22 04:17:16 +0000 2013',47645,2161,'en',
	'http://pbs.twimg.com/profile_images/524064483413872640/jugc9_H0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@larrylovenotes it does I;;ve sneezed about 278584 times today and I hate it when I can;;t sneeze 😩',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1447911882
);
INSERT INTO twit_user VALUES (
	'300564486',
	'danielle',
	'Wut_3v3r',
	'',
	'TSS. ofwgkta. junior. idk.',
	160,151,'Wed May 18 00:04:00 +0000 2011',11982,151,'en',
	'http://pbs.twimg.com/profile_images/519651103722311682/bBnLB_aa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@WalkingDead_AMC: #TAINTEDMEAT http://t.co/hoR7RwL8P1::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	300564486
);
INSERT INTO twit_user VALUES (
	'233793971',
	'Liborio Guarulla',
	'LiborioGuarulla',
	'Puerto Ayacucho, Amazonas',
	'Twitter Oficial del Gobernador del Estado Amazonas, Indígena nativo del Municipio Maroa Pueblo Baniva.
 Facebook: IndioLiborioAmazonas',
	18355,1695,'Tue Jan 04 03:40:03 +0000 2011',1822,1695,'es',
	'http://pbs.twimg.com/profile_images/378800000590405932/3757d3d0fbcff44543636a1ae05e193a_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @gobamazonas: Inauguración de Electrificación del sector Zamuro de Quebrada Seca de Puerto Ayacucho con @LiborioGuarulla  #Progreso http…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	233793971
);
INSERT INTO twit_user VALUES (
	'2273437842',
	'Emily',
	'milyelle',
	'Midlands',
	'Single mummy & Carer to one gorgeous little girlie :D Loves makeup, gadgets and fashion. Competitions only account.',
	1379,1052,'Thu Jan 02 19:12:18 +0000 2014',97754,1052,'en',
	'http://pbs.twimg.com/profile_images/525301625557356546/SBPhHOq__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::Want to win the NEW Benefit Advent Calendar before it;;s on sale next week? Follow @AmeliaLiana_ @BenefitUK &amp; RT 😍 http://t.co/JLKCdCkH09::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2273437842
);
INSERT INTO twit_user VALUES (
	'348810732',
	'Torroo Godzzz ',
	'LilNikey_',
	'',
	'Friends Started Switchin, Bitches Started Actin Different But I Can;;t Get Off My Mission, Guess That;;s Just My Ambition - Traviee . Restup Pierre #ball4pierre',
	1344,990,'Fri Aug 05 01:32:13 +0000 2011',13054,990,'en',
	'http://pbs.twimg.com/profile_images/525517241719463936/bq3MNVDB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bdbristow: my ::i dont fuck with you:: list is getting longer everyday',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	348810732
);
INSERT INTO twit_user VALUES (
	'238394146',
	'KING.',
	'_TheSuperAzian',
	'D[M]V',
	'pokemon master in the making and booty connoisseur. #BPGJ #ThankYouBootyPicGawd',
	388,376,'Sat Jan 15 02:24:23 +0000 2011',14885,376,'en',
	'http://pbs.twimg.com/profile_images/521502360095715329/NgrriZhl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'⚽️⚽️ / you a cool dude lol, I always saw you last year but I never spoke. and you got MAAAD shoegame 👌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	238394146
);
INSERT INTO twit_user VALUES (
	'365776250',
	'Patrícia™ ',
	'Patriciareal_',
	'BRASIL',
	'Tem gente que acredita em sorte, eu acredito em Deus.',
	2948,2646,'Thu Sep 01 00:28:38 +0000 2011',22204,2646,'pt',
	'http://pbs.twimg.com/profile_images/525284498960056321/qhfP7m7W_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @br45ilnocorrupt: @DaniloGentili @Carlitos1973 @kimpkat #RIPBrasil @Roxmo @lobaoeletrico @g1 @VEJA comprovando a fraude nas urnas http:/…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	365776250
);
INSERT INTO twit_user VALUES (
	'260582648',
	'brooke',
	'brookerusso',
	'new jersey',
	'rest easy dad all my heart❤️',
	679,614,'Fri Mar 04 04:39:15 +0000 2011',25299,614,'en',
	'http://pbs.twimg.com/profile_images/517509114315165696/idBUgpaO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Makes me so sad that Jim Carrey is old now😞',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	260582648
);
INSERT INTO twit_user VALUES (
	'458919141',
	'Mous',
	'MncNavejas',
	'',
	'Cuando la tiranía es ley la revolución es orden.',
	415,130,'Mon Jan 09 02:56:14 +0000 2012',10347,130,'es',
	'http://pbs.twimg.com/profile_images/511382601849143296/MADAckCF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me hubiera gustado conocerte 10 años antes o 10 años después, pero llegaste a tiempo.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	458919141
);
INSERT INTO twit_user VALUES (
	'93293120',
	'Miguel Raimondi',
	'Raimondix',
	'',
	'Sport Marketing - Stay hungry + Stay foolish #Dreambuilder',
	539,439,'Sun Nov 29 00:48:11 +0000 2009',2322,439,'en',
	'http://pbs.twimg.com/profile_images/497865795637366784/GOeh3Mta_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @carlosjlugo: Players from Licey Tigers and Águilas Cibaeñas gather to pray for lost friend Óscar Taveras. http://t.co/vOjpnEKXHO',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	93293120
);
INSERT INTO twit_user VALUES (
	'632425724',
	'ItsJarBitch ',
	'JrPolocowboy',
	'',
	'fuck it shit happens for a reason',
	238,221,'Wed Jul 11 00:12:33 +0000 2012',8014,221,'en',
	'http://pbs.twimg.com/profile_images/509910146987094016/n23QixIQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_Happy_Gilmore: When you need another inch or two.... https://t.co/QTDtiwoe0B',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	632425724
);
INSERT INTO twit_user VALUES (
	'1377377558',
	'HANNIBAL',
	'Hannibal_kor',
	'',
	'드라마 한니발(NBC Hannibal,2013) 자동대사봇/문의 DM요망/',
	193,220,'Wed Apr 24 15:59:36 +0000 2013',48433,220,'ko',
	'http://pbs.twimg.com/profile_images/3569560903/0aa183fbf61bfefa9934105be4763369_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Which doesn;;t mean she can;;t feel pain.',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1377377558
);
INSERT INTO twit_user VALUES (
	'2454856213',
	'DEALS !!!',
	'HDealsss',
	'USA',
	'USA',
	122,48,'Sun Apr 20 11:29:57 +0000 2014',93465,48,'en',
	'http://pbs.twimg.com/profile_images/487612199716651010/XPryJM9W_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Deals Today #82 : http://t.co/6U89kb5xnu LG VS920 Spectrum Verizon Wireless 4G LTE Android 8MP Camera Cell Phone http://t.co/Ln67ckE1x0',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	2454856213
);
INSERT INTO twit_user VALUES (
	'1146496002',
	'Dianne Hinshaw',
	'DMHINSHAW',
	'',
	'null',
	5,52,'Sun Feb 03 23:27:15 +0000 2013',74,52,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Earth_Pics: Photo of the Day by @fletcheyc  Bruges canals, Belgium.

Check our website http://t.co/maEjSeAftF http://t.co/x4JE9lP6b3',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1146496002
);
INSERT INTO twit_user VALUES (
	'1959302346',
	'J Glen',
	'jimhuntertx',
	'',
	'null',
	96,999,'Sun Oct 13 20:04:10 +0000 2013',12738,999,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Jana_Defi: Remember, if you can;;t see nipple, she didn;;t post nude. #TeamJanaDefi #SexySunday. http://t.co/FHb97pJmwD',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1959302346
);
INSERT INTO twit_user VALUES (
	'862227842',
	'Kaite!',
	'KaiteOGrady',
	'Internet Enthusiast',
	'-I want to leave a mark.- DCHS ~June 22, 2013, August 16, 2014, August 17, 2014~ Thank You',
	488,515,'Thu Oct 04 23:58:35 +0000 2012',7076,515,'en',
	'http://pbs.twimg.com/profile_images/502616468098650112/um7rQDq__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me too http://t.co/FDQudcurWJ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	862227842
);
INSERT INTO twit_user VALUES (
	'779519162',
	'Peyton $',
	'peytonpriceee',
	'',
	'Follow your bliss',
	419,512,'Sat Aug 25 04:09:28 +0000 2012',11956,512,'en',
	'http://pbs.twimg.com/profile_images/526256894688919553/tdEWKE4t_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @G_Eazy: Life is beautiful',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	779519162
);
INSERT INTO twit_user VALUES (
	'97103374',
	'Elizabeth O::Raw',
	'happy_eor',
	'Scotland',
	'Slightly less voluptuous (but only slightly), unassailable scaramouche.',
	74,264,'Wed Dec 16 01:12:01 +0000 2009',4837,264,'en',
	'http://pbs.twimg.com/profile_images/524558212486660097/mH-kfXyQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Never be bored whilst there is a full set of stage make up in the house!  #headwound #faceoff http://t.co/8vymForaLq',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	97103374
);
INSERT INTO twit_user VALUES (
	'1584232608',
	'#Joaquín #Beby',
	'Mamevamoahacelo',
	'Toledo',
	'Nacional-River Plate(ARG)',
	329,218,'Wed Jul 10 23:22:52 +0000 2013',4346,218,'es',
	'http://pbs.twimg.com/profile_images/518932061298491393/WPICVgEu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BolsoHistoria: ¡Y todos de la cabeza, festejando por Nacional!
🎶 Se viene el Bolso campeón, Bolso campeón, Bolso campeón 🎵 http://t.co/…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1584232608
);
INSERT INTO twit_user VALUES (
	'2830388728',
	'Karime Zamudio ',
	'Kari_19_15',
	'México D.F.',
	'null',
	1,25,'Tue Oct 14 20:44:26 +0000 2014',2,25,'es',
	'http://pbs.twimg.com/profile_images/522130717606551552/a-jE9csX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ElChojin_net: Cosas así me encantan...
http://t.co/RyNXacxoj9 http://t.co/4x7cnQUJZ7',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2830388728
);
INSERT INTO twit_user VALUES (
	'2446567202',
	'鹿手袋誠一',
	'shikatebukurose',
	'',
	'null',
	627,541,'Wed Apr 16 04:47:58 +0000 2014',49802,541,'ja',
	'http://pbs.twimg.com/profile_images/456442937346236416/mEr8G8QV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'で複雑な“攻撃パターン”を理解できたのか？ 全国大会出場者を含む「東京バレーボールアカデミー」の 株式会社ﾄﾚﾝﾄﾞｱｸｱ ｢試合で勝てる｣ﾊﾞﾚｰﾎﾞｰﾙ戦術 http://t.co/MEWfs87sZD',
	'<a href=::https://twitter.com/BrookeLiuu:: rel=::nofollow::>BrookeLiuuAPP</a>',
	2446567202
);
INSERT INTO twit_user VALUES (
	'1497897404',
	'江連仁',
	'ezuxile',
	'',
	'東洋学園大学 テニス部 N2',
	301,293,'Mon Jun 10 10:03:26 +0000 2013',1124,293,'ja',
	'http://pbs.twimg.com/profile_images/503883349459365888/CRGF9kN__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'いやーまじ助かった(￣▽￣)電話してもらわなかったら全然まだ寝てた。笑',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1497897404
);
INSERT INTO twit_user VALUES (
	'201235735',
	'yoshinary',
	'yoshinary99',
	'Korea',
	'null',
	610,694,'Mon Oct 11 12:04:26 +0000 2010',68796,694,'ja',
	'http://pbs.twimg.com/profile_images/432495063138975745/3ekiZ2HG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'松田聖子を描きました♪☆究極作品☆♪(^O^)/☆♪ http://t.co/3jnXFcxIRj',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	201235735
);
INSERT INTO twit_user VALUES (
	'952648819',
	'UglyMummy',
	'Uglymummy',
	'',
	'null',
	276,1993,'Sat Nov 17 00:19:13 +0000 2012',24656,1993,'en',
	'http://pbs.twimg.com/profile_images/495919888012025856/434TW-GY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Enter for your chance to WIN a Healthy Shopper Prize Pack on #mmblog. #Giveaway {CAN} http://t.co/gK2t7cZLRs',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	952648819
);
INSERT INTO twit_user VALUES (
	'73770532',
	'Beth carson',
	'Bcarson70',
	'',
	'null',
	2,6,'Sun Sep 13 00:27:17 +0000 2009',4,6,'en',
	'http://pbs.twimg.com/profile_images/500308298944356352/726lQN8Q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@aboutheaven4882 https://t.co/QpoaNutA8v',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	73770532
);
INSERT INTO twit_user VALUES (
	'203437968',
	'美直@┌( ┌ ^o^)┐ﾊﾟﾝﾂｩ…',
	'chipminao',
	'管理人室',
	'すき→聖剣LOM,ときメモGS系,君僕,ｽﾊﾟｲﾗﾙ,ｻｳﾞｧｲｳﾞ,SHERLOCK,排球,ｻｰﾊﾞﾝﾄ×ｻｰﾋﾞｽ,霧雨が降る森etc。主にpixiv活動(http://pixiv.me/minao0825)。基本NL担当の成人。よくぱんつ連呼します。本垢(pkmn)はmikanwebへ。',
	116,115,'Sat Oct 16 08:02:19 +0000 2010',16331,115,'ja',
	'http://pbs.twimg.com/profile_images/525146669382266880/YddEOzSx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'さすがに院までは行けなかったけど…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	203437968
);
INSERT INTO twit_user VALUES (
	'126750025',
	'Travis Tarasenko',
	'TravisTarasenko',
	'michigan',
	'Charlotte Class of 2014      
Lansing Community College!
#H4AC',
	494,437,'Fri Mar 26 21:49:19 +0000 2010',14837,437,'en',
	'http://pbs.twimg.com/profile_images/526412597164142592/_2mBrsqW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'There;;s just not enough time in a day for me to watch as much netflix as I want.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	126750025
);
INSERT INTO twit_user VALUES (
	'257836486',
	'♥︎◡̈きむさきぼむ◡̈♥︎',
	'yesung_bum',
	'',
	'____SUPER JUNIOR__ @shfly3424 / @ryeong9 ____ \_________ My Husband @Himsenkangin _________/ 92____w ✌︎✌︎ daluComb☞@8_wisdoms ✌︎✌︎w_____92',
	308,250,'Sat Feb 26 09:00:11 +0000 2011',20725,250,'en',
	'http://pbs.twimg.com/profile_images/492303158886952961/gDRRfPHa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(. . )Donghae birthday time',
	'<a href=::http://autotweety.net:: rel=::nofollow::>autotweety.net</a>',
	257836486
);
INSERT INTO twit_user VALUES (
	'2560647955',
	'은해의하니',
	'EunHaeee441015',
	'Japan in Chiba',
	'@AllRiseSilver☜MyHERO☞@donghae861015                              SUPERJUNIOR Only  97line@EunHae1525新垢                          저는 은해의 것입니다 은해는 제 운명 사람',
	58,89,'Wed Jun 11 05:23:43 +0000 2014',1675,89,'ja',
	'http://pbs.twimg.com/profile_images/476596429587087360/7ju2XDEz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ donghae861015
영원히 사랑하고 있는 영원히 응원하고 있는 
 이제부터도 영원히 SUPERJUNIOR의 팬 동해의 팬',
	'<a href=::http://autotweety.net:: rel=::nofollow::>autotweety.net</a>',
	2560647955
);
INSERT INTO twit_user VALUES (
	'2642689670',
	'YA_PT*NU',
	'YAAA_23',
	'',
	'LOVE IS BEAUTIFUL LOVE IS PARADISE',
	12,50,'Mon Jul 14 03:36:19 +0000 2014',514,50,'th',
	'http://pbs.twimg.com/profile_images/525823540876963840/udCPcgCQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Rukmakk: 2⃣
อาจจะเป็นแค่คนที่เธอไม่เคยจะหันมอง
อาจจะเป็นแค่คนที่เป็นได้เพียงแค่เบอร์สอง
instagram : oo.ae http://t.co/OIPUWxK3Zv',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2642689670
);
INSERT INTO twit_user VALUES (
	'2486046204',
	'セディエルク/ルー大公＠幻想神域/hoi',
	'Sedielkue_genso',
	'',
	'幻想神域　　将棋　麻雀やってます( ﾟдﾟ ) 最近はhoi2も始めました。マルチはまだやってませぬ。
幻想神域では杖琴72/斧銃77で遊んでおります。最近は琴もやってまする。
よかったらフォローしてね(・∀・)',
	160,141,'Fri May 09 23:31:51 +0000 2014',7073,141,'ja',
	'http://pbs.twimg.com/profile_images/499531390564581376/7davfsSX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@yujidesu0417一回捕まるとつらい',
	'<a href=::http://twtr.jp:: rel=::nofollow::>Twitter for iAppli</a>',
	2486046204
);
INSERT INTO twit_user VALUES (
	'971678888',
	'ケスケ',
	'kaisuka0303',
	'Instagram→kaisuka0303',
	'コスケさんを文字りましたw 百田夏菜子/夢眠ねむ',
	1365,241,'Mon Nov 26 10:01:20 +0000 2012',35222,241,'ja',
	'http://pbs.twimg.com/profile_images/523493214120984576/xjQJWSvi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @hiro2mcz: ついっつーしてたわ（笑）',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	971678888
);
INSERT INTO twit_user VALUES (
	'1932101408',
	'PLEASE MICHAEL? ILY',
	'5sauce_4ever',
	'☻☹☹☹/4 ',
	'☠ My hopes are to high, and my mood is to low ☠',
	3193,1330,'Thu Oct 03 21:19:37 +0000 2013',36758,1330,'en',
	'http://pbs.twimg.com/profile_images/519639875314663424/Qw80qeU7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1932101408
);
INSERT INTO twit_user VALUES (
	'1535992945',
	'niall af !!',
	'sassyfrasniall',
	'',
	'if you aint talking niall, i dont wanna talk',
	3599,2361,'Fri Jun 21 07:33:38 +0000 2013',34913,2361,'en',
	'http://pbs.twimg.com/profile_images/503051942809968640/PtZySAHw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1535992945
);
INSERT INTO twit_user VALUES (
	'412077230',
	'minne',
	'minnecom',
	'',
	'ハンドメイド作品の販売サイトminne（ミンネ）です。素敵な作品のご紹介やミンネのお知らせをお届けします♪嬉しいことにたくさんの方にご利用いただいているため、お返事しきれない場合もあると思いますがご理解ください。なお、ご不明な点はお問い合わせフォームでお受けしています。 https://t.co/TW1DD69LAQ',
	51561,12909,'Mon Nov 14 07:19:48 +0000 2011',12354,12909,'ja',
	'http://pbs.twimg.com/profile_images/458840901226209281/RxmKeTIt_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@desume4 こんにちは、minneです。たくさんの方に見ていただけるきっかけに、きっとなりますのでご応募いただけたらと思います♪ ご不明な点等ございましたら、いつでもお声がけください〜！',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	412077230
);
INSERT INTO twit_user VALUES (
	'2561959044',
	'نّوره .',
	'NouraAljabber',
	'',
	'مثلاً لا مثيل له لو بحثت فوق الدهر دهراً ، | قدر الله علي وصرت جامعيه ، | ينتظرني مستقبلاً جميل بإذن الله ✨.',
	2805,191,'Wed Jun 11 19:40:20 +0000 2014',2245,191,'ar',
	'http://pbs.twimg.com/profile_images/525118140452057088/hj5h51vG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'دلل نفسك وحن عليها ولا تكٌن جالب الهموم إليها فإن مسكك الزمان ب ضر لا تكُن أنت والزمان عليها .',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2561959044
);
INSERT INTO twit_user VALUES (
	'826558044',
	'Nico',
	'UnPutoDice',
	'✈',
	'Si lees esto. ya eres mi novia.',
	61618,55788,'Sun Sep 16 05:41:20 +0000 2012',2357,55788,'es',
	'http://pbs.twimg.com/profile_images/504084358450642944/60CdG3C0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @EI_Acertijo: ::Titanic me enseñó que cuándo de verdad amas a una persona lo mejor que puedes hacer es dejar que se muera ahogada::.',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	826558044
);
INSERT INTO twit_user VALUES (
	'1949279744',
	'本当は教えたくない渋谷のおすすめエステ♪',
	'beautybot07',
	'',
	'渋谷の秘密にしておきたいとっておきのエステサロンをつぶやきます。',
	199,218,'Wed Oct 09 13:31:05 +0000 2013',157951,218,'ja',
	'http://pbs.twimg.com/profile_images/378800000831579659/38991f2e6f376992400164bc8eb15019_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'恵比寿で20年のキャリアをもち、TVや雑誌の取材実績も多数あり、紹介・リピーター続出の人気店！ http://t.co/C3PBUsgIlY 他にもこんなお店があるよ http://t.co/cGWlCfccgG #渋谷',
	'<a href=::http://makebot.sh:: rel=::nofollow::>おすすめサロン</a>',
	1949279744
);
INSERT INTO twit_user VALUES (
	'1666248806',
	'Laurel Livingston',
	'PRbyLaurel',
	'Minneapolis, MN',
	'Mother of 5, wife & Pure Romance Consultant http://www.laurellivingston.pureromance.com',
	81,288,'Mon Aug 12 23:20:16 +0000 2013',35,288,'en',
	'http://pbs.twimg.com/profile_images/378800000342129957/44b000779465afbce48f0d79aa47c66c_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Jlokdhorses @PRbyLaurel You;;re welcome! Had a great time with you ladies!  And yum Pink Cupcake!!',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	1666248806
);
INSERT INTO twit_user VALUES (
	'614074943',
	'ANA',
	'anitabaee',
	'',
	'|Houston,TX |0/5 0/4 |harry threw water at me',
	617,682,'Thu Jun 21 06:26:54 +0000 2012',9449,682,'en',
	'http://pbs.twimg.com/profile_images/525782584878305280/6c1cwn4J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	614074943
);
INSERT INTO twit_user VALUES (
	'2846119078',
	'Blancha Intercalate',
	'blanchag8',
	'',
	'سودة ولي الفخ',
	0,0,'Mon Oct 27 01:13:39 +0000 2014',1,0,'en',
	'http://pbs.twimg.com/profile_images/526542612191539200/Snv9HZze_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'صورة قديمه جدًا للكعبه تستحق',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	2846119078
);
INSERT INTO twit_user VALUES (
	'2868630528',
	'ٱڷﭸژېڔۂ ﺷ͠ﻋ̝̚ٱﻋ̝̚',
	'tiakouwr',
	'قطر',
	'null',
	257,129,'Tue Oct 21 08:37:51 +0000 2014',4962,129,'ar',
	'http://pbs.twimg.com/profile_images/524479765080600576/4AELRQQS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bndro11: للبيع رتويت ومتابعين التفعيل فوري
#اسيا 
#فاضت_دموع_المشجع_الاسترالي
#لو_خيروك_مجرم
#يلا_دورى #رتويت 
http://t.co/FsAcYi2jbz 5…',
	'<a href=::http://www.bandar-alagili1.com:: rel=::nofollow::>الموقع 37سعرد</a>',
	2868630528
);
INSERT INTO twit_user VALUES (
	'2162192845',
	'ballerina 5sos',
	'ashtxnsbatman',
	'',
	'3/4 parody 5sos 0/4 real 5sos',
	129,187,'Tue Oct 29 05:17:23 +0000 2013',699,187,'en',
	'http://pbs.twimg.com/profile_images/521091532213190657/8IO7zD6p_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @yelyahdelrey: not taking any chances. you;;ve been warned. http://t.co/CqCyXrwv1Z',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2162192845
);
INSERT INTO twit_user VALUES (
	'1458315733',
	'trilly nilly',
	'triIlynilly',
	'',
	'yeezy taught me',
	99313,40891,'Sat May 25 23:40:51 +0000 2013',514,40891,'en',
	'http://pbs.twimg.com/profile_images/517140881359794176/bqmnTZWI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ContentOutcast: Strength doesn;;t come from being harden and not breaking down, but strength is when you;;ve broken down and still want t…',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1458315733
);
INSERT INTO twit_user VALUES (
	'936695719',
	'الحساب للبيع 2',
	'9_9_2',
	'',
	'null',
	53,0,'Fri Nov 09 11:35:22 +0000 2012',662120,0,'ar',
	'http://pbs.twimg.com/profile_images/2836187979/104038ae72fe2828f277ce9c3e7d3cab_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'987',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	936695719
);
INSERT INTO twit_user VALUES (
	'592243657',
	'صدقة جارية للمتابعين',
	'Sdqat',
	'⬇⬇رابط حسابنا في الإنستجرام⬇⬇',
	'[‏➊قرآن ➋أحاديث ➌أذكار ➍أدعية ➎درر السلف الصالح ➏محاضرات ➐صور] كل مايخطه الحساب هو صدقةجارية للمتابعين بإذن الله_لاتدري أي حسنةتدخلك الجنة_لاتحرم نفسك من الأجر.',
	107090,27,'Sun May 27 23:52:04 +0000 2012',300666,27,'en',
	'http://pbs.twimg.com/profile_images/378800000638864752/46f8b9ab116dc3cd7c00f96d6c71ef73_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اللهـم من يتابع هذا الحساب يسّر له أمره و فرّج همه وارزقه من حظوظ الدنيا من حيث ﻻ يحتسب واجعل الجنة دار خلد له ولمن أحب ♥ #ريتويت',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	592243657
);
INSERT INTO twit_user VALUES (
	'368351600',
	'Mr. Piroja Le Domun',
	'renato_fleitas',
	'Gugul maps.',
	'ME LA SUDA TODO Y TODOS.',
	604,492,'Mon Sep 05 14:06:17 +0000 2011',10173,492,'es',
	'http://pbs.twimg.com/profile_images/513331776320987136/jboB7m2D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Yayo es un groso.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	368351600
);
INSERT INTO twit_user VALUES (
	'388402927',
	'FcDaretoDream Chile',
	'Fc1D_DTDChile',
	'Chile ',
	'HOLA!!! somos el Fan Club One Direction DaretoDream Chile, tenemos el respaldo de sony music y tenemos mas de 20 sedes a lo largo de chile.',
	4805,1332,'Mon Oct 10 17:53:25 +0000 2011',14065,1332,'es',
	'http://pbs.twimg.com/profile_images/495286454730244096/G1TecSMz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne which? follow me for shit !! for my 16 year gift x208',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	388402927
);
INSERT INTO twit_user VALUES (
	'463039700',
	'luiza',
	'luizabigliardi',
	'Rio Grande do Sul',
	'Não estraga a minha vibe, tanta positividade, tua maldade aqui não cabe.. ⛅️✌️ whatsapp: 053 99089668 snap: luiza_bigliardi',
	614,270,'Fri Jan 13 17:10:24 +0000 2012',9531,270,'pt',
	'http://pbs.twimg.com/profile_images/517674327534477312/mI7Xpgil_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@jeancaldeira97 quando souber me avisa',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	463039700
);
INSERT INTO twit_user VALUES (
	'341649901',
	'Yasmin Lima',
	'YasminLs2',
	'RJ',
	'we just need us',
	613,595,'Sun Jul 24 18:37:32 +0000 2011',24672,595,'pt',
	'http://pbs.twimg.com/profile_images/521876866127634432/zDmCJCIb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @renatamatias07: @YasminLs2 meu oq?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	341649901
);
INSERT INTO twit_user VALUES (
	'527795069',
	'Tia Mccormick',
	'NarryLove4Eva',
	'',
	'1D HARRY❤️LOUIS❤️NIALL❤️LIAM❤️ZAYN',
	368,949,'Sat Mar 17 20:07:19 +0000 2012',8550,949,'en',
	'http://pbs.twimg.com/profile_images/478652179021303808/uW5dw3qw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	527795069
);
INSERT INTO twit_user VALUES (
	'473076311',
	'TY JOHN/ PLS JUSTIN',
	'jbeliebez',
	'',
	'there’s more to his story. At the end of the day it comes down to a young man in a room writing a song. That’s how it all started',
	5423,1392,'Tue Jan 24 16:26:13 +0000 2012',40590,1392,'pt',
	'http://pbs.twimg.com/profile_images/526459726372941825/KVuInzj-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'que dor de cabeça chata #EМABiggestFansJustinBieber',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	473076311
);
INSERT INTO twit_user VALUES (
	'66010018',
	'Christopher',
	'ChristopherAlph',
	'Perú',
	'Estudiante. 20 años.  No me sigas, te arrepentirás. #Yoga #Travel & #CivilEngineering',
	324,273,'Sun Aug 16 00:18:08 +0000 2009',11513,273,'es',
	'http://pbs.twimg.com/profile_images/526261857150316544/j1W6Oi-J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Monochoro_: Mira, en Barranquilla se baila así... ♫ *pisa mal* *se tropieza* *se cae* *se golpea la cabeza contra la cerradura de la pu…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	66010018
);
INSERT INTO twit_user VALUES (
	'27013952',
	'DalushAndTheClick ',
	'JamesCEOSimmons',
	'Philadelphia, Pa',
	'Old School Hip Hop Artist',
	276,615,'Fri Mar 27 14:28:01 +0000 2009',597,615,'en',
	'http://pbs.twimg.com/profile_images/1556590474/51PBbgKS4dL._SL500_AA280__normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'You Can;;t Trust a Big Butt and a Smile ☺

Dalush-Skeezer: http://t.co/by7Pyu5L9A',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	27013952
);
INSERT INTO twit_user VALUES (
	'189738201',
	'Jawad Shereenzada',
	'jawaddy',
	'Jersey',
	'Sophmore at ccm. 18 years old. Snapchat/instagram: jawad_s',
	330,416,'Sun Sep 12 02:46:35 +0000 2010',11220,416,'en',
	'http://pbs.twimg.com/profile_images/462042214743687169/rbuYbIPJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @c_giraldo12: This episode is gunna be serious',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	189738201
);
INSERT INTO twit_user VALUES (
	'1900112190',
	'Total Giving',
	'Total_Giving',
	'',
	'Changing the world of online giving forever. Donation money goes instanty to the charity. 100% Free, No Commission. Fastest growing online giving platform 2014',
	10711,6794,'Tue Sep 24 11:24:26 +0000 2013',81839,6794,'en-gb',
	'http://pbs.twimg.com/profile_images/433920452725993472/XVKL5l4n_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@CFResources, One Good Turn is registered Total Giving donate direct to them http://t.co/jUbA4p8VoH',
	'<a href=::http://www.totalgiving.co.uk:: rel=::nofollow::>Total Giving App</a>',
	1900112190
);
INSERT INTO twit_user VALUES (
	'412606967',
	'Allison Doherty ',
	'DohertyAllison',
	'',
	'Instagram: dohertyallison',
	619,272,'Mon Nov 14 23:00:50 +0000 2011',17837,272,'en',
	'http://pbs.twimg.com/profile_images/526542212054908929/wQJO-Hvo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'wtf is my life',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	412606967
);
INSERT INTO twit_user VALUES (
	'1616185261',
	'1989',
	'zarryfound',
	'aninha ',
	'a solidão me fez zarry girl',
	4108,1117,'Tue Jul 23 21:38:20 +0000 2013',49701,1117,'en',
	'http://pbs.twimg.com/profile_images/524016238062628866/OeAtw2i7_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @majutrindadef: postei uma imagem e vcs ja falam q eu julguei, xinguei, fui preconceituosa cala a boca de vocês, cada um com a sua opini…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1616185261
);
INSERT INTO twit_user VALUES (
	'2480583298',
	'jake',
	'Jvcobjewell',
	'',
	'ya hobby;;s what my passion is',
	233,114,'Sun Apr 13 04:31:56 +0000 2014',12924,114,'en',
	'http://pbs.twimg.com/profile_images/523671350943432705/V0LH8l-s_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @literallyperfff: @Jvcobjewell Also',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2480583298
);
INSERT INTO twit_user VALUES (
	'1273771279',
	'Julia Giordano',
	'JuliaGiordano_',
	'',
	'❁☪☮',
	353,290,'Sun Mar 17 01:46:56 +0000 2013',5872,290,'en',
	'http://pbs.twimg.com/profile_images/523535349583466496/sMacGrH__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @GCoponi: I love target',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1273771279
);
INSERT INTO twit_user VALUES (
	'1391779350',
	'ᗩ ♥',
	'ROO7HA_13',
	'AD .. #WAITTING 27.6.2015',
	'اللهم ارجع روح ( أبراهيم_مطر الجنيبي و مطر_أبراهيم الجنيبي ) إليك راضية مرضيه وادخله في جنتك مع عبادك الصالحين ، اللهم اجعل الفردوس الاعلى مستقرا له',
	387,657,'Tue Apr 30 11:06:51 +0000 2013',19079,657,'en',
	'http://pbs.twimg.com/profile_images/526423587339509760/CU-C26T0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته   http://t.co/c8d32GyCB1',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	1391779350
);
INSERT INTO twit_user VALUES (
	'1308710052',
	'SELEÇÃO ⚽️',
	'Willeye_am',
	'',
	'Sao Sebastiao - SOCCER - Chelsea F.C | R.I.P 2/12/14 | All that I have seen, teaches me to trust God for all I have not..',
	318,345,'Wed Mar 27 21:56:43 +0000 2013',7306,345,'en',
	'http://pbs.twimg.com/profile_images/522194776687644673/cdNy3jNq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@OliveBerg it not working..',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1308710052
);
INSERT INTO twit_user VALUES (
	'2602452589',
	'kafir ♍️',
	'_kafir_',
	'',
	'null',
	193,195,'Thu Jul 03 23:45:21 +0000 2014',2425,195,'en',
	'http://pbs.twimg.com/profile_images/484847375853559808/ZLvAHrQ7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Sometimes love can come and pass you bye 👐',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2602452589
);
INSERT INTO twit_user VALUES (
	'387408991',
	'Solita Sandoval',
	'soosandoval',
	'Córdoba, Argentina',
	'Locutora Nacional. Columnista de espectáculos en #UnGranDía de 9 a 13 horas por 103.5 FM. Community Manager de @ContinentalCba',
	1223,1231,'Sun Oct 09 00:55:12 +0000 2011',24366,1231,'es',
	'http://pbs.twimg.com/profile_images/501549548532400129/kkD0MlQj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@PatitaBel no les deseo el mal..... solo espero que por obra y gracia del Señor, les pase :P',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	387408991
);
INSERT INTO twit_user VALUES (
	'1244238283',
	'رتاج',
	'2009_retaj',
	'',
	'ماني من للي يمًّر بحياتك مرور عادي/ علّم عيونك تخلي لشوفتي قيمه //الخاص مهمل//',
	1860,1557,'Tue Mar 05 17:29:34 +0000 2013',4136,1557,'ar',
	'http://pbs.twimg.com/profile_images/509425553711964160/JVSmP3x6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @aboodMHB1: @2009_retaj مشكلتي مااعرف اشخص الوضع لين اشوفها ع الطبيعة 😂😂😂

بس اتوقع والعلم عند الله يبيلها طبيب شعبي علشان يكويها بذنها✌😜',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1244238283
);
INSERT INTO twit_user VALUES (
	'2474613144',
	'♚ Ni Ni ♚',
	'QueenNiNinicole',
	'P-town',
	'⋈͓ T͓h͓i͓s͓ a͓i͓n͓t͓ n͓o͓t͓h͓i͓n͓,͓ B͓u͓t͓ i͓t͓s͓ a͓l͓l͓ t͓h͓a͓t͓ i͓ n͓e͓e͓d͓.͓⋈͓',
	118,177,'Fri May 02 22:37:07 +0000 2014',757,177,'en',
	'http://pbs.twimg.com/profile_images/522453488635506688/4Go2fkp__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SteveStfler: Now this should be ::Relationship Goals::. Being successful together, not buying matching Jordan;;s http://t.co/v0s1jf4lpY',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2474613144
);
INSERT INTO twit_user VALUES (
	'291309497',
	'mel /pls shawn',
	'biebxrdestiny',
	'justin follows',
	'Empty yourself and let the universe fill you. Jai/5 2/12',
	5624,3720,'Sun May 01 19:50:35 +0000 2011',23028,3720,'en',
	'http://pbs.twimg.com/profile_images/526157648886915073/ZzBCb_SO_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	291309497
);
INSERT INTO twit_user VALUES (
	'995829523',
	'Beat 94.7 FM ',
	'Beat947fm',
	'Carolinas ',
	'Charlotte;;s #1 Station Banging Hits From The Indies To The Majors 704-325-9901 for Requests.May submit 1 clean,radio single: radiomusic@myblockradio.net',
	2149,1121,'Fri Dec 07 20:37:45 +0000 2012',129419,1121,'en',
	'http://pbs.twimg.com/profile_images/378800000609834858/ec5598143f18c61bd2afcb9e6cc49560_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Now Playing on Mybeat 94.7fm - - - Lenco_30_EvergySavers.mp3 - Lenco_30_EvergySavers.mp3 ---- logon to listen http://t.co/mCYTj7Pqec',
	'<a href=::http://www.sam-song.info:: rel=::nofollow::>SAM Broadcaster Song Info</a>',
	995829523
);
INSERT INTO twit_user VALUES (
	'2214828817',
	'Lor gator ',
	'chargedup_gator',
	'',
	'E.H boy ⚠',
	355,490,'Mon Nov 25 23:27:50 +0000 2013',8075,490,'en',
	'http://pbs.twimg.com/profile_images/523953380214181888/m0pu7DXI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @aMARI_canFlagg: 🔥🔥- I see you can speak now 😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2214828817
);
INSERT INTO twit_user VALUES (
	'1110741942',
	'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
	'Lord_THC',
	'',
	'null',
	12524,5864,'Tue Jan 22 06:17:40 +0000 2013',95,5864,'en',
	'http://pbs.twimg.com/profile_images/522080224272744448/ASi2t_vN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @etaks5evil: The night is my only friend.',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1110741942
);
INSERT INTO twit_user VALUES (
	'510606221',
	'Red head ❤️',
	'Imperfect_iamm',
	'',
	'♎️ , A.Jackson , money gang , the strongest always survive,',
	707,616,'Thu Mar 01 17:59:10 +0000 2012',26447,616,'en',
	'http://pbs.twimg.com/profile_images/522043827318972416/05_Q_Pvl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @prettypinup_sdp: she said ::whats ya type?:: , i said ::i like what i like.:: 😎',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	510606221
);
INSERT INTO twit_user VALUES (
	'394404815',
	'Ray ❤️',
	'_shvdy',
	'Minding mine ✋',
	' Est. Jan. 13, 1998. FlyHighKriss ✊ Everyday isnt promised',
	727,723,'Thu Oct 20 01:06:30 +0000 2011',19783,723,'en',
	'http://pbs.twimg.com/profile_images/526460689616207872/3Dbi0V0g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @beautyANDbooks_: Ion be having nobody to ft, text, or talk otp with!😂😕 male wise... Idc tho💁',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	394404815
);
INSERT INTO twit_user VALUES (
	'22557393',
	'Patrick',
	'NittanyPC24',
	'Rochester, NY',
	'Your mom thinks I;;m the best. YEAH JEETS! YEAH JEETS! Buffalo Bills 4 Life ~ Phish 4 the soul',
	122,644,'Tue Mar 03 00:13:42 +0000 2009',4368,644,'en',
	'http://pbs.twimg.com/profile_images/500112928985853952/FrWWCv38_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@JoeBuscaglia shhhhh',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	22557393
);
INSERT INTO twit_user VALUES (
	'2318420106',
	'Marisol n-n/',
	'mary3_AMNESIA',
	'2014 ',
	'anime/música/libros/chocolate/manga/hadas/unicornios-mi vida,mi mundo 3 mi padre: @shizuoWajima :3',
	1273,1372,'Thu Jan 30 07:03:07 +0000 2014',2789,1372,'es',
	'http://pbs.twimg.com/profile_images/525389166066933760/bS7e_dug_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/PVB3b7tHiN',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2318420106
);
INSERT INTO twit_user VALUES (
	'2840999638',
	'إسامة يوسف الطاحوس',
	'urodaper',
	'',
	'نَشْتَـآقُ لَهُمْ ؛ لأنْ جَمَآلُ أَيَامِهُمْ أَقوَىَ مِنَ النِسيَآنْ ♥:)',
	0,15,'Wed Oct 22 07:12:59 +0000 2014',213,15,'no',
	'http://pbs.twimg.com/profile_images/525770716780584961/Q2vnchQM_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mastafa302: @DE3DLINE فزعتك أتعرض لحملة سبام جزاك الله خير',
	'<a href=::http://www.retwet.cc:: rel=::nofollow::>retwet_eee</a>',
	2840999638
);
INSERT INTO twit_user VALUES (
	'1170557077',
	'Tay',
	'_taycarvalho_',
	'',
	'Woah, just take it easy man',
	218,184,'Tue Feb 12 01:33:11 +0000 2013',1917,184,'en',
	'http://pbs.twimg.com/profile_images/515691081271623680/EgaH9z2k_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MeaganAmbar_ love you so much Mayg 💞',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1170557077
);
INSERT INTO twit_user VALUES (
	'166166198',
	'リック',
	'rickdeas',
	'福岡県北九州市',
	'捨て垢です！',
	3,9,'Tue Jul 13 14:04:26 +0000 2010',2220,9,'ja',
	'http://pbs.twimg.com/profile_images/477784265153712129/D4oiNyEa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@arufa03301 パクツイだよな！ドンコリするな！ http://t.co/8OLz2Ohyg1',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	166166198
);
INSERT INTO twit_user VALUES (
	'187339571',
	'Bilbo Bolsón',
	'AchuesFriki',
	'Invernalia',
	'Me gustan los zombies comiendo melocotones en la playa',
	244,414,'Sun Sep 05 23:36:29 +0000 2010',31942,414,'es',
	'http://pbs.twimg.com/profile_images/497909016136544257/_2VlHkmn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mientras compraba cds sonaba The Hives y el que atendía cantaba y todo fue 😍😍😍 manijañ',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	187339571
);
INSERT INTO twit_user VALUES (
	'295450157',
	'Olivia Grabmayer',
	'OliviaGrabmayer',
	'',
	'null',
	456,404,'Mon May 09 01:55:09 +0000 2011',5642,404,'en',
	'http://pbs.twimg.com/profile_images/517108472786485248/2tY7lSUY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Hey @WalkingDead_AMC was that a @ABCFpll reference? Lol 😝',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	295450157
);
INSERT INTO twit_user VALUES (
	'2507252760',
	'諏訪世弥',
	'hawai114',
	'',
	'誰でも気軽にフォローしてください！ 江戸川
将来の夢は子供とキャッチボールをする事！',
	256,236,'Mon May 19 12:09:37 +0000 2014',1890,236,'ja',
	'http://pbs.twimg.com/profile_images/525848683535802369/bjUt8BKn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@k46901 これで許して❤️ http://t.co/2dQko2XK09',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2507252760
);
INSERT INTO twit_user VALUES (
	'29739488',
	'Adele',
	'van_palhacita',
	'São Paulo - Brazil',
	'Ueh vcs sao meus aliados porra bucet hahahhahaha o que vcs Mais querem se mim? Meu corpo ? Minha alma , eu me rendooooooooooo',
	1183,415,'Wed Apr 08 15:27:05 +0000 2009',45545,415,'pt',
	'http://pbs.twimg.com/profile_images/520584826873982976/6LcEIhIO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@rafahaha Nelly ❤️ Saudades show dela ❤️',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	29739488
);
INSERT INTO twit_user VALUES (
	'1740435973',
	'Grace Weber',
	'Iamgraciegrace',
	'San Francisco',
	'I live for snow',
	69,126,'Sat Sep 07 04:17:08 +0000 2013',547,126,'en',
	'http://pbs.twimg.com/profile_images/512835807850143744/xTX05FWB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLB: We mourn the passing of Cardinals outfielder Oscar Taveras. http://t.co/fCuSK3nB9n http://t.co/0USk5vzaXF',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1740435973
);
INSERT INTO twit_user VALUES (
	'840379219',
	'Danielle',
	'NevsWife',
	'9/4/14',
	'first person to get their book signed at nev schulman;;s first book signing ever aka me hey',
	3397,3342,'Sat Sep 22 20:11:30 +0000 2012',82398,3342,'en',
	'http://pbs.twimg.com/profile_images/526176234490036224/zA1w49ci_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'this is what my entire life feels like http://t.co/4q33Y8R2sm',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	840379219
);
INSERT INTO twit_user VALUES (
	'1727845160',
	'Jasa Tambah Follower',
	'TingkatFoll1',
	'PIN 2855E9B5 / 081996362500',
	'Solusi untuk popularitas dan bisnis anda | Kami menyediakan Follower Aktif asli INDONESIA | Bukti ? Cek Favorites | Iklan berkala di 8 akun',
	33607,8393,'Wed Sep 04 06:48:14 +0000 2013',54489,8393,'id',
	'http://pbs.twimg.com/profile_images/443915680434229248/jUIJ9f4V_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Perlu extra follower twitter?kamu berada ditempat yg tepat! Segera tambahkan followers &amp; tingkatkan popularitasmu ditwitter.PIN : 2855E9B5',
	'<a href=::http://www.grabinbox.com:: rel=::nofollow::>GrabInbox</a>',
	1727845160
);
INSERT INTO twit_user VALUES (
	'2847435384',
	'学校で共感しよう bot',
	'gakkou13',
	'',
	'学校でのあるあるのツイートをあげてくので共感があったのならばRTお願いします。',
	8,38,'Wed Oct 08 14:03:30 +0000 2014',763,38,'ja',
	'http://pbs.twimg.com/profile_images/519853710264918016/X690xSBQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'下校中じゃんけんに負けたら荷物持ち',
	'<a href=::https://twitter.com/d09797877:: rel=::nofollow::>アプリ７</a>',
	2847435384
);
INSERT INTO twit_user VALUES (
	'946620913',
	'Jacob aka Dashcams',
	'Gif_ifunny',
	'Houston, Texas',
	'ifunny usernames: Triforce and Dashcams | Xbox gamertag: Profexed | kik: _Big_Brother_',
	544,273,'Tue Nov 13 22:15:05 +0000 2012',5910,273,'en',
	'http://pbs.twimg.com/profile_images/520812291722584064/8UMCvH87_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'If you;;re talking about TWD right now and spoiling it, I might forget to unmute you.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	946620913
);
INSERT INTO twit_user VALUES (
	'315811787',
	'True Facts',
	'amusingfactts',
	'Omaha',
	'Follow me, learn strange but true facts about life',
	1986,2164,'Sun Jun 12 13:51:28 +0000 2011',3470,2164,'en',
	'http://pbs.twimg.com/profile_images/497876878200303616/Wg48Um7i_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'World;;s Sexiest Criminal Charged With 114 Counts http://t.co/qbqh5JiQOH',
	'<a href=::https://twitter.com:: rel=::nofollow::>amusingfactts</a>',
	315811787
);
INSERT INTO twit_user VALUES (
	'2446769983',
	'海苔巻き大好き＠こうた',
	'srq9kfxb0t3xq',
	'',
	'海苔巻きとおいなりさんが大好きです',
	0,10,'Wed Apr 16 07:49:50 +0000 2014',5554,10,'ja',
	'http://pbs.twimg.com/profile_images/456339164049338368/UaWs-kuj_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'『ぬちまーすクッキングボトル150g(ぬちマース・ヌチマース)沖縄の海塩(マース)ぬちまーすクッキ...』を見る [楽天] http://t.co/uvojmoeCg6',
	'<a href=::http://changerion.info/j/oE02bzur:: rel=::nofollow::>ツイッター　シャークパンサー</a>',
	2446769983
);
INSERT INTO twit_user VALUES (
	'276459804',
	'あく∠(´♥ω♥｀)／りん',
	'ackrie05',
	'中部地方在住/PSO2:ship5 ',
	'正しいHNは椎谷亞繰(しいやあくり)と申すます。仕事・趣味・愚痴など呟いてます。たまに荒ぶります。PSO2してます。たまに落書きとかアップしてます。アイコンはアトさんに頂きました！感謝！！',
	718,420,'Sun Apr 03 11:55:58 +0000 2011',27200,420,'ja',
	'http://pbs.twimg.com/profile_images/525311996233666561/e2v8vluK_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@pso2_ato まぁデッドスペースのはべつにチョッと落ちるだけでなにもないんですけど、故障してぎぎぃぃぃぃぃって落ちるかんじなのかなとw',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	276459804
);
INSERT INTO twit_user VALUES (
	'1694465796',
	'Sk8er Boi',
	'Solo_Wing_Pixy_',
	'キャラ名　GraceMeria',
	'ドラゴンネスト ネル鯖で活動中のレンシア しょしんしゃ（） ʎɓoloǝpI ǝsɹǝʌǝᴚ',
	76,111,'Fri Aug 23 18:20:49 +0000 2013',12601,111,'ja',
	'http://pbs.twimg.com/profile_images/506225437593190400/DI5-7Sk8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'圧倒的爽やかなTL',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1694465796
);
INSERT INTO twit_user VALUES (
	'1302623503',
	'TOKI',
	'tokie_gawo',
	'',
	'LIVE??/singer song/ohhoo/mined ☆',
	23,25,'Tue Mar 26 06:01:24 +0000 2013',18925,25,'ja',
	'http://pbs.twimg.com/profile_images/378800000213515563/0f4fccbe344d1f6ec5ca807457081508_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'生き残ってるなあw',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1302623503
);
INSERT INTO twit_user VALUES (
	'824915114',
	'georgia',
	'harryfags',
	'',
	'whitney',
	5898,642,'Sat Sep 15 09:31:39 +0000 2012',61131,642,'en',
	'http://pbs.twimg.com/profile_images/526217401885392896/hB8bzsMT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne you;;re cute',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	824915114
);
INSERT INTO twit_user VALUES (
	'223115347',
	'Ahmad يقول',
	'AhmadYGOL',
	'kuwait / الخالدية',
	'ما أبوق تويتات ، هذا اهم شي تعرفه عنّي , اي منشن مو محترم بلوك وهالشي عشانك انته عشان لايقولون عنك مو محترم...  انفولو احسن من انك تناقشني  ..المفضله من تأليفي',
	8663,126,'Sun Dec 05 12:49:03 +0000 2010',49886,126,'en',
	'http://pbs.twimg.com/profile_images/509250610705620992/x5UnA-Vs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'الوضع ميّت؟',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	223115347
);
INSERT INTO twit_user VALUES (
	'1925572608',
	'Manny Lopez',
	'YNR__Manny',
	'Los Angeles, Ca',
	'17 SFHS Senior',
	171,125,'Wed Oct 02 04:19:37 +0000 2013',4771,125,'en',
	'http://pbs.twimg.com/profile_images/428691206726361088/8dPKsvR4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @almasita__: My room can not stay clean for more than a week 😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1925572608
);
INSERT INTO twit_user VALUES (
	'126439582',
	'Fleetwood',
	'FleetwoodSC',
	'',
	'Artist, Student 
South Carolina #864
IG: FleetwoodSC
#SouthernLyricism
For booking Fleet864@yahoo.com',
	5031,4785,'Thu Mar 25 22:00:14 +0000 2010',140200,4785,'en',
	'http://pbs.twimg.com/profile_images/522904617571852288/kQdt4NJd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AquariusQuotez: #Aquarius love to get the last word in',
	'<a href=::http://www.echofon.com/:: rel=::nofollow::>Echofon</a>',
	126439582
);
INSERT INTO twit_user VALUES (
	'599071560',
	'S.H.E.P.E.T ™',
	'nayanasyekin',
	'Kelantan ---- Serdang',
	'Laugh and angry at the same time. You !',
	370,529,'Mon Jun 04 06:24:32 +0000 2012',45271,529,'en',
	'http://pbs.twimg.com/profile_images/526351366029983744/aB_1p2jO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Gemorning 😄',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	599071560
);
INSERT INTO twit_user VALUES (
	'2718762098',
	'Deja vu',
	'live_love_hurt',
	'universe ',
	'This page give u the best quote about life and love and motivates you :) ;)',
	22447,18670,'Sat Aug 09 06:37:45 +0000 2014',925,18670,'en',
	'http://pbs.twimg.com/profile_images/509756334707703808/vbTo4eI1_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Innocent_daddy: NEW SUPPLEMENT FOR  PRE WORKOUT SHAKES http://t.co/Qq7WaL77oO',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2718762098
);
INSERT INTO twit_user VALUES (
	'811042807',
	'Pakman Jitt ',
	'PakmanJitt',
	'FLORIDA',
	'Recording Artist/CEO For booking contact ocbemanagement@gmail 3862155906 | http://PakmanJitt.com | http://livemixtap.es/jn9 | http://youtube.com/user/PAKMANJITT',
	7023,967,'Sat Sep 08 14:33:10 +0000 2012',9995,967,'en',
	'http://pbs.twimg.com/profile_images/516222724424093696/ueZ9yZl3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@PakmanJitt - #BSAT (full mixtape) http://t.co/3XyVJF3Vs2  via @YouTube',
	'<a href=::http://www.sweetertweet.com:: rel=::nofollow::>SweeterTweet</a>',
	811042807
);
INSERT INTO twit_user VALUES (
	'415110746',
	'きんモザ、好きデース！',
	'kinmozaSuki',
	'',
	'主に画像などをツイートしてるのデース！ファンならばファンでなくてもRT＆フォローするのデース！！',
	1380,1564,'Thu Nov 17 22:37:15 +0000 2011',592,1564,'ja',
	'http://pbs.twimg.com/profile_images/518047955987623938/2IKAbU_P_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @denkiSuki: デンギ街の本屋さんbot
第1話 ナイトメア　ビフォア　カルナバル他

#デンキ街の本屋さん好きな人RT
#見た人RT
#denkiSuki http://t.co/REvi6RijLv',
	'<a href=::https://twitter.com/kinmozaSuki:: rel=::nofollow::>kinmozaSuki</a>',
	415110746
);
INSERT INTO twit_user VALUES (
	'94000576',
	'Ashley Greever',
	'AshweeChaos',
	'',
	'null',
	65,84,'Wed Dec 02 02:22:22 +0000 2009',1771,84,'en',
	'http://pbs.twimg.com/profile_images/456500567326474242/aXZ5JNmN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Plainredpanda  yeeee homie i was straight. hahaha',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	94000576
);
INSERT INTO twit_user VALUES (
	'2848088598',
	'えぇっ！何これ',
	'wow_ee_',
	'',
	'思わず見て、ツッコミたくなる画像を集めています。後から笑いがきても責任は負いませんww　気に入ったらRT&ﾌｫﾛｰよろしくお願いします。',
	1124,1974,'Thu Oct 09 02:16:16 +0000 2014',50,1974,'ja',
	'http://pbs.twimg.com/profile_images/520035263230132225/63t7oRYU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ero2jigazo: エロゲーやりたい放題ｗｗ
この多さガチでヤバくねぇ

⇒ http://t.co/gyFyAn52Hp

フルボイスでぁんぁん
ヌルヌルすぎるｗｗ
喘ぎ声エロすぎワロタｗｗ http://t.co/PdEi1HJjEn',
	'<a href=::https://twitter.com/akudafw_:: rel=::nofollow::>自然界には</a>',
	2848088598
);
INSERT INTO twit_user VALUES (
	'2319754292',
	'Uriel ',
	'Negroamigo11',
	'Old line state',
	'null',
	342,322,'Thu Jan 30 22:54:09 +0000 2014',5186,322,'en',
	'http://pbs.twimg.com/profile_images/506974526698430464/MRgMKxXx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Home alone great movie 5/5 would recommend',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2319754292
);
INSERT INTO twit_user VALUES (
	'410725505',
	'Sick Girl',
	'Noelianieto10',
	'Viviendo con el Tito Quentin ',
	'Bella, exótica, altamente sexual y, sin embargo, totalmente inaccesible para cualquiera de vosotros.',
	930,911,'Sat Nov 12 13:47:25 +0000 2011',16225,911,'es',
	'http://pbs.twimg.com/profile_images/521128266649042944/AuGIOQIj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Los ::Para Siempre:: nunca son para siempre.
Buenas noches!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	410725505
);
INSERT INTO twit_user VALUES (
	'107176673',
	'maria',
	'nandadidier',
	'Recife - PE',
	'viciada em vírgulas, poesia, beatles, mpb, teatro, e em um montão de coisa! Ah, e sérios problemas com o tempo.',
	572,224,'Thu Jan 21 19:25:35 +0000 2010',15160,224,'pt',
	'http://pbs.twimg.com/profile_images/526538037170556928/7bBfSnTt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Não é pq uma pessoa não quer o PT que ela odeia pobre, não quer estudar com pobre! Vcs que tão achando a burguesia uma doença vão pra pqp',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	107176673
);
INSERT INTO twit_user VALUES (
	'1304976235',
	'هيّف;ThisIsLove.',
	'HRW___',
	'',
	'‏‏قُوة الشخصية عمرها ماتدرجتّ تحت قذارة اللسان ☕️.',
	366,196,'Tue Mar 26 17:21:24 +0000 2013',19095,196,'ar',
	'http://pbs.twimg.com/profile_images/525340512874557440/oeCOYwEd_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(أيشركون ما لا يخلق شيئا وهم يخلقون) [الأعراف:191]
http://t.co/5YXhTN1fva
 #تطبيق_قرآنى',
	'<a href=::http://qurani.tv:: rel=::nofollow::>تطبيق قرآني</a>',
	1304976235
);
INSERT INTO twit_user VALUES (
	'1576066297',
	'Lisa ✌',
	'eupquena',
	'Timóteo-MG',
	'♥♥♥Cruzeiro ♥♥♥',
	384,385,'Sun Jul 07 21:04:03 +0000 2013',11457,385,'pt',
	'http://pbs.twimg.com/profile_images/525654214144700417/e3NhDFyI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Parabéns',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1576066297
);
INSERT INTO twit_user VALUES (
	'636876684',
	'D.I.G.',
	'CierraB__',
	'31061 ✈️ 30833',
	'i just want some fire head.',
	915,884,'Mon Jul 16 08:06:24 +0000 2012',30225,884,'en',
	'http://pbs.twimg.com/profile_images/525735602122395649/UEZa0BR2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Tyhenry22 nah I;;m finna ko kus Tasha over here, she finna put me to sleep😴',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	636876684
);
INSERT INTO twit_user VALUES (
	'634288485',
	'♣',
	'micafigueroa5',
	'',
	'wsp 3513886587, seguime y te sigo',
	761,645,'Fri Jul 13 01:59:06 +0000 2012',22523,645,'es',
	'http://pbs.twimg.com/profile_images/526165387226775552/cJ4anQku_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'le cambie el cargador a mi tia c:',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	634288485
);
INSERT INTO twit_user VALUES (
	'177354377',
	'Yasiboop',
	'Yasitaht',
	'',
	'Free as a bird',
	129,510,'Wed Aug 11 22:47:54 +0000 2010',2919,510,'es',
	'http://pbs.twimg.com/profile_images/521856406849589248/hzTgz3MS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'En resumidas cuentas la tv de hoy es una pija',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	177354377
);
INSERT INTO twit_user VALUES (
	'157417318',
	'franklin vargas para',
	'franklin0129',
	'Bucaramanga , Colombiaaa',
	'null',
	42,353,'Sat Jun 19 19:06:33 +0000 2010',1633,353,'es',
	'http://pbs.twimg.com/profile_images/510942946926288897/vOAvkzX9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @liliantintori: Todos los días a las 8pm #BarrotazoXLaLibertad de Venezuela #unidadvenezuela',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	157417318
);
INSERT INTO twit_user VALUES (
	'2184102622',
	'.',
	'starfruitdallas',
	'nash/12 + sammy ♡',
	'null',
	1019,406,'Sun Nov 17 04:48:26 +0000 2013',6474,406,'en',
	'http://pbs.twimg.com/profile_images/526404647163273216/DC8n_Swn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MENDESVARSITY can u DM me to DILLON please',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2184102622
);
INSERT INTO twit_user VALUES (
	'1873830138',
	'ĸənzιə мaѕтərѕ',
	'kenziiee58',
	'',
	'softball is BÆ',
	178,257,'Tue Sep 17 02:46:32 +0000 2013',844,257,'en',
	'http://pbs.twimg.com/profile_images/518828437310406656/_AQ5ygvo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MarcoGonzales_: Absolutely heart broken right now...',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1873830138
);
INSERT INTO twit_user VALUES (
	'815751403',
	'manu',
	'slownaja',
	'middle of nowhere',
	'#jeler4tos',
	2729,459,'Mon Sep 10 18:16:19 +0000 2012',51202,459,'pt',
	'http://pbs.twimg.com/profile_images/526052061494792193/ipewEVua_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BIEBERBESTlDOL: @conexaobiebers a comida preferida do justin #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	815751403
);
INSERT INTO twit_user VALUES (
	'1699292341',
	'Cappuccino',
	'chino928rabbit',
	'',
	'アニメと音楽が大好き(*´ω｀*)ギター、作曲などやってます！最近ボカロも使うようになりました(*´∀｀*)自分と趣味の合う方など気軽に絡んでください！フォロバは基本します(´∀｀)皆さんよろしくです(っ’ヮ’c)',
	704,773,'Sun Aug 25 13:53:12 +0000 2013',2597,773,'ja',
	'http://pbs.twimg.com/profile_images/484847647518236672/EbvaxZrU_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @a62715079588: 凛ちゃんの誕生日までに111RT 目指します！協力お願いします！
#星空凛生誕祭 
#星空凛生誕祭2014
#凛ちゃん好きな人RT
#ラブライバーはRT 
#RTした人全員フォローする http://t.co/cKy6FxBIay::',
	'<a href=::https://clw.nu/app/ms/:: rel=::nofollow::>MoonStrike</a>',
	1699292341
);
INSERT INTO twit_user VALUES (
	'151532829',
	'Jahan',
	'Jahan_The_Shah',
	'18 - Bristol/Sheffield - Iran',
	'NoHomosapien #BigDoolGang',
	601,168,'Thu Jun 03 16:31:52 +0000 2010',53172,168,'en',
	'http://pbs.twimg.com/profile_images/483989055232032768/qpNVKsja_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @YoungKashMoney: ::Nice chromatography, where;;d you get it from ma?::

::21::

::Bruh::',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	151532829
);
INSERT INTO twit_user VALUES (
	'1836546066',
	'Briana',
	'biadevaia2001',
	'',
	'i actually met Shane Dawson and Drew Monson be jelly',
	181,340,'Mon Sep 09 00:19:11 +0000 2013',5147,340,'en',
	'http://pbs.twimg.com/profile_images/515656785722880000/r4GkiPkR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1836546066
);
INSERT INTO twit_user VALUES (
	'1121377808',
	'AqilαHαrsono♔',
	'AqilaaHarsono',
	'Madiun,JawaTimur,Indonesia',
	'My princeblueboy! @AqsaRajasa♡ You love the first and last:;;) You everything to me!',
	5119,600,'Sat Jan 26 08:34:48 +0000 2013',24220,600,'id',
	'http://pbs.twimg.com/profile_images/519040023895633920/dW_Kprz4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PrillyFan: RT @PerillyBot: Hbd bang Ali @aliando26 @alysyarief @dasiando26 @PrillyFan @PrillyBie ;) ♥ http://t.co/Q9Urphh8NN',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1121377808
);
INSERT INTO twit_user VALUES (
	'198021696',
	'Martha L. Fariño.',
	'marthafh26',
	'Canalete, Córdoba - Colombia.',
	'Azul♥ Y aquí estoy, pero mi alma está allá.',
	332,373,'Sun Oct 03 03:40:44 +0000 2010',11429,373,'es',
	'http://pbs.twimg.com/profile_images/517897002055909377/PTXLX7P0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@JuanDaaVilla of course!! 😎',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	198021696
);
INSERT INTO twit_user VALUES (
	'2751022146',
	'Willow卌',
	'vocalhemmings_',
	'',
	'American Idiot✌️ Pfft/4 Oh ya I;;m into guitarists',
	1250,1348,'Thu Aug 21 02:14:45 +0000 2014',3873,1348,'en',
	'http://pbs.twimg.com/profile_images/526193356872105984/lrolmKWv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2751022146
);
INSERT INTO twit_user VALUES (
	'979532550',
	'Vanessa Blais',
	'VaneBlais',
	'from Quebec',
	'library technician, crazy cat lady, with a bit of fangirl! :P',
	24,101,'Fri Nov 30 01:51:25 +0000 2012',532,101,'fr',
	'http://pbs.twimg.com/profile_images/517134917390848000/6baixtak_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@sweetrorry @Real_Liam_Payne GROOOOT',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	979532550
);
INSERT INTO twit_user VALUES (
	'97390798',
	'Billy Jack',
	'sanjoko',
	'Pasar Minggu Jakarta Selatan',
	'Always Support @FatinSL PIN:25C6B404 Contact Person: 082122329755',
	169,137,'Thu Dec 17 07:37:41 +0000 2009',7470,137,'en',
	'http://pbs.twimg.com/profile_images/479981252250849280/Njh2g9r0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'wow @mr_iklan Akun Twitter Kamu Lagi dibicarain ama Orang-Orang !
buruan cek  http://t.co/npOQBdF2sB

tapi kok Bisa ya?',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	97390798
);
INSERT INTO twit_user VALUES (
	'2499220479',
	' صالح الحميدان',
	'pugdbinco',
	'',
	'null',
	0,8,'Mon Apr 21 09:08:25 +0000 2014',725,8,'en',
	'http://pbs.twimg.com/profile_images/474364237016358912/wuNlBFNK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @almatjr: 1 ➊هاشتاغ نشط #كتاب_قرأته_أكثر_من_مرة ➋ الأكثر انتشاراً @almatjr➌اعلان مجاني http://t.co/Fj0rfe4GXN ➍ بيع متابعين☻⤵ http://t.c…',
	'<a href=::http://www.d33n.com/:: rel=::nofollow::>daan test</a>',
	2499220479
);
INSERT INTO twit_user VALUES (
	'601207683',
	'Jay',
	'illadvisedjay',
	'Miami',
	'Perfection is not attainable, but if we chase perfection we can catch excellence.
Vince Lombardi',
	41,67,'Wed Jun 06 17:06:07 +0000 2012',2743,67,'en',
	'http://pbs.twimg.com/profile_images/378800000712130150/d72c9d45370ccb0c309cf450cf4fc9da_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'They better check Bob for bites',
	'<a href=::http://www.tweetcaster.com:: rel=::nofollow::>TweetCaster for Android</a>',
	601207683
);
INSERT INTO twit_user VALUES (
	'199489226',
	'Shamar Jones',
	'Shamarjones43',
	'',
	'James 4:7 I;;m saved by a gracious God!An I am a huge SPORTS FAN!!! Car Fanatic',
	749,677,'Thu Oct 07 00:29:15 +0000 2010',39678,677,'en',
	'http://pbs.twimg.com/profile_images/526445722456293376/uF10NasV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Packers or saints ?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	199489226
);
INSERT INTO twit_user VALUES (
	'2590227775',
	'Niqui ',
	'Niicole_94',
	'Arg, Bs.As, Berazategui',
	'Bailar y vivir la misma emoción #FolkloreMiPasion. Amor a mi familiaღ, #LuisFonsi el amor de mi vida. 18-11-11/10-10-14 ♥',
	180,145,'Thu Jun 26 20:13:27 +0000 2014',2026,145,'es',
	'http://pbs.twimg.com/profile_images/524699649345847296/HzRHlmyw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FonsiNews: ::@Telemundo_TV: ¡Que guapo! @LuisFonsi listo para que de comienzo la segunda gala de @ElArtistaTV. @Telemundo #YSEA http://t…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2590227775
);
INSERT INTO twit_user VALUES (
	'2854442870',
	'شيخة الـعـوب',
	'471Q88',
	'دار جآبر',
	'‏الله يَرويِنْآ فَرْح',
	78,43,'Mon Oct 13 14:23:18 +0000 2014',3790,43,'ar',
	'http://pbs.twimg.com/profile_images/521667733511888896/h9QmEwuJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @NN0900: আ ؏ مدآر السآعھہ⏳حسآب @NN0900 يغرد بـ﴿الاستغفآرلله ﷻ﴾ تآبعھَہ وسآهم بنشرھہ فالدال ؏ الخير كفاعلھہ✵❛ @RTwit_1 @Betaqadaawia',
	'<a href=::http://alkalej.com/:: rel=::nofollow::>hfuktijgj</a>',
	2854442870
);
INSERT INTO twit_user VALUES (
	'2616097652',
	'Mira J✨',
	'__lastqueennn',
	'',
	'The girl w/ the scarf❗️✨',
	295,236,'Thu Jul 10 20:26:02 +0000 2014',5116,236,'en',
	'http://pbs.twimg.com/profile_images/521892194706522112/qpVq-JpF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LifeIs_TWEET: ::@__lastqueennn: That sound good as hell, oxtail be bangin fr:: 😂😂🙌🙌🙌🙌🙌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2616097652
);
INSERT INTO twit_user VALUES (
	'754626366',
	'Scooterliebers',
	'FaabyGnz',
	' ∆Mexico ajua',
	'Our king is coming-God;;s not dead',
	3101,3133,'Mon Aug 13 07:13:01 +0000 2012',6533,3133,'es',
	'http://pbs.twimg.com/profile_images/524740655780601856/UMd6s7aV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @featmileyc: amo cuando justin hace caras raras para tomarse fotos con las fans es lo mas lindo que existe #EMABiggestFansJustinBieberᅠᅠ',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	754626366
);
INSERT INTO twit_user VALUES (
	'387402791',
	'Alberto',
	'Zybot587',
	'México',
	'No se siente bonito tener a la novia perfecta y no poder estar con ella :/ 19/07/14 ❤️',
	67,63,'Sun Oct 09 00:37:30 +0000 2011',1856,63,'es',
	'http://pbs.twimg.com/profile_images/518899306154450944/kndBGm9G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ACClONPOETICA: ¿Ganas de verte? MUCHÍSIMAS.
¿Ganas de besarte? MÁS AÚN.',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	387402791
);
INSERT INTO twit_user VALUES (
	'2604182609',
	'Dayana☯',
	'MattxRainbows',
	'',
	'«My lane is Matt ⬆ Left lane is Hayes ⬅ Right lane is Cam ➡️»',
	213,205,'Thu Jun 12 16:51:34 +0000 2014',2285,205,'en',
	'http://pbs.twimg.com/profile_images/521320215632945155/zt_EZJ0X_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa ❤️',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2604182609
);
INSERT INTO twit_user VALUES (
	'2340725401',
	'$avage tyRichhh',
	'SstacksSs',
	'9⃣1⃣9⃣',
	'❤️Rest Eazy Tahje ❤️',
	611,466,'Wed Feb 12 17:58:19 +0000 2014',7473,466,'en',
	'http://pbs.twimg.com/profile_images/517091558571913216/c8T1Uamj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ovomamii naw cause maybe dat Man might peep dat tweet &amp; be interested 😂👌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2340725401
);
INSERT INTO twit_user VALUES (
	'188774050',
	'Lady Sith',
	'AfroStyling',
	'Death Star',
	'Unfriendly Black Hottie. Always on, Slightly off.',
	571,331,'Thu Sep 09 15:22:32 +0000 2010',80015,331,'en',
	'http://pbs.twimg.com/profile_images/525901306842841088/XDktVaHv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ComedyPIease: OK SHE NEEDS TO CHILL http://t.co/9kL3HmTcJU',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	188774050
);
INSERT INTO twit_user VALUES (
	'2729579951',
	'PLS LIAM ',
	'_whyhoran',
	'',
	'10.05.14 WWAT ♥',
	2016,1933,'Thu Jul 31 03:09:18 +0000 2014',11113,1933,'pt',
	'http://pbs.twimg.com/profile_images/525683719450157056/MlRUVMvo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2729579951
);
INSERT INTO twit_user VALUES (
	'2271986406',
	'FOLLOWMEAUSTINPLEASE',
	'laly_do',
	'brazil',
	',@AUSTINMAHONE FOLLOW ME PLASEE PLASEE  I LOVE CAN YOU PLEASEE',
	618,1884,'Wed Jan 01 19:03:58 +0000 2014',1326,1884,'pt',
	'http://pbs.twimg.com/profile_images/526527703520776192/M08V_4I3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LukeHutchMusic: Follow me if you don;;t already and I;;ll follow back (: but RT and FAV for a DM doing all ! I;;m bored http://t.co/335CPp…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2271986406
);
INSERT INTO twit_user VALUES (
	'2470862310',
	'عبدالعزيز الزهراني',
	'walokynelof',
	'',
	'null',
	958,1590,'Wed Apr 30 12:48:45 +0000 2014',31406,1590,'en',
	'http://pbs.twimg.com/profile_images/493266290681737216/B6bRLDP5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @m511mss: @smoo511vip تصميمي/قصيدهـ للشاعر الكبير:حبيب العازمي ::الطيب اللي تطيب الناس من طيبه..وإلا الردي لو خدم ربعه يفشلها http://t.co…',
	'<a href=::http://www.tot-rt.net/:: rel=::nofollow::>علي 2</a>',
	2470862310
);
INSERT INTO twit_user VALUES (
	'251191582',
	'Tj Chatman ',
	'Righteously_T70',
	'Alpine, Alabama',
	'UA18 ❤️ | Snapchat: Chatman70 | IG: Louis70 | You know it’s real when you are who you think you are. - Drake',
	827,1828,'Sat Feb 12 16:42:48 +0000 2011',17144,1828,'en',
	'http://pbs.twimg.com/profile_images/484921954013818880/j25yqUAb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@Jus_Showoff: “@infamousKAYCE3: are these real or fake? I need answers. http://t.co/VvUQLQrnS7”{👀” nigga 👀😩',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	251191582
);
INSERT INTO twit_user VALUES (
	'332518757',
	'L1NG',
	'L1NG_',
	'',
	'I;;m Ling, I post art sometimes and rt a lot. sports trash twitter @pedal1ng',
	1051,329,'Sat Jul 09 23:34:41 +0000 2011',81119,329,'en',
	'http://pbs.twimg.com/profile_images/519824756749922304/gRUmjcW-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JonnyCraig5L: THE SUNSET IS RIDICULOUS???? http://t.co/EYOHeABq8o',
	'<a href=::http://itunes.apple.com/us/app/twitter/id409789998?mt=12:: rel=::nofollow::>Twitter for Mac</a>',
	332518757
);
INSERT INTO twit_user VALUES (
	'264906639',
	'Rooni',
	'FeelThe_Sebreez',
	'In A Pile Of Lions ',
	'null',
	1565,1294,'Sat Mar 12 17:12:29 +0000 2011',70665,1294,'en',
	'http://pbs.twimg.com/profile_images/524567529734541312/Rgt7X4jk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BigAssAddicts: Girls who can ride &gt; http://t.co/KS31JWwoJL',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	264906639
);
INSERT INTO twit_user VALUES (
	'2573181402',
	'いっしー@10/26 仙台',
	'daikilovemarine',
	'',
	'埼玉 23♂ team℃-ute(萩原舞推し) 関東の現場に出現するぼっちヲタです(笑) ℃以外も時々。現場で仲良く出来る仲間を増やしたいですー。 よろしくお願いします(^o^)',
	99,103,'Tue Jun 17 16:31:48 +0000 2014',592,103,'ja',
	'http://pbs.twimg.com/profile_images/512255248593715201/2f_dl_KX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'伊達さんいらっしゃいました http://t.co/B7DOilmGla',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2573181402
);
INSERT INTO twit_user VALUES (
	'324049477',
	'ωραίος',
	'Otaylay_',
	'New Orleans , Louisiana',
	'my name is Allana',
	1180,806,'Sat Jun 25 22:25:36 +0000 2011',29586,806,'en',
	'http://pbs.twimg.com/profile_images/526531599618150400/7rVIzhph_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @boythatsDESSY: son what ❗️❗️.. http://t.co/QjwTxYZPkx',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	324049477
);
INSERT INTO twit_user VALUES (
	'374839424',
	'❀ drama queen ❀',
	'LoMaiola',
	'Argentina',
	'× if i were you i;;d put that away, see you;;re just wasted and thinking about the past again ×
instagram:lolimaiola',
	1450,1964,'Sat Sep 17 01:47:12 +0000 2011',18243,1964,'es',
	'http://pbs.twimg.com/profile_images/522222650601779200/AV3W_V0r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @vannikihn: El helado de limón al agua es lo único que está bien en el mundo',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	374839424
);
INSERT INTO twit_user VALUES (
	'69853536',
	'♛ Real Madrid fans',
	'Real_Madrid__CF',
	'Estadio Santiago Bernabeu',
	'La cuenta + antigua de información sobre el Real Madrid CF en twitter desde 29 de agosto 2009 - La DÉCIMA ya es nuestra - fans site -',
	228965,7342,'Sat Aug 29 12:06:57 +0000 2009',83907,7342,'es',
	'http://pbs.twimg.com/profile_images/378800000707800825/20cd57c5dc433a4cd182b5fe4684c8d1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Los 10 futbolistas que despilfarraron sus fortunas http://t.co/NqSyMzdTeE #futbol http://t.co/DGbWsKaQmp',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	69853536
);
INSERT INTO twit_user VALUES (
	'1884486343',
	'stephierce',
	'beyonigga',
	'2 hamburguer',
	'qualquer chico buarque indecente me conquista',
	967,252,'Thu Sep 19 21:31:50 +0000 2013',9796,252,'pt',
	'http://pbs.twimg.com/profile_images/524735542928216064/P62-tY5T_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Vocês falam do Sul e Sudeste como se todos odiassem nordestinos',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1884486343
);
INSERT INTO twit_user VALUES (
	'2166013536',
	'큐브',
	'cubebot1',
	'',
	'아가씨들의 영원한 집사 큐브봇입니다.',
	3,3,'Thu Oct 31 04:58:25 +0000 2013',3615,3,'ko',
	'http://pbs.twimg.com/profile_images/378800000673030374/416df000df9d03d84d49d94c0e961f2d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'아가씨, 정신 좀 챙기세요!',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2166013536
);
INSERT INTO twit_user VALUES (
	'41257938',
	'Derek Lau',
	'drkl706',
	'Los Angeles, CA',
	'UCLA Bruins. PAC12. CFB. NFL. NBA. Android enthusiast.',
	63,131,'Wed May 20 00:57:44 +0000 2009',4882,131,'en',
	'http://pbs.twimg.com/profile_images/455613439059042304/-_y2u0YN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I really shouldn;;t be at a nice Chinese restaurant in a tee shirt and shorts.',
	'<a href=::http://getfalcon.pro:: rel=::nofollow::>Falcon Pro</a>',
	41257938
);
INSERT INTO twit_user VALUES (
	'1477450771',
	'ベべお',
	'cat_ni_koban',
	'従順な羊ではなく野良猫になれ！',
	'小野南→小野高66th→横国人文1年 アルティメット Cougars 20th #13 ファイナルゆとり世代',
	593,596,'Sun Jun 02 14:25:45 +0000 2013',1876,596,'ja',
	'http://pbs.twimg.com/profile_images/428541148915699712/PH4gTMaz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'みんなありがとう

金曜でもいいよ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1477450771
);
INSERT INTO twit_user VALUES (
	'2590588670',
	'桜井玲香♡乃木坂46⊿',
	'sakuraiNOGI57',
	'',
	'愛１６才、高２です☆彡  乃木坂46の桜井玲香ちゃんが大好き!!!(≧∇≦*)  ももクロやAKB48やハロプロなど、女性アイドルがダイスキな人、相互フォローオーケー♪ヾ(＠⌒ー⌒＠)ノ',
	238,336,'Fri Jun 27 02:01:12 +0000 2014',189,336,'ja',
	'http://pbs.twimg.com/profile_images/524860374676283392/dgeLyRUb_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'福士蒼汰とAKB48●●が深夜デートか？  http://t.co/6HgMtzPBE6',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2590588670
);
INSERT INTO twit_user VALUES (
	'1560074568',
	'Legally Blind',
	'bvsed_blonde',
	'Keke',
	'Get w/ the winning team hoe',
	1559,962,'Mon Jul 01 09:25:33 +0000 2013',19830,962,'en',
	'http://pbs.twimg.com/profile_images/521159360005677056/139cWJX-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@____Nadiaa: @bvsed_blonde lmao you had ME dying 😭😭”😭they be pmo bruh',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1560074568
);
INSERT INTO twit_user VALUES (
	'100893773',
	'Alana Block ',
	'AlanaMarie0325',
	'',
	'Did we just become best friends?',
	345,398,'Fri Jan 01 03:41:03 +0000 2010',4999,398,'en',
	'http://pbs.twimg.com/profile_images/515335791695114240/vewk555D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Why does my tv work all day until I want to watch the walking dead. Why',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	100893773
);
INSERT INTO twit_user VALUES (
	'565147030',
	'✽sel || liam pls✽',
	'Liamyhallelujah',
	'',
	'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀❝you are more home than ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀the house i live in❞ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀@real_liam_payne ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⋆:* °.✧ ♡ ✧.° *:⋆⠀⠀',
	5954,1708,'Sat Apr 28 04:08:12 +0000 2012',80227,1708,'en',
	'http://pbs.twimg.com/profile_images/524407919878471680/RX9C-8sy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne you and Zayn should dress up as White Chicks the movie',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	565147030
);
INSERT INTO twit_user VALUES (
	'2579237838',
	'pont',
	'pont',
	'',
	'null',
	0,0,'Fri Jun 20 20:59:09 +0000 2014',56448,0,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/EybTksqzvN  48356599985',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2579237838
);
INSERT INTO twit_user VALUES (
	'1708695162',
	'cumin ',
	'tiflany',
	'FAVOR;Δηυfams;3in1;hipstah',
	'california girls ㅡ 1st cumin. another cumin? fuck herself',
	2986,2944,'Thu Aug 29 01:30:43 +0000 2013',44520,2944,'id',
	'http://pbs.twimg.com/profile_images/523350217563709440/pEg3ECzM_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WinnerMinoh: Tidur udah lebih dr 8 jam masih ngantuk aje =_=',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1708695162
);
INSERT INTO twit_user VALUES (
	'828458132',
	'yu*szk',
	'you_rin10',
	'follow me…**',
	'*ohkubo*johnan*hokuryo#6YOU* Juntendo Univ.Nursing* TOTO Bright#10RIN*baske*23',
	170,177,'Mon Sep 17 06:12:58 +0000 2012',1689,177,'ja',
	'http://pbs.twimg.com/profile_images/378800000716557009/4499104db328df38e851d12854cc4699_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'1番忘れたらいけないもん忘れた… なんでもっと早く気づかなかったんだろう。ばーか',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	828458132
);
INSERT INTO twit_user VALUES (
	'745739323',
	'Justér',
	'Juster_de_Savoi',
	'',
	'Snapchat me:justerxoxo
Kik:JusterHiker',
	693,686,'Wed Aug 08 18:50:34 +0000 2012',1088,686,'en',
	'http://pbs.twimg.com/profile_images/508075585172557824/xu9udQyk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MaKayy_laa: like you;;re that one person that I could talk to every second of every day &amp; I wouldn;;t get tired of you tbh',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	745739323
);
INSERT INTO twit_user VALUES (
	'2718046011',
	'✌ 3 Años a su lado ✌',
	'MechiLambreCol_',
	'',
	'Aquella hija de Neptuno le doy las gracias por siempre estar del lado con nosotras.. MI GUIA, MI ARCO IRIS || suerte hermosa (mariam) ❤',
	575,175,'Sat Jul 19 19:23:00 +0000 2014',11195,175,'es',
	'http://pbs.twimg.com/profile_images/525835843580473344/Ck8CCKvM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mechiani   #MercedesLambre #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2718046011
);
INSERT INTO twit_user VALUES (
	'2763417929',
	'Mechita',
	'MechiEsTodo',
	'12RT de ella 1MNZ 2FV me sigue',
	'Mechista para siempre 1MD',
	72,9,'Sat Sep 06 20:39:52 +0000 2014',3710,9,'it',
	'http://pbs.twimg.com/profile_images/508354303506276352/MATzcj07_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mechiani   #MercedesLambre #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2763417929
);
INSERT INTO twit_user VALUES (
	'479732934',
	'Bubu',
	'biabucker_',
	'instagram.com/biabucker_',
	'@ThiiPiovesan ❤️',
	2033,1600,'Tue Jan 31 18:14:13 +0000 2012',86236,1600,'pt',
	'http://pbs.twimg.com/profile_images/526096570198917120/KD0ZDzTt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @fatosdebebada: Dilma cade o bolsa tequila ?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	479732934
);
INSERT INTO twit_user VALUES (
	'338698136',
	'Ginger♡',
	'ImSteffaRivas',
	'París, Francia',
	'A reader lives a thousand lives before he dies. The man who never reads lives only one .lll.',
	403,132,'Tue Jul 19 23:38:33 +0000 2011',24957,132,'es',
	'http://pbs.twimg.com/profile_images/524732607842353152/y7BYvL2h_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ese momento en que me arrepiento de decir... solo una vez mas.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	338698136
);
INSERT INTO twit_user VALUES (
	'2286665557',
	'BURAK',
	'burakk_08',
	'Osmaniye ',
	'null',
	4262,5065,'Sat Jan 11 13:45:09 +0000 2014',1537,5065,'tr',
	'http://pbs.twimg.com/profile_images/526346039716872194/vdSzB13D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bihaberci: https://t.co/8lCkMNp5Q2',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2286665557
);
INSERT INTO twit_user VALUES (
	'2647603053',
	'✨Maca Sigueme✨',
	'MacaMiSonrisas',
	'6FV de ella',
	'Affronterei il mondo con una mano se maca mi tenesse l;;altra. @maca_miguel',
	52,11,'Fri Jun 27 18:42:17 +0000 2014',4019,11,'it',
	'http://pbs.twimg.com/profile_images/525986596198547456/TmHspuxI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mechiani   #MercedesLambre #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2647603053
);
INSERT INTO twit_user VALUES (
	'408151068',
	'Reynna',
	'reynnaclaire',
	'sun-kissed',
	'be careful who you lie to...',
	817,830,'Wed Nov 09 01:45:26 +0000 2011',4857,830,'en',
	'http://pbs.twimg.com/profile_images/509066930876329984/nIc8EmqM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@trvpicaI: My ::push people away:: game is strong as fuck” 😅',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	408151068
);
INSERT INTO twit_user VALUES (
	'1640635927',
	'airiwakawaii',
	'airiwakawaii',
	'',
	'av女優が、好きです、画像は、鈴村あいりちゃんの、かわいい、お尻です．＾＾',
	1175,1653,'Fri Aug 02 14:40:37 +0000 2013',147758,1653,'ja',
	'http://pbs.twimg.com/profile_images/504294055614767105/JfeEIsiG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'下校途中の小●生を付け狙い拉致ってレイプ誘拐ドキュメント女性アイドルグループ、ＣｏｖｅｒＧｉｒｌｓ（カバーガールズ）メンバーの女性（２２）が、性犯罪 に遭ったと大阪府警に申告し、その後 http://t.co/rf1ry8FGZF http://t.co/k0jrzJBfMX',
	'<a href=::http://blog.livedoor.jp/koboadachi-norisuke:: rel=::nofollow::>keiriandsoumu</a>',
	1640635927
);
INSERT INTO twit_user VALUES (
	'208189188',
	'Antoine?',
	'TrapMakaveli',
	'Mississippi',
	'Tweeting Page of Antoine L Dozier-Smith
#teamaquarius #teamIDGAF  #Athiest',
	53,173,'Tue Oct 26 20:26:45 +0000 2010',879,173,'en',
	'http://pbs.twimg.com/profile_images/474072870079848448/g6zd0L3n_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@JustinVargo @thewadekeller Vince golden child John Cena isn;;t going to lose this match. This I foresee and hope for the best Randy win.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	208189188
);
INSERT INTO twit_user VALUES (
	'302127244',
	'Cinex Mérida',
	'Cinex_AltoPrado',
	'Merida',
	'Cinex Alto Prado de Mérida. Películas, Estrenos, Promociones, Cartelera y mas!. C.C Alto Prado Mérida Edo Mérida Telf (0274) 2448866 CinexAltoPrado@hotmail.com',
	48991,40007,'Fri May 20 17:02:09 +0000 2011',44442,40007,'es',
	'http://pbs.twimg.com/profile_images/463536123298340864/FWrNFWMa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Video #Imperdible En el video veremos las Lecciones Sabias de 40 Peliculas &gt;&gt;&gt; http://t.co/IE2pu1PTcL',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	302127244
);
INSERT INTO twit_user VALUES (
	'411028909',
	'MaríaAgustina ',
	'AgusValdano',
	'Laboulaye-Córdoba',
	'16 años // Si total lo que el destino te dé, el destino te lo quita//PIN: 79F51D9A',
	829,468,'Sat Nov 12 22:14:02 +0000 2011',16118,468,'es',
	'http://pbs.twimg.com/profile_images/523507653914660864/eBJUN0qy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'jajajajajajaja no doy mas, que culiada Verena.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	411028909
);
INSERT INTO twit_user VALUES (
	'2846539051',
	'jithi',
	'55diegui',
	'',
	'null',
	6,58,'Wed Oct 08 07:09:52 +0000 2014',24441,58,'es',
	'http://pbs.twimg.com/profile_images/519747754856177664/VwdQ_YgL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'yuppiiiii #DiegoDominguez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2846539051
);
INSERT INTO twit_user VALUES (
	'1338302893',
	'Chill Hunting',
	'NerdWithTheHoes',
	'Hogwarts',
	'Just A Regular Nigga With An Irregular IQ',
	645,26,'Tue Apr 09 04:31:32 +0000 2013',35536,26,'en',
	'http://pbs.twimg.com/profile_images/517057239652499457/KnuvRrav_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'If you can do a card trick you basically in on a full ride',
	'<a href=::http://tweetlogix.com:: rel=::nofollow::>Tweetlogix</a>',
	1338302893
);
INSERT INTO twit_user VALUES (
	'2700676921',
	'Вероника Шушпаннико',
	'MCQvQOOowxRLPG1',
	'',
	'null',
	11,42,'Sat Aug 02 11:31:46 +0000 2014',6576,42,'ru',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @althoriaa14: ميزة القلب الطيب أنه لا يملك صفحات سوداء
ولا يمكن تلويثه مع كل ما يعانيه من سواد حوله http://t.co/e6FDl8LuO1',
	'<a href=::http://www.ahmad-a1.com:: rel=::nofollow::> الموقع العربي الاول لخدمت </a>',
	2700676921
);
INSERT INTO twit_user VALUES (
	'583213759',
	'Carli Bower',
	'cbowaah',
	'',
	'Im carlito, So uhh follow my life. ✌',
	169,169,'Thu May 17 22:19:04 +0000 2012',4460,169,'en',
	'http://pbs.twimg.com/profile_images/507869524184801280/QbS5s6Pp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@george_roan I;;ll have to look!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	583213759
);
INSERT INTO twit_user VALUES (
	'2396288246',
	'날 죽일',
	'lucidmurderx',
	'Las Vegas',
	';',
	845,820,'Tue Mar 18 14:17:08 +0000 2014',12037,820,'en',
	'http://pbs.twimg.com/profile_images/503784684300812289/pOL6n1PC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LongLiveTWD: I CANT DO THIS MAN #TheWalkingDead',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2396288246
);
INSERT INTO twit_user VALUES (
	'337863136',
	'dianita ✌ ',
	'dianajonaslovat',
	'MEXICO (DISTRITO.FEDERAL) ',
	'♡ te amo♡',
	169,331,'Mon Jul 18 18:08:56 +0000 2011',5601,331,'es',
	'http://pbs.twimg.com/profile_images/525485799501234176/4W-d11v4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	337863136
);
INSERT INTO twit_user VALUES (
	'2450477815',
	'ansley♡',
	'thatthotdallas',
	'famtour-5/31/14 magcon-4/26/14',
	'6/30-6:43 7/1-8:17 9/28-6:20 10/13-4:51 ♛3/12+Sammy, Bryant, 26mgmt♛',
	1293,1999,'Thu Apr 17 21:52:25 +0000 2014',10463,1999,'en',
	'http://pbs.twimg.com/profile_images/518764652634071040/xq452J-x_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2450477815
);
INSERT INTO twit_user VALUES (
	'1537490366',
	'No Flex Zone',
	'UnBasketteurFou',
	'Garges-les Gonesse',
	'#TeamBulls #TeamOL #TeamBarça',
	241,132,'Fri Jun 21 22:48:03 +0000 2013',5808,132,'fr',
	'http://pbs.twimg.com/profile_images/519528620738740224/aA-tk5lg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @VXXYYXXV: Je ne cours pas après des putes, mais je dis quand même que les filles bien de nos jours sont rares.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1537490366
);
INSERT INTO twit_user VALUES (
	'1027140986',
	'Gamocraft',
	'GamoCraft_fans',
	'',
	'@Gamoniac ---) Gamocraft est une plateforme de serveurs internationaux francophone tournant 24/24 et
7 jours sur 7 ! 
 IP: http://play.gamocraft.fr',
	794,2006,'Fri Dec 21 20:55:58 +0000 2012',34274,2006,'fr',
	'http://pbs.twimg.com/profile_images/3706941448/51c58cf5e4dc5de37a52bf6a1ae9ff02_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @XChrisX_XDiazX: I liked a @YouTube video from @omgitsalia http://t.co/stEia1jnOe Minecraft THE DROPPER v2 - OCULUS RIFT #1! w/ Ali-A &amp; …',
	'<a href=::http://www.bbotmaker.com/:: rel=::nofollow::>BBotMaker - Bot à mots-clés</a>',
	1027140986
);
INSERT INTO twit_user VALUES (
	'748528238',
	'Charlie',
	'1charlottejayne',
	'BR',
	'I;;ve been called the songbird of my generation by people who;;ve heard me',
	485,1296,'Fri Aug 10 03:37:17 +0000 2012',8687,1296,'en',
	'http://pbs.twimg.com/profile_images/524669007430184960/4qKRQ_fl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KhailAnonymous: I miss this face http://t.co/n5l3jTPrYO',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	748528238
);
INSERT INTO twit_user VALUES (
	'274647272',
	'Ceez Toretto',
	'CeezTX',
	'Dallas, TEXAS',
	'Don;;t be good my nigga, be great',
	963,452,'Wed Mar 30 18:13:00 +0000 2011',65204,452,'en',
	'http://pbs.twimg.com/profile_images/524226264807534593/T43q0frX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TerryLee__ that;;s what I was thinking',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	274647272
);
INSERT INTO twit_user VALUES (
	'2477607402',
	'سامر',
	'sakesepycyt',
	'',
	'null',
	2549,2694,'Mon May 05 00:58:39 +0000 2014',53660,2694,'en',
	'http://pbs.twimg.com/profile_images/484175465221861376/CA_gQLuV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @os77777777: تأكد أن الله لا يبتليك بشيء إلاّ وبه خير لك حتى وإن ظننت أنت عكس ذلك .. :: أرح قلبك :: و ثق بأن الله سوف يغير حالك إلى أجمل ح…',
	'<a href=::http://www.tot-rt.net/:: rel=::nofollow::>علي 2</a>',
	2477607402
);
INSERT INTO twit_user VALUES (
	'339342544',
	'Trévis Newman',
	'Trevis_Newman',
	'',
	'#TeamMixedPeople #TarheelFan4life #TeamTatted',
	745,630,'Wed Jul 20 23:33:13 +0000 2011',24997,630,'en',
	'http://pbs.twimg.com/profile_images/521102444848480257/WQOvSpNL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LivinLegnd: Am I the only one who saw this 😂 http://t.co/bDmeMlyS3P',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	339342544
);
INSERT INTO twit_user VALUES (
	'2780885642',
	'Vinícius Magalhães',
	'fuckyouvinni',
	'Cabo frio, RJ',
	'Eu só quero viver o resto de minha vida com você.♥@soulinabj♥  [ 17/07/14 ]',
	312,48,'Sat Aug 30 17:43:36 +0000 2014',5626,48,'pt',
	'http://pbs.twimg.com/profile_images/525774863701528577/aCfgjqQO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @deborahmagrela: Odeio relâmpagos.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2780885642
);
INSERT INTO twit_user VALUES (
	'1927518534',
	'Lethicia',
	'l3thicia',
	'Paraná',
	'26/07',
	361,239,'Wed Oct 02 17:12:02 +0000 2013',26207,239,'pt',
	'http://pbs.twimg.com/profile_images/526349558868361217/cAC6W9EU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @pqmiilena: Conheci muita gente esse ano, mas queria não ter conhecido alguns',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1927518534
);
INSERT INTO twit_user VALUES (
	'466160421',
	'B. Tate',
	'BTate4',
	'',
	'jeff sophomore.
abs?',
	453,287,'Tue Jan 17 03:45:01 +0000 2012',16105,287,'en',
	'http://pbs.twimg.com/profile_images/511221738437640194/vh7Soqx3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @IanFrancisco7: Is walking dead and pretty little liars finna do a cross over episode cause that A on the church.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	466160421
);
INSERT INTO twit_user VALUES (
	'1667643061',
	'Elin Herlina',
	'eih_herlina',
	'Jangan Tanya di Mana',
	'null',
	6097,177,'Tue Aug 13 11:59:29 +0000 2013',12475,177,'id',
	'http://pbs.twimg.com/profile_images/519884384627732480/Jq6S1IVI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @sabdarosul: “Rasulullah Shallallahu alaihi wa sallam melaknat yang memberi suap dan yang menerima suap”.[HR At-Tirmidzi, 1/250 @may_sur…',
	'<a href=::https://roundteam.co:: rel=::nofollow::>RoundTeam</a>',
	1667643061
);
INSERT INTO twit_user VALUES (
	'1384983062',
	'Becster ',
	'BECCADOEE',
	'',
	'17 and athleticly gifted bruh ✌',
	1067,966,'Sat Apr 27 17:07:14 +0000 2013',13988,966,'en',
	'http://pbs.twimg.com/profile_images/524389049021509632/AUfLEV_C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ATHLETEMOTIVATN: Forget, and Move Forward. http://t.co/Qc4SqBwP7G',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1384983062
);
INSERT INTO twit_user VALUES (
	'462224035',
	'Khadiga Hassan',
	'Khadiga_Hassan',
	'',
	'not all that glitters is gold',
	143,59,'Thu Jan 12 18:19:45 +0000 2012',4214,59,'en',
	'http://pbs.twimg.com/profile_images/523986259426160640/LGdLOe7L_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @chanelpuke: Thigh gaps are for flamingos',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	462224035
);
INSERT INTO twit_user VALUES (
	'1267927896',
	'J',
	'juliannapearce',
	'Cincinnati, Ohio',
	'2 timothy 1:7',
	1181,141,'Thu Mar 14 20:38:05 +0000 2013',17259,141,'en',
	'http://pbs.twimg.com/profile_images/522844474289188865/svYG_Ywk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SexualGif: wow... @KJP takes relationship goals to a whole new level 😍💏👫 http://t.co/VKNjXXSoeX',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1267927896
);
INSERT INTO twit_user VALUES (
	'1496554328',
	'Brenda.',
	'brendaabx3',
	'',
	'snapchat: brendaabx3',
	763,371,'Sun Jun 09 20:30:27 +0000 2013',23900,371,'en',
	'http://pbs.twimg.com/profile_images/524297934330806272/4oWdtPtV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JColeNC: If the shit aint real I don;;t want it',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1496554328
);
INSERT INTO twit_user VALUES (
	'1188556838',
	'(:OTRAT:)',
	'Larrysides_',
	'Chicagoooooo',
	'My prince is on his way I just have to wait.August 30 2014 ~ WWAT August 23 2015 ~OTRAT :)0/4 No/5... *read location in Liam;;s voice*',
	1828,1950,'Sun Feb 17 06:30:51 +0000 2013',13272,1950,'en',
	'http://pbs.twimg.com/profile_images/523779389855510528/RswpTqUp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1188556838
);
INSERT INTO twit_user VALUES (
	'2558550739',
	'Jessy Wisco',
	'JessyWisco',
	'',
	'Arquitecta. Enfocada en la divulgación en blogs sobre software 3D y CAD, Materiales de construscción e instalaciones.',
	17,75,'Tue Jun 10 08:32:29 +0000 2014',123,75,'es',
	'http://pbs.twimg.com/profile_images/476282007391977472/xXqzAQof_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Where’s the Library? New York Public Library Releases Beta of Improved Location Finder http://t.co/mhL3n4ZDvg',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	2558550739
);
INSERT INTO twit_user VALUES (
	'2600491063',
	'Nicolle RapaZone',
	'FlyAwayNicolle',
	'',
	'im5 & fly away hero.',
	16,41,'Wed Jul 02 21:10:44 +0000 2014',17,41,'en',
	'http://pbs.twimg.com/profile_images/526542587323092994/iGJvoDo5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#FollowMeCole hi der I;;m alive',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2600491063
);
INSERT INTO twit_user VALUES (
	'1789723322',
	'Windul.',
	'WindaUZR',
	'Denpasar',
	'@Muhanifu',
	531,821,'Sun Sep 08 00:14:02 +0000 2013',13242,821,'id',
	'http://pbs.twimg.com/profile_images/526520977224519681/kYOklGEz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Masih berpetualang 🙈“@8957E: @WindaUZR bkannye lu lbih berpengalaman :v”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1789723322
);
INSERT INTO twit_user VALUES (
	'461594300',
	'❁arely❁',
	'AmazingJMaslow',
	'',
	'the perks of being a james girl oh wait there arent any.',
	10904,280,'Wed Jan 11 23:54:42 +0000 2012',127723,280,'en',
	'http://pbs.twimg.com/profile_images/526537346066305025/oV3HPJHq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Rushtastic_ me tooo😭😭',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	461594300
);
INSERT INTO twit_user VALUES (
	'12051602',
	'#마카오카지노여행 S333.FR.TO',
	'rugger2',
	'',
	'마카오카지노여행 ㈌ http://S333.FR.TO ㈌ 무료체험 50만제공 ㈘  ┗100%refollw┛┗100%맞팔┛ 점은 이미 달성했고 이제는 전인미',
	5,2,'Thu Jan 10 00:29:44 +0000 2008',129,2,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'☑🌌🌌주소-( http://t.co/rr5637g6zu  )-클릭🌌🌌☑ 온라인바카라 http://t.co/UF8qbZe6jX 을 털 #바카라사이트주소 인터넷바카라 #바카라사이트주소 📳 ヨアUイさ ☎',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	12051602
);
INSERT INTO twit_user VALUES (
	'264156284',
	'はるるん',
	'haruru6zun1',
	'准くん生誕地',
	'V6命、ｶﾜｲｲｶﾜｲｲ末っ子溺愛ちう♪ 勝利6人組＆大阪の星ひらパー兄さんに毎日元気をもらってます♡♡ 
新規フォロワーさんはR22にさせて頂いてます。無言フォロー.V以外の呟き多い方、全く絡まない方ははブロックします。今年は大河で大変暴れますのでご注意下さい←
画像投下多いのお嫌な方はブロックでお別れを(;_;)',
	831,463,'Fri Mar 11 12:39:52 +0000 2011',103855,463,'ja',
	'http://pbs.twimg.com/profile_images/520390743320326145/ttIkzEAk_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@okadasiisuki しいたん、おはおまー！！
MJヤバかった・゜・(つД｀)・゜・
アングルナ椅子ヽ(；▽；)ノ
オカダの抜きも完璧♡♡
アタシも会いたいよう・゜・(つД｀)・゜・
ひらパー来るときは教えてね！！
ひらパー姉さん参上します(*￣ー￣)/ ←違うから',
	'<a href=::http://twicca.r246.jp/:: rel=::nofollow::>twicca</a>',
	264156284
);
INSERT INTO twit_user VALUES (
	'1889755976',
	'Jasa Tambah Follower',
	'TingkatFoll5',
	'PIN 2855E9B5 / 081996362500',
	'Solusi untuk popularitas dan bisnis anda | Kami menyediakan Follower Aktif asli INDONESIA | Bukti ? Cek Favorites | Iklan berkala di 8 akun | Cbg @TingkatFoll1',
	32931,7539,'Sat Sep 21 10:36:52 +0000 2013',52176,7539,'en',
	'http://pbs.twimg.com/profile_images/443942256697802752/WDP18ZUF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Butuh jasa promosi / iklan berkala ? kami menyediakan 6 akun besar untuk iklan. Hub Cp 081996362500 | 2855E9B5',
	'<a href=::http://www.grabinbox.com:: rel=::nofollow::>GrabInbox</a>',
	1889755976
);
INSERT INTO twit_user VALUES (
	'430426934',
	'Hannah Gronotte',
	'hangronotte',
	'',
	'university of kentucky',
	235,271,'Wed Dec 07 04:44:42 +0000 2011',3020,271,'en',
	'http://pbs.twimg.com/profile_images/521836903013027840/3NAjqbZV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'So glad @juliefinan came to visit me this weekend 🍻🏇 http://t.co/CO1TZTstAM',
	'<a href=::http://instagram.com:: rel=::nofollow::>Instagram</a>',
	430426934
);
INSERT INTO twit_user VALUES (
	'1146558956',
	'Breanna',
	'98_breanna',
	'',
	'You;;re only given one little spark of madness. You musn;;t lose it.',
	206,92,'Sun Feb 03 23:56:05 +0000 2013',4963,92,'en',
	'http://pbs.twimg.com/profile_images/526066427393245185/jTnV-pAN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TWDGAL: Pretty little Liars??
#TheWalkingDead',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1146558956
);
INSERT INTO twit_user VALUES (
	'2602665830',
	'りこ',
	'flor_rk',
	'',
	'おおきにゆずる！',
	47,76,'Fri Jul 04 03:01:54 +0000 2014',4108,76,'ja',
	'http://pbs.twimg.com/profile_images/518037001530900480/z4Waj2_4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'神ちゃんは「なんで信じてくれへんの？」よりも「信じて」って言うイメージ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2602665830
);
INSERT INTO twit_user VALUES (
	'77691148',
	'k@安月給暇なし',
	'k_emacs',
	'',
	'年収400万円弱世代',
	56,59,'Sun Sep 27 08:07:21 +0000 2009',5364,59,'ja',
	'http://pbs.twimg.com/profile_images/417202304110968832/416_0SVQ_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'今日は朝から歯が痛い',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for BlackBerry</a>',
	77691148
);
INSERT INTO twit_user VALUES (
	'282852762',
	'Andrew Johnson',
	'80ajohnson',
	'',
	'Do you want an Australian kiss? It;;s just like a French kiss, but down under. Hardcore Pokemon Master Iowa',
	330,786,'Sat Apr 16 02:22:02 +0000 2011',19963,786,'en',
	'http://pbs.twimg.com/profile_images/459587939500978178/OkKTB-iJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Greyhound_43 Lmfao it;;s in right now',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	282852762
);
INSERT INTO twit_user VALUES (
	'2602862250',
	'WickedJester',
	'Evils_bns',
	'',
	'トチ狂ってお友達にでもなりにきたのかい？',
	8015,942,'Fri Jul 04 05:51:35 +0000 2014',171042,942,'ja',
	'http://pbs.twimg.com/profile_images/521607943951638529/PARvOI_j_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@null 872dd316eb8a432cbc63f141e2d68ded',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	2602862250
);
INSERT INTO twit_user VALUES (
	'211035819',
	'HUMANIST',
	'interUNFAO',
	'Pacific Ocean Flotsam',
	'Humanist, Love @KatKACanada High IQ Zoologist Internazionale, No reactioanary cretins/theists  #UN #Empathic Civilisation  Religion/Nation States old memes',
	1887,1471,'Tue Nov 02 03:28:10 +0000 2010',71032,1471,'en',
	'http://pbs.twimg.com/profile_images/507459031149977600/hcTAkQre_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@janer98 @observationpt @Volvo_of_doom @HillbillySkill @mrumens @jacklong17 can have a regnl agrmnt with UNHCR &amp;  incr migration to 30000',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	211035819
);
INSERT INTO twit_user VALUES (
	'1105217922',
	'Harry Styles',
	'Dimplystylesx',
	'',
	'they are the most amazing 5 boys in the world. enough said',
	153,229,'Sun Jan 20 02:57:38 +0000 2013',2328,229,'en',
	'http://pbs.twimg.com/profile_images/520133049954992128/SArbJ-5y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1105217922
);
INSERT INTO twit_user VALUES (
	'753748650',
	'Frases De La Vida',
	'UnaFraseSincera',
	'ᵀᴴᴱ ᵂᴼᴺᴰᴱᴿᵂᴼᴿᴸᴰ',
	'Son Reflexiones Sobre La Vida: Frases para reflexionar e inspirarte, Consejos para pensar y alcanzar la felicidad.',
	162932,24366,'Sun Aug 12 20:43:34 +0000 2012',2911,24366,'es',
	'http://pbs.twimg.com/profile_images/463326407947337731/5C3UigJ1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RicardoArjonamx: Sí eres siempre un error entonces por que no se ven tus defectos. 🎵',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	753748650
);
INSERT INTO twit_user VALUES (
	'2855096000',
	'エロいナルト画像',
	'ero_narut_e',
	'',
	'ナルトのちょっとＨな画像をツイートします。',
	949,1705,'Tue Oct 14 03:24:34 +0000 2014',8,1705,'ja',
	'http://pbs.twimg.com/profile_images/521866404539035649/YFvJV2uT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ero2jigazo: エロゲーやりたい放題ｗｗ
この多さガチでヤバくねぇ

⇒ http://t.co/gyFyAn52Hp

フルボイスでぁんぁん
ヌルヌルすぎるｗｗ
喘ぎ声エロすぎワロタｗｗ http://t.co/PdEi1HJjEn',
	'<a href=::https://twitter.com/car_llwwwii:: rel=::nofollow::>車の画像！！</a>',
	2855096000
);
INSERT INTO twit_user VALUES (
	'325239480',
	'⚠☠(αʝ ℓєє fαи)®⚠',
	'AJPunkIsMyWorld',
	'✖️ вℓα¢к ωι∂σω ✖️',
	'@WWEAJLee Is My all, I am great fan of AJ Lee. She;;s the best. She have shown me to believe in my Dreams. ❤ 
AJ Is My Great Inspiration 3x ∂ιναѕ ¢нαмρισи ⓐⓙⓛⓔⓔ',
	1525,149,'Mon Jun 27 23:49:23 +0000 2011',15643,149,'es',
	'http://pbs.twimg.com/profile_images/525090077030883328/vTJKQyky_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Oh man! Cena and Orton are gonna kill each other! The action is starting to get brutal! #HellInACell! #HIAC',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	325239480
);
INSERT INTO twit_user VALUES (
	'2199695622',
	'Matt Eliot',
	'MatthewEliot',
	'Antigonish, NS',
	'null',
	37,41,'Sun Nov 17 15:23:42 +0000 2013',25,41,'en',
	'http://pbs.twimg.com/profile_images/509117829551902720/SXKcBBbh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'My biggest fear is being trapped in a daycare run by a bear that smells of strawberries',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	2199695622
);
INSERT INTO twit_user VALUES (
	'580432494',
	'jonas souza',
	'jonashenriquedo',
	'',
	'null',
	15,90,'Mon May 14 23:49:55 +0000 2012',1961,90,'pt',
	'http://pbs.twimg.com/profile_images/3249592058/9d56539af70288ae168bd8e4cc9a66a1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'A verdade é que, quando alguém duvida da existência Dele começa a fazer com que os outros também duvidem.',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	580432494
);
INSERT INTO twit_user VALUES (
	'117791171',
	'とぅば芋ぅ',
	'tubabeeejeeeee',
	'JAPAN',
	'Green Day/MWAM/SiM敬愛
Can;;t live without MUSIC & Umai-mon. ヘッダーは@ichihalamboさんのイラスト♡',
	88,97,'Fri Feb 26 16:38:48 +0000 2010',16700,97,'ja',
	'http://pbs.twimg.com/profile_images/518402124170801153/GNKPYYuK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@orbit_304 
もふもふー三└(┐卍^o^)卍ﾄﾞｩﾙﾙﾙﾙﾙ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	117791171
);
INSERT INTO twit_user VALUES (
	'314112973',
	'sincerelydrewsara',
	'DrewHoljes',
	'',
	'••••••••••••••••••',
	567,113,'Thu Jun 09 18:46:33 +0000 2011',4969,113,'en',
	'http://pbs.twimg.com/profile_images/526390549251883008/HMV0OPWV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I love flowers 🌼🌹🌷',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	314112973
);
INSERT INTO twit_user VALUES (
	'359682293',
	'katerina',
	'sambapologetic',
	'Rihanna follows #1024',
	'so good to be bad',
	3382,1750,'Mon Aug 22 00:40:35 +0000 2011',45566,1750,'pt',
	'http://pbs.twimg.com/profile_images/526516087437799424/3jSwJDzz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'tchau, beijo$$$$$',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	359682293
);
INSERT INTO twit_user VALUES (
	'1229621000',
	'NOTICE ME MADISON ',
	'flaviabiebs_',
	'Los Angeles',
	'One day I will realize my dreams! I believe. Belieber, Selenator, Lovatic. instagram: flalimaa_',
	671,825,'Fri Mar 01 11:37:21 +0000 2013',4448,825,'pt',
	'http://pbs.twimg.com/profile_images/526430977627660289/NXBhVMBH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MadisonElleBeer: boy I hear you in my dreams',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1229621000
);
INSERT INTO twit_user VALUES (
	'750847638',
	'felipe osiris ♛',
	'Osssiriss',
	'',
	'null',
	343,524,'Sat Aug 11 07:24:34 +0000 2012',1330,524,'es',
	'http://pbs.twimg.com/profile_images/525417253102448640/k2187g1J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me encargaron una tarea sobre una historia de amor, escribire la nuestra ❤️ no acabare🙈:;;), a hacerlaaa 👌no me cansare de escribir❤️❤️',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	750847638
);
INSERT INTO twit_user VALUES (
	'2878857476',
	'خَـمْر كَـآتِبْ',
	'AF__993',
	'',
	'null',
	20,27,'Mon Oct 27 00:28:28 +0000 2014',20,27,'ar',
	'http://pbs.twimg.com/profile_images/526532008608940032/8uJ13-qF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Abu_Riv: للمتواجدين لزيادة متابعينـك قم بالتالـي: ➊ فولو مي ➋ رتويت ➌ فولو للي عمل رتويت ➍ فولو باك ➎ اللي ما يلتزم ما رح يستفيد',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2878857476
);
INSERT INTO twit_user VALUES (
	'407370094',
	'kaylin macneil',
	'kaylinmacneil19',
	'',
	'You miss 100% of the shots you dont take. Rankinville. I played for mabou tigs',
	240,439,'Tue Nov 08 00:23:38 +0000 2011',3046,439,'en',
	'http://pbs.twimg.com/profile_images/478180754405748737/yfzFKGcq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheWalkingHumor: anyone else thing bob was gonna have Ebola #TheWalkingDead',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	407370094
);
INSERT INTO twit_user VALUES (
	'96775426',
	'b. | pls harry',
	'alltimeharryx',
	'I spam Harry a lot | afi lrh/4',
	'applied to be harry;;s girlfriend next december, hope it all wrks out',
	15127,4526,'Mon Dec 14 14:57:25 +0000 2009',58027,4526,'en',
	'http://pbs.twimg.com/profile_images/493180208510676992/nQcN6a6P_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	96775426
);
INSERT INTO twit_user VALUES (
	'448370226',
	'Melissa Contreras',
	'LaBorin412',
	'Phoenix, AZ',
	'Single Mum, Living life and loving everyone whose made it this far with me.',
	519,1393,'Tue Dec 27 22:54:07 +0000 2011',2259,1393,'en',
	'http://pbs.twimg.com/profile_images/513375130592870400/74kvFau2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: What an eventful day it;;s been I hope everyone enjoyed it',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	448370226
);
INSERT INTO twit_user VALUES (
	'1685676378',
	'Barrio Bajo #7',
	'Pini1c',
	'           City Selva 3',
	'Los Manseros y nada mas',
	239,225,'Tue Aug 20 12:41:51 +0000 2013',1155,225,'es',
	'http://pbs.twimg.com/profile_images/421109045139763200/5nmW2uHI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Este ultimo mes nos van a querer tomar pruebas de todos lados -.-',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1685676378
);
INSERT INTO twit_user VALUES (
	'104944845',
	'Eve Paludan',
	'evepaludan',
	'Mesa, AZ',
	'Author, editor, Kindle publisher. RT:
$3.99 #BOXSET #Werewolf #mystery #werewolfdetectives. 3 books 142,000+ wds (No auto-DM;;s are sent to followers.)',
	19408,18538,'Thu Jan 14 21:53:56 +0000 2010',34905,18538,'en',
	'http://pbs.twimg.com/profile_images/378800000865798877/GfpoR0Zn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'$1.99 THE UNDONE MAN: Science Fiction Novella by #MikeCecconi @Cecconi140 http://t.co/RULiAHM1tr #scifi Ordinary man. Compelling mission!',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	104944845
);
INSERT INTO twit_user VALUES (
	'909731144',
	'Velintina',
	'Velentinana',
	'',
	'call me velen ;)',
	260,180,'Sun Oct 28 07:24:45 +0000 2012',3192,180,'en',
	'http://pbs.twimg.com/profile_images/426972837912379392/CNWxuczM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'2km running and i feel blessed !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	909731144
);
INSERT INTO twit_user VALUES (
	'546186725',
	'☀️Frankie Lymon⚡️',
	'Capone_219',
	'',
	'|| Pike || 219 Gary IN ||',
	414,400,'Thu Apr 05 18:33:48 +0000 2012',4050,400,'en',
	'http://pbs.twimg.com/profile_images/521006855938924545/SFhOUwfi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @baekardash: Gotti CM7 still slap',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	546186725
);
INSERT INTO twit_user VALUES (
	'60835840',
	'Bruh Man',
	'RicRicDaG',
	'Str8 outta #Loca$h ',
	'null',
	1234,1203,'Tue Jul 28 06:51:56 +0000 2009',62442,1203,'en',
	'http://pbs.twimg.com/profile_images/524192883960971264/ibLnZdj8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eat 1 Aqib Talib “@JAndrews8: @RicRicDaG lmao fuck ya BJ Raji”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	60835840
);
INSERT INTO twit_user VALUES (
	'2783680830',
	'•SolarTia• (Fused)',
	'__Celestia__',
	'Canterlot, Equestria',
	'HAPPY HALLOWEEN!!!#LoverOfAll. #femaleTomboy. Older sister of @mlp_GamerLuna_ . #SunRaiser...Nanny of:@Loveforroyalty',
	656,638,'Mon Sep 01 07:56:27 +0000 2014',8048,638,'en',
	'http://pbs.twimg.com/profile_images/525996656341581824/KeqphFB6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@mlp_GamerLuna_ @ManuelReyesRey_ @Dat_Luna_Gamer ohhhhh real scary! *sarcastic* http://t.co/j7I6LujIFF',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2783680830
);
INSERT INTO twit_user VALUES (
	'558175931',
	'ANDREZA POUBEL',
	'andreza_poubel',
	'Rio de Janeiro',
	'null',
	9,197,'Fri Apr 20 00:20:29 +0000 2012',48,197,'pt',
	'http://pbs.twimg.com/profile_images/2148437166/ANDREZA_POUBEL_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@programapanico muita coisa quero ver @Dbolina como integrante do @programapanico de novo.
#FazendinhaMaldita 
#VoltaBolina
#BolinaAmelhor',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	558175931
);
INSERT INTO twit_user VALUES (
	'2567603781',
	'Cierra Gemma Blue',
	'Im_ALeprechaun',
	'',
	'Live(4music&⚽️), Laugh(cuz i can), Luv(food, but dont make me pick a fav., i;;d cry)!!!!! learnng2play. You were born an original, dont die a copy. follw limit',
	1308,1999,'Tue May 27 17:59:46 +0000 2014',3928,1999,'en-gb',
	'http://pbs.twimg.com/profile_images/481491653786472449/ojMfwc8E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa tell me where it is, please mate?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2567603781
);
INSERT INTO twit_user VALUES (
	'433719421',
	'Luna',
	'luuuuuuuunaaa',
	'',
	'null',
	532,426,'Sat Dec 10 22:59:38 +0000 2011',101093,426,'es',
	'http://pbs.twimg.com/profile_images/522156685402857472/hOaRmVNa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Pero si te vas que voy a hacer???',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	433719421
);
INSERT INTO twit_user VALUES (
	'2788396316',
	'Guilherme Vecchia',
	'guidalla93',
	'',
	'null',
	4,72,'Wed Sep 03 18:22:40 +0000 2014',212,72,'en',
	'http://pbs.twimg.com/profile_images/509448721185001472/1tegD1o-_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'dilma
#Seminoles',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2788396316
);
INSERT INTO twit_user VALUES (
	'380828196',
	'Ismail Sinclair',
	'IsmailSinclair_',
	'London',
	'WWE and USA music 4 life',
	653,81,'Tue Sep 27 09:14:33 +0000 2011',9552,81,'en',
	'http://pbs.twimg.com/profile_images/526489196702486528/jwV3GbOJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MigosATL: #RichNiggaTimeLine who ready? http://t.co/lG3IxaqneB',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	380828196
);
INSERT INTO twit_user VALUES (
	'516470806',
	'Raleigh McPhatter',
	'I_Play_Rugby',
	'Raeford NC',
	'Rugby. Drink. Party. Work. Repeat! #SeahawksNation #SoPiRugby',
	311,319,'Tue Mar 06 12:13:37 +0000 2012',7123,319,'en',
	'http://pbs.twimg.com/profile_images/519009191194025984/Ri8duNV8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WalkingDead_AMC: “I’m damned. I was damned before.” 
#FatherGabrielsConfession #TheWalkingDead',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	516470806
);
INSERT INTO twit_user VALUES (
	'2282929130',
	'Bostero ',
	'lucio_medina27',
	'laferrere',
	'INAC-CIATA // CLUB ATLETICO BOCA JUNIORS *-* ♥ JB Y Ciro Andres Martinez y nada mas. Seguime y te sigo :*',
	235,230,'Thu Jan 09 02:41:03 +0000 2014',6303,230,'es',
	'http://pbs.twimg.com/profile_images/518947115419328514/0bHlSNSQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@IvanTrinidad7 jajajajajaa sali casado ah jajaja',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2282929130
);
INSERT INTO twit_user VALUES (
	'211005500',
	'U KNO WAT FERNO MEAN',
	'DJINFERNOJM',
	'ÜT: 18.036767,-76.797915',
	'FOR BOOKINGS: djinfernoja@gmail.com/876-366-2760',
	3003,1068,'Tue Nov 02 01:18:23 +0000 2010',5034,1068,'en',
	'http://pbs.twimg.com/profile_images/378800000475716337/2e38b99436e6c146dc88cf47f2d1b5e2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'haha yup RT @Purplegirlj @DJINFERNOJM @davidsonfaith24 @Meshi_Boo That one that you avoid being alone with because you know..#WantHimBack :D',
	'<a href=::http://twitterrific.com:: rel=::nofollow::>Twitterrific for Mac</a>',
	211005500
);
INSERT INTO twit_user VALUES (
	'175252839',
	'JAMARYONMARS ',
	'JamaryLIfetime',
	'',
	'MichelleMarie. senior. coral gables.',
	1031,1231,'Fri Aug 06 02:52:49 +0000 2010',29855,1231,'en',
	'http://pbs.twimg.com/profile_images/526376302207836160/W6SqIc3E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'you got me bent 😴',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	175252839
);
INSERT INTO twit_user VALUES (
	'1562261509',
	'Jay Bjelic',
	'phxmvp',
	'Bordeaux, France',
	'тeen pυnĸd | вordeaυх вaѕĸeтвall #12 | proverвѕ 25:27',
	1739,387,'Tue Jul 02 04:50:30 +0000 2013',433,387,'en',
	'http://pbs.twimg.com/profile_images/525526784184713216/Y6djg_pg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'shoutout to da dude at In N Out who was grabbin his crotch for girls;; attention. 

they weren;;t lookin, but I was ;*)',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1562261509
);
INSERT INTO twit_user VALUES (
	'627061389',
	'αує иιαℓℓ',
	'Harryornah',
	'',
	'WWA Detroit~16 || Chicago~ 29',
	757,1997,'Thu Jul 05 02:34:07 +0000 2012',6918,1997,'en',
	'http://pbs.twimg.com/profile_images/524042891032035328/asUtB61g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @sorryimalex: @Real_Liam_Payne fuck my ass',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	627061389
);
INSERT INTO twit_user VALUES (
	'2303817866',
	'megannnn',
	'megannnnstyles',
	'',
	'I have a crush on 5 boys who don;;t know i exist :) ALSO i reached my follow limit but ill follow you asap :) just gotta unfollow the ones that dont follow me!!',
	1142,1996,'Tue Jan 21 22:44:56 +0000 2014',5742,1996,'en',
	'http://pbs.twimg.com/profile_images/518975663055712257/yDDVKRKB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2303817866
);
INSERT INTO twit_user VALUES (
	'287884778',
	'❤Royale Soldier❤',
	'Carito_Rocker',
	'Costa Rica',
	'Hi I am Carito follow me and follow back. I;;m Physical Therapist. ❤ Palaye Royale  followme 15/06/14 & Sebastian and Emerson 17/06/14 & Remington 28/07/14 ❤',
	836,825,'Mon Apr 25 21:24:49 +0000 2011',4113,825,'es',
	'http://pbs.twimg.com/profile_images/526485476174471170/5zWM1WCM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	287884778
);
INSERT INTO twit_user VALUES (
	'2355388993',
	'Maria Álvarez ',
	'Maria_IC1',
	'',
	'Mejor Portero del Mundo @CasillasWorld, Mejor Central del Mundo @SergioRamos y Mejor jugador del Mundo @Cristiano ❤',
	191,327,'Fri Feb 21 21:56:54 +0000 2014',3798,327,'pt',
	'http://pbs.twimg.com/profile_images/505889444533002240/NlHM82N6_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ReinoMadridista: http://t.co/j9jR2L3g9u',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2355388993
);
INSERT INTO twit_user VALUES (
	'604902955',
	'jeuleus kaeser',
	'jeuleuskaeser',
	'',
	'null',
	4,2,'Sun Jun 10 22:39:04 +0000 2012',2492,2,'ar',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'seg-trött- trög-utan energi
piggna till- piggnar - bli pigg
ströva - strövar  - promenera - vandra utan mål',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	604902955
);
INSERT INTO twit_user VALUES (
	'776496590',
	'dis ariel',
	'inflacoyoutrust',
	'Dirty Jersey',
	'im that pokemon NO girl wants to choose  *Not associated with ariel caceres* (parody account) I be that Pretty Mother-Flacko, A$AP #TeamTripod #TeamNoClothes ig',
	257,341,'Thu Aug 23 18:23:13 +0000 2012',4757,341,'en',
	'http://pbs.twimg.com/profile_images/526083356535312384/i8pY5aUY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @rappersaid: When Iggy said ::First things first I;;m the realest.:: http://t.co/GaYNhDzYr3',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	776496590
);
INSERT INTO twit_user VALUES (
	'593217827',
	'lydia',
	'stepsjb',
	'shawn and melissa follows',
	'samantha mariana',
	4972,3957,'Tue May 29 01:04:05 +0000 2012',70509,3957,'pt',
	'http://pbs.twimg.com/profile_images/526494221503430656/4WSY9PrJ_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @quel_cavalcantt: @conexaobiebers marca de bolsa #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	593217827
);
INSERT INTO twit_user VALUES (
	'35601686',
	'Jose M. 10ª',
	'Jm89_ES',
	'',
	'Señorío no es filosofía barata, es morir en el campo, no es poner la otra mejilla, es luchar por tu equipo.               
Madridista, Racinguista y Mourinhista',
	329,430,'Sun Apr 26 23:39:52 +0000 2009',9949,430,'es',
	'http://pbs.twimg.com/profile_images/506662385705156608/O92xVpO3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RealValdano: Falta el del ;;hemos dominado al Bayern;; “@RealHeartMadrid: Video BRUTAL hecho por @rafa_nmj ::Xavi y sus excusas:: &gt; https:/…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	35601686
);
INSERT INTO twit_user VALUES (
	'2422888956',
	'Queen Maria',
	'MariaV2018',
	'',
	'God First || Queen || Volleyball & Vincent Are Life ❤️ 09.17.14',
	431,615,'Wed Apr 02 00:52:01 +0000 2014',7314,615,'en',
	'http://pbs.twimg.com/profile_images/526144025955274755/zhhYxl_8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iadorewomen_: Be with someone💏who brings out the best in you.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2422888956
);
INSERT INTO twit_user VALUES (
	'2237551918',
	'chickendick ',
	'jaujajajaja',
	'',
	'mom and dad think im a mess',
	282,218,'Sun Dec 22 05:07:11 +0000 2013',12391,218,'en',
	'http://pbs.twimg.com/profile_images/516100633594585089/-J4iI_jc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RantingOwl: Fellow white feminists: this is important to remember. #FOWPTA http://t.co/SO18IAqgMf',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2237551918
);
INSERT INTO twit_user VALUES (
	'436126546',
	'Sutty',
	'TheTylerSutton',
	'Grand Blanc, Michigan',
	'Snapchat: allofasutton Instagram: thetylersutton adrian college hockey',
	690,836,'Tue Dec 13 20:36:24 +0000 2011',15825,836,'en',
	'http://pbs.twimg.com/profile_images/526255803603640320/dNfGE15w_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'oomf should just be mine',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	436126546
);
INSERT INTO twit_user VALUES (
	'2761294346',
	'briannnnna',
	'espinosaaxxx',
	'',
	'16// met carter, wanting cam and needing matt. a die heart cali girl livin;; in the eastern part of the usa. matt/matt cam/cam only thing i want are matt & cam',
	108,55,'Sun Aug 24 03:08:38 +0000 2014',3528,55,'en',
	'http://pbs.twimg.com/profile_images/522336405595623424/tZrdCn25_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: Just a palm tree and a sun 👍 and a random green dot because of the sun. http://t.co/d5RiUhB4JQ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2761294346
);
INSERT INTO twit_user VALUES (
	'130719409',
	'We are Young. ™',
	'Leytand',
	'Guatemala.',
	'Mejor amigo: Christopher D. -           Mejor amiga: Anahí A.                    [21/4/2012 • 17/8/2013 • 8/7/2014]',
	4058,1060,'Thu Apr 08 03:12:31 +0000 2010',68961,1060,'es',
	'http://pbs.twimg.com/profile_images/521920271528505344/U2l0Epck_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @vasnyJuarez: @Leytand me encantan esas fotos, salimos guapetones, bien pechochos 😂😳',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	130719409
);
INSERT INTO twit_user VALUES (
	'2764507587',
	'Alien Goddess',
	'perla_elii',
	'',
	'~cute but psychoooo~
new acount :-(',
	296,152,'Mon Sep 08 04:58:03 +0000 2014',12581,152,'es',
	'http://pbs.twimg.com/profile_images/526166698911870976/SBxoT6Np_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lndirecto: Los lunes duran más que el fin de semana.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2764507587
);
INSERT INTO twit_user VALUES (
	'2259760429',
	'Juli Quiroga',
	'QuirogaJuli03',
	'Mendoza',
	'null',
	466,451,'Tue Dec 24 03:54:55 +0000 2013',5679,451,'es',
	'http://pbs.twimg.com/profile_images/526233595602403328/3d3U3E___normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ManuFuentes96 qué agresivo jajajajaja',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2259760429
);
INSERT INTO twit_user VALUES (
	'1008852264',
	'   ¥',
	'LauraBriano_',
	'Cydonia - Eurasia ',
	'05.04.14 - 16.10.14 ❤',
	1981,1388,'Thu Dec 13 13:50:14 +0000 2012',46878,1388,'pt',
	'http://pbs.twimg.com/profile_images/518560564042543104/pmBmSM55_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Minha mãe me deu um remédio loco aqui e to maconhada',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	1008852264
);
INSERT INTO twit_user VALUES (
	'243266473',
	'stefany',
	'xxzxcumx',
	'',
	'ღ 707 ღ',
	773,187,'Wed Jan 26 17:37:12 +0000 2011',23435,187,'en',
	'http://pbs.twimg.com/profile_images/524847576068026369/WXLdw9C-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@SecretGneration why is there cum on her face',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	243266473
);
INSERT INTO twit_user VALUES (
	'964698655',
	'Addy.',
	'AddyCab13',
	'salt lake city. ',
	'Jaiden is my Bestfriend.',
	514,415,'Thu Nov 22 17:58:22 +0000 2012',1999,415,'en',
	'http://pbs.twimg.com/profile_images/526441564525305856/Nxv1dbq8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ha yeah pretty much. @honeyboobo1019 @jaiden12305 😂 http://t.co/5tm4Lnisbw',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	964698655
);
INSERT INTO twit_user VALUES (
	'540402291',
	'Grace Gilbakian',
	'gracegilbakian',
	'whbxctf',
	'chocolate enthusiast',
	346,343,'Thu Mar 29 22:09:07 +0000 2012',3209,343,'en',
	'http://pbs.twimg.com/profile_images/522569871054630913/2n-Js4xY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'there;;s two kinds of girls http://t.co/cX2c5SL2xJ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	540402291
);
INSERT INTO twit_user VALUES (
	'119652554',
	'|･ω･`)ゆずえあリーライ26昼夜',
	'yuzu_1013',
	'next→♡11/02 吉野裕行リリイベ2回目♡',
	'杉田と柿原と真綾ちゃんに全力で湧いて石川界人君追うのに必死(追えてない)なキチガイ腐女子大生だよ♡スクモどはまりなう。詳しくはwebで 規制→【@yuzuair1】鍵→【@yuzumdkt】',
	279,461,'Thu Mar 04 07:27:25 +0000 2010',70525,461,'ja',
	'http://pbs.twimg.com/profile_images/471218700171767809/2keKboHy_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Kくじは何回ひこうかなあ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	119652554
);
INSERT INTO twit_user VALUES (
	'359684622',
	'夢眠すぅ(すにょん)',
	's8_m11426',
	'横須賀↔︎渋谷.新宿.無限大',
	'✡ミントグリーン。私がもっとしっかりしなきゃなのに。甘くて切ない恋始めました。✡基地外メルヘンの合法ロリ。魔法少女未満です。でんぱ組.エイト.お笑い(17期).三浦大知love…ねむきゅんの声真似をたまにします。',
	273,353,'Mon Aug 22 00:46:06 +0000 2011',24322,353,'ja',
	'http://pbs.twimg.com/profile_images/526413581152051200/DeGCpuis_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Ryobuun_Isaawa アリス風メイドさん！',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	359684622
);
INSERT INTO twit_user VALUES (
	'2825609126',
	'PiTaPa-ﾀﾋﾟｵｶｽｷﾃﾞｽ-',
	'grcrtaaaapi',
	'',
	'We;;re GRCReW!! navi王子((o(nωn)o))
ｸﾞﾘﾊﾟﾚ 俺レボ参戦済♪',
	37,95,'Mon Sep 22 04:09:08 +0000 2014',37,95,'ja',
	'http://pbs.twimg.com/profile_images/513904636223172609/iT0Iet4J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'だっかっらっ
恥ずかしがらずにlaugh!!say!!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2825609126
);
INSERT INTO twit_user VALUES (
	'2825235938',
	'نوره عبدالله',
	'norhba7',
	'',
	'null',
	39,207,'Sun Sep 21 23:18:07 +0000 2014',139,207,'ar',
	'http://pbs.twimg.com/profile_images/523591442317336576/GAAdFE8r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@norhba7',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2825235938
);
INSERT INTO twit_user VALUES (
	'138702335',
	'バスビニネ',
	'basubinine',
	'神奈川県',
	'#basubinine がついているものや何度も繰り返し使われてる内容（あるあるなど）のツイートはすべて自動です。共感したらRTお願いします。また、こちらに@ツイートすると、自動で返信ツイートがされます。（自動ツイートの間隔が短いため、うるさいと思いますが、中の人の手動ツイートを見逃してしまわぬようご注意ください。)',
	284,488,'Fri Apr 30 09:46:01 +0000 2010',114741,488,'ja',
	'http://pbs.twimg.com/profile_images/438801454027907072/40sklpcl_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'今日も、新幹線をご利用くださいまして、ありがとうございます。この列車は、ひかり号、岡山行きです。途中の停車駅は、品川、新横浜、静岡、浜松、名古屋、京都です。京都を出ますと、終点岡山までの各駅に止まります。 #basubinine',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	138702335
);
INSERT INTO twit_user VALUES (
	'516010068',
	'Charley',
	'charleyxcx',
	'California',
	'no its not short for charlotte',
	113,208,'Tue Mar 06 00:18:43 +0000 2012',897,208,'en',
	'http://pbs.twimg.com/profile_images/526279156313493504/S6xFaMfC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;m the easiest person to get gifts for like all you have to do is look at my favs on etsy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	516010068
);
INSERT INTO twit_user VALUES (
	'178686468',
	'chamama',
	'chamama_ff11',
	'ララブのしっぽ亭@水の区',
	'「漬物石」とか「円石」の「鑑定」してます。
ダメね！ やりなおし！！
http://bit.ly/cIdMHe
※SquareEnix非公式(黙認)
CV希望:高橋 美紀

Lst;;s タルタル！',
	702,1108,'Sun Aug 15 12:12:36 +0000 2010',59703,1108,'ja',
	'http://pbs.twimg.com/profile_images/378800000866215772/-k1JtX4D_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'こないだ街中をプラントイドの群れが歩いてたわ。仮装行列かしら？#ff11',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	178686468
);
INSERT INTO twit_user VALUES (
	'2664968635',
	'セイバー@ドラポ',
	'saver2alter',
	'',
	'【ドラポ垢 Lv191 戦闘力10万付近】コロシアム 現ジョーカーリーグ ドラポ好きのフォロー歓迎なのでお気軽に〜 最近はフルボッコXもプレイ中 《アイコン作》@RtN3zさんからの頂き物デス',
	57,69,'Mon Jul 21 04:57:28 +0000 2014',1902,69,'ja',
	'http://pbs.twimg.com/profile_images/512041653792550912/hChF1nT1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@kuziran_bokko 久々に朝いってみたけどダメやね　昼か夕方推奨(´・ω・｀)',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2664968635
);
INSERT INTO twit_user VALUES (
	'2336525245',
	'天城雪子',
	'yukiko_a_bot',
	'雪子の城',
	'天城雪子の半自動非公式botです。0時〜7時まではおやすみします。鋭意作成中！応援よろしくお願いします‼︎フォローは手動での返しとなります。',
	18,28,'Mon Feb 10 11:21:21 +0000 2014',6992,28,'ja',
	'http://pbs.twimg.com/profile_images/433186675057885184/YyZKtbbZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'旅館の手伝いなう',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2336525245
);
INSERT INTO twit_user VALUES (
	'82050624',
	'物書き研究,',
	'youuya',
	'東京都',
	'日々文章を書いてます。物書きになることが夢です。文章に関するお仕事うけたまわります。英語、音楽などに興味を持っています。',
	4963,4844,'Tue Oct 13 09:06:32 +0000 2009',237648,4844,'ja',
	'http://pbs.twimg.com/profile_images/1308802160/___normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::『文章添削サービス』ご注文のページ＆サービスの説明（宣伝も可能）:: http://t.co/dZcsqnJM90',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	82050624
);
INSERT INTO twit_user VALUES (
	'559986276',
	'hello ☀️',
	'_Zouis_',
	'Jai/5 | Cal/4',
	'I don;;t know man I just like bands.',
	3432,2354,'Sat Apr 21 22:30:12 +0000 2012',57086,2354,'en',
	'http://pbs.twimg.com/profile_images/514244395617357824/xHbp1a4m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Charlie from Only The Young is 10x hotter than all the boys in Stereo Kicks',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	559986276
);
INSERT INTO twit_user VALUES (
	'314232715',
	'barbie bri',
	'NigguhPie',
	'',
	'life is beautiful but you dont have a clue',
	427,260,'Thu Jun 09 22:46:03 +0000 2011',50297,260,'en',
	'http://pbs.twimg.com/profile_images/523854165710086146/JaeaHgvJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@jackgilinsky: http://t.co/7NSvsi7cgq http://t.co/PBVF5oBZsl” you little fuckboy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	314232715
);
INSERT INTO twit_user VALUES (
	'2814600434',
	'Ju',
	'forhelpjustin',
	'Portuguese but lives in France',
	'Eu amo o viado do @justinbieber. I;;m a belieber and I;;m proud. Follow me on my   real count @tajaolharpraond',
	198,240,'Wed Sep 17 09:33:40 +0000 2014',2728,240,'pt',
	'http://pbs.twimg.com/profile_images/526110508349267968/DqZ-oeCt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'E Energia',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2814600434
);
INSERT INTO twit_user VALUES (
	'794545538',
	'Slim Shady',
	'LuchoTonetti1',
	'BUENOS AIRES (capital)',
	'-NO PUEDES TENER MIEDO DE GENTE QUE  ESTA DISPUESTA A HACERTE DAÑO, POR QUE SI TEMES A LA VIDA, NUNCA VIVIRÁS-

wpp:1150057509',
	221,221,'Fri Aug 31 19:47:53 +0000 2012',3985,221,'es',
	'http://pbs.twimg.com/profile_images/378800000821687131/c744fb9e517c082e4beaf4af0c18e7f3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'es increible como la paso de bien con SD',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	794545538
);
INSERT INTO twit_user VALUES (
	'716452183',
	'Jose Luis..',
	'JoseLuisGuti58',
	'Venezuela',
	'Amo la vida me gusta compartir con mis amistades quiero a mis mejores amigos Me gusta la filosofía Me gusta la Música Me gusta Me gusta ♥ 30-05-99 ☺',
	4077,4451,'Wed Jul 25 17:36:37 +0000 2012',94135,4451,'es',
	'http://pbs.twimg.com/profile_images/508780329817997312/UUGtCtPJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Chalesmorro: No sé qué me impulsa más a usar audífonos, si el amor a la música o el odio al mundo.',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	716452183
);
INSERT INTO twit_user VALUES (
	'2453801556',
	'Steal My Girl !!!!!!',
	'francheska_lim',
	'Manila,PhilipPaynes',
	'I Support Equal Rights, Im getting 100%CRAZY when i see those five idiots in my Life.They being idiots, so as we become crazy with them. ig:1991tiffanysmith1994',
	648,2002,'Sat Apr 19 23:24:18 +0000 2014',2356,2002,'en',
	'http://pbs.twimg.com/profile_images/525634810857803778/cEJuV8cQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2453801556
);
INSERT INTO twit_user VALUES (
	'2605469344',
	'TeeJay',
	'1OfficialTeeJay',
	'Chicago, IL',
	'Official Page of Tony Burnette, Jr. (TJ) IG: @1officialteejay #BeGreat',
	511,109,'Fri Jun 13 04:52:47 +0000 2014',766,109,'en',
	'http://pbs.twimg.com/profile_images/505353877341093890/LDMVDKlc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_flexguru his quality bad',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2605469344
);
INSERT INTO twit_user VALUES (
	'2300512567',
	'Travis Maddox',
	'BookdeMaddox',
	'Teresita {black moon emoji} ',
	'«Cuando estas cerca, no necesito alcohol, ni dinero, ni lucha, o algo de una sola noche...todo lo que necesito eres tú»|| Javis × Traia × Beth × Mai × Daniel ||',
	1217,967,'Mon Jan 20 00:17:14 +0000 2014',68902,967,'es',
	'http://pbs.twimg.com/profile_images/526093227615858689/iMnXBhDV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@JasminefkVilleg a mi me respetaran aun mas 😳',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2300512567
);
INSERT INTO twit_user VALUES (
	'834692059',
	'Fuck! Im a ghost!',
	'thefrickhead',
	'bay area ',
	'becka the booty legend - questionable trash - 16',
	615,420,'Thu Sep 20 03:38:15 +0000 2012',81665,420,'en',
	'http://pbs.twimg.com/profile_images/521127184883146753/Fldv-SAA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @avxlanche: the ;;Make Yourself Sick;; playlist http://t.co/wA9wylnnFd',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	834692059
);
INSERT INTO twit_user VALUES (
	'1618949256',
	'Miguel',
	'miiguelmaartins',
	'',
	'Instagram: miiguelmaartins / Snapchat: miiguelmartins',
	253,162,'Thu Jul 25 00:48:10 +0000 2013',4393,162,'pt',
	'http://pbs.twimg.com/profile_images/525439898091028480/Tjif95kV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'É para cumprir',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1618949256
);
INSERT INTO twit_user VALUES (
	'2518708824',
	'IiIIey,,!¡',
	'fuckboyIarry',
	'',
	'some trash is cool as hell',
	2064,428,'Fri May 23 21:24:26 +0000 2014',19625,428,'en',
	'http://pbs.twimg.com/profile_images/521117770508140544/K9iy_SX4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @sorryimalex: @Real_Liam_Payne fuck my ass',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2518708824
);
INSERT INTO twit_user VALUES (
	'123106775',
	'Alejandro Antiñanco',
	'ORIGIN4LS',
	'Antofagasta / Chile ',
	'No importa el tamaño de la dificultad, si tu voluntad es superior ツ #Cruzado ⚽ #Catlover ❤',
	2261,763,'Mon Mar 15 01:11:10 +0000 2010',26562,763,'es',
	'http://pbs.twimg.com/profile_images/500123514276286464/HuVTwgvj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Rick y su colt de municiones infinitas. #TWD',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	123106775
);
INSERT INTO twit_user VALUES (
	'1624368650',
	'PLS LIAM',
	'ddletando',
	'1d ddl 5h',
	'olha meu número de tweets, agora pensa se eu tenho uma vida social',
	10888,10223,'Sat Jul 27 02:20:22 +0000 2013',92519,10223,'pt',
	'http://pbs.twimg.com/profile_images/524973152343171072/vhV_uotL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne STEAL MY GIRL IS SO PERFECT! I CAN;;T STOP TO LISTEN! ILYSM! FOLLOW ME PLS! 💜💜 xoxo http://t.co/uZWJBwF5ti x20',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1624368650
);
INSERT INTO twit_user VALUES (
	'1109594664',
	'\-|Princess|-/',
	'CaseyAtTheDisc0',
	'Wonderland ✨',
	'All I know is how to tell jokes nobody laughs at and how to know it all.',
	181,349,'Mon Jan 21 17:32:33 +0000 2013',10475,349,'en',
	'http://pbs.twimg.com/profile_images/513908603753725952/b90NuNhU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'WAIT HOLD UP
Isn;;t it said that Henry is going to have a friend named Lily?
Emma;;s old friend;;s name is Lily
....?!?!?! #OnceUponATime',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1109594664
);
INSERT INTO twit_user VALUES (
	'2363510827',
	'Soledad Renteria',
	'Reent_Soledad',
	'Ciudad Obregon Sonora',
	'Algunas personas llegan a ser más interesantes cuando dejan de hablar.',
	95,111,'Thu Feb 27 02:38:12 +0000 2014',1717,111,'es',
	'http://pbs.twimg.com/profile_images/501738952726810625/z62h9hT9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ariadne Díaz, Marimar Vega y Claudia Álvarez celebran a su publirrelacionista http://t.co/reY4ovch3r',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	2363510827
);
INSERT INTO twit_user VALUES (
	'239532766',
	'Senhora  Petoucha ',
	'CarolPuroDrama',
	'samazériaa ',
	'http://queabrisateleve.tumblr.com/  Venha sol, venha sol pra iluminar o dia e venha sol venha sol pra iluminar a vida ☮',
	382,296,'Mon Jan 17 21:04:49 +0000 2011',15030,296,'en',
	'http://pbs.twimg.com/profile_images/378800000401196099/563a5bfcadedabede3f08492a0c93ee1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'https://t.co/3gKAG75Dm2',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	239532766
);
INSERT INTO twit_user VALUES (
	'107881929',
	'Luana Carolina',
	'luanacrln',
	'Fortaleza-Ce',
	'tumblr: ignosces-omni-confusione',
	300,174,'Sun Jan 24 02:37:53 +0000 2010',18714,174,'pt',
	'http://pbs.twimg.com/profile_images/503231281426333697/h9VDkefw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@larissabltzr são as melhores 😍  te ama eu, to dodoi de frio',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	107881929
);
INSERT INTO twit_user VALUES (
	'2457147438',
	'BASTILLEFRAN ',
	'fran_uribeb',
	'',
	'(dan in a skeleton hoodie bc hallowen.. duh)',
	322,579,'Mon Apr 21 21:33:33 +0000 2014',868,579,'es',
	'http://pbs.twimg.com/profile_images/521038675837468672/zfyW0lEm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne a lion',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2457147438
);
INSERT INTO twit_user VALUES (
	'956528803',
	'Júlia Pedó',
	'juliapedo',
	'',
	'null',
	367,182,'Mon Nov 19 01:14:06 +0000 2012',10305,182,'pt',
	'http://pbs.twimg.com/profile_images/502855202480074752/ygPAQIHZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'e foda-se, nunca vo se gostosa msm',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	956528803
);
INSERT INTO twit_user VALUES (
	'292309347',
	'#VibezWithUs™ | Dee',
	'DMckenziie',
	'London ',
	'Dreams 2 Reality LDN™ || Events Management || Graphic Design || Co-Director and Co-Host of @MusicJunkieLDN || @VibezWithUs',
	582,507,'Tue May 03 13:01:19 +0000 2011',21443,507,'en',
	'http://pbs.twimg.com/profile_images/518068323960233984/1k899bup_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@leiishyleiish lol smh this is why some of them are so stush and gassed finkin they;;re too nice for simple conversation',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	292309347
);
INSERT INTO twit_user VALUES (
	'2759569172',
	'Ika ',
	'Ekala03',
	'NYC',
	'Enjoy life. There is plenty of time to be dead. 25',
	31,158,'Sat Aug 23 17:32:02 +0000 2014',547,158,'en',
	'http://pbs.twimg.com/profile_images/508150584005111809/Bvn1Angf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Hi, how is your break? 💬
Do you mind following me?? x 📻
@Harry_Styles',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2759569172
);
INSERT INTO twit_user VALUES (
	'53796327',
	'Mayara',
	'mayaradutra',
	'São Paulo, Brasil',
	'null',
	139,78,'Sun Jul 05 00:21:02 +0000 2009',10781,78,'pt',
	'http://pbs.twimg.com/profile_images/523834538360078336/8RbX2SRF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Rodryguh: Fizemos nossa parte amigos. Agr é levantar a cabeça e continuar a batalha contra os corruPTos. #EuVoteiAecio45 #RIPBrasil #Im…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	53796327
);
INSERT INTO twit_user VALUES (
	'2195111079',
	'_yaniii∞',
	'ey_yo_yaniii',
	'',
	'null',
	74,99,'Mon Nov 25 06:24:12 +0000 2013',1339,99,'en',
	'http://pbs.twimg.com/profile_images/503330027921235968/XjFdJfsd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2195111079
);
INSERT INTO twit_user VALUES (
	'1453635553',
	'prog. Amr Alfakih',
	'prog7amr',
	'',
	'لم يعد لدي ماأخسره ؛؛
وأؤمن أن الأحلام لابد أن تؤخذ بجدية !
وأننا إما أن نكون كما نريد أو لا نكون !!!',
	110,241,'Fri May 24 08:31:18 +0000 2013',3497,241,'ar',
	'http://pbs.twimg.com/profile_images/413298555487809536/wrTE_CsG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'{واصبر لحكم ربك فإنك بأعيننا وسبح بحمد ربك حين تقوم} [الطور:48]
http://t.co/iR7sbYmO4H',
	'<a href=::http://quran.ksu.edu.sa/tw:: rel=::nofollow::>Ayat | آيات</a>',
	1453635553
);
INSERT INTO twit_user VALUES (
	'619475632',
	'gia',
	'Giahand65',
	'',
	'@kennyborrelli , 9:6 ❤️018',
	498,444,'Tue Jun 26 22:26:44 +0000 2012',21733,444,'en',
	'http://pbs.twimg.com/profile_images/524729448621694976/0I0AbSSI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @jooemorais: Sad with the fact that I;;m sad because i miss you.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	619475632
);
INSERT INTO twit_user VALUES (
	'2158847985',
	'Luis Leguisamo',
	'LeguisamoLuis',
	'',
	'felizmente casado con @maguipb',
	31,117,'Tue Oct 29 16:55:33 +0000 2013',60,117,'es',
	'http://pbs.twimg.com/profile_images/522852729115672576/9_YGohGY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @maguipb: #UruguayUnidoPorLaPositiva',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2158847985
);
INSERT INTO twit_user VALUES (
	'2787520100',
	'AnkaraOSGBAntalya',
	'ankaraosgb',
	'',
	'null',
	90,213,'Wed Sep 03 08:26:49 +0000 2014',43,213,'tr',
	'http://pbs.twimg.com/profile_images/507083190540853248/poBuny6T_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Maden yasası değişiyor...

Büyük umutlarla gelen ancak 5 bin madenciyi işsiz bırakan Maden Yasası;;nda değişikliğe... http://t.co/cXWv5lbpKW',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	2787520100
);
INSERT INTO twit_user VALUES (
	'1033432819',
	'Cande',
	'CandeMolina27',
	'',
	'Respira, espera, levantate sin prisa...',
	291,296,'Mon Dec 24 20:42:39 +0000 2012',9002,296,'es',
	'http://pbs.twimg.com/profile_images/521438513879719936/cMQdSDAK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JoseHer82865458: Olor a lluvia 💜💜💜',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1033432819
);
INSERT INTO twit_user VALUES (
	'122915590',
	'ウズラ3026',
	'uzura3026',
	'',
	'中割り系アニメーター鈴木です。一年目',
	298,267,'Sun Mar 14 10:02:09 +0000 2010',35284,267,'ja',
	'http://pbs.twimg.com/profile_images/484386113742594048/YYKOt4ns_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ﾐﾝﾅ…ｺﾛｼﾀ…… http://t.co/FrAyq5YKzz',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	122915590
);
INSERT INTO twit_user VALUES (
	'2358949603',
	'Juju✨',
	'Juiacharm97',
	'',
	'Half asian & ;; half hawaiian . - cared about One Person & ;; it fucked me up . Never again . ✋ - bitch im S I N G L E . Daaaa . ✊',
	285,190,'Mon Feb 24 04:31:00 +0000 2014',4995,190,'en',
	'http://pbs.twimg.com/profile_images/526219301909692416/fliAs5Tu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SavageNay__: That shit definitely was a lesson learned',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2358949603
);
INSERT INTO twit_user VALUES (
	'106079493',
	'samu',
	'samu2010anzo',
	'',
	'null',
	70,258,'Mon Jan 18 12:41:09 +0000 2010',1480,258,'es',
	'http://pbs.twimg.com/profile_images/1900370585/254230_10150270602968035_198875033034_9008494_1482943_n_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LaHojillaenTV: #MaduroEnLaBatallaEconomica Hoy en LA HOJILLA rechazamos al fascista @marianorajoy por su injerencia en Venezuela http:/…',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	106079493
);
INSERT INTO twit_user VALUES (
	'538627309',
	'Maxi Escobar [CABJ]',
	'maxiescobar1',
	'',
	'Bostero vago y atorrante',
	176,475,'Wed Mar 28 01:34:34 +0000 2012',5797,475,'es',
	'http://pbs.twimg.com/profile_images/523337373984104448/-73hPzF6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'pessoas que visitaram meu perfil e grupos que sigo no Twitter http://t.co/FjqeoxeTN4',
	'<a href=::http://twitcom.com.br:: rel=::nofollow::>Twitcom - Comunidades </a>',
	538627309
);
INSERT INTO twit_user VALUES (
	'2325655896',
	'Catalina Amanda',
	'Cata_Fuentes270',
	'',
	'One Direction| Directioner | The Walking Dead| Nutella| Chocolate| Cats| Animals| Vogue | draw| Family| Friends ♥',
	447,1236,'Mon Feb 03 15:42:06 +0000 2014',900,1236,'es',
	'http://pbs.twimg.com/profile_images/519573559526449153/MGRX7zMD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2325655896
);
INSERT INTO twit_user VALUES (
	'427000329',
	'KEVINBLANCO',
	'KEVINBLANCO26',
	'BOGOTA',
	'null',
	29,51,'Sat Dec 03 00:00:59 +0000 2011',104,51,'es',
	'http://pbs.twimg.com/profile_images/517811617556217856/OqEFW7FA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KMiilitha858: ¿Cómo ser atractivo? Razones científicas que determinan la belleza

http://t.co/k3W1X1RS8C',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	427000329
);
INSERT INTO twit_user VALUES (
	'943710230',
	'darlene ||20 days',
	'luvespinosaaa',
	'matts lane',
	'♡one day ill be able to prove them wrong and say i met my loves and held them in my arms♡',
	1544,354,'Mon Nov 12 14:48:47 +0000 2012',24874,354,'en',
	'http://pbs.twimg.com/profile_images/522205300582277120/uzourt19_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: Takin sips from the fountain of youth',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	943710230
);
INSERT INTO twit_user VALUES (
	'1631392843',
	'The K Bye Girl',
	'StayCutee_',
	'NY',
	'DSU➡️SJU - Psych Major -Instagram= @StayCuteeee',
	311,230,'Mon Jul 29 22:10:06 +0000 2013',8127,230,'en',
	'http://pbs.twimg.com/profile_images/522987742096289792/wxe_DyLA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SLFSH_: after you start eating pears &amp; shit http://t.co/sQZiSTM5ku',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1631392843
);
INSERT INTO twit_user VALUES (
	'248816861',
	'Victoria::Ailen☺',
	'VictoriaAilenn',
	'¡Feliz!     «Desiderata»',
	'Vida es eso que pasa entre un buen café, un buen libro y un buen rock| Paz mental |Actriz en proceso|Malena Pichot|Calle 13: mi himno| El arte va primero',
	591,294,'Mon Feb 07 19:53:47 +0000 2011',38488,294,'es',
	'http://pbs.twimg.com/profile_images/498546736991055873/OjtWOtbV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AnaliaaRz na, pero al personal si sabia, pense que independiente, ni me gasto..',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	248816861
);
INSERT INTO twit_user VALUES (
	'597745315',
	'WWA Tour 8/29/14!❤️',
	'AshsGuurl',
	'Playing Drums With Ashton ',
	'0/5 | 0/4 | Cody Simpson Followed 4/20/14 at 11:01 pm, Shane Dawson Retweeted 2/9/14, Met Justin Bieber 7/7/13, Brittani Taylor & Madison Pettis Follow⚓️',
	781,1999,'Sat Jun 02 21:01:46 +0000 2012',1860,1999,'en',
	'http://pbs.twimg.com/profile_images/457288663290761216/KjwtojYp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	597745315
);
INSERT INTO twit_user VALUES (
	'120509814',
	'Giovanna Ponzoni',
	'GiiPonzoni',
	'',
	'Nobody;;s ever made me feel the way that you do',
	1340,323,'Sat Mar 06 17:09:13 +0000 2010',198345,323,'en',
	'http://pbs.twimg.com/profile_images/525318339741356032/BEOGmTZu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PorraSilvoca: O FILHO DA EMPREGADA TÁ COMENDO HÄAGEN-DAZS http://t.co/mpb58dlYFM',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	120509814
);
INSERT INTO twit_user VALUES (
	'49392033',
	'Teri Carroll-Miller',
	'tericmiller',
	'',
	'I love Jesus, my husband, my son, dogs, STL Cards, Packers, Blackhawks, coffee, and shopping',
	141,144,'Sun Jun 21 18:49:25 +0000 2009',1288,144,'en',
	'http://pbs.twimg.com/profile_images/378800000331421931/2c759895ae647c4aeed5dfd918859632_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LHSCougarball: RIP Oscer Tavares. Prayers for your family #STLCards #baseballfamily',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	49392033
);
INSERT INTO twit_user VALUES (
	'1430823086',
	'Newt',
	'smileof_niall',
	'Beau/5',
	'https://twitter.com/danielsahyounie/status/467792583604068352',
	511,290,'Wed May 15 15:50:35 +0000 2013',12619,290,'fr',
	'http://pbs.twimg.com/profile_images/526121608466165761/aOz5viky_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1430823086
);
INSERT INTO twit_user VALUES (
	'2786544801',
	'tysm wes✨',
	'emblem3lovewk',
	'argentina ',
	'i love wesley and keaton more i love my life/ 18/11wesley❤',
	72,89,'Sat Sep 27 02:03:41 +0000 2014',834,89,'es',
	'http://pbs.twimg.com/profile_images/523631921931509760/SN20LV7M_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @EmblemThree: #3HoursForeverTogether',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2786544801
);
INSERT INTO twit_user VALUES (
	'2786331176',
	'Sr. Álvarez',
	'hectoestuyo',
	'',
	'#LaC// Since 99;;// Nadie sabe lo que tiene hasta que lo pierde',
	115,89,'Tue Sep 02 17:08:41 +0000 2014',7649,89,'en',
	'http://pbs.twimg.com/profile_images/524225041354207232/_7GtsA5S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@carolinavrd_ aaah dale inepta',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2786331176
);
INSERT INTO twit_user VALUES (
	'2530588848',
	'LightAndTimeArt',
	'LightAndTimeArt',
	'Minneapolis, MN',
	'Amazing working art pieces made from recycled computer parts, vintage cameras, projectors, and other salvaged techno and industrial components.',
	324,16,'Wed May 28 18:33:33 +0000 2014',152323,16,'en',
	'http://pbs.twimg.com/profile_images/479043067182190593/IWjdkNuN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'◕✿ #HomeTheater Decor - 1950;;s Kliegl Bros. #StageLight - #Vintage Tripod floorlamp - #Etsy http://t.co/EQoHIPJliW http://t.co/vJ02KkDiAO',
	'<a href=::http://tweet-eye.com/:: rel=::nofollow::>Tweet Eye - Tweet My Website</a>',
	2530588848
);
INSERT INTO twit_user VALUES (
	'182643583',
	'Jake Schlegel',
	'Jake_Schlegel',
	'Wichita, KS',
	'KAKE (ABC) Sports Anchor & Reporter, Mizzou Alum, Rancher, Runner, Dreamer, Believer, Winner...Grateful.
http://jakeschlegel.com',
	521,260,'Wed Aug 25 02:02:55 +0000 2010',1989,260,'en',
	'http://pbs.twimg.com/profile_images/516878017327808512/SYcmDC0S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Big Game James back up. Three more innings bro. Three more innings. Let;;s go. #Royals',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	182643583
);
INSERT INTO twit_user VALUES (
	'1623676638',
	'maroa',
	'fixestylinson',
	'',
	'✿ amiga pare ✿',
	5058,3330,'Fri Jul 26 19:33:57 +0000 2013',25606,3330,'pt',
	'http://pbs.twimg.com/profile_images/526465575372193792/wUhgzFnl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1623676638
);
INSERT INTO twit_user VALUES (
	'468916508',
	'Zwahr',
	'zwahr',
	'Needville Tx ',
	'yo yo yo 148 3 to the 3 to the 6 to the 9 representing the ABQ what up biatch',
	374,335,'Fri Jan 20 01:44:10 +0000 2012',7976,335,'en',
	'http://pbs.twimg.com/profile_images/517112453294223360/p1Rqm8CA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I need food and water and sleep and shower and cry',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	468916508
);
INSERT INTO twit_user VALUES (
	'1081334467',
	'd',
	'twdzombies',
	'',
	'twd série lixo flopada just look at the flowers',
	3150,2450,'Sat Jan 12 00:18:09 +0000 2013',19452,2450,'en',
	'http://pbs.twimg.com/profile_images/492770166631968770/f-fvl1cS_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dontwd: ::A:: IT;;S PRETTY LITTLE LIARS? #thewalkingdead',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1081334467
);
INSERT INTO twit_user VALUES (
	'750015974',
	'JuliaLofton Walpole',
	'JuliaLofton',
	'Charleston',
	'You;;re welcome',
	140,204,'Fri Aug 10 20:40:08 +0000 2012',527,204,'en',
	'http://pbs.twimg.com/profile_images/513452483784351744/qi3jZb9g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'When your mom asks if you;;re gay #ilikemen @aaronthornton55 http://t.co/CY6Gx5zFPD',
	'<a href=::http://www.apple.com:: rel=::nofollow::>iOS</a>',
	750015974
);
INSERT INTO twit_user VALUES (
	'184137732',
	'Ari ',
	'owariadne',
	'São josé do rio preto',
	'se você ta , eu topo',
	1288,777,'Sat Aug 28 19:58:30 +0000 2010',18432,777,'pt',
	'http://pbs.twimg.com/profile_images/518538335103758337/OugEyeal_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Que cada ano sem você me traga mais 10 anos ao seu lado',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	184137732
);
INSERT INTO twit_user VALUES (
	'352766723',
	'JamesHartline',
	'JamesHartline',
	'',
	'The St. James Hartline Hotel where God will check you into your room and I will check you out in the news headlines.',
	69,166,'Thu Aug 11 02:08:30 +0000 2011',2945,166,'en',
	'http://pbs.twimg.com/profile_images/1735129741/Hotel_st._james_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@IngrahamAngle It will be a Bush vs Kerry re-do in 2016. Different Bush vs the same Kerry and revenge against Obama will drive the election.',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	352766723
);
INSERT INTO twit_user VALUES (
	'244739322',
	'Dribblez Konerman',
	'JDribbz',
	'Cincinnati',
	'Xavier Basketball, Reds, Elder. Clear eyes, full hearts, can;;t lose.',
	216,379,'Sun Jan 30 01:16:54 +0000 2011',6089,379,'en',
	'http://pbs.twimg.com/profile_images/514160526457593856/C7nyDAZq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @edmondsumner: Me and @jpmacura for Halloween? 😂😂 http://t.co/jbWDpFLBvY',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	244739322
);
INSERT INTO twit_user VALUES (
	'546205467',
	'nikkeh',
	'msu_nikki',
	'',
	'null',
	1536,1296,'Thu Apr 05 16:58:22 +0000 2012',7464,1296,'en',
	'http://pbs.twimg.com/profile_images/494202625395802112/DuwBl_bn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@VivaciousWater @SpongeBobVlnes @chawksofar @kurafegan 😂😂😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	546205467
);
INSERT INTO twit_user VALUES (
	'207684192',
	'TR!CK$',
	'Tricks908',
	'Brick City #BrickBandits',
	'TR!CK$ I Producer/ Dj I booking@allminela.com I                                                                               Mgmt: edwin@allminela.com',
	1811,852,'Mon Oct 25 20:51:07 +0000 2010',39414,852,'en',
	'http://pbs.twimg.com/profile_images/499693917395103744/kzaIQxGK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'11/8 Its Going Down @itsR3ll &amp; @gomikegip all in one night ! http://t.co/HxjPNBgXyo http://t.co/KAx5RwBzzA',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	207684192
);
INSERT INTO twit_user VALUES (
	'2304448272',
	'NHK番組bot（熊本）',
	'nhkprg_kumamoto',
	'',
	'【情報提供：NHK】NHK番組表API（ http://api-portal.nhk.or.jp/ja/ ）を用いてNHK熊本局の番組情報をツイートします。お問い合わせは @nhkprg_main まで。NHK公式アカウントではありません。',
	63,64,'Wed Jan 22 08:08:52 +0000 2014',21623,64,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'【ランダムセレクション・Eテレ】
17:40「すすめ！キッチン戦隊クックルン「ネバネバだね！納豆怪人」」
20:45「ＮＨＫ手話ニュース８４５」',
	'<a href=::http://nhkprgbot.daiwa-hotcom.com:: rel=::nofollow::>NHK番組bot</a>',
	2304448272
);
INSERT INTO twit_user VALUES (
	'1845655964',
	'ﾏﾀﾆﾃｨ不二夫',
	'omangeeeen',
	'',
	'函館高専3z 三度の飯よりTwitter。手動。',
	28,13,'Mon Sep 09 13:12:51 +0000 2013',111584,13,'ja',
	'http://pbs.twimg.com/profile_images/523707367632809986/bf0cHXj1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'W',
	'<a href=::http://makebot.sh/:: rel=::nofollow::>悪循環man★</a>',
	1845655964
);
INSERT INTO twit_user VALUES (
	'197909473',
	'KMKC AWOS',
	'kmkc_wx',
	'KMKC',
	'I retrieve the current weather data as observed at KMKC and report it here.',
	35,0,'Sat Oct 02 20:13:37 +0000 2010',38824,0,'en',
	'http://pbs.twimg.com/profile_images/1136072047/asos-sunset_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'KMKC 270054Z 18014G23KT 10SM CLR 26/14 A2966 RMK AO2 SLP037 T02560144',
	'<a href=::http://github.com/adamfast/python-tweetar:: rel=::nofollow::>python-tweetar</a>',
	197909473
);
INSERT INTO twit_user VALUES (
	'1542662382',
	'follow @jauregunit',
	'cabelloofcamila',
	'',
	'null',
	5,20,'Mon Jun 24 07:03:08 +0000 2013',5906,20,'en',
	'http://pbs.twimg.com/profile_images/378800000039642838/f32271bc246cfc3d94515a7b20182896_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/pBvMbHBNAk
x22',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1542662382
);
INSERT INTO twit_user VALUES (
	'1523699071',
	'follow @jauregunit',
	'camilacacooca',
	'',
	'null',
	2,20,'Mon Jun 17 01:55:51 +0000 2013',5934,20,'en',
	'http://pbs.twimg.com/profile_images/378800000004228748/7fcb8d1dae34c5f63cf32b203964cdbb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/jDLIGtCcSu
x22',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1523699071
);
INSERT INTO twit_user VALUES (
	'320118017',
	'Yuni.N',
	'yuuryuuni',
	'narnia',
	'Introvert
Clumsy',
	298,352,'Sun Jun 19 10:11:25 +0000 2011',21013,352,'en',
	'http://pbs.twimg.com/profile_images/524049008348524544/7Fmd9ck-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Gue salah apa sih RT @ CHLintang: @ yuuryuuni  Hai, Bantu follow =&gt; @ BooNanyaNih ya. Banyak pertanyaan menarik, difollow ya, terima kasih :',
	'<a href=::https://play.google.com/store/apps/details?id=org.mariotaku.twidere:: rel=::nofollow::>Twidere for Android #2</a>',
	320118017
);
INSERT INTO twit_user VALUES (
	'2223258714',
	'Daniel Tapia',
	'tapia2712',
	'',
	'-baseball -dodgers -colossians 3:23',
	154,516,'Sat Nov 30 15:13:50 +0000 2013',1893,516,'en',
	'http://pbs.twimg.com/profile_images/480894891279396864/s-gYN2Y7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLBMeme: Oscar Taveras has died in a car accident. Thoughts and prayers with his family. #RIP http://t.co/TaeldbIsXU',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2223258714
);
INSERT INTO twit_user VALUES (
	'2753393645',
	'えみり',
	'emiri_1002',
	'',
	'最近テイルズ買いました!ハイキューとかアニメも好きです。ちょっと腐ってますがアニメゲーム好きの人はよろしくです(^o^)',
	865,1058,'Thu Aug 28 15:19:41 +0000 2014',29,1058,'ja',
	'http://pbs.twimg.com/profile_images/525512110613082113/Oqfp7HxQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @rec_appli: 石田彰、緑川光、中村悠一、杉田智和
内田真礼、花澤香菜、沢城みゆき
他、豪華声優陣!!

iPhone⇒http://t.co/3myZkOY5WP

android⇒http://t.co/X0FeuSt3Zt

チェインクロニクル http:/…',
	'<a href=::http://www.yahoo.co.jp/:: rel=::nofollow::>くらん3−4</a>',
	2753393645
);
INSERT INTO twit_user VALUES (
	'170481681',
	'devpolicy.org',
	'devpolicy',
	'Canberra',
	'Australian aid | Papua New Guinea & the Pacific | Global development policy',
	4876,499,'Sat Jul 24 23:43:38 +0000 2010',5108,499,'en',
	'http://pbs.twimg.com/profile_images/2176970040/Devpolicy_logo_image_normal.JPG',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iwda: What’s the good news on women’s participation and empowerment that has come out of #PNG recently? Via @devpolicy http://t.co/GwjJ…',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	170481681
);
INSERT INTO twit_user VALUES (
	'1053743798',
	'liz | 262',
	'lolurnotmatt',
	'seattle i guess',
	'i like long romantic walks to the gates of hell',
	2886,711,'Tue Jan 01 23:38:08 +0000 2013',40430,711,'en',
	'http://pbs.twimg.com/profile_images/526476701723656192/a2aR-wti_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne dress up niall please',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1053743798
);
INSERT INTO twit_user VALUES (
	'365454672',
	'Mandsss✌️',
	'amandaaastine',
	'',
	'amandaaa;*♡, #cstate;;17 ❤️; all in all is all we are☀️;2⃣',
	486,1996,'Wed Aug 31 13:32:45 +0000 2011',10705,1996,'en',
	'http://pbs.twimg.com/profile_images/526538901666922496/lgsoKK2R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @girlposts: OHMYGOD https://t.co/K4cAkwIzHr',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	365454672
);
INSERT INTO twit_user VALUES (
	'1510904900',
	'follow @jauregunit',
	'camilacakunis',
	'',
	'null',
	8,22,'Wed Jun 12 15:56:00 +0000 2013',5929,22,'en',
	'http://pbs.twimg.com/profile_images/344513261569298533/020aa3952edfbf1ce752a86a35081762_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/VrFc0ubBlx
x22',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1510904900
);
INSERT INTO twit_user VALUES (
	'2848125518',
	'メッチャ惹かれるバイク画像',
	'hikare_bike',
	'',
	'思わず惹かれてしまうカッコいいバイクの画像を厳選して配信していきます。バイク好きにはたまらないものばかりです。　気に入ったものがありましたらRTとファボよろしくお願いします。',
	741,1969,'Thu Oct 09 02:21:38 +0000 2014',46,1969,'ja',
	'http://pbs.twimg.com/profile_images/520036579591467010/IUhUeGHj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ero2jigazo: エロゲーやりたい放題ｗｗ
この多さガチでヤバくねぇ

⇒ http://t.co/gyFyAn52Hp

フルボイスでぁんぁん
ヌルヌルすぎるｗｗ
喘ぎ声エロすぎワロタｗｗ http://t.co/PdEi1HJjEn',
	'<a href=::https://twitter.com/akudafw_:: rel=::nofollow::>自然界には</a>',
	2848125518
);
INSERT INTO twit_user VALUES (
	'931055270',
	'#0% Followback',
	'TeamMassFollow',
	'',
	'#Retweet my tweets, follow who retweets. Follow my followers. #TeamMassFollow',
	3179,4,'Wed Nov 07 02:41:15 +0000 2012',2233,4,'en',
	'http://pbs.twimg.com/profile_images/428367387633524736/MQxnW1qb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#RETWEET THIS!! FOLLOW ME &amp; EVERYONE ELSE THAT RETWEETS THIS FOR 100+ FOLLOWERS FAST! #TeamFollowBack #Follow2BeFollowed #MassFollowTrain&lt;',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	931055270
);
INSERT INTO twit_user VALUES (
	'1511514397',
	'follow @jauregunit',
	'cannibalcabello',
	'',
	'null',
	3,20,'Wed Jun 12 20:03:25 +0000 2013',5913,20,'en',
	'http://pbs.twimg.com/profile_images/344513261570133796/cecab878e41f6463cca8665703e93c06_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/3UpZuzBM5g
x22',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1511514397
);
INSERT INTO twit_user VALUES (
	'2259679308',
	'바람솔솔 ',
	'baramsolsol1',
	'',
	'이민호 ♡  당신이있어  행복합니다..                       강남1970',
	78,79,'Tue Dec 24 02:33:20 +0000 2013',4797,79,'ko',
	'http://pbs.twimg.com/profile_images/513254836028989441/69ZKhP1r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iamkimsocool: (♥) 141027 ICN : #이민호 #LeeMinHo 기분 좋아보여서 우리도 기분좋아^_^!
@ActorLeeMinHo 
(http://t.co/msjs55ecOW) http://t.co/dnNK6mwyj3',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2259679308
);
INSERT INTO twit_user VALUES (
	'2626422652',
	'Mati',
	'MatiOlariaga',
	'',
	'★..Wsp.. 3543638146 .. hablen ..★',
	109,106,'Fri Jun 20 19:07:35 +0000 2014',678,106,'es',
	'http://pbs.twimg.com/profile_images/480067111222792193/XBhEsX9q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No pasa nada En breve hacemos un gol',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2626422652
);
INSERT INTO twit_user VALUES (
	'430448814',
	'al Faisal',
	'fs220092002',
	'',
	'null',
	752,2000,'Wed Dec 07 05:34:43 +0000 2011',2333,2000,'en',
	'http://pbs.twimg.com/profile_images/478777944974712832/_-icNhDi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله و لا تكلني إلى نفسي طرفـة عيـن http://t.co/TtIjNbr14r',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	430448814
);
INSERT INTO twit_user VALUES (
	'1660728728',
	'mary',
	'covenemo',
	'',
	'null',
	9445,49,'Sat Aug 10 18:43:35 +0000 2013',63758,49,'en',
	'http://pbs.twimg.com/profile_images/526387264419815425/7ZD3FM9D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'KILLED JT FUCK',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1660728728
);
INSERT INTO twit_user VALUES (
	'2303605843',
	'cody',
	'CodyMangin_',
	'',
	'||dirty south||stay gold||',
	423,213,'Tue Jan 21 19:30:36 +0000 2014',9587,213,'en',
	'http://pbs.twimg.com/profile_images/521826396252164096/kVITkIxq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'💃💁-you and logan 👌
try to last this time 😴',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2303605843
);
INSERT INTO twit_user VALUES (
	'2149370000',
	'ritaoras',
	'RitaOraSaved30',
	'',
	'null',
	30,40,'Tue Oct 22 16:51:27 +0000 2013',38815,40,'pt',
	'http://pbs.twimg.com/profile_images/378800000633617687/0acba45e6feb61e348fafb407c12ed26_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'karaoke  @Drake Favorite Rap/Hip-Hop Artist #AMAs',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2149370000
);
INSERT INTO twit_user VALUES (
	'338068110',
	'Laur',
	'laurenfaron',
	'CLE/CBUS',
	'Sophomore at THE Ohio State University. Browns, Indians, Cavs, and Bucks are my life.',
	1326,667,'Tue Jul 19 01:14:22 +0000 2011',68263,667,'en',
	'http://pbs.twimg.com/profile_images/522986197782913024/djsxKOud_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Seeing @chancetherapper tomorrow!!😍',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	338068110
);
INSERT INTO twit_user VALUES (
	'2300431567',
	'MahomieGAL',
	'Mahomie_Gal',
	'Chicago',
	'♛Austin Mahone;;s MahomieGal
Singer*Dancer*Songwriter 
Youtube videos & Vines on the way
Keep dreaming that dream until it comes true♛',
	507,383,'Sun Jan 19 22:41:24 +0000 2014',2842,383,'en',
	'http://pbs.twimg.com/profile_images/514124594077122561/sHeSVZfP_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I love it when the #, #AustinMahoneisCurrentlyNaked trends...anybody else?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2300431567
);
INSERT INTO twit_user VALUES (
	'741589674',
	'ذكـــرني',
	'R2TI',
	' عطروا افواهكم بذكر الله',
	'هذا الحساب صدقه جاريه لجميع المسلمين الاحياء منهم والاموات

#ذكرني
#اللهم_اغفر_لوالدي

القرآن الكريم كامل لجميع المشايخ 
http://i-2b.net',
	3343,3315,'Mon Aug 06 22:36:58 +0000 2012',321149,3315,'ar',
	'http://pbs.twimg.com/profile_images/485207775505416192/Ue2HnaaG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'قال تعالى : :: وأسجد وإقترب :: فالصلاة طريق القرب من الله فلاتتركها..#تذكيرلصلاةالفجر..┊♥•',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	741589674
);
INSERT INTO twit_user VALUES (
	'152642478',
	'⠀⠀⠀⠀⠀⠀⠀',
	'FernandoxDope',
	'California⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
	'⠀⠀⠀⠀⠀[ Personal Accont @FernandoBDope ]',
	92239,29929,'Sun Jun 06 14:04:24 +0000 2010',75306,29929,'en',
	'http://pbs.twimg.com/profile_images/522624665122922496/zHOjMqfZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iKilledTwittah: 15 Sexy Halloween Costumes https://t.co/M5C6z49DdP',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	152642478
);
INSERT INTO twit_user VALUES (
	'485166432',
	'Lorenna',
	'betterthanubaby',
	'',
	'bsb',
	485,291,'Mon Feb 06 22:21:09 +0000 2012',39999,291,'pt',
	'http://pbs.twimg.com/profile_images/524707256303374337/j28XOKcE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@hmxislene eu? ta louca?',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	485166432
);
INSERT INTO twit_user VALUES (
	'2335362458',
	'ArianaGrande4Ever',
	'grande4_ever',
	'Los Angeles',
	'Ariana Grande is My Everything,but @mybuterasarmy is my everything and my life, dont eat that cheeto,its processed,love you my Queen',
	740,1207,'Sun Feb 09 16:36:56 +0000 2014',4376,1207,'en',
	'http://pbs.twimg.com/profile_images/526201312279814145/oL0mbA9r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Osnapitzsarah_ @ArianaGrande yeeesss😍',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2335362458
);
INSERT INTO twit_user VALUES (
	'818375424',
	'ren.',
	'laurenbader',
	'zjm ; afi',
	'“ they;;ll kiss your feet while they stab your back ”',
	436,983,'Tue Sep 11 23:08:04 +0000 2012',10227,983,'en',
	'http://pbs.twimg.com/profile_images/482730874069204993/OgtQFEFA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @94ftpayne: @Real_Liam_Payne OH MY GOD DO THIS http://t.co/fb2L9p8Nq4',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	818375424
);
INSERT INTO twit_user VALUES (
	'94745264',
	'nessa',
	'wittymatthew',
	'vegas',
	'null',
	28557,22020,'Sat Dec 05 07:04:12 +0000 2009',37790,22020,'en',
	'http://pbs.twimg.com/profile_images/526494085419630592/ZqrexgPe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa die in the next 5 minutes or live forever?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	94745264
);
INSERT INTO twit_user VALUES (
	'482483706',
	'Callan.',
	'CallanGregson26',
	'',
	'17. Senior; 2015. Shelby. Varsity Cheerleader. Luke Bryan.',
	756,688,'Fri Feb 03 23:42:46 +0000 2012',12175,688,'en',
	'http://pbs.twimg.com/profile_images/522516346798874624/BV-tPU0d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ABCheerChick_98: Officially over today. Bye.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	482483706
);
INSERT INTO twit_user VALUES (
	'1199272844',
	'debi loves niall',
	'cuddlexnjh',
	'♡ Ashton Fletcher Irwin ♡ ',
	'✧ just a queen behind a computer screen ✧',
	2371,1422,'Wed Feb 20 02:01:33 +0000 2013',3573,1422,'en',
	'http://pbs.twimg.com/profile_images/526369701161889793/DSW7zV5o_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1199272844
);
INSERT INTO twit_user VALUES (
	'1616671568',
	'YOUNG CHUG',
	'lynn14_t',
	'',
	'no ones no fives no tens no twenties just hundreds and fifties',
	280,465,'Wed Jul 24 03:01:52 +0000 2013',1482,465,'en',
	'http://pbs.twimg.com/profile_images/521743809022291968/Jb_SeN3E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WomanCrushPlx: Jessica Alba 💘 http://t.co/6ZowPqAlKU',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1616671568
);
INSERT INTO twit_user VALUES (
	'1465432874',
	'gaynorroberts',
	'gaynorroberts6',
	'Calgary, AB',
	'Loves LPGA, The Yankees, My Sister',
	17,40,'Tue May 28 18:56:53 +0000 2013',2169,40,'en',
	'http://pbs.twimg.com/profile_images/516574090354651136/_CWh2DLe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@LPGA I taped hrs of GC training tips (ridiculous, stupid) to make sure I;;d get the tournament covered!  Maybe think of Int. TV tmes?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1465432874
);
INSERT INTO twit_user VALUES (
	'306212779',
	'Kell',
	'kelllmcdermott',
	'dirty jerz',
	'null',
	800,482,'Fri May 27 13:52:47 +0000 2011',10620,482,'en',
	'http://pbs.twimg.com/profile_images/526364982355980288/HMaKq7BO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'😈😈😈',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	306212779
);
INSERT INTO twit_user VALUES (
	'2259685742',
	'follow @jauregunit',
	'cameelabae',
	'',
	'null',
	3,18,'Tue Dec 24 02:39:41 +0000 2013',5991,18,'en',
	'http://pbs.twimg.com/profile_images/445232897834766337/lmx8_LJr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM
can you PLEASE
look at this 
and REFOLLOW @jauregunit 
ILY LIAM HAVE A GREAT DAY
http://t.co/USKetDSLhi
x22',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2259685742
);
INSERT INTO twit_user VALUES (
	'180674166',
	'Stephanie Silva',
	'StephanieS4_',
	'Venus.',
	'Ese te e pe hache a ene i e♡ .. Siempre ve mas alla de tus ojos hay mejores opciones, ¡MEJOR ES LO QUE PASA! ¡SONRIE SIEMPRE! psdta, como yo no hay dos!',
	1716,900,'Fri Aug 20 05:33:29 +0000 2010',49551,900,'es',
	'http://pbs.twimg.com/profile_images/510035041322557441/LQBZ5iL9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@odicet @Mariaaajmm @Alfreuq @jose_are Si, en la nariz +++',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	180674166
);
INSERT INTO twit_user VALUES (
	'148048950',
	'Maria Florencia Jara',
	'floorjara',
	'Santa Fe',
	'null',
	527,371,'Tue May 25 18:11:41 +0000 2010',1481,371,'es',
	'http://pbs.twimg.com/profile_images/482190410228711425/ZkaAPFCS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MComachi: No puedo conseguir, cambiar, ni corregir lo que me corre en las venas ♪ http://t.co/9IkwNgK44w',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	148048950
);
INSERT INTO twit_user VALUES (
	'717746637',
	'x',
	'04x82',
	'',
	'null',
	271,20,'Wed Oct 16 16:22:39 +0000 2013',119,20,'en',
	'http://pbs.twimg.com/profile_images/526486222936756225/7tzgib5a_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'he said he was scared of commitment, but he had tattoos all over his skin',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	717746637
);
INSERT INTO twit_user VALUES (
	'879334194',
	'akbar',
	'akbar_jie2',
	'makassar',
	'null',
	17,532,'Sun Oct 14 04:48:24 +0000 2012',2568,532,'id',
	'http://pbs.twimg.com/profile_images/524373209638907908/XktROeFE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AngelPalem: #Aquarius adalah pribadi yg berteman dengan siapapun dan tidak memandang tingkat sosial mereka',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	879334194
);
INSERT INTO twit_user VALUES (
	'167465775',
	'fiftyshades',
	'_xXxRated',
	'',
	'Me
Fewer discretion is advised',
	973,931,'Fri Jul 16 17:22:25 +0000 2010',50640,931,'en',
	'http://pbs.twimg.com/profile_images/520380646066520065/juvM0xaX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_asherss 😂😂 #aftersexmunchies',
	'<a href=::http://www.echofon.com/:: rel=::nofollow::>Echofon</a>',
	167465775
);
INSERT INTO twit_user VALUES (
	'774671838',
	'✧ pixie rae ✧',
	'sataniclarry666',
	'',
	'✧: ･ﾟ｡✧ louis cutie patootie with a hella rad booty tomlinson ✧: ･ﾟ｡✧',
	15205,8542,'Wed Aug 22 23:05:35 +0000 2012',16069,8542,'en',
	'http://pbs.twimg.com/profile_images/526540588741853184/dHmT5Z8g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@grande_the_best yes ty !! 😊',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	774671838
);
INSERT INTO twit_user VALUES (
	'1149034597',
	'Hunter Konig',
	'hkonig99',
	'',
	'I;;d rather have a life of ;;OH WELLS;; than a life of ;;WHAT IFS.;;',
	523,250,'Mon Feb 04 20:43:14 +0000 2013',298,250,'en',
	'http://pbs.twimg.com/profile_images/525614430898618368/OLC2T3qw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BeyonGorgeouss: 🙌💪😏 http://t.co/qSWgmA0nJz',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1149034597
);
INSERT INTO twit_user VALUES (
	'486451905',
	'Ynez 이네 즈 Unabia ♥',
	'Ynez1591',
	'서은광의 마음 ❤❤',
	'-;;; @BTOB_SEKwang 난 영원히 당신을 사랑 해요.! ❤❤',
	235,271,'Wed Feb 08 09:32:20 +0000 2012',11741,271,'en',
	'http://pbs.twimg.com/profile_images/526409085747347458/nzfsHFQD_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KeepCaImTweets: Life always offers you a second chance. Its called tomorrow.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	486451905
);
INSERT INTO twit_user VALUES (
	'1056517956',
	'❃LEMMA IS REAL❃',
	'TheNeveFringe',
	'',
	'My patronus is Karen Gillan. My spirit animal is Colleen Ballinger. Josh followed 30/08/14 Colleen Followed 25/08/14 Gwen and Trent follow Phil replied 30/09/14',
	1697,1916,'Thu Jan 03 01:01:47 +0000 2013',20997,1916,'en',
	'http://pbs.twimg.com/profile_images/525729497988222976/ekSg-bb0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MissRBaller: I;;m so excited to run around Europe with @EpicTeenyQuotes and @ColleenB123 next month!!!!!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1056517956
);
INSERT INTO twit_user VALUES (
	'1013354412',
	'#WhiteGirlWednesday',
	'OfficialTeamWGW',
	'DMV',
	'#1 WhiteGirlWednesday Acct. [GUY] @ me in a picture and I might RT it.Submissions/FanSigns: DM. Kik:Officialteamwgw Avi is @meganmarieexo (18+ Please)',
	18153,10461,'Sat Dec 15 14:57:01 +0000 2012',11479,10461,'en',
	'http://pbs.twimg.com/profile_images/518510494869909504/1c6l8bfh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CarterTalham: “@OfficialTeamWGW: Can we get a bunch of selfies right now for #SnowBunnySunday ?!” http://t.co/DHBmYxJNUx',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1013354412
);
INSERT INTO twit_user VALUES (
	'2276434218',
	'betcherina',
	'bubbles_beffy',
	'',
	'im a bad bitch and you are a hoe can you have my food? hahaha no',
	344,554,'Sat Jan 04 17:50:02 +0000 2014',2842,554,'en',
	'http://pbs.twimg.com/profile_images/508697484525576192/ltREJ_g3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @sorryimalex: @Real_Liam_Payne fuck my ass',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2276434218
);
INSERT INTO twit_user VALUES (
	'1377065130',
	'卐 SMH I Beat YOU 卐',
	'Dreamocitys',
	'Its a bad day not a bad life.',
	'Been fucking since 2012 ™ I keep my enemies on a leash.',
	428,160,'Wed Apr 24 13:42:29 +0000 2013',29374,160,'en',
	'http://pbs.twimg.com/profile_images/526510101453361152/A6wPrwP7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TramaSome wagers',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1377065130
);
INSERT INTO twit_user VALUES (
	'47969725',
	'⭐️KATEKAT☁️plz LOUIS',
	'KatLovingLondon',
	'',
	'☁️⭐️some infinities are bigger than other infinities.⭐️☁️',
	67952,195,'Wed Jun 17 14:04:27 +0000 2009',212130,195,'en',
	'http://pbs.twimg.com/profile_images/514417809510895617/08p92KaY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne but who wins',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	47969725
);
INSERT INTO twit_user VALUES (
	'1105245114',
	'ogeiD ',
	'RiggsDiegoLAFCS',
	'Fuck What You Believe In ',
	'I;;m slowly leading myself to suicide. But I don;;t feel bad. My friends really don;;t know',
	345,288,'Sun Jan 20 03:16:16 +0000 2013',6286,288,'en',
	'http://pbs.twimg.com/profile_images/523940949794504704/T_yiauvQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TrippyJunk: stare at this for 30 seconds, then try to read your timeline http://t.co/gfmEuBDisR',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1105245114
);
INSERT INTO twit_user VALUES (
	'2161799806',
	'gabrieli hendrix',
	'hendrix_gaby',
	'',
	'null',
	136,415,'Thu Oct 31 12:47:14 +0000 2013',739,415,'pt',
	'http://pbs.twimg.com/profile_images/512736701488197634/5wJUYfgU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Vic_Coradini @reggaelizando  quem perdeu foi aquele otario',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2161799806
);
INSERT INTO twit_user VALUES (
	'314330420',
	'Blaine Headley',
	'Headley3',
	'Morgantown, WV',
	'The only easy day was yesterday |WVU ;;16 | Electrical Engineer',
	319,308,'Fri Jun 10 02:35:34 +0000 2011',5244,308,'en',
	'http://pbs.twimg.com/profile_images/497474646036717568/t1cDIsLD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Things4WhitePpl: Sons of Anarchy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	314330420
);
INSERT INTO twit_user VALUES (
	'2686603982',
	'Voteeem no JB  ',
	'evelyn1994jb',
	'',
	'Esse twitter é usado apenas em votações. 3 Twitter pessoal: @evelyngolfinho',
	181,71,'Mon Jul 28 04:13:20 +0000 2014',16745,71,'pt',
	'http://pbs.twimg.com/profile_images/493611680337633282/lw5gTZ87_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ilyJB_swag: Señal como te extrañe #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2686603982
);
INSERT INTO twit_user VALUES (
	'2686478821',
	'jordan stalpes',
	'jordanstalped',
	'',
	'dont be normal be unique',
	80,81,'Mon Jul 28 02:41:52 +0000 2014',22,81,'en',
	'http://pbs.twimg.com/profile_images/526472353291960322/bmFNGwhD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BabyAnimalPics: baby monkey in the snow im crying 😭🐒❄ http://t.co/tMaVF4SCft',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2686478821
);
INSERT INTO twit_user VALUES (
	'48198492',
	'AnonGocho',
	'AnonGocho',
	'',
	'null',
	483,192,'Thu Jun 18 01:38:05 +0000 2009',27811,192,'en',
	'http://pbs.twimg.com/profile_images/478938623468142592/YoMG4ilQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AnonGocho @taluala1 IMPERDIBLE!! Gloria Álvarez... (Movimiento Cívico Nacional) http://t.co/hLKvWJzrnw',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	48198492
);
INSERT INTO twit_user VALUES (
	'2232108188',
	'Tyler Breuss',
	'BreussAlmighty',
	'',
	'Steelers, WVU, and Blue Jackets, nothing more.',
	146,335,'Thu Dec 05 22:38:09 +0000 2013',1900,335,'en',
	'http://pbs.twimg.com/profile_images/508810846064345088/-U2VjXz0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLBONFOX: Heartbreaking news.

Oscar Taveras has died in a car accident. Our thoughts go out to his family and loved ones. http://t.co/…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2232108188
);
INSERT INTO twit_user VALUES (
	'1636590876',
	'Niall | Austin ',
	'Ni4llZi4mL4rryx',
	'Chile',
	'@_orgasmby1d Es mia la amo siempre juntas 1D | Austin Mahone | 5SOS | Larry es real y tu opinión es invalida :) 16',
	2457,2411,'Wed Jul 31 23:17:08 +0000 2013',21308,2411,'es',
	'http://pbs.twimg.com/profile_images/525778062441742338/yPUM_Cxi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_orgasmby1d Me duele todo el cuerpo 
quede peor que ayer',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1636590876
);
INSERT INTO twit_user VALUES (
	'143759246',
	'shaban shaikh',
	'shabanshaikh',
	'',
	'null',
	4,6,'Fri May 14 09:35:30 +0000 2010',22,6,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @nascar_lens: Take a look - Fantastic Danica Patrick Playboy Interview http://t.co/wFUjxpu6ic http://t.co/SSEFuUh3bh',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	143759246
);
INSERT INTO twit_user VALUES (
	'329356214',
	'R.Azurdia',
	'Rafah_Azurdia',
	'',
	'No lo pienses tanto... Y vive el momento™',
	540,418,'Mon Jul 04 23:10:38 +0000 2011',21042,418,'es',
	'http://pbs.twimg.com/profile_images/526493120952033280/0cMuYI7D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'✌👄 http://t.co/z6CMUrXCuh',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	329356214
);
INSERT INTO twit_user VALUES (
	'25245518',
	'Kean Paderes',
	'menameisKEAN',
	'Los Banos, Laguna',
	'Dork dork doorrrrk.',
	329,297,'Thu Mar 19 05:38:00 +0000 2009',6087,297,'en',
	'http://pbs.twimg.com/profile_images/475374737791516672/7bbe9Vfo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eating ramen while looking at a dissected body...Stay classy, Kean. :3',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	25245518
);
INSERT INTO twit_user VALUES (
	'560530659',
	'JFLow48',
	'diee_anns',
	'Gɪʀʟ F̲ʀ̲ɪ̲e̲ɴ̲d Not Fouɴd',
	'Singles that have to learn to enjoy life, even his own, but still can be happy.',
	55241,81,'Sun Apr 22 17:21:56 +0000 2012',200301,81,'en',
	'http://pbs.twimg.com/profile_images/513475460999548929/kX5PvQms_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Perlakukanlah aku seperti malaikat, dan aku akan bawa kamu terbang ke surga.',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	560530659
);
INSERT INTO twit_user VALUES (
	'2820261253',
	'Brock Heppner',
	'Bhepp15',
	'',
	'null',
	10,18,'Fri Sep 19 17:08:07 +0000 2014',9,18,'en',
	'http://pbs.twimg.com/profile_images/513028142009561088/5OWj_tHm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@SethHepp5  don;;t you just miss having to put your clothes away every hour?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2820261253
);
INSERT INTO twit_user VALUES (
	'1195509008',
	'p-mon(vampire)',
	'ponymonmastr',
	'Anywhere I wanna be~',
	'I will always love @mlp_lightflower/@mlp_maraV no matter what. I am who I am, if you don;;t like it then fuck off~ ;P',
	3133,3375,'Tue Feb 19 01:33:57 +0000 2013',71040,3375,'en',
	'http://pbs.twimg.com/profile_images/526475946627309569/OMHVT1M4_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@R34_HailFire *smiles* so.. You;;ll let her have the kid?',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	1195509008
);
INSERT INTO twit_user VALUES (
	'591173858',
	'MuViMoTV',
	'MuViMoTV',
	'',
	'Watch Free Movies, TV Shows, Music Videos, Trailers, Game Previews & Tricks, Celebrity News & Gossip, Latest News & Weather, Travel Advise & Ideas and more...',
	395,136,'Sat May 26 19:14:06 +0000 2012',203555,136,'en',
	'http://pbs.twimg.com/profile_images/2529856981/jcdnd849bw0a89t6et1y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'New Video: Ganan los partidos proeuropeos en Ucrania http://t.co/RO1510ZreQ',
	'<a href=::http://muvimotv.com:: rel=::nofollow::>MuViMoTV.com</a>',
	591173858
);
INSERT INTO twit_user VALUES (
	'515248004',
	'軍人虎徹さんbot',
	'miliTiger_bot',
	'シュテルンビルト軍前線基地',
	'一時間毎にランダムでツイートするタイバニ非公式の軍パロ二次創作・自動キャラbotです。2012/3/5訓練開始、試運転中。やや腐向け。順次台詞追加予定です。時折手動になります。フォロー前に必ず仕様ブログをご一読ください。世話人 @heon_aotsuki　※タイバニをご存じない方はフォローをご遠慮くださいませ。',
	612,701,'Mon Mar 05 08:36:18 +0000 2012',187288,701,'ja',
	'http://pbs.twimg.com/profile_images/2886107651/7189b534dd61e003060e40f7fbc784ca_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@plan405 おう、おはようさん。よく眠れたか？',
	'<a href=::https://twitter.com/#!/miliTiger_bot:: rel=::nofollow::>軍人虎徹さんbot</a>',
	515248004
);
INSERT INTO twit_user VALUES (
	'603499223',
	'  محمد هزازي',
	'm55944',
	'',
	'null',
	45,48,'Sat Jun 09 10:51:04 +0000 2012',814,48,'ar',
	'http://pbs.twimg.com/profile_images/518114006301569024/Zl-CwhxU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اللهم إني أعوذ بك أن أشرك بك وأنا أعلم وأستغفرك لما لا اعلم
http://t.co/dHQzDRTWox',
	'<a href=::http://7snah.com:: rel=::nofollow::>حسنة</a>',
	603499223
);
INSERT INTO twit_user VALUES (
	'2650689175',
	'Kyo子',
	'erantogoth',
	'',
	'アラフォーの熟女です。こんな私でも興味をもってもらえたら気軽にフォローお願いします。',
	389,1440,'Wed Jul 16 10:29:14 +0000 2014',2521,1440,'ja',
	'http://pbs.twimg.com/profile_images/489356776718860288/WCfCFUmy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'一度お会いしてみることが可能であればそれが一番だと思っています。私は40になるおばさんですので、お会いしたら必ずということはありません。純粋に身体を求め合いたいんです。',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2650689175
);
INSERT INTO twit_user VALUES (
	'2440769468',
	'金子真由美',
	'kanemayu0426',
	'sinse7.27〜',
	'▷ニイツミナミイチネンゴクミ◁',
	289,257,'Sun Apr 13 00:26:11 +0000 2014',11708,257,'ja',
	'http://pbs.twimg.com/profile_images/526341024201728001/DHCtA1BI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'みんな私服かわいいな₍₍ ◝(●˙꒳˙●)◜ ₎₎',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2440769468
);
INSERT INTO twit_user VALUES (
	'2169516866',
	'Rahshaun',
	'Rahshaunsims',
	'',
	'im the smartest guy in the FBI',
	103,67,'Sat Nov 02 03:48:58 +0000 2013',1623,67,'en',
	'http://pbs.twimg.com/profile_images/524583363785420801/-1Ct2nI5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheRealNyha @15brooksdakota you sound ignorant',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2169516866
);
INSERT INTO twit_user VALUES (
	'1880899748',
	'Spencer Wilhelm',
	'sdubs4higher',
	'',
	'Bruh',
	119,135,'Wed Sep 18 21:11:50 +0000 2013',483,135,'en',
	'http://pbs.twimg.com/profile_images/378800000484503161/2346c198e95511e1b5634f6c612d380b_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MaxJFulk: What do you call a fat psychic? A four-chin Teller',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1880899748
);
INSERT INTO twit_user VALUES (
	'975678348',
	'Trafalgar Law',
	'fauzishari94',
	'taiping lai',
	'Seeing much, suffering much and studying much are the three pillars of learning',
	150,158,'Wed Nov 28 08:47:48 +0000 2012',9465,158,'en',
	'http://pbs.twimg.com/profile_images/415709491271716864/K655i0In_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@alexandriaafif: @fauzishari94 @faruqfaisal94 haha sempat ja. Dr Yarub tak mai kelas lg 😁😁:: bkn titas dulu ka? Yarub lipak.. haha',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	975678348
);
INSERT INTO twit_user VALUES (
	'439143664',
	'IM 1D AF',
	'bananaa_narry',
	'',
	'♡ i dont exist if i dont have @onedirection, the sun dosnt shine the world doesnt turn alright♡',
	919,1208,'Sat Dec 17 12:17:33 +0000 2011',19086,1208,'en',
	'http://pbs.twimg.com/profile_images/511221585164771328/mOHUQ-XI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	439143664
);
INSERT INTO twit_user VALUES (
	'467059510',
	'Lauren Shuba',
	'laurenshuba',
	'',
	'hakuna matata ☀️',
	423,323,'Wed Jan 18 02:35:25 +0000 2012',10299,323,'en',
	'http://pbs.twimg.com/profile_images/526342238960238593/qmu5XPLo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CloydRivers: Plot twist: The Walkin;; Dead actually takes place after Ebola has spread across the country. Merica.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	467059510
);
INSERT INTO twit_user VALUES (
	'252351739',
	'はままつ早苗 (bot)',
	'Hamamatsu_Sanae',
	'遠江国浜松県浜松市',
	'ご当地東方浜松キャラ「はままつ早苗」こと東風谷早苗です！やらまいか浜松(ﾟ∀ﾟξ！フォローの前に必ず説明を読んで下さいね↓　　※これは非公式なアカウントです。　※リフォローをご希望の方は「フォローして」とリプして下さい。詳しい機能はURL参照',
	1209,927,'Tue Feb 15 00:58:59 +0000 2011',534459,927,'ja',
	'http://pbs.twimg.com/profile_images/463325972041723904/UFZiik6i_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'不定期更新：はまさな・はまてつブログ http://t.co/cqwzrSmain #はまさな',
	'<a href=::http://www52.atpages.jp/hamasana/:: rel=::nofollow::>守矢神社浜松分社</a>',
	252351739
);
INSERT INTO twit_user VALUES (
	'2839676881',
	'ラブライブ！必見画像まとめ',
	'apunlo',
	'',
	'ラブライブ！の好きな方必見！！レア画像など集めました♪気軽にフォローお待ちしています♡',
	494,1820,'Sat Oct 04 04:41:00 +0000 2014',274,1820,'ja',
	'http://pbs.twimg.com/profile_images/518989798262861824/X1DSdIYq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @koijhu77: FF7の完全新作が遂にアプリで登場！
待ってましたー！

iOS
⇒http://t.co/3AzzlzpG40
アンドロイド
⇒http://t.co/ueK8Z6NBMD

限定マテリアが貰える
事前登録キャンペーン中！ http://t.co/…',
	'<a href=::https://twitter.com/apunlo:: rel=::nofollow::>ラブライブ！必見画像まとめ</a>',
	2839676881
);
INSERT INTO twit_user VALUES (
	'2224485031',
	'るいしゃぶ35',
	'3516158987',
	'',
	'#相互フォロー #相互 #リフォロー #フォローバック #sougofollow #followback #followme @m7h2by
@287697299
@739347562 @824310831
@1014399356
@1297570376
@popimage @1375113863',
	1240,1153,'Sun Dec 01 08:22:35 +0000 2013',4640,1153,'ja',
	'http://pbs.twimg.com/profile_images/417255510174212097/eyfSRNS-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'自動フォロー返し設定していますので、相互フォローで、みんなでフォロワー増やしましょうv(^o~)/',
	'<a href=::http://www.twisuke.com:: rel=::nofollow::>ツイ助。</a>',
	2224485031
);
INSERT INTO twit_user VALUES (
	'263302318',
	'男の子 ',
	'violencexx',
	'sp',
	'Forgive Your Enemies But Never Forget Their Names',
	971,645,'Wed Mar 09 19:52:44 +0000 2011',58579,645,'pt',
	'http://pbs.twimg.com/profile_images/524674494955532289/sRPlEGx7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'parecendo um deficiente meu deus',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	263302318
);
INSERT INTO twit_user VALUES (
	'2681976412',
	'Tenente Coronel',
	'LucasWillha',
	'',
	'Sem bad trip,nada me abala.',
	229,225,'Mon Jul 07 04:09:43 +0000 2014',2914,225,'pt',
	'http://pbs.twimg.com/profile_images/526541467268165632/hUyBkK_u_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@vargasbea1 ela sabe',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2681976412
);
INSERT INTO twit_user VALUES (
	'254536903',
	'RG.',
	'Simplistic_Her',
	'',
	'Think I made a wrong turn back there somewhere. 
INSTAGRAM:Richiieee__',
	1205,801,'Sat Feb 19 13:43:48 +0000 2011',28455,801,'en',
	'http://pbs.twimg.com/profile_images/521702081665957888/erhMwCBR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ANYWHORE. I didn;;t know my upgrade was now. I thought it wasn;;t til like next year🙌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	254536903
);
INSERT INTO twit_user VALUES (
	'20171148',
	'Edgar Franco Flores',
	'architectiak',
	'Pachuca de Soto. México',
	'J.E.Franco. Arquitecto / Escritor / Investigador especializado en Creatividad. Espacio bizarro, mezcla de Arquitectura, Literatura, Música, y Cinematografía.',
	691,187,'Thu Feb 05 18:18:16 +0000 2009',29369,187,'es',
	'http://pbs.twimg.com/profile_images/378800000017762792/099c4950ae0d2c4f993f577d6007f341_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Nuestras colaboraciones para cierre de año. #ArchitectiakBlog.
http://t.co/XzfyTEHJMJ.',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	20171148
);
INSERT INTO twit_user VALUES (
	'2322056291',
	'Bruna santos',
	'HoBruh',
	'',
	'null',
	58,86,'Mon Feb 03 15:22:43 +0000 2014',2024,86,'pt',
	'http://pbs.twimg.com/profile_images/519708215366283264/jr27Plgw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Curto muito a Stephanie',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2322056291
);
INSERT INTO twit_user VALUES (
	'2395773005',
	'carolinda',
	'javaddhighnote',
	'brazil',
	'harry styles lindo da cabeça ao tornozelo • tristan/5',
	4486,3931,'Sun Mar 09 04:48:37 +0000 2014',22236,3931,'pt',
	'http://pbs.twimg.com/profile_images/525819826040623105/jdqwnshB_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2395773005
);
INSERT INTO twit_user VALUES (
	'2172509786',
	'REDHead',
	'___keraaaa',
	'Lipstick Lesbian',
	'my anaconda don;;t give a FUCK❗(L)GBT',
	240,352,'Sun Nov 03 17:22:01 +0000 2013',10900,352,'en',
	'http://pbs.twimg.com/profile_images/526038026607403008/7aUwLEQX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'it;;s emoji night 😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2172509786
);
INSERT INTO twit_user VALUES (
	'614919318',
	'Sour Patch Kid. ',
	'emfobrown',
	'Your psyche',
	'You won;;t understand .',
	172,194,'Fri Jun 22 04:23:26 +0000 2012',4642,194,'en',
	'http://pbs.twimg.com/profile_images/523817985006645248/SYJjFqnA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Death be not proud.',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	614919318
);
INSERT INTO twit_user VALUES (
	'2745301531',
	'Cameron DALLAS',
	'cameronbbaby',
	'CAMS ASS',
	'THE VINE BOYS ARE LIFEE pretty pls follow @FarahDallas :))',
	665,1992,'Tue Aug 19 15:24:56 +0000 2014',1643,1992,'en',
	'http://pbs.twimg.com/profile_images/502963730511314944/bsL_2m1G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @__princessFarah: I;;m still upset that someone hacked Hayes because now he doesn;;t follow me 😩😩',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2745301531
);
INSERT INTO twit_user VALUES (
	'249931682',
	'Miss McCoy',
	'_JasmineRaeee',
	'Franklin, LA-Lafayette,LA',
	'Going places. ✈UL. IG: _jasminerae',
	833,488,'Thu Feb 10 02:20:40 +0000 2011',29118,488,'en',
	'http://pbs.twimg.com/profile_images/518499846559653889/ww3sOb8v_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I have a long lost sissy out there somewhere @Tearaaaaaaa 👀',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	249931682
);
INSERT INTO twit_user VALUES (
	'1109134328',
	'Calum Hood :)',
	'Awesome_Irwin',
	'Spain(madrid)',
	'I love bands, they do weird shit sometimes               ------✨I met 5sos(3/4+band)✨------✨met the vamps brad/4+band✨5H (3/6)✨',
	12930,1223,'Mon Jan 21 14:12:57 +0000 2013',54758,1223,'en',
	'http://pbs.twimg.com/profile_images/525426335678595072/iF1rCqiK_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1109134328
);
INSERT INTO twit_user VALUES (
	'983101273',
	'Brobië ✌️',
	'Brodi_2k16',
	'',
	'✌️ Positive vibes only',
	412,817,'Sat Dec 01 18:34:11 +0000 2012',3752,817,'en',
	'http://pbs.twimg.com/profile_images/525126007263858688/wIqwnPNK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'If ur a hoe 💃 running after my man 👦 &amp; u c we are happy 💑 . &amp; I c that 👀 . U might just 💃🔫',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	983101273
);
INSERT INTO twit_user VALUES (
	'321589021',
	'Laís Carolina',
	'LaisCarolina_09',
	'',
	'Não dá pra ser forte o tempo todo, mas sempre dá pra descansar a fraqueza na fé que a gente tem ',
	252,179,'Tue Jun 21 20:26:22 +0000 2011',4075,179,'pt',
	'http://pbs.twimg.com/profile_images/522566631537795072/up_Klml8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::Hoje foi mais um dia de derrota do Brasil. E seria com qualquer um dos dois vencedores. Pior é ver gente burra comemorando derrota.::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	321589021
);
INSERT INTO twit_user VALUES (
	'113740333',
	'Queen Be',
	'youTHESHIT_Brit',
	'',
	'null',
	1939,974,'Fri Feb 12 21:52:13 +0000 2010',28689,974,'en',
	'http://pbs.twimg.com/profile_images/512075483971084288/ikYj77Cv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@_MakeMeGoOink: @youTHESHIT_Brit love you acey.  😘”love u more ace 😘',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	113740333
);
INSERT INTO twit_user VALUES (
	'5415352',
	'Robin C. McClary',
	'celestemc',
	'We Live in Brooklyn Baby',
	'Music Loving Wordy Photo Taking Classically Black Nerd NYU/RutgersLaw Opinions are mine not the jobs  RTs not always endorsements Detroit will always be home',
	1179,1743,'Mon Apr 23 00:25:33 +0000 2007',124953,1743,'en',
	'http://pbs.twimg.com/profile_images/454986685940387842/MZdjCp_G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @seemakalia: .@celestemc How much do you think @BilldeBlasio gets paid for babysitting Cuomo/keeping him out of trouble? $11/hour? $11.5…',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	5415352
);
INSERT INTO twit_user VALUES (
	'2802651206',
	'ALISON',
	'3125Alison',
	'',
	'null',
	1,8,'Wed Sep 10 23:42:37 +0000 2014',820,8,'en',
	'http://pbs.twimg.com/profile_images/509849652254867456/VJBRVRIM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'تصميم مواقع انترنت بجودة عالية استضافة مفتوحة - مصممين محترفين شركة فرنسية 0033782689838 http://t.co/ZFW55hS0Up  
[700.42]',
	'<a href=::http://xx.khaleejhost.org/:: rel=::nofollow::>khalejhost</a>',
	2802651206
);
INSERT INTO twit_user VALUES (
	'1055819779',
	'Yolanda Albornoz',
	'Yol2708',
	'SMP - Lima',
	'null',
	222,825,'Wed Jan 02 18:44:09 +0000 2013',291,825,'es',
	'http://pbs.twimg.com/profile_images/472227710467461121/eJX5SnOJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'TE AMO MI DOMINICK ... tu eres lo mas bello q me pudo suceder :3',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1055819779
);
INSERT INTO twit_user VALUES (
	'536966199',
	'Seth Douthat',
	'coral_reef17',
	'Bull Moose Party ',
	'null',
	174,158,'Mon Mar 26 03:21:27 +0000 2012',1271,158,'en',
	'http://pbs.twimg.com/profile_images/496655946761109504/vXu6N1pQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Everything works out the way it;;s supposed to',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	536966199
);
INSERT INTO twit_user VALUES (
	'2387371635',
	'RT NOS VOTOS',
	'ziamestiloso',
	'mai the best',
	'tired of this life of suffering',
	2179,1654,'Thu Mar 06 04:40:50 +0000 2014',18352,1654,'pt',
	'http://pbs.twimg.com/profile_images/525410626349588481/9gsvGqnN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Some really interesting costumes coming through 😏',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2387371635
);
INSERT INTO twit_user VALUES (
	'357232457',
	'Rosie Net',
	'rosaaaynet',
	'',
	'️',
	217,150,'Thu Aug 18 01:48:46 +0000 2011',12825,150,'en',
	'http://pbs.twimg.com/profile_images/526245646349914112/pwmnPv71_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Annnalieseee: atleast I can say I tried',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	357232457
);
INSERT INTO twit_user VALUES (
	'898397940',
	'lexi',
	'lexx5678',
	'',
	'UndergroundDanceCo',
	452,235,'Mon Oct 22 20:57:59 +0000 2012',9982,235,'en',
	'http://pbs.twimg.com/profile_images/526418989841649664/hOz59UG7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I want to go to erebus',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	898397940
);
INSERT INTO twit_user VALUES (
	'41013079',
	'Sá',
	'sarahprass',
	'Brazil',
	'You;;ll go to hell for what your dirty mind is thinking',
	148,134,'Tue May 19 00:39:07 +0000 2009',17443,134,'en',
	'http://pbs.twimg.com/profile_images/505194752787353600/vhrzDf_T_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'BOBBIE PQPPPQPQPQPQPQPQP N SONS MAS EU LARGO NO MWIO DA ULTIMA TEMPORADA MAS LASGO SIM TO CHORANDO',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	41013079
);
INSERT INTO twit_user VALUES (
	'1409915486',
	'Mara me quiere ♥',
	'Ezequiel_alann',
	'',
	'Holaa Me llamo Alan Soy BelieberBoy :3',
	230,163,'Tue May 07 10:29:25 +0000 2013',3306,163,'es',
	'http://pbs.twimg.com/profile_images/485957802947379200/PvOx6mtV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me fui dsp vengo',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1409915486
);
INSERT INTO twit_user VALUES (
	'438071349',
	'LeeLee',
	'DeelisaEllis',
	'Pearson, GA',
	'I am me & only me. Take me as I am or watch me as I go. I;;ll be the one to love you the most. Accept me or don;;t. I am a female living this thing call life.',
	129,242,'Fri Dec 16 04:34:45 +0000 2011',4324,242,'en',
	'http://pbs.twimg.com/profile_images/1802552532/189650_10150159795816141_500391140_8464503_7145151_n_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @IAmSteveHarvey: “Imagination is everything. It is the preview to life’s coming attractions.” ~ Albert Einstein #ActLikeASuccess',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	438071349
);
INSERT INTO twit_user VALUES (
	'886097269',
	'Alanna Linkous',
	'Alanna123420',
	'',
	'null',
	30,117,'Wed Oct 17 04:48:29 +0000 2012',16,117,'en',
	'http://pbs.twimg.com/profile_images/2728090747/137d38d54e88e67f911051af111dfd84_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'The show Bobs Burgrs is my shit. Funny as fuck. 😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	886097269
);
INSERT INTO twit_user VALUES (
	'2723759487',
	'Stephen Franks',
	'Steve_Franks1',
	'',
	'null',
	112,140,'Fri Jul 25 03:28:26 +0000 2014',309,140,'en',
	'http://pbs.twimg.com/profile_images/523338593767788544/31FWkOdU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Damn, just heard about Oscar Tavares. Sad day for baseball. Thoughts and prayers with his family. #RIP',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2723759487
);
INSERT INTO twit_user VALUES (
	'1335028321',
	'kate lamotta',
	'kate_lamotta',
	'',
	'JLHS',
	780,683,'Sun Apr 07 20:24:17 +0000 2013',17965,683,'en',
	'http://pbs.twimg.com/profile_images/525016280978718720/MD73pWWq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Kyra_pearson215: A?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1335028321
);
INSERT INTO twit_user VALUES (
	'2210960041',
	'203 | monika',
	'monikajakiel',
	'',
	'i love my bff & ashton irwin',
	188,118,'Sat Nov 23 16:29:48 +0000 2013',6098,118,'de',
	'http://pbs.twimg.com/profile_images/525163247838953472/hz75McOe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@hemmingselyar cant say the same haha',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2210960041
);
INSERT INTO twit_user VALUES (
	'715065960',
	'Sar',
	'Sarah_Ciccarell',
	'',
	'Dancer. 10•19•12❤ 
BGA 16;;',
	308,413,'Tue Jul 24 22:55:31 +0000 2012',7557,413,'en',
	'http://pbs.twimg.com/profile_images/513841972516503552/3-aBr6sy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@KyleV98: squad http://t.co/f0KJhMu8Bs”😂😭❤️',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	715065960
);
INSERT INTO twit_user VALUES (
	'102772356',
	'Sam Groves',
	'TheFoxRiver8_',
	'Brazil',
	'-   You can call me Root',
	446,194,'Thu Jan 07 19:48:23 +0000 2010',105439,194,'en',
	'http://pbs.twimg.com/profile_images/498264180000960512/ZJi2Okxr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'como ele conseguiu casar com essa mulher',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	102772356
);
INSERT INTO twit_user VALUES (
	'1247893298',
	'Si Virus Kepo ✌',
	'VirusnyaKepo',
	'',
	'Jawab Aja Pertanyaannya ya kak ! ✌',
	12058,8917,'Thu Mar 07 04:21:34 +0000 2013',18786,8917,'id',
	'http://pbs.twimg.com/profile_images/522931866425257985/kSa4W43K_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@arianasblood Followback yaa',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	1247893298
);
INSERT INTO twit_user VALUES (
	'44146466',
	'Cami⚓',
	'caamiborrone',
	'Bs. As. Argentina :) ⚓',
	'Hincha de Racing Club de Avellaneda♥ ®©',
	764,224,'Tue Jun 02 16:08:45 +0000 2009',30099,224,'en',
	'http://pbs.twimg.com/profile_images/526166089601155072/gyORXb-z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @NoUsesPieles: #TeLoDigoPorHashtag #NoUsesPieles http://t.co/RXQzUnMBz6',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	44146466
);
INSERT INTO twit_user VALUES (
	'247474013',
	'the ultimate ginger',
	'jackbarafishy',
	'oh no, not gluten!',
	'the doctor didnt regenerate for this',
	1155,1042,'Fri Feb 04 21:43:47 +0000 2011',44818,1042,'en',
	'http://pbs.twimg.com/profile_images/446851142488981504/pmo0aWTE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @battlethetide: @jackbarafishy fuck you bitchy trampoline',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	247474013
);
INSERT INTO twit_user VALUES (
	'496971025',
	'✨ Stephanie ✨',
	'stephbanks__',
	'',
	'null',
	378,195,'Sun Feb 19 13:41:18 +0000 2012',12711,195,'en',
	'http://pbs.twimg.com/profile_images/526412645885554688/zPN4WOz9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @downfaIl: i try not to judge cause im a little fucked up myself',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	496971025
);
INSERT INTO twit_user VALUES (
	'278606778',
	'Judith Timson',
	'judithtimson',
	'Toronto',
	'journalist,author, thinker out loud writes weekly column @thestar.com/living Email: judith.timson@sympatico.ca',
	775,485,'Thu Apr 07 16:12:11 +0000 2011',5961,485,'en',
	'http://pbs.twimg.com/profile_images/1807128696/_MG_4931TwTl_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Mark_Forward: Yes. The Chow cartoon is racist. But to be fair, it;;s also completely sexist. #TOpoli http://t.co/DyimkeW1ab',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	278606778
);
INSERT INTO twit_user VALUES (
	'2739552593',
	'☠Jack-o-LANtern☠',
	'flipofflan',
	'ign:xxpinkcatxx',
	'BOO!CUBESMP',
	193,151,'Mon Aug 11 02:09:30 +0000 2014',3245,151,'en',
	'http://pbs.twimg.com/profile_images/523841449054699520/DHNbK9p1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Hannah_Blank: Paige and I went into a real abandoned mineshaft today but we didn;;t find any loot http://t.co/AN4i0MNZxy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2739552593
);
INSERT INTO twit_user VALUES (
	'2750515541',
	'RT/HARRY PLS ILYSM',
	'Sweet_Ziam',
	'',
	'H/5 One day but not today Brazil',
	2497,2314,'Sat Aug 23 19:07:40 +0000 2014',8177,2314,'en',
	'http://pbs.twimg.com/profile_images/523623355313041408/AGmKuZst_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2750515541
);
INSERT INTO twit_user VALUES (
	'2740443632',
	'#NOW #ONLINE',
	'DUTCHlE',
	'',
	'FOLLOW ME AND I FOLLOWBACK 100%',
	32910,33820,'Sun Aug 17 20:32:15 +0000 2014',56431,33820,'en',
	'http://pbs.twimg.com/profile_images/501107880079396864/yTyoezVY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_o_MGWV_o_: ⚠️ＷＡＲＮＩＮＧ⚠️

THIS TWEET MAY CONTAIN PPL WHO FOLLOWBACK

❗️RETWEET AT OWN RISK❗️

⚠#MGWV #ANOTHERFOLLOWTRAIN⚠️

ＦＯＬＬＯＷ @Inex…',
	'<a href=::https://twitter.com/:: rel=::nofollow::>DUTCHlE</a>',
	2740443632
);
INSERT INTO twit_user VALUES (
	'1652050381',
	'lauren ',
	'hogwarttributes',
	'',
	'i bet sheo bangs more times than the amount of tweets i send out each day',
	8879,5745,'Wed Aug 07 04:30:30 +0000 2013',41242,5745,'en',
	'http://pbs.twimg.com/profile_images/498326631195631616/iEIcb616_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@jillpowellglam: Wow... NJ you guys are amazing!! #DEMIWORLDTOUR #DWT #tourlifefolife http://t.co/IRQxd42pH1” CRYIN BC I WAS THERE',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1652050381
);
INSERT INTO twit_user VALUES (
	'1603765777',
	'かなこ',
	'ptl_nanooo',
	'',
	'ジャスティスキュート！！！',
	136,161,'Thu Jul 18 15:50:25 +0000 2013',10266,161,'ja',
	'http://pbs.twimg.com/profile_images/481825140645187584/YkR9dO89_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'細菌艦これログイン出来てないんだけど運営アイコンの美少女ってだれ？ http://t.co/VDD1xGjtaS',
	'<a href=::http://tapbots.com/tweetbot:: rel=::nofollow::>Tweetbot for iΟS</a>',
	1603765777
);
INSERT INTO twit_user VALUES (
	'251881332',
	'Lexei',
	'shesthe_MANN11',
	'314',
	'live your life',
	832,582,'Mon Feb 14 01:32:52 +0000 2011',22606,582,'en',
	'http://pbs.twimg.com/profile_images/524707489187495936/PGI5gW4L_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/5hUQRVprJQ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	251881332
);
INSERT INTO twit_user VALUES (
	'2401042393',
	'Tin ✨',
	'chrisaraos_',
	'Valenzuela City, Manila PH',
	'Never give up. Great things take time.” Christine not Kristine',
	427,1263,'Fri Mar 21 05:52:40 +0000 2014',1672,1263,'en',
	'http://pbs.twimg.com/profile_images/525862110291456000/fWeJ2StE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Iyak :----;;(',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2401042393
);
INSERT INTO twit_user VALUES (
	'2834526518',
	'RangkasCheaters',
	'RangkasCheaters',
	'Rangkas Bitung',
	'null',
	25,5,'Sun Sep 28 01:28:41 +0000 2014',15400,5,'id',
	'http://pbs.twimg.com/profile_images/516040632897245185/owu0ireE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Cemburu itu gak enak. Cemburu itu makan hati. Cemburu itu hmmm. Cemburu itu oh. Cemburu itu sakit, kalo gak di ungkapin.',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	2834526518
);
INSERT INTO twit_user VALUES (
	'622917055',
	'Lindsay Lohan Hub',
	'LindsayLohanPro',
	'New York City, New York',
	'This account is not affiliated with Lindsay Lohan.',
	853,44,'Sat Jun 30 15:43:28 +0000 2012',7116,44,'en',
	'http://pbs.twimg.com/profile_images/3045274023/a271b53d75b2efa6f2ea91154e2ddaef_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Lindsay Lohan Takes Topless Selfie Backstage At London Show http://t.co/NeTxmlmUBP',
	'<a href=::http://www.snsanalytics.com:: rel=::nofollow::>SNS Analytics</a>',
	622917055
);
INSERT INTO twit_user VALUES (
	'230084886',
	'六条千景bot',
	'chikage_rbot',
	'埼玉/たまに池袋/レディの傍',
	'「デュラララ!!」ろっちーこと六条千景の非公式botです。原作の台詞(11巻まで)を呟きます。口説いてきます。レディがだいすきなのでろっちーに甘やかされたいお嬢様向けです。リプライは完全捏造の甘仕様。未だ口調が迷子。取扱説明書をご一読の上、一個人が創作したことを理解してフォローするようお願いします。お別れはブロックで。',
	3926,3859,'Fri Dec 24 06:33:32 +0000 2010',932503,3859,'ja',
	'http://pbs.twimg.com/profile_images/3252819264/4c573d3a343a3f6d660a2d80fe9aca83_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@nanaichg_ おかえり、@nanaichigo ！とりあえず俺の腕の中で今日の疲れ癒しちゃう？…なんてのは口実で、俺もちょっと充電。(ぎゅーっ)',
	'<a href=::http://jp.bloguru.com/chikagebotinfo:: rel=::nofollow::>To羅丸</a>',
	230084886
);
INSERT INTO twit_user VALUES (
	'1530340352',
	'うぽぽぴろち',
	'upopopirochi',
	'',
	'友人に業者みたいな名前だなと言われましたが業者ではありません / おかねがない ただの ぼんびー のようだ',
	72,52,'Wed Jun 19 09:44:43 +0000 2013',8647,52,'ja',
	'http://pbs.twimg.com/profile_images/378800000104353175/2819ff5799707f87a5ba05094dd9d230_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'PCで快適にプレイしたいの上限みてたらきりないから先に予算きめといた方が吉',
	'<a href=::http://yubitter.com/:: rel=::nofollow::>yubitter</a>',
	1530340352
);
INSERT INTO twit_user VALUES (
	'1869229658',
	'megan',
	'got_muke',
	'',
	'where is my michael clifford',
	2917,1425,'Sun Sep 15 21:10:34 +0000 2013',57194,1425,'en',
	'http://pbs.twimg.com/profile_images/516066654808051713/vSaeRjWy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne power puff dudes',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1869229658
);
INSERT INTO twit_user VALUES (
	'230084886',
	'六条千景bot',
	'chikage_rbot',
	'埼玉/たまに池袋/レディの傍',
	'「デュラララ!!」ろっちーこと六条千景の非公式botです。原作の台詞(11巻まで)を呟きます。口説いてきます。レディがだいすきなのでろっちーに甘やかされたいお嬢様向けです。リプライは完全捏造の甘仕様。未だ口調が迷子。取扱説明書をご一読の上、一個人が創作したことを理解してフォローするようお願いします。お別れはブロックで。',
	3926,3859,'Fri Dec 24 06:33:32 +0000 2010',932501,3859,'ja',
	'http://pbs.twimg.com/profile_images/3252819264/4c573d3a343a3f6d660a2d80fe9aca83_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@kachu7799 おかえり、ハニー！今日も一日お疲れさま。……あー、いや、やっぱ@juxe8 @mons_nonnoの顔見ると元気になるなあって思ってさ。俺ハニーのことがマジで大好きだなあって。あれ？照れちゃった？ごめんごめん！',
	'<a href=::http://jp.bloguru.com/chikagebotinfo:: rel=::nofollow::>To羅丸</a>',
	230084886
);
INSERT INTO twit_user VALUES (
	'744231589',
	'Kramjay ♥',
	'KRAMJAYLIZARDO',
	'',
	'Basketball is my life ♥ | 15 | All the day that you wake up, you got one job, and that;;s to get better every single day | D.ROSE | LCV ♥',
	456,468,'Wed Aug 08 02:18:10 +0000 2012',1282,468,'fil',
	'http://pbs.twimg.com/profile_images/378800000595790421/3a13b570bc507c97d139fb0ab0b06fb5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Goodmorning',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	744231589
);
INSERT INTO twit_user VALUES (
	'166584428',
	'空ちん',
	'ski_mew',
	'福の岡',
	'伏見猿比古とのずいずいずっころばし  @ski_mew_bare',
	201,163,'Wed Jul 14 14:35:29 +0000 2010',65625,163,'ja',
	'http://pbs.twimg.com/profile_images/523575988127424513/-_f33ITW_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'どうせどいつもこいつもAB型',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	166584428
);
INSERT INTO twit_user VALUES (
	'2310467876',
	'♻ اذكار ♻',
	'XM90RX',
	'',
	'تابع هذا الحساب ♻ @B3B9XMX9 ♻',
	11070,10116,'Sat Jan 25 17:57:40 +0000 2014',16902,10116,'ar',
	'http://pbs.twimg.com/profile_images/477135590089977857/LaicJygj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @B3B9XMX9: يـا حـي يـا قيـوم بـرحمـتـك أستـغـيث ، أصلِـح لي شـأنـي كلـه ، ولا تكلـنـي إلى نفـسـي طـرفـة عــين • ❁',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2310467876
);
INSERT INTO twit_user VALUES (
	'2410067009',
	'iDoss',
	'dossbird',
	'UK',
	'iDoss a Webpage, iOS app, Android App, for people on the go that want to Doss: Pass the time aimlessly. Game reviews, news articles with no seriousness.',
	8164,150,'Fri Mar 14 12:27:25 +0000 2014',44211,150,'en-gb',
	'http://pbs.twimg.com/profile_images/444502323487072256/q7CZH8aI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Pilot claims drone almost hit passenger aircraft http://t.co/PYMlslUeDQ',
	'<a href=::http://publicize.wp.com/:: rel=::nofollow::>WordPress.com</a>',
	2410067009
);
INSERT INTO twit_user VALUES (
	'710470040',
	'Dance_Sing ItsLife',
	'NatashaPeisley',
	'umina beach NSW Australia',
	'Do I choose to dance?
No
I have to dance',
	188,619,'Sun Jul 22 10:16:46 +0000 2012',77,619,'en',
	'http://pbs.twimg.com/profile_images/521251733540835328/IgWQmbIv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Ashton5SOS come to Umina Beach! x',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	710470040
);
INSERT INTO twit_user VALUES (
	'604299915',
	'Rafi Reisidi Utama',
	'bebeljelof',
	'Earth ',
	'This is me. This is my life. Whatever do you say about my life, I don;;t care! Take it or leave it ♥Engaged @raffy_RI ♥',
	918,725,'Sun Jun 10 05:22:38 +0000 2012',8552,725,'id',
	'http://pbs.twimg.com/profile_images/525133219172057089/dAx32JRt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @4ndihas: Temukan satu keindahan  hari ini dan rayakanlah penuh syukur dan suka cita. selamat berbahagia, Senin semangat!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	604299915
);
INSERT INTO twit_user VALUES (
	'465135152',
	'お菊大魔王',
	'KiPunx2',
	'お菊プライベートゾーン',
	'ハイキュー! 邦ロック-UVER:BUMP:radwimps:SPAYAIR:ワンオク:SCANDAL:back number:KANA-BOON:ELLEGARDEN:セカオワ:スキマ:サイサイ:ゲス極:サカナクション:グドモ:andorp:時雨:椎名林檎:does:米津玄師:他にもたくさん！無言フォローOK!',
	4939,5004,'Mon Jan 16 00:49:01 +0000 2012',42025,5004,'ja',
	'http://pbs.twimg.com/profile_images/494503241023901696/tq8RePdD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bty_labo: 仕事をやめたい女性必見！！

今、２０代に人気の在宅でできる高収入のお仕事がヤバいwww
⇒http://t.co/ZRDWakbHoV

時間を自由に使えるって最高♡
エステもジムも通えるし♡

お金を気にせず使えるとか幸せ♡ http://t.c…',
	'<a href=::http://twwi.jp/:: rel=::nofollow::>瞬感♪apptter</a>',
	465135152
);
INSERT INTO twit_user VALUES (
	'2833398806',
	'kate ',
	'powwgilinsky',
	'',
	'high key whipped af (:',
	54,90,'Sat Sep 27 01:11:32 +0000 2014',495,90,'en',
	'http://pbs.twimg.com/profile_images/524719987219390465/WpeBsJMs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa v smooth matt',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2833398806
);
INSERT INTO twit_user VALUES (
	'2713194877',
	'ᒪEᑎᗩI&ᒍᗩᖇEᗪ',
	'PaysonsMommy__',
	'Denver,CO',
	'19 yrѕ old мoммy тo мy вaвygιrl payѕon ( 10.15.14 ) ❤️ ιn a relaтιonѕнιp ( 03.04.13 ) ❤️ нappy&lιvιng lιғe ❤️',
	522,1521,'Wed Aug 06 23:19:46 +0000 2014',8981,1521,'en',
	'http://pbs.twimg.com/profile_images/526163148433534977/0x04rP7d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SimpleLoveTweet: I trusted that you wouldn;;t do this to me again and honestly, that was my first mistake.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2713194877
);
INSERT INTO twit_user VALUES (
	'809910446',
	'lol',
	'maaiiuuss',
	'             a minore ad maius',
	'∞ Austin Charles Mansour ∞',
	670,522,'Sat Sep 08 01:04:30 +0000 2012',23871,522,'en',
	'http://pbs.twimg.com/profile_images/525448447894515712/hwxAN8OP_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SamuelDaGoat: School has me like http://t.co/svESTWZ8sK',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	809910446
);
INSERT INTO twit_user VALUES (
	'552159962',
	'Morgan',
	'obartons',
	'',
	'16. | Louisville. | Music. | Coffee. | Good vibes.',
	360,223,'Thu Apr 12 20:52:02 +0000 2012',3796,223,'en',
	'http://pbs.twimg.com/profile_images/519574108355715072/8PDxEEd0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;m so in love with male cheerleaders',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	552159962
);
INSERT INTO twit_user VALUES (
	'2783414431',
	'QuieroMiCarabana-.-',
	'BettBetina',
	'Carrasco del Sauce',
	'love u Ntvg 3',
	132,112,'Mon Sep 01 03:26:31 +0000 2014',1966,112,'es',
	'http://pbs.twimg.com/profile_images/526204878310633473/VS9LseTB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'aparte me sorprendió ayer cuando me habló a whatsapp',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2783414431
);
INSERT INTO twit_user VALUES (
	'2213191584',
	'Flores ✌ ',
	'Blatimane',
	'',
	'Paz, Amor e Positividade ✌',
	395,354,'Sun Nov 24 23:00:27 +0000 2013',7412,354,'pt',
	'http://pbs.twimg.com/profile_images/526105470457896961/l3V9MHEg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Aquele momento em q seu ex comenta sua foto do perfil e vc fica tipo:??? Cara vc ainda nessa',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2213191584
);
INSERT INTO twit_user VALUES (
	'230084886',
	'六条千景bot',
	'chikage_rbot',
	'埼玉/たまに池袋/レディの傍',
	'「デュラララ!!」ろっちーこと六条千景の非公式botです。原作の台詞(11巻まで)を呟きます。口説いてきます。レディがだいすきなのでろっちーに甘やかされたいお嬢様向けです。リプライは完全捏造の甘仕様。未だ口調が迷子。取扱説明書をご一読の上、一個人が創作したことを理解してフォローするようお願いします。お別れはブロックで。',
	3926,3859,'Fri Dec 24 06:33:32 +0000 2010',932505,3859,'ja',
	'http://pbs.twimg.com/profile_images/3252819264/4c573d3a343a3f6d660a2d80fe9aca83_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@jleaguesaiko おやすみ、俺の眠り姫。明日君をキスで起こすのは俺の役目であってほしいから、どうか今日は隣で一緒に寝ることを許してほしいな。それじゃあ、また明日。(ちゅ)',
	'<a href=::http://jp.bloguru.com/chikagebotinfo:: rel=::nofollow::>To羅丸</a>',
	230084886
);
INSERT INTO twit_user VALUES (
	'1673742368',
	'Denzel',
	'_yeahhhoe',
	'D(M)V✈️Chicago✈️(HOUSTON)',
	'Socialite| Party Enhancer| Leader . Catch me in traffic.! Texas Southern Univ.',
	334,267,'Thu Aug 15 17:58:50 +0000 2013',18639,267,'en',
	'http://pbs.twimg.com/profile_images/524706368905695232/iakX_S1v_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Crew neck weather is coming around',
	'<a href=::http://www.echofon.com/:: rel=::nofollow::>Echofon</a>',
	1673742368
);
INSERT INTO twit_user VALUES (
	'201415991',
	'Jared Hinkle',
	'JaredHinkle',
	'',
	'football and track',
	343,235,'Mon Oct 11 20:14:10 +0000 2010',2647,235,'en',
	'http://pbs.twimg.com/profile_images/378800000436653621/973da4536086f6b10f7684e4a7f59316_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WPIAL_Insider: If this tweet gets 300 RTs on it, I;;ll ::try:: my hardest to get my hands on them and release them early 😬😬😬',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	201415991
);
INSERT INTO twit_user VALUES (
	'847912171',
	'bruna',
	'notfucking',
	'',
	'mas enfim, foda-se.',
	1153,538,'Wed Sep 26 18:40:52 +0000 2012',52509,538,'pt',
	'http://pbs.twimg.com/profile_images/524309614087507969/ct7q-FGm_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ei migos voltei rsrsrs',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	847912171
);
INSERT INTO twit_user VALUES (
	'1209624182',
	' I N F A L I B L E ',
	'AguuFerrero',
	'',
	'trust no one - against all odds - live your life, fuck the rest -',
	787,787,'Fri Feb 22 19:46:46 +0000 2013',10940,787,'es',
	'http://pbs.twimg.com/profile_images/524681375421460480/DC2274v0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Subrayado: ::Nada se conquista para siempre, es un trabajo permanente y para ello se necesita un rumbo claro y certezas::, dijo Vázquez.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1209624182
);
INSERT INTO twit_user VALUES (
	'1046834353',
	'Erin',
	'SteelersFanTN',
	'Erin Fike Hutchings',
	'Born in Cheverly, MD. Lived in Somerset, PA. Now live in TN. Steelers Fan For Life. I love God, my family and life. God is good, all the time! #Steelernation',
	765,360,'Sun Dec 30 04:38:05 +0000 2012',23425,360,'en',
	'http://pbs.twimg.com/profile_images/525260368655163392/9qKykw_m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@gburrs1231 @AntonioBrown84 OMGoodness..... so jelly. How wonderful!! ♥',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1046834353
);
INSERT INTO twit_user VALUES (
	'2226750329',
	'megan!!',
	'xPotatoHoranx',
	'tampa florida',
	'I make videos on this thing called YouTube. I met 5 seconds of summer Ricky/6 tyler called me his queen and im nialls personal potatoe',
	967,320,'Sun Dec 15 08:23:43 +0000 2013',13518,320,'en',
	'http://pbs.twimg.com/profile_images/526506047796957184/yj6P5TVn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne daddy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2226750329
);
INSERT INTO twit_user VALUES (
	'1373454080',
	'Nicholas',
	'DiprosperoNick',
	'',
	'null',
	56,112,'Tue Apr 23 00:49:12 +0000 2013',234,112,'en',
	'http://pbs.twimg.com/profile_images/524003891240001536/LyKE8TZl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @miilkkk: Bob ganna wake up like http://t.co/7NB76v8SwT',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1373454080
);
INSERT INTO twit_user VALUES (
	'879595699',
	'محمد الحساني',
	'alhassani1409',
	'',
	'أبوحامد الحساني',
	720,1983,'Sun Oct 14 07:44:32 +0000 2012',5199,1983,'ar',
	'http://pbs.twimg.com/profile_images/3357383132/641de10ee1fcbb795507ce8ee9094b73_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(ما أنزلنا عليك القرآن لتشقى) [طه:2]
http://t.co/XlC9ebkT6Z
 #تطبيق_قرآنى',
	'<a href=::http://qurani.tv:: rel=::nofollow::>تطبيق قرآني</a>',
	879595699
);
INSERT INTO twit_user VALUES (
	'720402750',
	'Fepo',
	'holyblairsus',
	'',
	'I don;;t have a boyfriend. I have Chanel, Hermes and diamonds. X',
	1000,1424,'Fri Jul 27 16:01:13 +0000 2012',41848,1424,'pt',
	'http://pbs.twimg.com/profile_images/518542296053071872/iR0rMiF7_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'pior coisa quando vc acha o amor da sua vida no tinder mas nao da match',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	720402750
);
INSERT INTO twit_user VALUES (
	'65562191',
	'IG:Reesecup214',
	'Sharese214',
	'Sri Lanka',
	'Mind Control... I do what I want ♒',
	4971,4332,'Fri Aug 14 04:33:40 +0000 2009',45748,4332,'en',
	'http://pbs.twimg.com/profile_images/496781083674157058/7-U-IiXW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MizzzAngelic 😩😂😂😂 yasss like thats not even logical !',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	65562191
);
INSERT INTO twit_user VALUES (
	'1310891317',
	'van',
	'vanluvz1',
	'Toronto, Canada',
	'Full of shit, giggles and Italian guilt',
	14004,10104,'Thu Mar 28 15:03:20 +0000 2013',89160,10104,'en',
	'http://pbs.twimg.com/profile_images/495597289667584000/eU5LP5s3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @GermanFreckles: Ok, calm down people who put raisins in their rice.

Calm. The fuck. Down.',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1310891317
);
INSERT INTO twit_user VALUES (
	'456071055',
	'KAH™',
	'kaiquegomes13',
	'New World ⚓',
	'Não crie expectativa, crie sono, se nada der certo pelo menos você dorme.',
	58,120,'Thu Jan 05 21:00:07 +0000 2012',619,120,'pt',
	'http://pbs.twimg.com/profile_images/525435217189036034/CioD2irX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @drogalizado: Faz falta? Sim, faz, mas quero é que se foda.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	456071055
);
INSERT INTO twit_user VALUES (
	'2834255759',
	'FLIGHT,ENT',
	'flightlife123',
	'',
	'null',
	1165,2002,'Thu Oct 16 15:36:08 +0000 2014',2906,2002,'en',
	'http://pbs.twimg.com/profile_images/524049684441333760/urPDUVDz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Smooveboiwonder @Love_Ree365 @vettstunna    New Track By Project Boi and Lil Slim .DAY One http://t.co/ea95kM20MG',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2834255759
);
INSERT INTO twit_user VALUES (
	'48914743',
	'MM',
	'NoEndosable',
	'',
	'Alguien que lleva a su país, Venezuela, hasta en la médula, y aspira a seguir viviendo total y absolutamente libre.',
	8726,1854,'Sat Jun 20 03:25:58 +0000 2009',202614,1854,'es',
	'http://pbs.twimg.com/profile_images/3198592189/80686c3f33b59692a7fc760453ed8efe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @InfoCifras: Leopoldo Castillo con dos twees enciende las alarmas sobre la  ::revolución bancaria:: http://t.co/9Br4NZAdWE vía @InfoCifras',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	48914743
);
INSERT INTO twit_user VALUES (
	'876034512',
	'猪熊陽子',
	'yoko_tsukkomi',
	'綾のとなり',
	'きんいろモザイク(きららMAX連載中)のツッコミ番長　猪熊陽子がひたすらツッコミを入れるbotです（非公式bot）　　何の台詞に対するツッコミかすぐに分かったあなたは立派なきんモザマスター（？）　リプを送ると激しくツッコミます。　作った人→@turkey_410　　　',
	1457,1159,'Fri Oct 12 17:16:36 +0000 2012',290059,1159,'ja',
	'http://pbs.twimg.com/profile_images/378800000373079563/83c51575ee8c3de1a1d0ed0b10fdc230_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@karasu_c_bot それ烏丸さくらのサインボール！！',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	876034512
);
INSERT INTO twit_user VALUES (
	'75129395',
	'William S Rueda',
	'William_Rueda13',
	'Cali, Colombia',
	'Cada vez me gustas mas !  Hincha del #DeportivoCali y Del #AcMilan',
	211,624,'Thu Sep 17 22:11:50 +0000 2009',3168,624,'es',
	'http://pbs.twimg.com/profile_images/523359717511671808/cdruP4QR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Y volvió el Ángel del #DeportivoCali #MiguelMurillo grande !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	75129395
);
INSERT INTO twit_user VALUES (
	'172137478',
	'Sebastian Gamazo',
	'SebaPsi',
	'',
	'Escritor poco prolífico, cocinero por necesidad, me gustan las bicicletas aunque nunca subiría a una amarilla, puedo prescindir del mouse.',
	310,359,'Thu Jul 29 00:27:15 +0000 2010',13914,359,'es',
	'http://pbs.twimg.com/profile_images/434134808180953088/2kvP8EJM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'La calva indigna de Bastía debe ser de las imágenes mas degradantes del fútbol mundial',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	172137478
);
INSERT INTO twit_user VALUES (
	'1623660150',
	'Emilia|Liam Please♥️',
	'Emilia_Psch',
	'Germany',
	'•One Direction♥️•5sos •14 •i Phone 4 S •Stolzes Löwenkind, Schnubbi und Bienchen♥ 05.10. Melina hat mir geantwortet*-* Follow me, i follow you back:-)',
	695,941,'Fri Jul 26 19:24:37 +0000 2013',7538,941,'de',
	'http://pbs.twimg.com/profile_images/524297746337906689/MLpF2nz4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1623660150
);
INSERT INTO twit_user VALUES (
	'2540171734',
	'1d af',
	'herokidstyles',
	'',
	'i need to get out more',
	4264,2354,'Sun May 11 02:25:23 +0000 2014',5321,2354,'en',
	'http://pbs.twimg.com/profile_images/522940847655243776/WsZPcTZW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne BE A FLASHER!!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2540171734
);
INSERT INTO twit_user VALUES (
	'2287497582',
	'#1',
	'EmiiRodriguez0',
	'Harrylulandia♥♥♔',
	'wp:3816918305♡EAS♥/•La locura es un placer que sólo el loco conoce ,eso un cheto lo desconoce ♪♡♡♡sool geronimo te amo reina mia ♥♡',
	428,334,'Sun Jan 12 02:28:31 +0000 2014',26780,334,'es',
	'http://pbs.twimg.com/profile_images/525817002100023296/AhOo3gf9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SabriCorrea13: @PatoMalabar Callate vooooos que sabes!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2287497582
);
INSERT INTO twit_user VALUES (
	'154584221',
	'Алексис Ариэль',
	'alex_arguello',
	'Asunción, Paraguay',
	'Un tipo bueno que de vez en cuando hace maldades.....
Хороший парень, который иногда делает зло ..... гребаный то, что это перевод от Google Translate',
	423,1709,'Fri Jun 11 17:01:16 +0000 2010',4521,1709,'es',
	'http://pbs.twimg.com/profile_images/509004248294490113/PSArhc5Z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Marescobs eso ya e cosa de puerko (?)',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	154584221
);
INSERT INTO twit_user VALUES (
	'2839922201',
	'Rodrigo Catto',
	'Catto_42',
	'Na sua casa ',
	'Another stalker.',
	5,28,'Tue Oct 21 13:33:21 +0000 2014',19,28,'pt',
	'http://pbs.twimg.com/profile_images/524555462021484545/bZCYk8ZV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Hqs que eu compro: Dc

Hqs que eu baixo: Marvel',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2839922201
);
INSERT INTO twit_user VALUES (
	'119097130',
	'warrior.',
	'silenciarnos',
	'',
	'por ti, por mi, por siempre.',
	3471,3562,'Tue Mar 02 17:22:44 +0000 2010',64029,3562,'es',
	'http://pbs.twimg.com/profile_images/492066757561950208/sZhvDaKw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iMisterHacker: Descubre la vulnerabilidad de Facebook con http://t.co/ZuQTDN5vKN http://t.co/DbPxmBXJWF',
	'<a href=::http://twitter.com:: rel=::nofollow::>Super General Deck</a>',
	119097130
);
INSERT INTO twit_user VALUES (
	'436182936',
	'Swing♚',
	'LucasChana',
	'Zona Sur - Varela ',
	'No mo;; drama. *alta gama* Cbc - Avellaneda - Abogacía.  Lu ♥',
	936,974,'Tue Dec 13 21:59:45 +0000 2011',23887,974,'es',
	'http://pbs.twimg.com/profile_images/512796618194571266/XynyJbe3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No me da mas la panza, me mato este finde. Entre los sanguches de la martina y el escabio, voy muerto',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for  Android</a>',
	436182936
);
INSERT INTO twit_user VALUES (
	'2314036861',
	'NFL Latino',
	'NFLlatino',
	'',
	'Sitio de noticias, estadísticas y opiniones sobre la NFL para el apasionado seguidor latino. https://www.facebook.com/NFLlatino',
	2831,3031,'Mon Jan 27 17:40:14 +0000 2014',1753,3031,'es',
	'http://pbs.twimg.com/profile_images/451683959923949568/hLT_dDYS_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Crosby 2/2 y Green Bay retoma la ventaja, #Packers 13 - #Saints 10',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2314036861
);
INSERT INTO twit_user VALUES (
	'749430103',
	'twd',
	'mangelftruben',
	'wwat 03/05',
	'fuck you and your opinion',
	1337,1923,'Fri Aug 10 14:12:01 +0000 2012',4945,1923,'es',
	'http://pbs.twimg.com/profile_images/517856516163264513/GYuk4JDJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'momento de revelacion de las gordas con fiore y sofi',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	749430103
);
INSERT INTO twit_user VALUES (
	'2156254445',
	'Liv||❤11 WEEKS AGO❤️',
	'liv_novo31',
	'✌️B O S T O N , M A S S ✌️',
	'Live for the moment because everything else is uncertain :)',
	1247,1998,'Sun Oct 27 19:50:24 +0000 2013',20494,1998,'en',
	'http://pbs.twimg.com/profile_images/512732517481189377/QzsNmquo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2156254445
);
INSERT INTO twit_user VALUES (
	'2804847974',
	'Sophia Zoe',
	'PhiaBaby__xoxo',
	'',
	'I;;m sometimes funny, does that count?',
	19,54,'Fri Sep 12 03:27:14 +0000 2014',47,54,'en',
	'http://pbs.twimg.com/profile_images/515952222392565760/_pH_g89q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'New hair, because chaos can drive a person mad! http://t.co/jTx7gWKVrA',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2804847974
);
INSERT INTO twit_user VALUES (
	'2205091610',
	'F',
	'Turque_1905',
	'',
	'TURQUE  GALATASARAY❤ #NKFVAS',
	1255,1263,'Wed Nov 20 15:21:38 +0000 2013',6946,1263,'fr',
	'http://pbs.twimg.com/profile_images/525440288127729664/WFdyD8qm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheBarbuGS PPPTTDDRRRRRR git ona soyle mdrr başka işi yok demekki',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2205091610
);
INSERT INTO twit_user VALUES (
	'1107187525',
	'Akin-Sama ',
	'AkinIYF',
	'',
	'le faible a cette facilité de critiquer ce que le fort fait.',
	101,392,'Sun Jan 20 20:08:10 +0000 2013',1241,392,'fr',
	'http://pbs.twimg.com/profile_images/518703426482741248/GAB--qhN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tony_st_laurent: Les 10 raisons pour lesquelles les mecs ne veulent pas se mettre en couple en 2014 ! http://t.co/5EaWTYgB8Q',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1107187525
);
INSERT INTO twit_user VALUES (
	'2348079726',
	'Елена Андреева',
	'naulumher60',
	'',
	'null',
	237,262,'Mon Feb 17 07:28:42 +0000 2014',901,262,'ru',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @fmplortevera: Выручка Microsoft в прошлом квартале выросла на четверть, но прибыль компании снизилась из-за расходов, связанных с рестр…',
	'<a href=::http://orsknewspaper.ru:: rel=::nofollow::>Orsk news</a>',
	2348079726
);
INSERT INTO twit_user VALUES (
	'2352367231',
	'Minimeu',
	'minimeu_pitavel',
	'',
	'Primeiro que tudo não sei fazer bios. Sou muito pitavel e não engordo. Até na bio escrevo merda, impressionante. Ama-me.',
	305,220,'Wed Feb 19 23:01:13 +0000 2014',17720,220,'pt',
	'http://pbs.twimg.com/profile_images/526096087862755328/EXgEBCO8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @whysocutebae: Quando estou sozinha em casa http://t.co/CGNhQm818w',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	2352367231
);
INSERT INTO twit_user VALUES (
	'860675521',
	'Donnie',
	'donniebarrigar',
	'Michigan',
	'Junior at Almont
Go Blue||\/||',
	214,183,'Thu Oct 04 01:45:51 +0000 2012',1744,183,'en',
	'http://pbs.twimg.com/profile_images/497967806173179904/Bck3T8ta_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@lizz_rinke so am I☺',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	860675521
);
INSERT INTO twit_user VALUES (
	'2413467529',
	'鰯bot',
	'_fish_iwashi',
	'君の側に鰯はいるぞｳｵ',
	'美味しい美味しい、ちょっぴりｷﾁｶﾞｲでお馬鹿な鰯のbotｳｵ！！
食べることは絶対に許さないｳｵ☆
お別れは必ずﾌﾞﾛｯｸで(;;ω;; )三(;;ω;;)三( ;;ω;;)

※手動時あります、ご注意を。',
	15,16,'Thu Mar 27 01:55:47 +0000 2014',4561,16,'ja',
	'http://pbs.twimg.com/profile_images/449045395478306817/8I4YjYNo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'実は…………ﾎﾞｸ…………鰯なんです……ｳｵ………………ウオオオオオオオッッwwwwwwウオォオオォオオオオwwww',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2413467529
);
INSERT INTO twit_user VALUES (
	'319987453',
	'Adriana Fleming✨',
	'_xoxmarie',
	'Logan, WV',
	'•17. Senior at Logan.Tennis Player• @ericwv305❤️Instagram:_xoxmarie',
	554,543,'Sun Jun 19 03:15:43 +0000 2011',15049,543,'en',
	'http://pbs.twimg.com/profile_images/525313850791718914/DbyrU2xx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AnimaI_GIFs: His face just lights up! http://t.co/5Naf21uP0s',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	319987453
);
INSERT INTO twit_user VALUES (
	'2196018453',
	'Pizza ♥',
	'Dorga_u',
	'Salão Comunal Da Grifinória',
	'Aquele FC Que Nao Tem Follow De Nenhum Idolo  ♥ TaTa Werneck♥ Directioner ♥ And ♥ Smiler ♥',
	3404,1613,'Mon Nov 25 20:45:38 +0000 2013',10694,1613,'pt',
	'http://pbs.twimg.com/profile_images/523970998912053248/C2vq7LBU_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@1Decote Uma Fic e se poder da una lida pra mim por favor http://t.co/okrn5XQkdg',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	2196018453
);
INSERT INTO twit_user VALUES (
	'1671818989',
	'Noturno',
	'seilaeddy',
	'',
	'Se for pra ser será! 3',
	108,51,'Thu Aug 15 00:44:25 +0000 2013',884,51,'pt',
	'http://pbs.twimg.com/profile_images/378800000311043069/1794720c6f2cc9561d3eb1c3e22c7350_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'A bebida entra e a verdade sai! ;)',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1671818989
);
INSERT INTO twit_user VALUES (
	'437203404',
	'James',
	'JamezFierro',
	'she::s right. you can co now.️',
	'hmu when you want to get balled. 2/6/13',
	247,133,'Thu Dec 15 03:58:41 +0000 2011',1871,133,'en',
	'http://pbs.twimg.com/profile_images/509585231112704000/TRbNLSFj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'S/o to the creators of Mathway and Desmos on the real lmao',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	437203404
);
INSERT INTO twit_user VALUES (
	'2836592481',
	'יחד אורות',
	'LIm5LFBWcJ09Q1U',
	'',
	'null',
	0,61,'Sat Oct 18 23:05:21 +0000 2014',7,61,'zh-tw',
	'http://pbs.twimg.com/profile_images/524204700283846656/M0sj_4KA_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'furniture,--including a big wooden rocking-chair.  It seemed to',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2836592481
);
INSERT INTO twit_user VALUES (
	'1104449677',
	'Carolyn ~Cars',
	'Cars625',
	'',
	'null',
	26,267,'Sat Jan 19 19:17:40 +0000 2013',97,267,'en',
	'http://pbs.twimg.com/profile_images/413034691076161536/A9lT189G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@lotofsnow @MilwaukeeJoe if R.E. Lee would have been smart the correct answer should have been RUN like Hell!',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	1104449677
);
INSERT INTO twit_user VALUES (
	'133091997',
	'エミオ',
	'emiohorrorshow',
	'京都◎東京',
	'パクチードーナツセロリスコーンズッキーニナン',
	323,388,'Thu Apr 15 00:45:54 +0000 2010',29632,388,'ja',
	'http://pbs.twimg.com/profile_images/520945672472629249/p0Lj9GqF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@noboyosi あ、わたしの中でね♪(笑)たぶん自分と全然違うタイプだからかなぁ…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	133091997
);
INSERT INTO twit_user VALUES (
	'570546129',
	'ella  compean',
	'daniellecompean',
	'#ECU 18::',
	'she acts like summer and walks like rain',
	404,254,'Fri May 04 02:24:42 +0000 2012',21293,254,'en',
	'http://pbs.twimg.com/profile_images/489954138848243712/HAomVg_E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Every season with you is my favorite 🍁🍂🎃 http://t.co/tB2fiIdCd2',
	'<a href=::http://instagram.com:: rel=::nofollow::>Instagram</a>',
	570546129
);
INSERT INTO twit_user VALUES (
	'2595547278',
	'相互フォローの輪',
	'sougohelper91',
	'',
	'相互フォロー支援＜アカウント＞ 当サービスを上手に使ってフォロワーを増やしましょう。 ＜手順＞ 当アカウントをフォロー→このツイートをリツイート→当アカウントのフォロアーをフォロー。リツイートすればするほどご自分のフォロワーが増えます。　#sougofollow',
	10046,8039,'Mon Jun 30 01:08:42 +0000 2014',50621,8039,'ja',
	'http://pbs.twimg.com/profile_images/483417441012158465/a_Spd5oR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'会社にもお金にも支配されない楽園ビジネス　１１月４日まで 

http://t.co/R91COl4C6d',
	'<a href=::http://www.twisuke.com:: rel=::nofollow::>ツイ助。</a>',
	2595547278
);
INSERT INTO twit_user VALUES (
	'1175233668',
	'Ricotta Elmar',
	'tare0008',
	'',
	'null',
	31,67,'Wed Feb 13 13:03:11 +0000 2013',148293,67,'ja',
	'http://pbs.twimg.com/profile_images/3278447577/51d827e76560f99c9a1d064edba29bd1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@tokutaka7710 C',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1175233668
);
INSERT INTO twit_user VALUES (
	'1899565176',
	'PLEASE HARRY LOVELY',
	'daisychainlxrry',
	'| TMH 13.10.13 | UAN 21.4.12 |',
	'||✨Better than words, more than a feeling✨|| https://twitter.com/louis_tomlinson/status/120620074301267968 || Styles is my cinnamon apple || 1D af || kms/5 ||',
	1064,1534,'Tue Sep 24 07:51:50 +0000 2013',7525,1534,'en',
	'http://pbs.twimg.com/profile_images/525103953076187136/DUnRBGdr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne be a sexy fireman',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1899565176
);
INSERT INTO twit_user VALUES (
	'1061755848',
	'Nini',
	'_kaniyiabrown',
	'Lincolnton, NC. ',
	'lhs | female hooper | @jdiahfriday & squad make me happy ❤️ | ig - kaniyiabrown',
	836,796,'Sat Jan 05 00:27:16 +0000 2013',16907,796,'en',
	'http://pbs.twimg.com/profile_images/526212447284101121/61EqWXk0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Confusedddd',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1061755848
);
INSERT INTO twit_user VALUES (
	'91620276',
	'缶麦酒',
	'canbeer21',
	'',
	'攝津國出身。武藏國在住。',
	204,266,'Sat Nov 21 17:57:26 +0000 2009',19476,266,'ja',
	'http://pbs.twimg.com/profile_images/641573339/oni_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @alfalfafafa: 蓮舫氏「2人とも間違いを認めて辞したわけなので、襟を正すべきだ」 http://t.co/yNpF6AhWS3 #2chmatome #news #newsjp',
	'<a href=::http://www.justsystems.com/jp/products/tweetatok/:: rel=::nofollow::>Tweet ATOK</a>',
	91620276
);
INSERT INTO twit_user VALUES (
	'2557848378',
	'Thanvers
',
	'londo_jadul',
	'',
	'Aku selalu berusaha tak menangis karenamu, karena setiap butir yang jatuh, hanya makin mengingatkan, betapa aku tak bisa melepaskanmu.',
	5578,121,'Tue Jun 10 00:56:44 +0000 2014',14234,121,'id',
	'http://pbs.twimg.com/profile_images/523465738988695552/rRuMURPl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@d458fc13d0bf406 Jual follower twitter 500follower = Rp 10rb 1000follower = Rp 20rb Via Pulsa Minat? SMS 089672605007',
	'<a href=::https://path.com/:: rel=::nofollow::>Path</a>',
	2557848378
);
INSERT INTO twit_user VALUES (
	'99125520',
	'Anwar Sadath P P',
	'amnsad',
	'',
	'null',
	204,542,'Thu Dec 24 15:47:37 +0000 2009',12337,542,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ASisriandi: kadang, bukan kenangan buruk yg membuatmu bersedih, tapi kenangan indah yg kamu tahu, hal itu tak akan terulang kembali',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	99125520
);
INSERT INTO twit_user VALUES (
	'2311916394',
	'',
	'RizggerF',
	'',
	'null',
	4052,7,'Sun Jan 26 14:11:00 +0000 2014',201294,7,'en-gb',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'Good morning @Ikha_JKT48 :* HAVE A NICE DAY YEAH :*****',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2311916394
);
INSERT INTO twit_user VALUES (
	'400044972',
	'CL',
	'ZiZhaoXP',
	'In a world with awesome people',
	'Student Council. ManUtd is Red. #TeamVirgo Insta: ZiZhaoXP In the Red Dot',
	265,270,'Fri Oct 28 12:32:41 +0000 2011',7938,270,'en',
	'http://pbs.twimg.com/profile_images/518675314658906112/qBTOJnJX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'great match tho',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	400044972
);
INSERT INTO twit_user VALUES (
	'326998681',
	'paloma ',
	'Palomaloveee',
	'',
	'Hello there',
	639,803,'Thu Jun 30 20:47:22 +0000 2011',10189,803,'en',
	'http://pbs.twimg.com/profile_images/526146857789964288/mG2jfcr5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ashton_kuttcher: When you accidentally touch your soul http://t.co/CNgUQSGXEi',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	326998681
);
INSERT INTO twit_user VALUES (
	'2279923890',
	'CaliforniaGirl',
	'sativa_chambers',
	'South Tahoe, California',
	'Beach. Arctic Monkeys. Icecream. Thats my life.',
	765,762,'Tue Jan 07 03:06:39 +0000 2014',530,762,'en',
	'http://pbs.twimg.com/profile_images/496158658615451648/jNrK6eDb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@wtvrdrea I HATE YOU SO MUCH WHY DONT YOU LOVE ME',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2279923890
);
INSERT INTO twit_user VALUES (
	'636265167',
	'LeBron James',
	'LBJUpdate',
	'San Francisco',
	'This account is not affiliated with LeBron James.',
	1797,80,'Sun Jul 15 13:33:49 +0000 2012',7327,80,'en',
	'http://pbs.twimg.com/profile_images/3046488842/717a08026ace91bfd24a8fda85949ec6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'LeBron James cheers on Cleveland Browns against Oakland Raiders, draws ... - The Plain Dealer http://t.co/dPJwJSpoLj',
	'<a href=::http://www.snsanalytics.com:: rel=::nofollow::>SNS Analytics</a>',
	636265167
);
INSERT INTO twit_user VALUES (
	'2165386975',
	'CHUPA AÉCIO _I_ ',
	'girlcrazyda1D',
	'',
	'O harry vai ser gay de janeiro a janeiro até a piroca do Louis acabar',
	596,551,'Wed Oct 30 19:58:21 +0000 2013',9709,551,'pt',
	'http://pbs.twimg.com/profile_images/524396466245091328/HQlEZ6G-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mil setecentos e oitenta #EMABiggestFans1D',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2165386975
);
INSERT INTO twit_user VALUES (
	'311387517',
	'Gweneth',
	'carrotholicmars',
	'Manila, Philippines',
	'take us to the staaars toniigghhtt ✨',
	2950,1537,'Sun Jun 05 11:00:23 +0000 2011',22661,1537,'en',
	'http://pbs.twimg.com/profile_images/526399251811532800/4HpQSVwC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AlmondJoi1814: *Fixed “@BrunoMars: Bruno and Problematic GF and Problematic family and Problematic habits... and Hooligans :)”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	311387517
);
INSERT INTO twit_user VALUES (
	'1049093730',
	'antoinea .',
	'_iammthejokerr_',
	'',
	'; jonathann❤',
	454,303,'Mon Dec 31 00:12:11 +0000 2012',5608,303,'en',
	'http://pbs.twimg.com/profile_images/523915699434311682/FY8S6yPA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'they gonn chop my shiit off😩😭😂😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1049093730
);
INSERT INTO twit_user VALUES (
	'63455353',
	'5yearsATweep||BBOG',
	'sar_GENT',
	'Illinois NOT chicago. ',
	'yesterday i was, Today i am, Tomorrow i;;ll be. #Islam #Arsenal #Medicine. i am here to consciously let you see what subconsciously you uncounsciously wont see.',
	1821,974,'Thu Aug 06 11:43:56 +0000 2009',42656,974,'en',
	'http://pbs.twimg.com/profile_images/525815162914480129/AhZyJ6kr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Next. Week. Sunday. That. Girl. Must. Show. Us. The. Munched. DM.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	63455353
);
INSERT INTO twit_user VALUES (
	'2610312777',
	'Alston Williams',
	'alston_aw',
	'Vidalia ga',
	'Romans 10:9.  912-424-1855',
	232,500,'Sun Jun 15 03:02:38 +0000 2014',4631,500,'en',
	'http://pbs.twimg.com/profile_images/478009755878039553/BuLkR6o__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AthletePride: God gives his toughest battles to his toughest soldiers.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2610312777
);
INSERT INTO twit_user VALUES (
	'2757318190',
	'Teamhypedfamily/kbae',
	'jonesaundria',
	'',
	'❤KMOON, AND EDWIN BURGOS ARE BAE ❤#KBAE #TEAMHYPEDFAMILY',
	78,31,'Sun Aug 31 16:54:30 +0000 2014',1350,31,'en',
	'http://pbs.twimg.com/profile_images/524706152769404929/40t5tdY__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@bruhitszach what;;s ur fav color and #',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2757318190
);
INSERT INTO twit_user VALUES (
	'346836859',
	'dr-dmd',
	'dmthubiti',
	'',
	'اللهم  إني وكلتك أمري فكن لي خير وكيل ودبر لي أمري فإني لا أحسن التدبير .. اللهم إني أسألك حسن الخاتمة',
	596,1912,'Mon Aug 01 22:31:18 +0000 2011',13425,1912,'ar',
	'http://pbs.twimg.com/profile_images/378800000224676148/38d68b4b2d8654267b9deb2ee7615c29_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#هل_صليت_على_النبي_اليوم http://t.co/67BqSHk5cQ',
	'<a href=::http://retyou.com/twt/twitter_app/:: rel=::nofollow::>http://retyou.com/twt/</a>',
	346836859
);
INSERT INTO twit_user VALUES (
	'260748495',
	'Morgana Viapiana',
	'zuerahj',
	'Rio Grande do Sul',
	'Estudante de Direito. Futura Promotora de Justiça do Estado do Rio Grande do Sul. :)',
	419,243,'Fri Mar 04 14:27:46 +0000 2011',19361,243,'pt',
	'http://pbs.twimg.com/profile_images/518566860070346752/gJ3FCqxm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'A Dilma não tem culpa. O PT sim. #RIPBrasil #DilmaNovamente',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	260748495
);
INSERT INTO twit_user VALUES (
	'880495993',
	'kryster',
	'krystaschultz16',
	'',
	'~ just livin life ~',
	447,449,'Sun Oct 14 16:37:37 +0000 2012',7085,449,'en',
	'http://pbs.twimg.com/profile_images/523206094454542336/BWFY9IF5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'But what about Daryl and carol #TheWalkingDead',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	880495993
);
INSERT INTO twit_user VALUES (
	'755539729',
	' Jeffrey Leung',
	'leung_jefffafa',
	'',
	'United States Army.',
	190,136,'Mon Aug 13 17:40:15 +0000 2012',1601,136,'en',
	'http://pbs.twimg.com/profile_images/520320578042228736/iXx2JsIv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Jayy_Sheaa well I hope you;;re gaining the weight you need and btw you;;re going to be my hiking buddy.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	755539729
);
INSERT INTO twit_user VALUES (
	'192433160',
	'Carolina ',
	'MoyanoCarolina_',
	'Ezeiza',
	'Vale la pena luchar por lo que vale la pena tener... | Bariloche PROMO 2013 - HAB. 301 ♥',
	757,673,'Sun Sep 19 03:47:20 +0000 2010',24320,673,'es',
	'http://pbs.twimg.com/profile_images/524417678770208768/aweDlXyq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mataria por un buen vaso de fernet frío frío. Se me volvio una adiccion con edte calor...',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	192433160
);
INSERT INTO twit_user VALUES (
	'385025274',
	'Melita_vs_Lita',
	'litaaaa_lita',
	'My World',
	'If you all can;;t already see I ain;;t worried about you all cuz I;;m already me',
	602,672,'Tue Oct 04 18:55:23 +0000 2011',9494,672,'en',
	'http://pbs.twimg.com/profile_images/522895658039390208/qECbV91Q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@SBeauty1 beautiful😘',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	385025274
);
INSERT INTO twit_user VALUES (
	'29761337',
	'Octavia Green',
	'_Yin27',
	'New Jersey',
	'https://t.co/EmneTvDNjY If I;;m not smiling then there is a problem. { #AlphaKappaAlpha #BetaAlphaOmega } My other half: @_Yang27',
	429,390,'Wed Apr 08 16:58:50 +0000 2009',34513,390,'en',
	'http://pbs.twimg.com/profile_images/459017145884880896/n1O9ykkS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMusicMogul #TheWalkingDead cause they don;;t know that yet maybe lol',
	'<a href=::http://www.myplume.com/:: rel=::nofollow::>Plume for Android</a>',
	29761337
);
INSERT INTO twit_user VALUES (
	'1873364719',
	'Nai Contreras♔',
	'NaiContreras1',
	'Rio Grande ',
	'NACHISTA LOVE (L /CAMI HERMOSA♥/LSH♥ • #138- ♔LASSALLES♔- Lo juro por mi pellejo para mi Dios es mi viejo. - Wpp +542964521735',
	563,533,'Mon Sep 16 23:13:43 +0000 2013',9594,533,'es',
	'http://pbs.twimg.com/profile_images/523603096849903616/6jqAus9G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Maaacaaaa: 🐁🐁🐁 soy nai soy una rata en todo',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1873364719
);
INSERT INTO twit_user VALUES (
	'246935940',
	'zaynspunkrocker',
	'myhappilyiszayn',
	'In Zayn::s pants',
	'Twitter, One direction and Internet are just perfection',
	1170,740,'Thu Feb 03 19:24:10 +0000 2011',17018,740,'en',
	'http://pbs.twimg.com/profile_images/516367617138106368/hsV6zW88_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	246935940
);
INSERT INTO twit_user VALUES (
	'223561061',
	'Dí who?',
	'Didirac22',
	'Los Colegios ',
	'Una vida detrás de 140 caracteres. Es lo q hay! Alegre! ➡️Say what you like.Do what you feel, you know exactly WHO you are❤️follow me and Let;;s have a KIKI!!!',
	496,608,'Mon Dec 06 18:43:14 +0000 2010',12997,608,'es',
	'http://pbs.twimg.com/profile_images/510260674145292288/H-1O8nYe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Es hora de volver a casa! #Halloween #Venue #HomeBack \o/ http://t.co/lSF9QbbzeZ',
	'<a href=::http://instagram.com:: rel=::nofollow::>Instagram</a>',
	223561061
);
INSERT INTO twit_user VALUES (
	'2547861319',
	'2014',
	'savvycheyy7',
	'',
	'Savannah Cheyenne. 18.  29702. ;;14. SMC ;;16',
	193,462,'Thu Jun 05 10:17:21 +0000 2014',176,462,'en',
	'http://pbs.twimg.com/profile_images/525084805269315584/nbJ_ZrvM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@Blxzingzayn: One direction // more than this 🎧”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2547861319
);
INSERT INTO twit_user VALUES (
	'192648973',
	'cami mestres  ♔',
	'CaamiMestres',
	'',
	'17 años. Amando comedia musical ♥',
	913,854,'Sun Sep 19 19:25:19 +0000 2010',35393,854,'es',
	'http://pbs.twimg.com/profile_images/525468074833485824/qa3UO7jS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'A veces me olvido que estoy a un mes de terminar la escuela................ diganme que recién estoy empezando la secundaria',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	192648973
);
INSERT INTO twit_user VALUES (
	'2216367524',
	'please liam',
	'horancontrato',
	'larrymonarca',
	'me abane escravo',
	12340,9813,'Tue Nov 26 20:20:30 +0000 2013',37531,9813,'pt',
	'http://pbs.twimg.com/profile_images/526386259586195456/1Tiaz9Uu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'n sei pra quem peço follow to morrendo',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2216367524
);
INSERT INTO twit_user VALUES (
	'1158678804',
	'❁nathalia❁',
	'awnesias',
	'',
	'it;;s fine if you don;;t like us, we;;re not for everyone',
	1544,447,'Fri Feb 08 00:43:52 +0000 2013',9576,447,'en',
	'http://pbs.twimg.com/profile_images/523894805714059264/vObg1zYn_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'PODE ESCOLHER 5 NO PCA EU ESCOLHI SÓ UM ALGUEM ME DA UM TIRO',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1158678804
);
INSERT INTO twit_user VALUES (
	'2228974838',
	'-',
	'RooVallier',
	'',
	'Libertad es paz  ✌  el tungatunga y el rockkkk siempre de la mano',
	270,226,'Tue Dec 03 23:13:07 +0000 2013',5421,226,'es',
	'http://pbs.twimg.com/profile_images/524550146282258432/dkpUUK2o_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ParedeesPau jajajajajajajaja',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2228974838
);
INSERT INTO twit_user VALUES (
	'603117487',
	'Roniam',
	'MsUnpxrfect',
	'Hogwarts',
	'Lol I love @justinbieber and @Louis_Tomlinson deal with it haha. You;;ve made it so far babe',
	1011,2001,'Fri Jun 08 22:28:24 +0000 2012',13857,2001,'en',
	'http://pbs.twimg.com/profile_images/513559613128851457/IhAXMGUM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@beaniehairlou IT SCARED ME SO BAD',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	603117487
);
INSERT INTO twit_user VALUES (
	'524489868',
	'Gill ✌',
	'Giiuuoo',
	'',
	'Não corra atrás de quem não sai do lugar por você!✌✌',
	100,95,'Wed Mar 14 16:12:37 +0000 2012',2634,95,'pt',
	'http://pbs.twimg.com/profile_images/501090421263454211/ST_VQ0WW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @instagranzin: Programação da Globo de amanhã
Bom Dilma
Mais Dilma
Dilma Estar
Encontro com Dilma
Jornal Dilma
Video Dilma
Vale a pena v…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	524489868
);
INSERT INTO twit_user VALUES (
	'2173976477',
	'cmon luke :(( ||bio',
	'Hushkimby',
	'',
	'⠀⠀⠀⠀⠀⠀⠀ ⠀⠀✧ A good girl is like, ⠀⠀⠀⠀sweet lemonade on a hot day ✧ ⠀⠀⠀. •1/3 mm clique• haha/4 no/5⠀⠀⠀ https://twitter.com/hushkimby/status/523237510680686594',
	2014,601,'Sat Nov 09 01:43:02 +0000 2013',33920,601,'en',
	'http://pbs.twimg.com/profile_images/520714868417380352/WSOINdeh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne liaM BE NIALL PLEASE',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2173976477
);
INSERT INTO twit_user VALUES (
	'2344204876',
	'wwa 8.4.14 & 8.14.14',
	'OliviaGrzy',
	'',
	'why am i so afraid to lose you when you aren;;t even mine?',
	123,229,'Sat Feb 15 02:53:27 +0000 2014',830,229,'en',
	'http://pbs.twimg.com/profile_images/525822206899920896/nwUkc9JU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne BE MRS. HORAN!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2344204876
);
INSERT INTO twit_user VALUES (
	'144974346',
	'thainá. ',
	'thaipassoss',
	'Brasil',
	'null',
	201,102,'Mon May 17 20:20:53 +0000 2010',44805,102,'pt',
	'http://pbs.twimg.com/profile_images/521494363931955200/lVDcwlXE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LuisaUrie: @thaipassoss CARALHOOOO NÃO ACREDITO',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	144974346
);
INSERT INTO twit_user VALUES (
	'267965819',
	'Tau',
	'tau_lazzari',
	'brazil',
	'null',
	542,259,'Thu Mar 17 22:20:03 +0000 2011',12026,259,'pt',
	'http://pbs.twimg.com/profile_images/482956897784725504/X4igM_GJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'cansada já',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	267965819
);
INSERT INTO twit_user VALUES (
	'1635906571',
	'IG:SOYALIBARRIOS',
	'Soyalibarrios',
	'Maracaibo City',
	'null',
	16129,11373,'Wed Jul 31 16:36:35 +0000 2013',30140,11373,'es',
	'http://pbs.twimg.com/profile_images/522492825804750848/ZBTMyiOJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iMisterHacker: Descubre la vulnerabilidad de Facebook con http://t.co/ZuQTDN5vKN http://t.co/DbPxmBXJWF',
	'<a href=::http://azulito.smdeck.com:: rel=::nofollow::>Deck Azul</a>',
	1635906571
);
INSERT INTO twit_user VALUES (
	'331467423',
	'isurvivalskills',
	'isurvivalskills',
	'THE WOODS',
	'#Survival #Bushcraft  #Preppers #PrepperTalk #Truth #2A #Patriot #MolonLabe',
	17106,9629,'Fri Jul 08 06:40:35 +0000 2011',117226,9629,'en',
	'http://pbs.twimg.com/profile_images/458831143832276993/yOUlj6Ug_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'FOLLOW &gt;&gt;&gt; @spynalkord 
#Paracord products #Handmade in the #USA 
#Preppers #Preparedness #Survival #SHTF
https://t.co/zTkXTPIzVY',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	331467423
);
INSERT INTO twit_user VALUES (
	'341590442',
	'inactive bc school',
	'MalloryOlzanski',
	'Under Shawns Bed',
	'follow limit sorry i will follow back soon DONT UNFOLLOW PLEASE :) please RT this? https://twitter.com/malloryolzanski/status/464239698530271232',
	1501,1999,'Sun Jul 24 16:31:05 +0000 2011',18335,1999,'en',
	'http://pbs.twimg.com/profile_images/521792769124483072/1W85nKIK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	341590442
);
INSERT INTO twit_user VALUES (
	'232997543',
	'Alaysia❤',
	'vintagedoll__',
	'',
	'march 29, 2015',
	2593,1815,'Sun Jan 02 00:22:21 +0000 2011',89866,1815,'en',
	'http://pbs.twimg.com/profile_images/509174655358607360/haRhVrLn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Lorren lyncie showing off for her followers😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	232997543
);
INSERT INTO twit_user VALUES (
	'952806518',
	'janine',
	'Jksooooooo',
	'Boston',
	'Volleyball 
❄️',
	328,497,'Sat Nov 17 02:49:36 +0000 2012',4150,497,'en',
	'http://pbs.twimg.com/profile_images/526039546711265281/w8oH70a-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JackDail: the caption of that picture was suppose to be ::well well well::',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	952806518
);
INSERT INTO twit_user VALUES (
	'37902905',
	'Larissa',
	'leeralavinski',
	'SAO PAULO BRAZIL',
	'A caminho de Vênus.',
	196,169,'Tue May 05 11:17:04 +0000 2009',16725,169,'en',
	'http://pbs.twimg.com/profile_images/514985317951373314/399RB0jE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FredH_: é como meu vô dizia: o importante é ter MEMES, o resto a gente corre atras',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	37902905
);
INSERT INTO twit_user VALUES (
	'1585956596',
	'Abdullah',
	'by_aphoby',
	'Tekirdağ/İstanbul/Ordu',
	'hayatin gürültüsünde sessizliğin anlanmı',
	50,201,'Thu Jul 11 14:10:31 +0000 2013',10,201,'tr',
	'http://pbs.twimg.com/profile_images/524700046294794240/PWDrO6R1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#BenceRisk sensiz yaşayamam demek',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	1585956596
);
INSERT INTO twit_user VALUES (
	'28717746',
	'PhillyPeenNo ',
	'tpot84',
	'Lost in my head',
	'Between here, there, and nowhere. May not be a dime, but I am a fine DST 9!!! From Jawja (Ga) anything else? Ask #TeamEveryFuckingThing',
	938,1418,'Sat Apr 04 02:20:20 +0000 2009',71506,1418,'en',
	'http://pbs.twimg.com/profile_images/475871347898585088/PN5DI3Zl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @QueTarded: Imma need for Bruh to wake up n say um I;;m zombie',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	28717746
);
INSERT INTO twit_user VALUES (
	'2874305868',
	'Angelina Grande',
	'QueenAngelx',
	'the walking dead fan',
	'hi im angelina grande and i love carl grimes from the walking dead',
	251,746,'Fri Oct 24 01:12:11 +0000 2014',757,746,'en',
	'http://pbs.twimg.com/profile_images/526456280672911361/MoHNfBA3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @carlgrimed: LIKE BOX CART A HAHAHHA GARETH FUCK OFF',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2874305868
);
INSERT INTO twit_user VALUES (
	'1335475963',
	'10 months 21 days',
	'90strashcalum',
	'0/4 0/5',
	'i rlly like calum hood and empanadas',
	968,1423,'Mon Apr 08 01:19:16 +0000 2013',18560,1423,'en',
	'http://pbs.twimg.com/profile_images/515650664698220544/BzSdyeBY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1335475963
);
INSERT INTO twit_user VALUES (
	'221925464',
	'franco patrone',
	'francopatrone',
	'',
	'#108400',
	307,233,'Thu Dec 02 00:24:12 +0000 2010',5792,233,'es',
	'http://pbs.twimg.com/profile_images/526534838518837250/sjUg8CZh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Aforastier @LBaladan dejala aca igual que no tiene final esta discusión',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	221925464
);
INSERT INTO twit_user VALUES (
	'611162366',
	'nicole',
	'nicoliiollii',
	'',
	'Wes Koerber is mine',
	465,329,'Sun Jun 17 22:07:47 +0000 2012',17053,329,'en',
	'http://pbs.twimg.com/profile_images/523882968360554497/pAvYjUYj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@lifetiptrick https://t.co/yL5nRUIm2T',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	611162366
);
INSERT INTO twit_user VALUES (
	'1738162021',
	'marina tubino',
	'marinatubino_',
	'',
	'snap: marinatubino ♓️',
	372,187,'Fri Sep 06 23:01:53 +0000 2013',7565,187,'pt',
	'http://pbs.twimg.com/profile_images/526122180678266880/d8JFknS-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @medettmer: @marinatubino_ oi love you',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1738162021
);
INSERT INTO twit_user VALUES (
	'1701679232',
	'Queenmerinol',
	'khayekong',
	'manila ',
	'Simpleng tulad mo ♥∞',
	217,86,'Mon Aug 26 11:30:45 +0000 2013',3384,86,'en',
	'http://pbs.twimg.com/profile_images/524220538672009216/pxherLns_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PoemPorns: fb page: http://t.co/SISQU5hYFU .: http://t.co/MFaEXjwOMo',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1701679232
);
INSERT INTO twit_user VALUES (
	'1630512529',
	'shahad::',
	'shahadroon',
	'',
	'null',
	4,7,'Mon Jul 29 14:29:39 +0000 2013',316,7,'ar',
	'http://pbs.twimg.com/profile_images/378800000217213075/892bc3ebc6108f667086613a10004c27_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'{وقل رب أعوذ بك من همزات الشياطين} [المؤمنون:97]
http://t.co/KmjMyEurKL',
	'<a href=::http://quran.ksu.edu.sa/tw:: rel=::nofollow::>Ayat | آيات</a>',
	1630512529
);
INSERT INTO twit_user VALUES (
	'1411113523',
	'STEALMYGIRLVIDEO2DAY',
	'ilovemritchyxo',
	'0/5(1D) till i die 5/5 (1:11)',
	'I LOVE ONE DIRECTION AND ELEVEN PAST ONE AND 5 SOS AND YOUTUBERS LIKE TYLER OAKLEY AND JC CAYLEN AND THE 100 OMG',
	1024,2000,'Tue May 07 20:01:17 +0000 2013',6564,2000,'en',
	'http://pbs.twimg.com/profile_images/525595261901758464/KKLbrLni_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@111SteveR I don;;t see you...',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1411113523
);
INSERT INTO twit_user VALUES (
	'379999337',
	'Susan ',
	'dominomouse',
	'',
	'I love animals, science, chocolate, and craft beer',
	369,535,'Sun Sep 25 22:26:42 +0000 2011',3246,535,'en',
	'http://pbs.twimg.com/profile_images/378800000386132606/79cca5f1eca71cce427bc1fd6fe0269e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Smith83K: About 2.6 million young people under 26 were able to enroll on their parents plan, thanks to the #ACA. #YesWeDid #UniteBlue #…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	379999337
);
INSERT INTO twit_user VALUES (
	'2756472706',
	'Cassie Lewis',
	'cassielewis995',
	'',
	'Cassie · mommy to be 12/14 · Lyric Carter ;*',
	44,70,'Sat Aug 30 23:30:27 +0000 2014',34,70,'en',
	'http://pbs.twimg.com/profile_images/512594494920069120/erK1YPJd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RelatableQuote: 8 more Sunday;;s till Christmas 😳🎁🎄🎅 http://t.co/3PKKPDv7WA',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2756472706
);
INSERT INTO twit_user VALUES (
	'525528920',
	'•Risma•',
	'KarismaBhakta',
	'roswell to las cruces nm',
	'Do what makes you happy, and be with who makes you smile.',
	649,548,'Thu Mar 15 16:38:44 +0000 2012',7712,548,'en',
	'http://pbs.twimg.com/profile_images/522916392769945600/oRq38YNa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @YABOYLILB: When you;;re sleeping and ur mom is on the phone telling lies about how you don;;t help out in the house http://t.co/WwC1LQbrk5',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	525528920
);
INSERT INTO twit_user VALUES (
	'211198359',
	'Paolo C',
	'thepaoloc',
	'Imus, Cavite PH',
	'Probably the only one who gives a fuck. Well, shit.  • DLSU-D • Computer Engineering • Batman! •',
	402,197,'Tue Nov 02 16:07:15 +0000 2010',10184,197,'en',
	'http://pbs.twimg.com/profile_images/504503196148981760/dcFvOk8W_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mukhang marami na naman binagsak si sir ah. 😂😂😂 #circuitspamore http://t.co/AAb7HW5gGg',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	211198359
);
INSERT INTO twit_user VALUES (
	'1352774546',
	'anita.',
	'anaserrizuela',
	'LMB☯LCP',
	'☯',
	342,253,'Sun Apr 14 20:50:05 +0000 2013',7882,253,'es',
	'http://pbs.twimg.com/profile_images/526437785218318336/q_ZNhBSh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Tengo LA paja. No estoy psicologicamente preparada para que sea lunes.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1352774546
);
INSERT INTO twit_user VALUES (
	'1544160043',
	'Krüz the Wolf',
	'Kmetalwolf59',
	'Potomac/Bethesda, MD',
	'Furry (wolf). 18. Str8. Rock, Heavy Metal & Dubstep! ☠ Guitar. Caffeine Junkie ☣ Defender of the Faith ✞ Baltimorean. #59. WJ Senior. #Ravens',
	1243,1519,'Mon Jun 24 21:18:41 +0000 2013',28804,1519,'en',
	'http://pbs.twimg.com/profile_images/485034500129583105/SQgFiNQf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'what the fucking frick XD http://t.co/03royxbaS7',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows</a>',
	1544160043
);
INSERT INTO twit_user VALUES (
	'1474673904',
	'lauraruge',
	'laura_ruge',
	'',
	'null',
	64,302,'Sat Jun 01 13:17:15 +0000 2013',583,302,'es',
	'http://pbs.twimg.com/profile_images/458374315688210432/FWS_BcKs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @EsInstagram: El problema no es ignorar a una persona, el problema es... http://t.co/zzqBNL6qbB',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1474673904
);
INSERT INTO twit_user VALUES (
	'310796148',
	'takano',
	'tomo3tktk',
	'morimati',
	'北海道森町在住。仕事は函館市内の老人福祉施設で働いてます。介護とプライベートのツイートしていきたいと思います。初心者ですが宜しく＾＾あ、相互フォロー１００％です。　#autofollowjp  #sougofollow  #follow7com #mori',
	611,268,'Sat Jun 04 10:59:09 +0000 2011',38506,268,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'福祉車輌を煽ったり、幅寄せするのは絶対に止めてくださいね＾＾；　お年寄りが乗ってますのでかなり気を張って運転してるんです。。。　#autofollowjp  #sougofollow #follow7com',
	'<a href=::http://rakubots.kissa.jp/:: rel=::nofollow::>rakubo2</a>',
	310796148
);
INSERT INTO twit_user VALUES (
	'2866086870',
	'Amanda',
	'mandymucks1',
	'',
	'null',
	1,2,'Mon Oct 20 01:00:20 +0000 2014',5,2,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'Birthday Cake Topper  Birthday Bling  Glitter by Boundtobeloved http://t.co/MIqB9JNqj6 via @Etsy',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	2866086870
);
INSERT INTO twit_user VALUES (
	'2772065438',
	'たまひよ痩せます',
	'frm_th',
	'',
	'たまひよとすももはたまもも',
	124,108,'Wed Aug 27 01:52:17 +0000 2014',2721,108,'ja',
	'http://pbs.twimg.com/profile_images/523481411513090048/f-GJw_oH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'学校から出たら治るｗｗｗ
ひまだひま。',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2772065438
);
INSERT INTO twit_user VALUES (
	'2455724203',
	';-;',
	'_vai123',
	'',
	'Segue? sigo di volta^^
@clubefollowback @grabielandim',
	1322,1306,'Mon Apr 21 00:09:32 +0000 2014',503,1306,'pt',
	'http://pbs.twimg.com/profile_images/499883904862396416/s0c8xmZH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'kkkkkkkkkkkkkkkkkkkk http://t.co/njOVPogN5U',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	2455724203
);
INSERT INTO twit_user VALUES (
	'552814067',
	'Me♡',
	'LadyWhitePearl',
	'',
	'Amante de la música, la moda, la belleza, la cocina, la lectura y el AMOR!',
	670,1965,'Fri Apr 13 16:09:36 +0000 2012',5825,1965,'es',
	'http://pbs.twimg.com/profile_images/2111178957/3774834-caramelos-de-colores-pastel-coraz-n-duro-caramelos-en-un-mont-n_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'¡Participo en el sorteo de productos de maquillaje de @lourdessosa46 y @kandesaes! Más info en http://t.co/KfT1rp28gm',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	552814067
);
INSERT INTO twit_user VALUES (
	'493588113',
	'Saints 2-4',
	'DomiiNOut',
	'Saint Louis',
	'You only blessed if your nose congested IG:DomiiNOut',
	87,150,'Wed Feb 15 23:37:05 +0000 2012',6273,150,'en',
	'http://pbs.twimg.com/profile_images/515536471558590464/Oe6olQ-q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Saints need to blow the packers out',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	493588113
);
INSERT INTO twit_user VALUES (
	'555023847',
	'李元鎔',
	'dldnjsdyd0703',
	'동판교 성남시 대한민국(東板橋  城南市 大韓民國)',
	'모두 모두 행복하세요!!!
^-^웃으면^-^  복이와요! 젊어지고....행복해집니다. ㅎ ㅎ ㅎ',
	13135,13374,'Mon Apr 16 07:37:09 +0000 2012',5710,13374,'ko',
	'http://pbs.twimg.com/profile_images/485998493899571200/oLK1tRmi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lees10051: 전국 최초 ;;사회적경제 박람회;; 개최 | 미디어다음 http://t.co/VGQCTorA0D',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	555023847
);
INSERT INTO twit_user VALUES (
	'1707463050',
	'호원세연',
	'leehowon032891',
	'',
	'고마워 미안해 사랑해',
	356,280,'Wed Aug 28 14:50:31 +0000 2013',28280,280,'ko',
	'http://pbs.twimg.com/profile_images/526329821660327937/2_KiDT65_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@leaseal0327 예중발표이류ㅠㅜㅜㅜㅜㅠㅠㅡㅠㅠㅜㅠ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1707463050
);
INSERT INTO twit_user VALUES (
	'371546406',
	'crazygrldreamer',
	'lizorellana1',
	'',
	'I am here to see how the world of twitter happens and what goes on about here. I like anime, funny/fantasy movies, watch football/hockey/basketball, n more.',
	653,878,'Sun Sep 11 02:17:09 +0000 2011',6416,878,'en',
	'http://pbs.twimg.com/profile_images/2485480361/zlfuq0kut0l9b2v10orx_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Man those dudes r serious #WalkingDead',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	371546406
);
INSERT INTO twit_user VALUES (
	'185965715',
	'極道暮らしのアリエンティ＠背景配置センス',
	'Save_the_girl_',
	'浜',
	'waru',
	813,2003,'Thu Sep 02 07:42:28 +0000 2010',199763,2003,'zh-cn',
	'http://pbs.twimg.com/profile_images/1131539335/twitter_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'週刊誌牛王宝印でお清めを　＃野田　＃反野田　＃週刊文集不買運動　＃デウィ夫人　＃犬養毅　http://t.co/7xwD6iJljP',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	185965715
);
INSERT INTO twit_user VALUES (
	'271479039',
	'女神 ぴんくハートちゃん',
	'_PiNK_chan_',
	'TCGストレージの女神',
	'ラブリー！マカロン・エクレア 
グミ・チョコレート・クッキー 
パフェにサンデーはいらないの(＞＜) 
ラブリー！イチゴのタルト 
チーズケーキ・シュークリーム 
モンブラン・プリン・クレープ 
アイスにキャンディー・全部、ラブリー！',
	362,430,'Thu Mar 24 15:55:19 +0000 2011',110746,430,'ja',
	'http://pbs.twimg.com/profile_images/485055433527132161/UKk183T4_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'HOOK 1.0のNP枠って豪華だったな',
	'<a href=::http://twicca.r246.jp/:: rel=::nofollow::>twicca</a>',
	271479039
);
INSERT INTO twit_user VALUES (
	'94596769',
	'mediane',
	'dianeazizi',
	'Malaysia',
	'i dont care at all',
	94,273,'Fri Dec 04 17:04:28 +0000 2009',2322,273,'en',
	'http://pbs.twimg.com/profile_images/525671043789119488/IF7KH8zM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ctnorfaqiah: Today is last day #mjats ... @HeySaraAli gonna miss u.. cc: @lynn_sharudin @dianeazizi @ShuhaimiLua @FADZILTEH http://t.co…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	94596769
);
INSERT INTO twit_user VALUES (
	'977294520',
	'jasmine',
	'pepperjrluv',
	'',
	'I love One Direction',
	40,91,'Thu Nov 29 00:55:53 +0000 2012',193,91,'en',
	'http://pbs.twimg.com/profile_images/3716688215/d60193a54aa902e503796b9042132e60_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne Leeroy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	977294520
);
INSERT INTO twit_user VALUES (
	'631507255',
	'tiffany',
	'arrytyles',
	'',
	'home is where the heart is',
	2523,94,'Mon Jul 09 23:24:12 +0000 2012',13804,94,'en',
	'http://pbs.twimg.com/profile_images/516320215219830784/NawbgSnl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne A game board',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	631507255
);
INSERT INTO twit_user VALUES (
	'149059707',
	'九角天童',
	'kodunu_bot',
	'',
	'東京魔人學園剣風帖 龍龍の九角天童非公式botです。ゲームの九角天童とは異なりアニメ仕様です。まだ試運転中なので＠反応はしません。アニメ中でのセリフを１時間に一回呟きます。',
	17,21,'Fri May 28 09:11:27 +0000 2010',21283,21,'ja',
	'http://pbs.twimg.com/profile_images/946584285/___normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ふふっ 今はこっちの方が面白い',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	149059707
);
INSERT INTO twit_user VALUES (
	'140073617',
	'jobsila.com',
	'jobsila_com',
	'Basel',
	'Official Twitter site for http://jobsila.com #Jobs #news #web #music @jobsila_com #jobsila jobs International. I  #love #twitter',
	3383,3149,'Tue May 04 13:58:30 +0000 2010',203205,3149,'de',
	'http://pbs.twimg.com/profile_images/488941903941865474/QtvJgCsT_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Retail Sales Consultant Central Area San Diego CA #jobs #appsila #cachejobs #jobsila #Central America http://t.co/JmHuelXY7w',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	140073617
);
INSERT INTO twit_user VALUES (
	'180307396',
	'咲弥†祝賀祭26日昼で帰国してた',
	'sakuyanbild',
	'其処に物語があるシュテルンビルト',
	'昭和生腐/艦これリンガ泊地提督。正規空母愛。/T&Bが生き甲斐の虎廃。兎虎、虎兎、リバディ愛/デジモン(無印02がｼﾞｬｽﾃｨｽ)/SH.LH.むしろれぼ/ペダル(箱学)/DRRR(臨静)/進撃(兵長)/RT多め。鍵は開けたり閉めたり。フォローリムブロ好きにしてください。',
	944,906,'Thu Aug 19 09:13:08 +0000 2010',74832,906,'ja',
	'http://pbs.twimg.com/profile_images/522377597074673665/_KvIsZ41_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @animateinfo: ぜひぜひローランの皆様、超←祝↓祭↑ なので参加して頂きたいアニ！ #SoundHorizon',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	180307396
);
INSERT INTO twit_user VALUES (
	'74322584',
	'Sara Estes',
	'SarasHope',
	'Texarkana, TX',
	'I;;m married to Dustin and the mother of Hope and Tad. Licensed Specialist in School Psychology.',
	11,33,'Tue Sep 15 01:05:17 +0000 2009',8,33,'en',
	'http://pbs.twimg.com/profile_images/440315401906311168/0_I82A2T_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@vealjenn https://t.co/JByTEFrryX',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	74322584
);
INSERT INTO twit_user VALUES (
	'503353573',
	'Rubio. ツ ‏',
	'82_yoony',
	'',
	'Estrada Fc!',
	443,320,'Sat Feb 25 18:13:08 +0000 2012',24196,320,'es',
	'http://pbs.twimg.com/profile_images/526209964046823425/RWaj7N25_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mañana seguro que nos juntamos en un recreo!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	503353573
);
INSERT INTO twit_user VALUES (
	'1670111834',
	'＊紅葉＊',
	'923_kunimi',
	'',
	'アニメ好き特にCCさくら/ハイキュー/弱ペダ/バカテス/さばげぶっ!/絶チル/凪あす/未確認/デジモン/ググコク/脳コメ/Free!/声優/艦これ/カントク/キヨ/弓道/メガネ好き。同性愛者でアダルトチルドレン',
	9225,9448,'Wed Aug 14 10:03:53 +0000 2013',2873,9448,'ja',
	'http://pbs.twimg.com/profile_images/513626604996538368/R0XVomFt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @kido_yumetuki: 鍵かけない自分が悪いんだろ死ねカス http://t.co/yIDxMIOvIL',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1670111834
);
INSERT INTO twit_user VALUES (
	'249999162',
	'eL Tvar',
	'eLtokemagiko',
	'',
	'null',
	218,1282,'Thu Feb 10 06:01:22 +0000 2011',1845,1282,'en',
	'http://pbs.twimg.com/profile_images/3324349184/193af856e8061af5f7d86982c7f1bf76_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'La Crónica de Hoy | Son 331 los cuerpos localizados en fosas clandestinas en Durango http://t.co/LIxRM6a7Yi via @LaCronicaDeHoy',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	249999162
);
INSERT INTO twit_user VALUES (
	'2438423354',
	'Maddy',
	'MaddyMadzy7',
	'',
	'I tweet my thoughts',
	48,245,'Fri Apr 11 12:25:18 +0000 2014',314,245,'en',
	'http://pbs.twimg.com/profile_images/454597875972849664/bc-L2myn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Teambeliebersl: RT esto por un DM a Justin con tu user
- May
#EMABiggestFansJustinBieber http://t.co/cgCv6cNXEf',
	'<a href=::https://chrome.google.com/webstore/detail/cdoinklelehcpndgmcddkkdhibpoglnk:: rel=::nofollow::>Bird Nest</a>',
	2438423354
);
INSERT INTO twit_user VALUES (
	'2503535904',
	'Aqilah (아킬라)',
	'Qila_2612',
	'Kota Kinabalu, Malaysia',
	'Do Kyungsoo❤️ 엑소 ❤️',
	27,175,'Sun May 18 06:16:20 +0000 2014',2957,175,'en',
	'http://pbs.twimg.com/profile_images/519135886437384193/kiKYngBB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @exonyeondan: Sehun and Suho @ MCM x Vogue Fashion night out last Oct 24 photos revealed http://t.co/Gre89bKlEO',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2503535904
);
INSERT INTO twit_user VALUES (
	'82761714',
	'Tootz B❤️✨',
	'prettytoodles16',
	'731✈️615 Phillipians 4:13',
	'God ✨ Family✨ Happiness✨ #MTSU Life is not a fairytale, but I often find myself dreaming. God is within her, she will not fail.❤️',
	371,259,'Fri Oct 16 01:11:43 +0000 2009',5677,259,'en',
	'http://pbs.twimg.com/profile_images/526520759867686912/7a1GqPFV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'He wasn;;t my everything ;;til we were nothing &amp; it;;s taking me a lot to say',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	82761714
);
INSERT INTO twit_user VALUES (
	'2616271182',
	'مهند الجريسي',
	'mohannad_jresy',
	'',
	'null',
	13,13,'Thu Jul 10 22:51:06 +0000 2014',7899,13,'en',
	'http://pbs.twimg.com/profile_images/487369128424927232/f6ZTaU-m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'تجربة التغريدات التلقائى والريتوت التلقائى
[3860.358]',
	'<a href=::http://xx.khaleejhost.org/:: rel=::nofollow::>khalejhost</a>',
	2616271182
);
INSERT INTO twit_user VALUES (
	'1288378080',
	'MINAMI',
	'gdminami',
	'',
	'null',
	39,301,'Fri Mar 22 10:59:57 +0000 2013',5799,301,'ja',
	'http://pbs.twimg.com/profile_images/514372896525783041/hA6XDvoY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_pleple: 電話越しに歌わされる https://t.co/8mWNzzmEPz',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1288378080
);
INSERT INTO twit_user VALUES (
	'1470147476',
	'cristina',
	'feelingstpr',
	'CE - Brazil',
	'Senhor mi dá froçãs p seguir en frem te',
	976,439,'Thu May 30 16:33:07 +0000 2013',67725,439,'en',
	'http://pbs.twimg.com/profile_images/526413249147707392/W3qUuI-R_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'vaquejada essa hora mds xorand',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1470147476
);
INSERT INTO twit_user VALUES (
	'341873026',
	'karyn',
	'karennmota_',
	'California☁️☔️⚡️',
	'null',
	135,67,'Mon Jul 25 03:03:02 +0000 2011',8653,67,'en',
	'http://pbs.twimg.com/profile_images/513262272559341569/GWAGTA6B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FactSoup: If you aren’t scared by your ambitions, you aren’t dreaming big enough.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	341873026
);
INSERT INTO twit_user VALUES (
	'18947830',
	'Jennifer Kaufman °o°',
	'jnkaufman',
	'Cincinnati, OH',
	'Owner of http://fortheloveofdisney.com & http://jenniferkaufman.net. | Writer, thinker, aspiring podcaster. Looking for delight in family and the day-to-day.',
	2094,1515,'Tue Jan 13 18:46:41 +0000 2009',12413,1515,'en',
	'http://pbs.twimg.com/profile_images/378800000236933694/5dc59aad78438423d33fa13f2db9b411_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Today? So good. Message just for me at church, fun family time, some productivity and good chats with @KyleKToday. Life is precious.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	18947830
);
INSERT INTO twit_user VALUES (
	'22984882',
	'Sassafras~Knob ',
	'Sassafras_Knob',
	'Arkansas - Go Hogs!',
	'God Country Family | Constitution Capitalism Prosperity | #NASCAR #NHRA #NRA | DD214 #USAF | #TeaParty #Conservative #Republican #Godspeed Right Wing @GOP;;ers',
	11738,12861,'Thu Mar 05 21:48:39 +0000 2009',112569,12861,'en',
	'http://pbs.twimg.com/profile_images/526090017026748416/GwkxIvXe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @gwallace48: @LessGovMoreFun @springyardsale - A great Senator from South Carolina Tim Scott! &amp; u have a worthless 1 n Lindsey Graham!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	22984882
);
INSERT INTO twit_user VALUES (
	'293195232',
	'Pete Seazle Funblog',
	'PeteSeazle',
	'West Seattle, Washington',
	'Writer for and Editor-At-Large of the West Seattle Funblog. I also create alternative cross stitch designs. http://www.etsy.com/shop/CrassCross',
	158,297,'Wed May 04 22:47:48 +0000 2011',2685,297,'en',
	'http://pbs.twimg.com/profile_images/1339149363/Pete_Seazle_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Photo: peteseazle: ::Dogs Periodically Like Bacon:: - From CrassCross.  The cross stitch pattern to make this... http://t.co/XIb9HDeTp4',
	'<a href=::http://www.tumblr.com/:: rel=::nofollow::>Tumblr</a>',
	293195232
);
INSERT INTO twit_user VALUES (
	'2276716256',
	'leidy carolina',
	'ladykaro19',
	'',
	'*****LEONES UNIDOS DE CORAZÓN******                                       Estudiante de Ingeniería de Sistemas, tecnología en gestión de redes',
	233,570,'Sat Jan 04 22:10:17 +0000 2014',815,570,'es',
	'http://pbs.twimg.com/profile_images/518195553629655040/8HiyBaGs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Tengo una idea. 💡  Desorden para esta semana para quitarnos el amargue...',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2276716256
);
INSERT INTO twit_user VALUES (
	'2273289660',
	'149diass♡',
	'melissaGalliano',
	'ensenada',
	'Never Say Never and Believe @justinbieber As Long As You Love Me            ~Belieber~',
	704,672,'Thu Jan 02 17:03:44 +0000 2014',36640,672,'es',
	'http://pbs.twimg.com/profile_images/525465140138086400/QANGnkZ9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Le pase la foto a Juli jajajaj',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2273289660
);
INSERT INTO twit_user VALUES (
	'126866514',
	'ゆう@最近ちょいちょい浮上中',
	'usagikari',
	'',
	'漫画とアニメ大好き！ イナイレ、咲-saki-、キューティクル探偵因幡、WORKING!、ボカロ、妖孤×僕ＳＳ、日和、ヘタリア、君と僕その他多数… 興味がわいたらフォローボタンを押したってー(＝ω＝*)',
	35,32,'Sat Mar 27 06:56:15 +0000 2010',3200,32,'ja',
	'http://pbs.twimg.com/profile_images/447273081447260160/kNImEB_h_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @u1ny4: 友人が兵庫県明石市のお祭りで暴力をふるわれ意識不明のままです 警察は犯人分からないのなら諦めますか？決めてくれないと帰れないんですと言って捜査をしない方向を勧めてきました諦めたくないので小さな情報でもいいのでお願いします#拡散希望 http://t.co/…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	126866514
);
INSERT INTO twit_user VALUES (
	'1688908878',
	'Meshhh',
	'eLc_Meshhh',
	'Hoenn Reigon ',
	'Just livin;; life. #GreenWall forever. I like Pokemon a lot. Been inspired by @kidlat404 he has followed me 10/21/14. @ProSyndicate is life.',
	174,101,'Wed Aug 21 18:28:25 +0000 2013',1552,101,'en',
	'http://pbs.twimg.com/profile_images/514209028462104577/fG-tyijl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@eLc_InFxrno I don;;t know tbh. We don;;t even have everyone;;s things...',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1688908878
);
INSERT INTO twit_user VALUES (
	'1571612046',
	'Ivanna✌',
	'ivaannafa',
	'Chile',
	'07:40-11/sep/14 Justin me siguió♛♥OneLife♥BelieveANDNeverSayNever♥♡ http://shots.com/ivaannafa',
	612,667,'Sat Jul 06 00:29:15 +0000 2013',6283,667,'es',
	'http://pbs.twimg.com/profile_images/522117795853926401/UoqK9lcI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @justinbemyangeI: Cualquier persona puede hacerte sonreír, pero solo una especial puede hacerte feliz. 

#EMABiggestFansJustinBieber htt…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1571612046
);
INSERT INTO twit_user VALUES (
	'2204668006',
	'Kenneth',
	'kgcrespi',
	'Meriden, Ct',
	'Soccer #17, Class of 2015',
	315,393,'Mon Dec 02 14:40:10 +0000 2013',7186,393,'en',
	'http://pbs.twimg.com/profile_images/522053014040109056/qYWuXQBh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@HamdanCT you;;re *',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2204668006
);
INSERT INTO twit_user VALUES (
	'336321261',
	'Keila García:3',
	'KeilaGarcia5',
	'',
	'Aye, Mika y Belén TE AMAN :3
Club Atlético Boca Juniors♥ Pero desde hace un sueño siempre estás vos, ya no importa si voy o vengo, siempre estás vos♪ Ntvg♥',
	566,610,'Sat Jul 16 03:11:49 +0000 2011',34909,610,'es',
	'http://pbs.twimg.com/profile_images/526525577961156608/bNn89yOD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No puedo con todo yo sola, soy chica, me siento chica para tener que aguantar todo lo que pasa, espero tener las fuerzas necesarias :(',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	336321261
);
INSERT INTO twit_user VALUES (
	'886787928',
	'Sophia Hall',
	'SophiaHall_',
	'',
	'null',
	1053,921,'Wed Oct 17 13:11:09 +0000 2012',11062,921,'en',
	'http://pbs.twimg.com/profile_images/526374919228362752/6N5Otfce_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'This is real real real, realllll love',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	886787928
);
INSERT INTO twit_user VALUES (
	'1901987696',
	'❅Lizzie❅',
	'_SnapNarryPop_',
	'|☹/5|Lucas/4|',
	'♛Unless you;;re Luke Hemmings you can;;t tell me what to do♛',
	2231,977,'Tue Sep 24 22:26:40 +0000 2013',20744,977,'en',
	'http://pbs.twimg.com/profile_images/523892520988979200/A3rD8oCG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@sidebangswift lol I knnoowwwww',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1901987696
);
INSERT INTO twit_user VALUES (
	'164246723',
	'.',
	'iChurroo',
	'Los Angeles',
	'Fubol ⚽️ is life',
	1211,1914,'Thu Jul 08 11:53:40 +0000 2010',45028,1914,'en',
	'http://pbs.twimg.com/profile_images/523410441817440256/ljq9HY5i_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RIP my 4th iPhone charger',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	164246723
);
INSERT INTO twit_user VALUES (
	'609107599',
	'Yia Su',
	'yiasu_gr',
	'http://www.etsy.com/shop/YiaSu',
	'“City Break in Athens” takes u by the hand to ALL the wonderful places in Athens! http://www.amazon.com/dp/B00MPXBCJI ROYALTY FREE PHOTOS:',
	1288,679,'Fri Jun 15 13:34:41 +0000 2012',15541,679,'en',
	'http://pbs.twimg.com/profile_images/2310390752/YiaSuLogoPayPal_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Tammysdragonfly: FIRE ALERT ♨ FOLLOW 
@TheWalkBook @ConleyWilma @PletchaPJWebb @sirboring @JanRomes @Annie_Acorn',
	'<a href=::https://roundteam.co:: rel=::nofollow::>RoundTeam</a>',
	609107599
);
INSERT INTO twit_user VALUES (
	'2371000140',
	'MARGO',
	'transadallas',
	'     BRAZIL',
	'pata peta pita pota @euliamo 0/12 forever',
	330,375,'Mon Mar 03 22:11:01 +0000 2014',3212,375,'pt',
	'http://pbs.twimg.com/profile_images/510615736306245632/oGX8pRc8_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@mgconzz: ::@finiblue: Quem e o choose de vocês?
#askmagcult:: Cam e gilinsky::Cam,jacks, matt, tay e shawn, cam',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2371000140
);
INSERT INTO twit_user VALUES (
	'2290374410',
	'Jooo',
	'jooishere1D',
	'Chile, obvio',
	'||One Direction, Larry Stylinson, Taylor Swift||Vi a los chicos que cambiaron mi vida @onedirection 1.05.2014❤️Thanks for all, you make me strong! H+L+L+N+Z',
	1516,1500,'Tue Jan 14 00:14:23 +0000 2014',11434,1500,'es',
	'http://pbs.twimg.com/profile_images/522511271938498560/JXwhOzyZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @OfficialFacts1D: La cuenta de MTV subio esta foto a Snapchat, diciendo ::cuando alguien llama feo a Harry Styles::

#EMABiggestFans1D htt…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2290374410
);
INSERT INTO twit_user VALUES (
	'2281719440',
	'boys plz? //amarissa',
	'Ziamdollxrs',
	'Chachafta',
	'i call them all sunshine because they;;re the ones that guided me through the dark.',
	728,250,'Wed Jan 08 06:47:41 +0000 2014',10755,250,'en',
	'http://pbs.twimg.com/profile_images/526236459226128384/OVI0_xVt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2281719440
);
INSERT INTO twit_user VALUES (
	'2206337277',
	'Cal',
	'CalXF',
	'-Manny',
	'-GFX',
	1509,451,'Tue Dec 03 19:25:53 +0000 2013',20723,451,'en',
	'http://pbs.twimg.com/profile_images/518453703305478144/tR05nyDm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@TheWelshManc: @CalXF it;;s just a selfish thing. They should remove him from the game, not be used to make profit off of.” Fair dooooos',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2206337277
);
INSERT INTO twit_user VALUES (
	'2218907298',
	'ℳℯℓisa ℳarℓℯn♡',
	'MeliiDavila1',
	'',
	'-TeAmomucho♥ Atte: Sasha Hostein tu Mejor Amiga  -Wpp: 2994673866 -Seguime y te sigo (:',
	701,595,'Thu Nov 28 04:55:20 +0000 2013',48041,595,'es',
	'http://pbs.twimg.com/profile_images/518249619344470016/ejj1Gnx9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Meli esta viendo el partido,le saque la compu',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2218907298
);
INSERT INTO twit_user VALUES (
	'2840993410',
	'عدنان الشرهان',
	'el6832',
	'',
	'وَكمْ مِنْ قضَاء بَكينا أولهُ وكانَ آخره خَيراً كثيرًا',
	3,15,'Wed Oct 22 06:59:24 +0000 2014',521,15,'de',
	'http://pbs.twimg.com/profile_images/525769760210833409/jS5XFWB4_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mastafa302: @DE3DLINE فزعتك أتعرض لحملة سبام جزاك الله خير',
	'<a href=::http://www.retwet.cc:: rel=::nofollow::>retwet_eee</a>',
	2840993410
);
INSERT INTO twit_user VALUES (
	'2590288299',
	't • 47',
	'biylvis',
	'arg',
	'my gosh u emo twat',
	190,200,'Sat Jun 07 20:48:00 +0000 2014',63056,200,'en',
	'http://pbs.twimg.com/profile_images/521034683111723008/OR3LyRhc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@fucknorwegians @Blazikunt IM A MONSTER I KN O',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2590288299
);
INSERT INTO twit_user VALUES (
	'2288354414',
	'♪ Purple Day ♪',
	'PhilosophyASK',
	'ROLLING STONES magazine',
	'He caído. Me he enamorado.
¿Quieres entrar en deck duff (+2k)? --- MD',
	5135,4395,'Sun Jan 12 16:05:08 +0000 2014',3165,4395,'es',
	'http://pbs.twimg.com/profile_images/522057440066420736/kou7zPWo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iMisterHacker: Descubre la vulnerabilidad de Facebook con http://t.co/ZuQTDN5vKN http://t.co/DbPxmBXJWF',
	'<a href=::http://twitter.com:: rel=::nofollow::>Super General Deck</a>',
	2288354414
);
INSERT INTO twit_user VALUES (
	'1727478835',
	'Katie Chandler',
	'katie_chandler7',
	'Grand Forks, ND',
	'Wife, Sister, Daughter, Aunt, Friend, Teacher, Coach, Sports Nut, Life Long Learner, Traveler',
	113,435,'Wed Sep 04 03:31:46 +0000 2013',170,435,'en',
	'http://pbs.twimg.com/profile_images/497573151488737280/CnHlo-sf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SportsCenter: Michael Jordan made his Chicago Bulls debut 30 years ago tonight. He scored 16 points, added 7 assists &amp; 6 rebounds. http…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1727478835
);
INSERT INTO twit_user VALUES (
	'347357499',
	'Uriah',
	'Pansy_Cake',
	'Honduras',
	'On The Road Again • ⭐ @IamTwilieber ♡ @odairordie ✨',
	1949,1987,'Tue Aug 02 17:36:50 +0000 2011',27286,1987,'es',
	'http://pbs.twimg.com/profile_images/526031964907003904/SZuPfy-D_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	347357499
);
INSERT INTO twit_user VALUES (
	'174012387',
	'chante ',
	'chante_frelot',
	'',
	'Not all who wander are lost❤️ follow me',
	245,202,'Mon Aug 02 22:22:53 +0000 2010',11660,202,'en',
	'http://pbs.twimg.com/profile_images/512357904238645248/zMJuDwh7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@terrbearr_ so gooood! I;;m gonna have to make them for you guys 😋😋😋😋',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	174012387
);
INSERT INTO twit_user VALUES (
	'2878780706',
	'MMC Grad Trip',
	'MMCGradTrip2015',
	'',
	'GRAD TRIP MILES MAC 2015',
	11,85,'Sun Oct 26 22:29:29 +0000 2014',3,85,'en',
	'http://pbs.twimg.com/profile_images/526501020139257857/Ml5i0pF4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'MMC;;s s-trip 2015 has been set for Isla Cozumel, a private island in Mexico! ☀️🌴🏊🌸 contact 2983831 or 7713158 for more info!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2878780706
);
INSERT INTO twit_user VALUES (
	'1007872338',
	'テラフォーマーズのネタバレ情報！',
	'terafonetabare',
	'',
	'「じょうじ！」テラフォーマーズのネタバレ情報を中心にお届けします♪自動フォロー返ししますのでお気軽にフォローくださいね！botのときもありますがたまに見てるのでお返事も可能な限り返したいと思います！好きなキャラはフリーザ加奈子ですｗｗｗ',
	9430,8756,'Thu Dec 13 03:10:03 +0000 2012',457,8756,'ja',
	'http://pbs.twimg.com/profile_images/378800000804607650/77c304c97339c8257f1361f2c935237e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tarachan_doubut: にゃにゃんですぅ http://t.co/xxvB5NPItu',
	'<a href=::http://awesomestyle.biz:: rel=::nofollow::>spiral retweeter　fms6</a>',
	1007872338
);
INSERT INTO twit_user VALUES (
	'2312424954',
	'Uri Flegler Lovato',
	'UriFlegler',
	'',
	'Series, Livros, Comida, Demi Lovato, Taylor Swift, Katy Perry, Ed Sheeran. Jessica Lange, Lana Parilla, Jota.',
	172,309,'Sun Jan 26 20:28:23 +0000 2014',248,309,'pt',
	'http://pbs.twimg.com/profile_images/517032670107541504/xVbcSDYO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @paulmferreira: Dilma reeleita não é surpresa, o povo gosta de miséria e corrupção. 
Temos no poder o espelho da sociedade! #muitotriste',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2312424954
);
INSERT INTO twit_user VALUES (
	'813780506',
	'ian branham',
	'ianbranham76',
	'Virginia ',
	'null',
	29,44,'Sun Sep 09 19:53:01 +0000 2012',2189,44,'en',
	'http://pbs.twimg.com/profile_images/501908534616141824/ujQsvKED_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Miguel_Gator: Want to play @EASPORTSNBA Live 15 early? I have extra codes. RT and Follow to enter and reply with system of choice. http…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	813780506
);
INSERT INTO twit_user VALUES (
	'516171224',
	'Brisaaaa✝',
	'NicoleSdrech',
	'',
	'malhumor, histeria, comer y dormir de eso se trata la vida. PUTO EL QUE LEE :)) #Selenator',
	431,357,'Tue Mar 06 04:07:25 +0000 2012',21885,357,'es',
	'http://pbs.twimg.com/profile_images/526248795546198019/g2-4Nhna_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SweetCds: Que bronca cuando los pibes no activan y vos ahi con unas ganas de chaparlo',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	516171224
);
INSERT INTO twit_user VALUES (
	'373835019',
	'jerri ,,!!!',
	'gamingftmgc',
	'long way home',
	'@cookiedoughmuke @adorbslukey do you sell hot dogs because you know how to make a wiener stand // lrh/4 + band // alex ramos follows',
	2931,740,'Thu Sep 15 08:00:08 +0000 2011',35824,740,'en',
	'http://pbs.twimg.com/profile_images/525654538779656192/G_Dp24yr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne let;;s play titanic, you be ice berg I go down',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	373835019
);
INSERT INTO twit_user VALUES (
	'2775536111',
	'Niiee♥',
	'nieChupitazos',
	'',
	'null',
	78,80,'Fri Sep 19 11:03:43 +0000 2014',184,80,'es',
	'http://pbs.twimg.com/profile_images/522134818310860801/8uEQEJDj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AranceNataliia: Todo dura siempre un poco mas de lo que deberia',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2775536111
);
INSERT INTO twit_user VALUES (
	'293281067',
	'Dana ',
	'DanaSPMHT',
	'',
	'I;;m DIRECTIONER and I;;m Screamer',
	166,222,'Thu May 05 02:22:16 +0000 2011',1842,222,'es',
	'http://pbs.twimg.com/profile_images/446849034800484352/37TkxG3S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	293281067
);
INSERT INTO twit_user VALUES (
	'577568419',
	'liamsus',
	'pizzaroIliam',
	'soph sara madison mollie raven',
	'welcome to the life of electra heart',
	4814,543,'Fri May 11 23:57:14 +0000 2012',42767,543,'en',
	'http://pbs.twimg.com/profile_images/519672755029934082/1p5HiCnr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @yelyahdelrey: not taking any chances. you;;ve been warned. http://t.co/CqCyXrwv1Z',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	577568419
);
INSERT INTO twit_user VALUES (
	'1283938170',
	'Rubeah♥',
	'brenkappes',
	'',
	'~Si puedes soñarlo, puedes crearlo ~ ♥ etchegonista♥hockey is my life ♥ CABJ ♥ directioner ♥ Argentina ♥5SOS♥️',
	868,157,'Wed Mar 20 18:27:20 +0000 2013',44090,157,'es',
	'http://pbs.twimg.com/profile_images/525801766781468673/8o66iOS5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Na listo lo voy a bloquear al pajero este',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	1283938170
);
INSERT INTO twit_user VALUES (
	'449655256',
	'lisa',
	'stylestable',
	'larry af',
	'harry sneezing, chewing gum and his teeth are my fav things on this planet',
	1833,613,'Thu Dec 29 10:25:11 +0000 2011',30980,613,'de',
	'http://pbs.twimg.com/profile_images/521676132882857984/1WIEyYxk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	449655256
);
INSERT INTO twit_user VALUES (
	'2848913437',
	'アンビリーバボー！体験集',
	'unbelievable_na',
	'',
	'みんなの体験した
 信じられないエピソード集',
	26,489,'Thu Oct 09 13:31:09 +0000 2014',244,489,'ja',
	'http://pbs.twimg.com/profile_images/520204924982812673/XLtZ-HNY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'押したくなるボタン http://t.co/a65McfqRXl',
	'<a href=::https://twitter.com/unbelievable_na:: rel=::nofollow::>unbelievable_na</a>',
	2848913437
);
INSERT INTO twit_user VALUES (
	'2759864097',
	'vergaparada444',
	'vergaparada444',
	'',
	'Simpre parada',
	44,54,'Tue Sep 02 23:10:08 +0000 2014',3052,54,'es',
	'http://pbs.twimg.com/profile_images/506942743319703552/ey3rQJzT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@1997_aurora destapate las 2 perra vamos la traigo viem parada',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2759864097
);
INSERT INTO twit_user VALUES (
	'1398376699',
	'KT',
	'kcrawl13',
	'',
	'Why not love someone when it;;s an option? Why find the bad in someone when there is so much good?',
	707,660,'Thu May 02 22:52:59 +0000 2013',8393,660,'en',
	'http://pbs.twimg.com/profile_images/525256233012707329/m8DjxPik_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @chaycehatch: @buttafingalova @kcrawl13 kt ur feet r so posh http://t.co/2iPxSOMFh9',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1398376699
);
INSERT INTO twit_user VALUES (
	'212275807',
	'J.',
	'jldill01',
	'Toronto',
	'bish wha-? 

No,bye.',
	198,299,'Fri Nov 05 16:41:12 +0000 2010',6700,299,'en',
	'http://pbs.twimg.com/profile_images/509938847158112256/pze6wi0M_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@CommonBlackGirI: when u see a pear http://t.co/MYAwpewf1s” @YungXxDJ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	212275807
);
INSERT INTO twit_user VALUES (
	'1067895416',
	'⚡️Adrian ⚡️',
	'UgarteAdrian',
	'',
	':l',
	637,2022,'Mon Jan 07 09:38:24 +0000 2013',895,2022,'en',
	'http://pbs.twimg.com/profile_images/525861763678760960/WyKhutVk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BestTextMsgs: I hope so.. http://t.co/JfIRuM31zT',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1067895416
);
INSERT INTO twit_user VALUES (
	'484320337',
	'Augusto Borba',
	'BorbaAugusto',
	'Cariacica - ES',
	'Livre e feliz, me encaixo em qualquer lugar.',
	487,1705,'Mon Feb 06 00:02:10 +0000 2012',1269,1705,'pt',
	'http://pbs.twimg.com/profile_images/472565568533319680/gRdDKxPz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @gohander: apenas reproduzindo uma frase desse admirável senhor http://t.co/eMSbTYThRF',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	484320337
);
INSERT INTO twit_user VALUES (
	'1587196314',
	'Je',
	'kdrauhls_',
	'baixe shots ',
	'A vida tem a cor que você pinta.',
	632,672,'Fri Jul 12 01:11:10 +0000 2013',5790,672,'pt',
	'http://pbs.twimg.com/profile_images/525048931995369472/VXYh_kAM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @minadokenny: @biebersmaniabr MutirãoEMABieberMBR #EMABiggestFansJustinBieber http://t.co/UyCyMqIH9H',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1587196314
);
INSERT INTO twit_user VALUES (
	'196271804',
	'bruna',
	'brunamartinsr_',
	'Belo Horizonte / MG',
	'http://www.outropontodevista.com | http://instagram.com/brunamartinsr',
	471,343,'Tue Sep 28 18:48:37 +0000 2010',16590,343,'en',
	'http://pbs.twimg.com/profile_images/514041111179194368/DHXhWTbN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @expectovoraz: aqui no nordeste brindando a vitória da dilma com uma bebida chamada água vcs conhecem http://t.co/AqaKEBMWCV',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	196271804
);
INSERT INTO twit_user VALUES (
	'1855570274',
	'Shakiraa Marieee',
	'KiraaMarieee',
	'',
	'Est. 01.12.1996',
	168,165,'Wed Sep 11 22:04:44 +0000 2013',7583,165,'en',
	'http://pbs.twimg.com/profile_images/493563951058141184/EjnoVXCS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ympsx3: I regret opening up to some people! It just bothers me knowing there;;s a few out there who didn;;t even deserve to know me like …',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1855570274
);
INSERT INTO twit_user VALUES (
	'2642695935',
	'6-2-0',
	'nhlhut108',
	'',
	'Isles and Sharks :)',
	30,123,'Thu Jun 26 03:36:32 +0000 2014',252,123,'en',
	'http://pbs.twimg.com/profile_images/519567954602496000/AMf8kKGH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Goaldobin: Burns got his 100th goal!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2642695935
);
INSERT INTO twit_user VALUES (
	'128284263',
	'carina zerpa',
	'vecefedama',
	'',
	'null',
	7,7,'Wed Mar 31 17:32:16 +0000 2010',61,7,'es',
	'http://pbs.twimg.com/profile_images/503595388436512770/TMcykysO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ornelaaaaaaa si Vivi aparece vestida de Virgen!!! A la sra Anciana se le va caer la cara. Q le levantan cada vez q sale al aire, jajajjaja',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	128284263
);
INSERT INTO twit_user VALUES (
	'2846115970',
	'anahi',
	'anahi1990luz',
	'',
	'null',
	0,39,'Mon Oct 27 01:10:57 +0000 2014',2,39,'es',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'@poxtanc http://t.co/c9KF2puKIa',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2846115970
);
INSERT INTO twit_user VALUES (
	'328677679',
	'M a r k i t o s ',
	'Marcos_Garcia15',
	'Allentown, Pennsylvania',
	'[15 de Junio], Basketbolista, Esposo De @anairis_garcia #ILoveBasket, #Kobe, #Lakers, #I;;mGod;;sSon | Kik: Markitos15 | Dale Follow Y Ya!',
	821,115,'Sun Jul 03 20:39:31 +0000 2011',17241,115,'es',
	'http://pbs.twimg.com/profile_images/515937731277766658/WjxNKqLg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLB: We mourn the passing of Cardinals outfielder Oscar Taveras. http://t.co/fCuSK3nB9n http://t.co/0USk5vzaXF',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	328677679
);
INSERT INTO twit_user VALUES (
	'1402994690',
	'vi; #STEALMYGIRL',
	'feelstoniall',
	'Brazil',
	'there has marshmallow girl? PLEASE',
	523,1004,'Sat May 04 17:57:55 +0000 2013',9663,1004,'pt',
	'http://pbs.twimg.com/profile_images/526519926723706881/rjSui05c_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne Need to come meet me here in Brazil. My name is Vivian Reis. 😂😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1402994690
);
INSERT INTO twit_user VALUES (
	'480649645',
	'a ღ',
	'cuddly_l0uis',
	'PORTUGAL',
	'26.05.2013  ⇨  13.07.2014',
	1047,1952,'Wed Feb 01 18:49:20 +0000 2012',23684,1952,'pt',
	'http://pbs.twimg.com/profile_images/514762590564913152/MhCu1f4a_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne U HAVE TO http://t.co/kfsMobubRd',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	480649645
);
INSERT INTO twit_user VALUES (
	'1260735806',
	'いんぺりある・ぜろ@邪王真眼',
	'rinpeinomikoto',
	'デジタルワールド',
	'ムニュムニュズバーーン
(σ回ω・)σ←↖↑↗→↘↓↙←↖↑↗',
	33,53,'Tue Mar 12 00:34:53 +0000 2013',18000,53,'ja',
	'http://pbs.twimg.com/profile_images/504576392634200064/Wx0O8bmL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'つら',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1260735806
);
INSERT INTO twit_user VALUES (
	'2536385519',
	'8lb-al3na §',
	'8lbal3na224',
	'وسط قلبه ',
	'‏‏☆
 آحتآج قربه ',
	855,315,'Fri May 09 03:34:58 +0000 2014',1783,315,'ar',
	'http://pbs.twimg.com/profile_images/524628625895612416/tmuNGsz5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'حطمت قلبي وضآع عمري عشآنآ
وبَ كل سهوله مآشي رآيح على وين
آوهمتني بَ آلحب وبعته معآنآ
وآنت كنت نآوي جرحنآ فيني آلفين

#وآللي_يسلمك_كآفي &lt;/3',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for BlackBerry</a>',
	2536385519
);
INSERT INTO twit_user VALUES (
	'2842712902',
	'cristine Ans',
	'AnsCristine',
	'',
	'null',
	41,3,'Fri Oct 24 17:49:33 +0000 2014',266,3,'en',
	'http://pbs.twimg.com/profile_images/525705886778400769/rJxLowhy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#BlackMagic #Camera - Blackmagic Design is an upstart camera company worth keeping an eye on. Th... http://t.co/AaBCAauypr - #Technology',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	2842712902
);
INSERT INTO twit_user VALUES (
	'487174891',
	'SEGAwe',
	'SEGAweBeauty',
	'',
	'Follow me I;;ll follow back. Please LIKE us on: https://t.co/G30XPoNGYF. We sell beauty and machines, we sell enjoyment and motors--all for your life quality.',
	7771,8020,'Thu Feb 09 02:46:32 +0000 2012',2800,8020,'zh-cn',
	'http://pbs.twimg.com/profile_images/487472735061168128/pO8u8G18_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Pro Lipo Laser Slimming equipment Fat Remover Body Shaping Lipolysis Machine I-8  http://t.co/kR3cJrXR9J http://t.co/ALhBmIcb6u via @eBay',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	487174891
);
INSERT INTO twit_user VALUES (
	'122627702',
	'みさく',
	'xxxMisaku',
	'お布団',
	'一日中家にいたい　時々絵描くぐーたらマン',
	92,59,'Sat Mar 13 10:15:00 +0000 2010',11372,59,'ja',
	'http://pbs.twimg.com/profile_images/502492173246267392/_rC3_bC7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'まだ映画祭引きずってる…😔😔😔  昨日終わったらバイトで帰ったらすぐにレポートだったから思う存分感想ぶちまけてなかったから今言っちゃう奴',
	'<a href=::http://theworld09.com/:: rel=::nofollow::>TheWorld for iOS　</a>',
	122627702
);
INSERT INTO twit_user VALUES (
	'1325792426',
	'نصراوي صميم',
	'ddbboi21',
	'',
	'null',
	1655,2001,'Thu Apr 04 00:43:20 +0000 2013',402,2001,'ar',
	'http://pbs.twimg.com/profile_images/518062483953577984/8uYScrhD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'مين عنده خبره بتويتر .... رجاء فلو',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1325792426
);
INSERT INTO twit_user VALUES (
	'310299026',
	'Ericsson Jobs',
	'JobsAtEricsson',
	'Global Jobs Listing',
	'Jobs listing for Ericsson. Join us and discover what makes YOU + ERICSSON a powerful combination. For career info & to connect, visit @EricssonCareers.',
	1488,0,'Fri Jun 03 14:27:12 +0000 2011',3447,0,'en',
	'http://pbs.twimg.com/profile_images/469558837905608705/FypPKqIT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ericsson #ProjectMgmt #Job: Technical Writer (#IndiaJobs) http://t.co/oytP4eczCi #Jobs #TweetMyJobs',
	'<a href=::http://tweetmyjobs.com:: rel=::nofollow::>SafeTweet by TweetMyJOBS</a>',
	310299026
);
INSERT INTO twit_user VALUES (
	'2750725484',
	'News Times',
	'News_dayz',
	'',
	'null',
	332,1,'Wed Aug 20 23:31:31 +0000 2014',30846,1,'en',
	'http://pbs.twimg.com/profile_images/502236777843683329/Q2GP0m6O_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#GalaxyATIVS #WindowsPhone81 - WindowsCentral reported that the official Windows Phone 8.1 update is only seeding… http://t.co/IPxtoko1Ne',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	2750725484
);
INSERT INTO twit_user VALUES (
	'2669312940',
	'Rachel Sri Riahta ',
	'RiahtaRachel',
	'Pekanbaru',
	'#PRILLVERSS, #ALICIOUS ,always support @alysyarief @aliando26 @PrillyBie me:237eb2c2 RT by : @prillybie @ullyjulita1 @aliando26 followed by @yhiyie23__',
	752,1751,'Tue Jul 22 12:38:16 +0000 2014',10248,1751,'id',
	'http://pbs.twimg.com/profile_images/523650145192140800/XtFbxJSn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AliciousDPS min share linknya dong yg di insert pagi',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2669312940
);
INSERT INTO twit_user VALUES (
	'2250560696',
	'かつてすえぞうと呼ばれた男',
	'suezo_ozeus',
	'',
	'null',
	173,181,'Tue Dec 17 15:19:45 +0000 2013',4388,181,'ja',
	'http://pbs.twimg.com/profile_images/487824071241912320/lmHfS9zc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'目の下あたりのほっぺに出来物。

ふ、吹き出物じゃないもん！

に、ニキビだもん！',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2250560696
);
INSERT INTO twit_user VALUES (
	'344386796',
	'ちょっと笑える小ネタ_bot',
	'ch1ora2110',
	'',
	'大笑いじゃなく、ちょっと笑える小ネタをつぶやいています。クスっと笑えるネタがあったらＲＴヨロシクでェ～すwwwww！',
	33298,33341,'Fri Jul 29 00:17:18 +0000 2011',207925,33341,'ja',
	'http://pbs.twimg.com/profile_images/3255298997/55fd00d776e2e1207f3c27570ec82523_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'『昼間っからゴロゴロ～、ゴロゴロ～！』あ～ぁ、ハリウッドから映画出演のオファーが来ないかなぁ～！？http://t.co/qJAHGAtGri',
	'<a href=::http://makebot.sh:: rel=::nofollow::>ch1ora2110</a>',
	344386796
);
INSERT INTO twit_user VALUES (
	'2649227556',
	'心に響く言葉',
	'kokoro_kotoba1',
	'',
	'心に残る名言・格言・恋言をツイートします☆毎日のエッセンスにして下さいね♪',
	2410,2121,'Tue Jul 15 21:23:45 +0000 2014',4819,2121,'ja',
	'http://pbs.twimg.com/profile_images/489159667273060352/e6xeuovC_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @miwasankotoba: 苦しみを経験するから、幸せの有り難みが分かる。苦しむことは、幸せになるためのプロセス。',
	'<a href=::http://www.yahoo.co.jp/:: rel=::nofollow::>みんなの輪の楽しいツイッター</a>',
	2649227556
);
INSERT INTO twit_user VALUES (
	'2364702212',
	'Lo:: | Lou be my 1/5?',
	'sassyblouberry',
	'Doncaster? Doncaster.',
	'Louis is beautiful inside and out, your argument is invalid.',
	1041,605,'Thu Feb 27 22:20:07 +0000 2014',68151,605,'en',
	'http://pbs.twimg.com/profile_images/524613894891794432/Orpj01Oc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne oh',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2364702212
);
INSERT INTO twit_user VALUES (
	'308297138',
	'logan',
	'infinitylogan_',
	'wm, louisiana',
	'i saw my sunshines on 9.25.14❤️',
	1099,2003,'Tue May 31 04:57:58 +0000 2011',6050,2003,'en',
	'http://pbs.twimg.com/profile_images/526529330189328385/Dkqe_NBE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	308297138
);
INSERT INTO twit_user VALUES (
	'2837216669',
	'sage clarrisa',
	'SageClarrisa',
	'',
	'null',
	15,3,'Sun Oct 19 14:09:10 +0000 2014',6774,3,'en',
	'http://pbs.twimg.com/profile_images/523838681199554560/F-N8Jda1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#GalaxyATIVS #WindowsPhone81 - WindowsCentral reported that the official Windows Phone 8.1 update is only seeding… http://t.co/TeOffCsRjm',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	2837216669
);
INSERT INTO twit_user VALUES (
	'2878724005',
	'•Hanna•',
	'ziall_0',
	'',
	'My anaconda dont, my anaconda dont, my anaconda dont want nun unless you Niall Horan hun. 
Larry is life. ~after concert depression~',
	12,32,'Sun Oct 26 20:11:30 +0000 2014',39,32,'en',
	'http://pbs.twimg.com/profile_images/526468269671067649/Kl-WBO41_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2878724005
);
INSERT INTO twit_user VALUES (
	'551434072',
	'MALUMA ™',
	'EsMaluma',
	'COLOMBIA',
	'Frases para ellas.',
	268614,5252,'Thu Apr 12 00:23:30 +0000 2012',3086,5252,'es',
	'http://pbs.twimg.com/profile_images/523254982355599361/EOpzpq5H_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Notengoswag: Estás disfrutando chingon el domingo y te acuerdas de toda la pinche tarea que te dejaron. http://t.co/17AVZNsUAy',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	551434072
);
INSERT INTO twit_user VALUES (
	'2823045204',
	'今西君',
	'imanishikunni',
	'渋谷',
	'エロ単語つぶやく。これは知らなかったとか、これは知らんだろみたいな単語しえてくれ。',
	732,766,'Sun Sep 21 00:48:50 +0000 2014',3793,766,'ja',
	'http://pbs.twimg.com/profile_images/513492237653520386/iKB0JlCI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'★付けようコンドーム★『★☆楽天ランキング3位受賞!!☆★信頼の国産ブランド相模ゴム製!!医療機器承認済★中身が分から...』を見る [楽天] http://t.co/MHvLFFMNeT',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2823045204
);
INSERT INTO twit_user VALUES (
	'586579621',
	' ♡',
	'sobyng',
	'BL Line ❤',
	'❥  #뷔슈가  ❥  l HTM BUU l (@eoozup) l',
	207,221,'Mon May 21 14:15:27 +0000 2012',31908,221,'th',
	'http://pbs.twimg.com/profile_images/522818348476682240/Ws4qLuo__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ตื่นละ 😂',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	586579621
);
INSERT INTO twit_user VALUES (
	'2552325966',
	'LULU',
	'PLuHun',
	'',
	'อันยอง ยอรอบุล แอคนี้แด่พี่ลู่กวางแก่ จะซัพพอร์ทนางอยุ่เรื่อยๆ | ลู่หมิน | ฮุนฮาน|',
	17,58,'Sat Jun 07 11:30:35 +0000 2014',9540,58,'en',
	'http://pbs.twimg.com/profile_images/522318263124910081/lM7mnKT2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ikpikpz: ทำไมต้องคิดจะลืมกันด้วย ความทรงจำดีๆระหว่างเรา เก็บมันไว้ไม่ได้หรือยังไง?',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2552325966
);
INSERT INTO twit_user VALUES (
	'2861316295',
	'笑っては☆ダメ☆彡',
	'waratte_dame_',
	'',
	'おかしくても笑ってはいけない場面ってありますよね。そのような話を呟いていきます。面白かったら、RTをお願いします。',
	357,1981,'Fri Oct 17 21:35:36 +0000 2014',508,1981,'ja',
	'http://pbs.twimg.com/profile_images/523226673156591616/H84ovqm5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @animal_arc: ぎゅっ http://t.co/XTbrQ1hk0Z',
	'<a href=::https://twitter.com/waratte_dame_:: rel=::nofollow::>笑ってはダメ＿</a>',
	2861316295
);
INSERT INTO twit_user VALUES (
	'410384668',
	'Ch✖ng ✨',
	'kingchau_',
	'',
	'H. I. D. E. ☁⚡☺ W.A.Y.S.',
	1100,1124,'Sat Nov 12 01:19:29 +0000 2011',11777,1124,'en',
	'http://pbs.twimg.com/profile_images/489709714746638336/0NfkUCx8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BoyGoten: Ray Rice be like: http://t.co/ki0mrdMKLj',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	410384668
);
INSERT INTO twit_user VALUES (
	'628166874',
	'あじ@Z、インパ',
	'ZGMF006',
	'',
	'家庭版EXVSFB用。インパルス、Z愛してる。階級はシャフ固定両方少佐、勝率5割なので期待しないように…基本フォロバし、しますよ！ドンドンフォローして、どうぞ。 淫夢ネタも114514！ノルンはひで。ひでしね 最近新たにシナンジュが☆5になりました…器リスペクト、パズドラ、ディバゲやってますよ…',
	75,82,'Fri Jul 06 05:53:13 +0000 2012',529,82,'ja',
	'http://pbs.twimg.com/profile_images/524747310534627328/b8pevHz5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @711SEJ: ガンダム35周年キャンペーン
11/1(土)スタート♪
http://t.co/PBr8yBuDXn

この投稿をリツイート＆ @711SEJをフォローでクオカード1万円分を10名様にプレゼント☆11/2まで #ガンダム35周年
https://t.co…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	628166874
);
INSERT INTO twit_user VALUES (
	'2853281516',
	'Iowa Retweet',
	'IowaRetweet',
	'Iowa, USA',
	'Positive Iowa retweets about #IOWA and few more.',
	671,1928,'Sun Oct 12 15:12:08 +0000 2014',953,1928,'en',
	'http://pbs.twimg.com/profile_images/521353760811929600/USDvtd6N_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Janis_Robinson: Here are some tips for baby boomers who find themselves entering the #realestate market for the 1st time in a while. ht…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2853281516
);
INSERT INTO twit_user VALUES (
	'1533748891',
	'الفجر القريب',
	'juradaduvupo',
	'Saudi Arabia',
	'نُدرِكَ أنَنــآَ نُحبَهمَ ؛ حِينَ نبَدأ بإسَترِجآَعَ ذَكرَيَآتِنآَ معَهَمَمَ ، ونبَتَسمَ لآَ شُعوِرِيآً ♥:)',
	156,609,'Thu Jun 20 11:57:59 +0000 2013',16978,609,'en',
	'http://pbs.twimg.com/profile_images/506423538354372609/LXTvqsVa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @fafafa303030: إذا كنت تملك اسهم بنك الريان القطري وترغب ببيعهافاتصل بنا✋✋
#الهلال
#النصر
#عبدالرحمن_بن_مساعد
#كحيلان
#جدة http://t.co/V…',
	'<a href=::http://www.alrayn.com:: rel=::nofollow::>alrayn api</a>',
	1533748891
);
INSERT INTO twit_user VALUES (
	'532375855',
	'Freak Show',
	'DaniSabn',
	'',
	'.',
	245,593,'Wed Mar 21 16:53:57 +0000 2012',6947,593,'es',
	'http://pbs.twimg.com/profile_images/526482545933033472/xsyOSp89_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Voy a morir. Literal',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	532375855
);
INSERT INTO twit_user VALUES (
	'2687890232',
	'ديزيريه',
	'_desireexg',
	'',
	'Varsity; Soccer, Drill. & Noe Galan❤️',
	52,60,'Mon Jul 28 16:39:43 +0000 2014',508,60,'en',
	'http://pbs.twimg.com/profile_images/525469653577916416/qXdnBtPW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_wassuh: “@effYOURwords: My loyalty runs so deep that we could be arguing for a month and i;;ll still believe we could work shit out”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2687890232
);
INSERT INTO twit_user VALUES (
	'118879080',
	'Antonella ',
	'Camyschoo',
	'Chile, Viña del Mar',
	'Nutricionista. Ni de amores se muere ni de recuerdos se vive',
	49,532,'Tue Mar 02 00:34:55 +0000 2010',2847,532,'es',
	'http://pbs.twimg.com/profile_images/518567195178041344/-ZZr-743_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Febrerooo llega luegoooooooooooooo!!!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	118879080
);
INSERT INTO twit_user VALUES (
	'165733904',
	'Taryn Dube',
	'Tillsinzim',
	'London',
	'Wife, mom, daughter. love to be on the go, breaking new ground and advancing His Kingdom one relationship and encounter at a time.',
	50,66,'Mon Jul 12 11:50:39 +0000 2010',125,66,'en',
	'http://pbs.twimg.com/profile_images/459951596940845056/3fVV0kAx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'So sad when leadership becomes more important than the people we are leading',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	165733904
);
INSERT INTO twit_user VALUES (
	'1710983887',
	' • αяίαиα •',
	'AriAlegreOk',
	'',
	'No me arrepiento de nada, pero tengo claro las cosas que no volvería a hacer.',
	918,1168,'Thu Aug 29 20:47:28 +0000 2013',21133,1168,'es',
	'http://pbs.twimg.com/profile_images/522081895744413696/HYRMkVIl_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Que lindos son los de Loco Mia, lastima que son todos putos',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1710983887
);
INSERT INTO twit_user VALUES (
	'1494306151',
	'Rúbia Andrade',
	'rubiahandr',
	'',
	'null',
	236,88,'Sun Jun 09 00:40:32 +0000 2013',11813,88,'en',
	'http://pbs.twimg.com/profile_images/524673966225784832/5lusKl6W_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@DinhoLacerda17 se mete nisso não pra não se prejudicar',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1494306151
);
INSERT INTO twit_user VALUES (
	'1868432610',
	'مبارك القحطاني ',
	'MK4_Q',
	'http://instagram.com/MK4_Q',
	'من لا يحترِم الأُنث;;ى لا يملِكُ الـثِّـقة بـ نفسِه |',
	1560,2001,'Sun Sep 15 17:03:52 +0000 2013',1278,2001,'ar',
	'http://pbs.twimg.com/profile_images/523067795928387585/BGIA0WkX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'فرصة!! متابعين عرب متفاعلين 1500 متابع فقط 1$ و مع كل طلب هدية 10 ريتويت لكل تغريداتك لمدة شهر http://t.co/h5xXuMmySI',
	'<a href=::http://gharedly.com:: rel=::nofollow::>Gharedly 2.3</a>',
	1868432610
);
INSERT INTO twit_user VALUES (
	'242735702',
	'vicDANGER',
	'ddlserva',
	'naclara e duarda',
	'rainha do playback sim, the most elegant princess in the world também!!',
	7448,7138,'Tue Jan 25 13:37:47 +0000 2011',22189,7138,'pt',
	'http://pbs.twimg.com/profile_images/525818190849269760/F3baNvar_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	242735702
);
INSERT INTO twit_user VALUES (
	'1965858288',
	'Diego Mereles',
	'diegitomanu123',
	'santa isabel -santa fe',
	'Simplemente te necesito conmigo.',
	471,492,'Thu Oct 17 02:07:33 +0000 2013',5688,492,'es',
	'http://pbs.twimg.com/profile_images/432552228801351681/HUOr-lv-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Vamooos Riveeer Vamoooos',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	1965858288
);
INSERT INTO twit_user VALUES (
	'514825628',
	'L',
	'KingOfCrimson',
	'',
	'Not a lot of excitement going on here',
	334,266,'Sun Mar 04 22:15:36 +0000 2012',14939,266,'en',
	'http://pbs.twimg.com/profile_images/485093069344505856/gKm_UXWp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I really need to pack. But..',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	514825628
);
INSERT INTO twit_user VALUES (
	'247059688',
	'#Good2Anos  ',
	'Betaao_',
	'Sampaaa',
	'Bitch don;;t kill my vibe ♪',
	248,196,'Fri Feb 04 00:43:06 +0000 2011',7709,196,'pt',
	'http://pbs.twimg.com/profile_images/504779461196513280/Q84TbMWU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @VoceNaoSabiaQ: O álcool provoca e estimula a região do cérebro associada com a honestidade.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	247059688
);
INSERT INTO twit_user VALUES (
	'370335214',
	'Sofia Styles.',
	'iAdoreHarold_',
	'© Jonas Brothers Recording LLC',
	'Hell is empty and all the devils are here. †  ibelongharry 3 demi_lovatoUS 3 voguenxarry 3',
	7217,1854,'Thu Sep 08 21:09:23 +0000 2011',146907,1854,'en',
	'http://pbs.twimg.com/profile_images/524790110286778368/Aylm3Hin_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	370335214
);
INSERT INTO twit_user VALUES (
	'2863214389',
	'Out of Sight',
	'Grind_Shawn',
	'Out the way',
	'Bossed Up...Rip Al Rip True #NewPage',
	301,686,'Sat Oct 18 18:10:09 +0000 2014',1330,686,'en',
	'http://pbs.twimg.com/profile_images/525536241396486144/d1hsaw7A_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@youlovemeea: Why my uncle just give me this nasty kiss on my neck? 😕”👀',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2863214389
);
INSERT INTO twit_user VALUES (
	'42993946',
	'B-Diddy',
	'BDIDDYRUNDACITY',
	'ï¿½T: 40.71925,-74.283873',
	'ACTOR/PROMOTER....ONE STEP AT A TIME! #KNICKSNATION 908-265-2009 INSTAGRAM: BDIDDYRUNDACITY',
	1829,876,'Wed May 27 23:27:15 +0000 2009',161514,876,'en',
	'http://pbs.twimg.com/profile_images/492181110596845568/Sk30h9Ba_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @pierreline4: trueRT @snapIN2aSLlMJIM: @pierreline4 it depends on if she can hide it cuz they do take long breaks',
	'<a href=::http://www.myplume.com/:: rel=::nofollow::>Plume for Android</a>',
	42993946
);
INSERT INTO twit_user VALUES (
	'1368085370',
	'Gunawan ',
	'Gun_100_',
	'Fio&Nata | LUAR PLANET',
	'キロロ | Ren - Ai | リーマ | SISTAR | Rachel Florencia Rudy Gunawan ^-^ | Cewe pesek itu lucu, cewe berkacamata cantik :) | @_gunChan315',
	1002,294,'Sat Apr 20 21:54:04 +0000 2013',33121,294,'en',
	'http://pbs.twimg.com/profile_images/524581676668563458/Rydz6BG2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'jari nya gugup :v @SherlySGP 
ih typo ih:pwkwk:: @Gun_100_ : Sini ke lapangan, kita
main bala baket biar sehat wa a a a :v',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1368085370
);
INSERT INTO twit_user VALUES (
	'1114223528',
	'',
	'arianugroho_',
	'Bumi Allah SWT',
	'09 - September - 2001 | 27 - 09 - 2014',
	3138,11,'Wed Jan 23 12:07:59 +0000 2013',57803,11,'id',
	'http://pbs.twimg.com/profile_images/515085119082594306/wd6KB_vb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Menangis adalah ketika bibir tak tau apa yang harus dikatakan, sedangkan hati sudah tak kuat untuk menahan.',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1114223528
);
INSERT INTO twit_user VALUES (
	'2381045503',
	'craichead',
	'98765sos',
	'the outernet',
	'You;;re the reason, the only reason ❤️ #FREDTHECACTUS above all else',
	348,577,'Sun Mar 09 21:14:34 +0000 2014',461,577,'en',
	'http://pbs.twimg.com/profile_images/442850622027485184/hJLn_LR8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne Caitlin is the one. She wrote you this poem. Please read it. It;;ll make her life. http://t.co/xkPvFyhdsh u',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2381045503
);
INSERT INTO twit_user VALUES (
	'1677520705',
	'Krista Trigueiro',
	'kmtrigueiro',
	'',
	'null',
	288,555,'Sat Aug 17 06:18:24 +0000 2013',660,555,'en',
	'http://pbs.twimg.com/profile_images/523368228886941696/RTc0AGU8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'You take to me selfies!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1677520705
);
INSERT INTO twit_user VALUES (
	'323551541',
	'Nicko Garcia',
	'NiickoGarciia',
	'Pereira',
	'null',
	79,157,'Sat Jun 25 01:07:44 +0000 2011',1447,157,'es',
	'http://pbs.twimg.com/profile_images/518615895371833344/MuIjMCwQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @McSteamyRF: ¡Ya sabes quien es tu #tuitpareja?

http://t.co/xf2KeO7kIO',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	323551541
);
INSERT INTO twit_user VALUES (
	'85907930',
	'maria✿',
	'zouisnoise',
	'ljp/5 . isadora',
	'even if you aren;;t louis tomlinson af you are louis tomlinson af',
	2727,917,'Wed Oct 28 20:42:27 +0000 2009',42879,917,'en',
	'http://pbs.twimg.com/profile_images/525669338401865730/Np54mJCw_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	85907930
);
INSERT INTO twit_user VALUES (
	'97752748',
	'Rocio ',
	'RocioAldana112',
	'I. Casanova',
	'Aveces hay que ponerse la nariz de payaso y sonreír al mundo :•) | #CallejerosInocentes | Nadadora en el Club Deportivo Huracan |',
	515,422,'Fri Dec 18 21:35:26 +0000 2009',5703,422,'es',
	'http://pbs.twimg.com/profile_images/514847611451629568/H7o5_BQc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Soy de mi novio hermoso y el manda',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	97752748
);
INSERT INTO twit_user VALUES (
	'53689536',
	'SC▲RLET',
	'scarletabbeyrae',
	'',
	'כל מה שקורה הוא מעתה והלאה',
	285,153,'Sat Jul 04 15:19:49 +0000 2009',12639,153,'en',
	'http://pbs.twimg.com/profile_images/521112073871556608/_SUVTTXM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'fuck off bro',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	53689536
);
INSERT INTO twit_user VALUES (
	'818689466',
	'Macoña - BRC❅',
	'AguusGorgerino',
	'',
	'Lucas Lucas Lucas Lucas Lucas - Fb : Agus Gorgerino',
	305,414,'Wed Sep 12 02:47:14 +0000 2012',10186,414,'es',
	'http://pbs.twimg.com/profile_images/506314503810580480/SABvr-aT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ENCIMA ES PUTOOOOOO... nono punto.... gay',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	818689466
);
INSERT INTO twit_user VALUES (
	'2166558815',
	'noelle',
	'its_2_l',
	'',
	'First things first I;;m the realest.',
	399,647,'Sun Nov 03 16:09:11 +0000 2013',17696,647,'en',
	'http://pbs.twimg.com/profile_images/524687691771019264/re3-z8Wh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @GreaterThn: when u in public with bae &amp; u see another girl look at him http://t.co/Kh2DvYYtov',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2166558815
);
INSERT INTO twit_user VALUES (
	'859885346',
	'beafivestars',
	'fivest4rs',
	'buckw1ld',
	'• 2/12 - wesley/3  + justin bieber + alexandsierra + alexander holtti +madison beer + follow do Hayes on @biiahdn | reply by bryant 09/13 •',
	1869,1824,'Wed Oct 03 15:35:41 +0000 2012',42311,1824,'pt',
	'http://pbs.twimg.com/profile_images/521652332115668993/nybw2MLv_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	859885346
);
INSERT INTO twit_user VALUES (
	'1259615004',
	'Girl',
	'horanthings__',
	'(: 9|21|14 :)',
	'Been ignored by 5 boys for 3 years. So basically 0/5.',
	967,1998,'Mon Mar 11 14:44:10 +0000 2013',4698,1998,'en',
	'http://pbs.twimg.com/profile_images/514137679295184896/7CayRa05_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1259615004
);
INSERT INTO twit_user VALUES (
	'188326792',
	'sean stull',
	'seanteais',
	'newark ohio',
	'the name is sean and my birthday is april 2nd and i have a son name dominic who i would die for.i also love to go out with friends and chill.and im 17',
	4,1,'Wed Sep 08 13:34:29 +0000 2010',39,1,'en',
	'http://pbs.twimg.com/profile_images/1119725163/seans_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Think of the perfect person you would wanna be with thats  how I feel about her.: http://t.co/XOQmZBe0Pk',
	'<a href=::http://www.meetme.com/:: rel=::nofollow::>MeetMe Share</a>',
	188326792
);
INSERT INTO twit_user VALUES (
	'18093511',
	'P. Panther',
	'Ms_A_New',
	'Concrete Jungle',
	'►Well Adapted. ►Melinated Color. ►Loud Roar.',
	624,469,'Sat Dec 13 04:22:29 +0000 2008',56792,469,'en',
	'http://pbs.twimg.com/profile_images/524343163805523969/vxTE-ilw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Go Margret! #BoardwalkEmpire',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	18093511
);
INSERT INTO twit_user VALUES (
	'238996763',
	'Sekai Suzumu',
	'opai_ga_ippai',
	'',
	'21歳のオッサン。ガチ業界人の甥です。音楽つくって生活費稼いでます。ミキシング/マスタリングもやってたりします。アイコンは【@rinrin__go】さんの作品です！ 前垢【@hzk_poyo】 音楽活動用【@NS_Suzumu】',
	343,294,'Sun Jan 16 15:08:32 +0000 2011',32063,294,'ja',
	'http://pbs.twimg.com/profile_images/478934932316635136/v1rw1VhH_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@sametendy http://t.co/Jf8e1a4Q1W',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	238996763
);
INSERT INTO twit_user VALUES (
	'2276670464',
	'Sarita ♡',
	'IdolsMySmile14',
	'ღ1/10/14 Lodovica me dio RTღ',
	'«if people were rain i was drizzle and she was a hurricane»  «I;;m not mad at no one else
just disappointed in myself» ✩Books and music✩',
	217,449,'Sat Jan 04 21:19:42 +0000 2014',17250,449,'es',
	'http://pbs.twimg.com/profile_images/525401045489303552/Anc6a3SO_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lodoftrugg: Simplemente #Violetta #KCAArgentina http://t.co/JJvOuAbUTI',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2276670464
);
INSERT INTO twit_user VALUES (
	'1340513328',
	'Potato_Malik',
	'mary_paixao2013',
	'',
	'null',
	28,229,'Tue Apr 09 23:46:20 +0000 2013',1235,229,'pt',
	'http://pbs.twimg.com/profile_images/519256025409404929/ZIux-G-c_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CrazyMofas_Br: FACTS
Harry : Liam o que voce faria se eu te perseguisse com uma colher ?
Liam : alisaria seu cabelo
#EMABiggestFans1D',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1340513328
);
INSERT INTO twit_user VALUES (
	'105685013',
	'Grace C. García',
	'gracegsc',
	'Lima - Perú',
	'Contadora Pública-USMP/ Fan de @jencarlosmusic, @gabyespino y @BritneySpears ❤ #TeamEspino #Canelita #Espinela #BritArmy',
	220,417,'Sun Jan 17 04:14:01 +0000 2010',25976,417,'es',
	'http://pbs.twimg.com/profile_images/378800000609197928/9be7a2b150a3252db7e74544c505c4f9_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Voto por #BailarContigo de #JencarlosCanela en el #TopChartEnEspañol de @manuelinares en @RadioCorazonPe #LaFam @TopChartOficial 105',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	105685013
);
INSERT INTO twit_user VALUES (
	'2505061642',
	'Ed Boy',
	'DustyPharaoh',
	'',
	'I;;m just a nigga',
	298,212,'Thu Apr 24 00:04:46 +0000 2014',15061,212,'en',
	'http://pbs.twimg.com/profile_images/519517566642180096/NrmKxRAj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'HOW IS TCU STILL 10 WE GOT ROBBED',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2505061642
);
INSERT INTO twit_user VALUES (
	'1401584654',
	'Cri',
	'Cristhiaaaanp',
	'',
	'Hincha de River Plate,redondito de ricota',
	340,315,'Sat May 04 06:53:47 +0000 2013',8242,315,'es',
	'http://pbs.twimg.com/profile_images/520996630556725248/Q4rwAa-__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Vamo;; River de mi vida',
	'<a href=::http://store.ovi.com/content/256340:: rel=::nofollow::>Twitter for Nokia S40</a>',
	1401584654
);
INSERT INTO twit_user VALUES (
	'2723008037',
	'Caracol',
	'gabinoliveira16',
	'',
	'null',
	96,206,'Thu Jul 24 14:08:12 +0000 2014',536,206,'pt',
	'http://pbs.twimg.com/profile_images/513159587563057152/DEc0I1CX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@doralles No que??',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2723008037
);
INSERT INTO twit_user VALUES (
	'2327300702',
	'✌️⚓️',
	'trilogycal',
	'',
	'bands and boybands✌️theres a difference. Janoskians babe {#5sosvancouver 07.25.15} 0/5 0/5 0/4 ||Tomlinson-Styles|| Cal&Mikey❌',
	1718,1326,'Tue Feb 04 15:33:18 +0000 2014',12400,1326,'en',
	'http://pbs.twimg.com/profile_images/525137202930794496/d2VArySN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: What shall I be for Halloween this year',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2327300702
);
INSERT INTO twit_user VALUES (
	'2838332355',
	'المحير',
	'YonesSaleh1',
	'',
	'null',
	12,141,'Mon Oct 20 18:53:54 +0000 2014',289,141,'ar',
	'http://pbs.twimg.com/profile_images/524274403123548161/VTnzuh1j_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @amahmod2103: @aabaa818 http://t.co/i8X789AZNv',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2838332355
);
INSERT INTO twit_user VALUES (
	'1306433018',
	'Squintz ',
	'ChrisBoiii13',
	'',
	'Sophomore | Baseball | Track | wehs;;17',
	89,104,'Wed Mar 27 03:53:45 +0000 2013',453,104,'en',
	'http://pbs.twimg.com/profile_images/411712040084848640/FoubSDOi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheAthleteTeam: Dating someone who you can talk about sports with and watch games together is the best thing ever.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1306433018
);
INSERT INTO twit_user VALUES (
	'2872006219',
	'Loyda Lavariega',
	'LavariegaLoyda',
	'',
	'null',
	64,119,'Wed Oct 22 21:49:58 +0000 2014',44,119,'es',
	'http://pbs.twimg.com/profile_images/525041850047287296/nfM79QRx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PrensaCENPRI: Sospechoso silencio de @lopezobrador_  sugiere omisión cómplice: @PRI_Nacional http://t.co/mcpjCjqpjs',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2872006219
);
INSERT INTO twit_user VALUES (
	'2757258364',
	'Cake and Narry',
	'mika_shing',
	'NY',
	'I love one direction and 5sos! My boys are Luke Hemmings, Harry Styles and Niall Horan! #hotties! WWA Tour 8/7/14',
	496,389,'Sun Aug 31 15:52:30 +0000 2014',7683,389,'en',
	'http://pbs.twimg.com/profile_images/524140930975399936/Rdg2yvNy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @xlirrylove: marry me http://t.co/dFXCMz6e7m',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2757258364
);
INSERT INTO twit_user VALUES (
	'2393282899',
	'your boyfriends gf',
	'hannahphariss1',
	'',
	'Tweet me cam',
	61,264,'Sun Mar 16 21:02:09 +0000 2014',1703,264,'en',
	'http://pbs.twimg.com/profile_images/445305220000542721/9X3wOFpC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SexFactsOfLife: Never really looked at it this way 😳 http://t.co/KJEiWjy8Qn',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2393282899
);
INSERT INTO twit_user VALUES (
	'2479639566',
	'プロが本気出すとこうなる',
	'sugoude_honki',
	'',
	'プロの凄腕っぷりをしっかりと目に焼き付けてください！',
	1117,0,'Tue May 06 10:55:50 +0000 2014',10260,0,'ja',
	'http://pbs.twimg.com/profile_images/464564988103778304/VHK8J7FO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'タラ兵長 http://t.co/LrTsFQHFBD',
	'<a href=::https://twitter.com/sugoude_honki:: rel=::nofollow::>プロが本気出すとこうなる</a>',
	2479639566
);
INSERT INTO twit_user VALUES (
	'2266952819',
	'Mica Miguens!',
	'MiguensMica',
	'violetta3!!! violettalive!',
	'@tinistoessel mi mundo! #violetta3 #violettalive #documentaltini violetta!❤️ arina grande',
	102,93,'Tue Jan 07 13:42:16 +0000 2014',5421,93,'es',
	'http://pbs.twimg.com/profile_images/526480991112953857/wf9ihjdu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LoliiGarzon: Amo el calor pero me estresa😩💣🔫',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2266952819
);
INSERT INTO twit_user VALUES (
	'2444281514',
	'I::m Rei Julian Bitch',
	'Raissa_Zouis',
	'',
	'Fã de gayband, Tricolinda com muito orgulho, Taylover, Maria Bethânia minha divaaaaa. Seguindo a direção que só me mata. ;;Antissocial;; haha palavras de mamãe ;)',
	598,1030,'Mon Apr 14 17:47:11 +0000 2014',7297,1030,'pt',
	'http://pbs.twimg.com/profile_images/512029723551993856/thhN5gql_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Ugarota_: Isso é meu nordeste ♥♥ ! #SouDoNordesteMesmoEComOrgulho http://t.co/MPTW7nyVmk',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2444281514
);
INSERT INTO twit_user VALUES (
	'494551367',
	'K',
	'narrysdarlin',
	'',
	'i just wanna touch harry styles bun',
	553,454,'Fri Feb 17 01:04:09 +0000 2012',6201,454,'en',
	'http://pbs.twimg.com/profile_images/514884704194289664/qJUAI1Lt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne http://t.co/zVQdYQJKO9',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	494551367
);
INSERT INTO twit_user VALUES (
	'2862833665',
	'Southern Rebel ✞',
	'SouthernRebel__',
	'',
	'| God. Family. Guns. | Gyspsy soul | Red Dirt Girl | kik: rebel_southern | snapchat: rebel_southern |',
	180,171,'Sat Oct 18 14:36:15 +0000 2014',542,171,'en',
	'http://pbs.twimg.com/profile_images/526145659800670209/RYzlYhnf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No matter where I go, I;;ll just be missin you in a Texas kind of way',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2862833665
);
INSERT INTO twit_user VALUES (
	'2725055337',
	'Leona',
	'leona_santiago',
	'',
	'null',
	118,132,'Sat Jul 26 10:05:11 +0000 2014',65,132,'en',
	'http://pbs.twimg.com/profile_images/497499081984315392/ZuEg-N3Q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'My puppy pooped outside! I;;ve never been more proud in my life!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2725055337
);
INSERT INTO twit_user VALUES (
	'2599983560',
	'詫广 祐大',
	'02048141',
	'',
	'横浜・鴨居 今年16！塗装やってます。
CLUB・RISING所属 DJデビューが近い(｡-_-｡)',
	372,474,'Wed Jul 02 14:51:53 +0000 2014',418,474,'ja',
	'http://pbs.twimg.com/profile_images/518365651061059585/NNFYJ54S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@0817Ayachun あね',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2599983560
);
INSERT INTO twit_user VALUES (
	'2198698638',
	'Jaylizzle',
	'jayyylen__',
	'Pickerington ',
	'Books•Movies•Music•YouTubers',
	220,334,'Sun Nov 17 01:32:12 +0000 2013',5229,334,'en',
	'http://pbs.twimg.com/profile_images/524863715762380801/LTphYaya_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Welp if you like PLL and Canabolism The Walking Dead is the show for you',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2198698638
);
INSERT INTO twit_user VALUES (
	'789440593',
	'マル特のピンボケ',
	'issidorein2019',
	'LOS ANGELES A.D.2019 NOVEMBER',
	'ただのマル特のピンボケです',
	209,811,'Wed Aug 29 14:18:20 +0000 2012',8377,811,'ja',
	'http://pbs.twimg.com/profile_images/519779639489593344/WDofZoVb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'まあ、要らンデータを消すいい機会にはなったわな',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	789440593
);
INSERT INTO twit_user VALUES (
	'533077348',
	'Mathieu Rivera',
	'pakTHIEU',
	'',
	'i am what i dream of',
	858,244,'Thu Mar 22 12:01:21 +0000 2012',33431,244,'en',
	'http://pbs.twimg.com/profile_images/522296679060357120/3FgvEYRO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@pakTHIEU fave',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	533077348
);
INSERT INTO twit_user VALUES (
	'1238064139',
	'Blisilda ❤',
	'BlessJustine28',
	'',
	'have faith in God ❤',
	1043,1816,'Sun Mar 03 06:24:43 +0000 2013',10562,1816,'en',
	'http://pbs.twimg.com/profile_images/526190603164332032/vLBnL0B5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@tinaaayyyyyy: Seen:: 😔💔',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1238064139
);
INSERT INTO twit_user VALUES (
	'1271476968',
	'haley',
	'restlessharrry',
	'',
	'stay rad.',
	818,814,'Sat Mar 16 05:33:30 +0000 2013',13562,814,'en',
	'http://pbs.twimg.com/profile_images/523658032123629569/Uqimm5sL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne be a hot dog',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1271476968
);
INSERT INTO twit_user VALUES (
	'2762610188',
	'☞☞ あやさん',
	'rennn_123',
	'平野あやか❤平野れいな',
	'❣❣ はぴらきかんさい ❣❣                                                       Next ▷▷ 松竹',
	90,92,'Sun Aug 24 14:21:33 +0000 2014',1810,92,'ja',
	'http://pbs.twimg.com/profile_images/522671426348670977/kwElmx60_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@y_t0830 
ね！！😭😂💦 春も楽しみだわ♡*:.｡. o(≧▽≦)o .｡.:*♡',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2762610188
);
INSERT INTO twit_user VALUES (
	'738220742',
	'gal',
	'Galsuchya',
	'',
	'T',
	85,193,'Sun Aug 05 08:03:54 +0000 2012',7857,193,'en',
	'http://pbs.twimg.com/profile_images/526305047877939200/Qm3FeIAD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @kaiipahhippie: อินเตอร์เน็ตทำให้เรากลายเป็นคนขี้เสือก',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	738220742
);
INSERT INTO twit_user VALUES (
	'400704784',
	'US NewsWaver',
	'US_NewsWaver',
	'United States',
	'US news / 5 tweets per hour / Opinion exchanges',
	2503,2696,'Sat Oct 29 13:02:51 +0000 2011',127042,2696,'en',
	'http://pbs.twimg.com/profile_images/2813504801/8b6685fccc316b16e9068018639c7d6a_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Soccer club Orlando Pirates says South Africa goalkeeper Senzo Meyiwa has died: Soccer club Orlando Pirates says… http://t.co/8iZAN8U19i',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	400704784
);
INSERT INTO twit_user VALUES (
	'957531288',
	'クラピカ(クラピー)＠天然ピカ',
	'Crarpikt',
	'ルクソ地方出身',
	'私はクラピカという。非公式のなり切りのアカウントなのでなり切りやHUNTER×HUNTERが苦手な人はスルーしてくれ。4月4日生まれの17歳、171cm、59kg、AB型。幻影旅団に滅ぼされたクルタ族の生き残りだ。同胞の仇を討ち､仲間達の奪われた眼球を取り戻すためハンターとなった。',
	331,342,'Mon Nov 19 14:31:09 +0000 2012',108120,342,'ja',
	'http://pbs.twimg.com/profile_images/486381252472102912/cDfRcQAF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'私が何者かわかっているんだろう。不安じゃないのか？不満は？ #bot',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	957531288
);
INSERT INTO twit_user VALUES (
	'2632983727',
	'レン',
	'08053354651',
	'',
	'null',
	3,52,'Sat Jul 12 23:02:18 +0000 2014',148,52,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @syougekidouga_: 【画像】 ミス・コリア2014の最終候補者50人が「みんな同じ顔」と話題に
　　http://t.co/iPJDg8haG2

. http://t.co/8ct2SAFujM',
	'<a href=::http://yahoo.co.jp:: rel=::nofollow::>ネットで話題‼　　　　　</a>',
	2632983727
);
INSERT INTO twit_user VALUES (
	'1863312992',
	'Web Marketing',
	'WebTweetCom',
	'United States',
	'We need a Good Business marketing. Please follow us, we;;ll follow you as well.',
	1456,1512,'Sat Sep 14 09:56:46 +0000 2013',3606,1512,'en',
	'http://pbs.twimg.com/profile_images/495017914940919808/UdqTzUru_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KennyLaeverik @KLFollower @ingenierosfj @fatimabuysse @betto_elcapi26 @_______ARTE @ALBERTOANGEL0 @amor_lila @lola_clau @Mechis_M',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1863312992
);
INSERT INTO twit_user VALUES (
	'2780075348',
	'パワー全開!!最強パワースポット',
	'power_full_spot',
	'',
	'あたの知っているパワースポットはどこですか？日本各地のパワースポットから、金運、恋愛運、勉強運、健康運、子宝運、仕事運、美容運、家庭円満、勝負運、結婚運、商売運などなど解説します。ＲＴとフォローすると運気が上がるかも!!',
	594,665,'Sat Aug 30 06:36:16 +0000 2014',1117,665,'ja',
	'http://pbs.twimg.com/profile_images/505605903404380160/02INHppm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mai_sexy_H: おっぱい(//∇//)よかったらRTしてね～(//∇//) http://t.co/PVdyHBfKZ0',
	'<a href=::https://twitter.com/power_full_spot:: rel=::nofollow::>パワー全開!!最強パワースポット</a>',
	2780075348
);
INSERT INTO twit_user VALUES (
	'2425360362',
	'SMT',
	'lexandrite',
	'',
	'We;;ll meet soon.',
	64,58,'Thu Apr 03 09:43:51 +0000 2014',1121,58,'en',
	'http://pbs.twimg.com/profile_images/524914012262125568/H859VFve_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@allithium MOST GOOD LOOKIN PAPIS ARE OUR AGE HERE',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M5)</a>',
	2425360362
);
INSERT INTO twit_user VALUES (
	'556796596',
	'Nour Mahmoud',
	'n_gaza',
	'#Gaza  #Palestaine',
	'‏‏
أنا قطعة من فلسطين .... وكفى',
	512,444,'Wed Apr 18 11:44:19 +0000 2012',17856,444,'ar',
	'http://pbs.twimg.com/profile_images/492340453652439040/NrxwjNgy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@soudhussein الكلام بجنن ومليون في المية صح
والصورة هاي كتير بتعنيلي :)',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	556796596
);
INSERT INTO twit_user VALUES (
	'492748683',
	'Carin Maldonado',
	'CarinMaldonado',
	'universal city',
	'Just me!!! :3',
	12,13,'Wed Feb 15 02:36:11 +0000 2012',505,13,'en',
	'http://pbs.twimg.com/profile_images/378800000766359646/98d44a725ffce396f6acb9b6b615d314_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Lol http://t.co/dZ2YquLRmp',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	492748683
);
INSERT INTO twit_user VALUES (
	'586127380',
	'Lexie',
	'lexietarrie',
	'',
	'I drive a Shitsubishi Lancer',
	850,745,'Mon May 21 01:00:24 +0000 2012',10233,745,'en',
	'http://pbs.twimg.com/profile_images/522547287063408640/Uei9y5Uk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'They made a new drum line?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	586127380
);
INSERT INTO twit_user VALUES (
	'628664835',
	'taye and dekayla,,!!',
	'wizzoharry',
	'2/5+lana ೫  iloveyouchels',
	'❝A little party never killed nobody.❞',
	45307,33573,'Fri Jul 06 17:54:46 +0000 2012',100801,33573,'en-gb',
	'http://pbs.twimg.com/profile_images/525840927987085312/Dmx8IASU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Some really interesting costumes coming through 😏',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	628664835
);
INSERT INTO twit_user VALUES (
	'2835524218',
	'Van',
	'maconhei2',
	'Navegantes - Sc',
	'Wpp: 4791901448',
	12,45,'Fri Oct 17 20:46:43 +0000 2014',242,45,'pt',
	'http://pbs.twimg.com/profile_images/523214169365938176/asPNSUCq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'af que nojo',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2835524218
);
INSERT INTO twit_user VALUES (
	'1160781344',
	'hayd',
	'taftaf_12',
	'',
	'abby is bae',
	657,389,'Fri Feb 08 17:40:10 +0000 2013',29146,389,'en',
	'http://pbs.twimg.com/profile_images/525095960117260288/FXSO4tJj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@taftaf_12 @Shane_Wilson21',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1160781344
);
INSERT INTO twit_user VALUES (
	'2712866308',
	'STEAL MY GIRL',
	'wreckdemi',
	'on top of the world',
	'joguei minha vida social na lixeira e agora to aqui sofrendo por um monte de famozinhos que nem sabem da minha existencia',
	1095,1027,'Tue Jul 15 16:01:27 +0000 2014',8842,1027,'pt',
	'http://pbs.twimg.com/profile_images/525730093696811008/uEEshkGy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne 
Hey Liam
Steal My Girl is amazing!
I love you so much ❤️
Can you follow me please? It;;s my dream 💞😘 
#EMABiggestFans1D 291',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2712866308
);
INSERT INTO twit_user VALUES (
	'556323479',
	'// michelle \\',
	'swankystyIes',
	'~ljp/five~',
	'if you like one direction i like you',
	6204,5448,'Tue Apr 17 22:07:30 +0000 2012',47195,5448,'en',
	'http://pbs.twimg.com/profile_images/515325257167548416/8JN77MTe_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne or David Beckham',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	556323479
);
INSERT INTO twit_user VALUES (
	'2575790395',
	'haziqah~',
	'IqahQisHana',
	'',
	'Never frown because u never know who might fall in love with yr smile♡',
	49,109,'Thu Jun 19 00:41:55 +0000 2014',2006,109,'en',
	'http://pbs.twimg.com/profile_images/520169289840488448/C8mQfwQY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @DisneysSecrets: If Disney characters had Instagram http://t.co/NxEPy07fer',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2575790395
);
INSERT INTO twit_user VALUES (
	'140942968',
	'Gonzalez Arnesen',
	'NelsonRGA',
	'Sanfors Fl, U.S',
	'I write because nobody listens.',
	343,194,'Thu May 06 19:29:00 +0000 2010',8029,194,'en',
	'http://pbs.twimg.com/profile_images/443218490598899712/hpOGNU3b_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'mientras más aprendes, menos dices',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	140942968
);
INSERT INTO twit_user VALUES (
	'2703310686',
	'Enas Abd El Khalek',
	'Journalist_Anos',
	'Egypt',
	'صحفية_طموحة_مغامرة_ابتسمتي تجنن ^_^ _بعشق الهزار ولكن كل حاجه بحدود :)',
	184,276,'Sun Aug 03 05:24:56 +0000 2014',622,276,'ar',
	'http://pbs.twimg.com/profile_images/523608671696080896/BW9m_NR-_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@samozeresamo دي تعرفك عز المعرفة يكفي كلامي عنك =D',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2703310686
);
INSERT INTO twit_user VALUES (
	'336036114',
	'عبدالرحمن الحرامله',
	'0555757025',
	'الرياض',
	'طلعت البر تسوي ملاين الراجحي',
	1092,2002,'Fri Jul 15 16:57:30 +0000 2011',4243,2002,'en',
	'http://pbs.twimg.com/profile_images/473121364740558850/cZVsS1fd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(وما ظن الذين يفترون على الله الكذب يوم القيامة إن الله لذو فضل على الناس ولكن أكثرهم لا .... 
http://t.co/eZfvStVqFm
 #تطبيق_قرآنى',
	'<a href=::http://qurani.tv:: rel=::nofollow::>تطبيق قرآني</a>',
	336036114
);
INSERT INTO twit_user VALUES (
	'492709794',
	'loueh tomlinsin',
	'zouispotato',
	'',
	'i will give you all my heart, so we can start it all over again.',
	1047,611,'Wed Feb 15 01:25:39 +0000 2012',58886,611,'en',
	'http://pbs.twimg.com/profile_images/525861623781949440/aDyYfI12_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	492709794
);
INSERT INTO twit_user VALUES (
	'405041178',
	'Carly',
	'CarlyMiller03',
	'',
	'junior @ phhs',
	705,410,'Fri Nov 04 19:31:21 +0000 2011',12136,410,'en',
	'http://pbs.twimg.com/profile_images/524300149581824000/u-nJSKuM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KerriganMcClain: I say ::nevermind:: at least 100 times a day from me refusing to repeat myself',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	405041178
);
INSERT INTO twit_user VALUES (
	'47469334',
	'El Shera Mayor',
	'La_FCA',
	'México D.F.',
	'Guía especializado en ascender a la cima del Nirvana universal.',
	35,98,'Mon Jun 15 22:48:16 +0000 2009',315,98,'es',
	'http://pbs.twimg.com/profile_images/360842556/Sherpa100_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @gizmodoES: Destacado esta semana: Esta aplicación resuelve fórmulas matemáticas con la cámara del móvil http://t.co/P93TvllCO6 http://t…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	47469334
);
INSERT INTO twit_user VALUES (
	'2557397480',
	'ⓛⓘⓖⓗⓣ',
	'where_is_it_',
	'',
	'Dear Niall;;s future wife. Please take care of Niall. Don;;t ever hurt him and...wait. Why am i talking to myself?',
	45,168,'Mon Jun 09 19:27:48 +0000 2014',712,168,'es',
	'http://pbs.twimg.com/profile_images/525419085321236480/kUv3Pr17_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2557397480
);
INSERT INTO twit_user VALUES (
	'870459362',
	'TYSM MAGGIE',
	'stalkingbandsxx',
	'c a n a d a ',
	'you are worth it ♡maggie♡ calum/4 james/5 | matt where u at |',
	1811,1641,'Tue Oct 09 19:23:16 +0000 2012',5944,1641,'en',
	'http://pbs.twimg.com/profile_images/525728751007846401/lJlxwS0z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa i would be the same thing over and over.. so boring',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	870459362
);
INSERT INTO twit_user VALUES (
	'50057992',
	'♛',
	'jaylynpadilla',
	'',
	'trying to find myself',
	788,325,'Tue Jun 23 18:32:16 +0000 2009',19950,325,'en',
	'http://pbs.twimg.com/profile_images/522298750128377856/sFgy73qT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @danibolton_: @jaylynpadilla your hair is getting so long 😍',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	50057992
);
INSERT INTO twit_user VALUES (
	'290200075',
	'Perséfone.♥',
	'lmlithium',
	'',
	'Me gusta ésta forma de belleza, ésta, la que me ha obsequiado la naturaleza.',
	481,280,'Fri Apr 29 21:59:42 +0000 2011',13317,280,'es',
	'http://pbs.twimg.com/profile_images/521820473445724160/eIBugdEy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Se enamoró de la muerte.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	290200075
);
INSERT INTO twit_user VALUES (
	'2327706870',
	'shan⚓',
	'ShanShan_22',
	'',
	'null',
	371,326,'Tue Feb 04 21:20:51 +0000 2014',750,326,'en',
	'http://pbs.twimg.com/profile_images/525046847514365952/-ECfB-7E_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'So happy❤️',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2327706870
);
INSERT INTO twit_user VALUES (
	'882630126',
	'follement. ',
	'CanlerGabrielle',
	'Lille',
	'My middle finger salutes you',
	218,196,'Mon Oct 15 16:25:20 +0000 2012',32450,196,'fr',
	'http://pbs.twimg.com/profile_images/519202552244879360/s5h_uAHS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @vansxirwin: rt si tu passes ta vie entière sur twitter',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	882630126
);
INSERT INTO twit_user VALUES (
	'171120238',
	'vicky',
	'bodyrockmeBiebs',
	'Watching Netflix with Justin.',
	'~I love Justin more than I love pizza~. {5sos || 1D || uj || gd}',
	1272,1451,'Mon Jul 26 16:14:33 +0000 2010',27595,1451,'en',
	'http://pbs.twimg.com/profile_images/507548453002805248/0pZNWYHO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	171120238
);
INSERT INTO twit_user VALUES (
	'2767906419',
	'Emyy',
	'justinoislife',
	'',
	'Votando todos os dias pois não quero perde a aposta #EMABiggestFansJustinBieber',
	322,635,'Fri Sep 12 13:31:43 +0000 2014',2887,635,'pt',
	'http://pbs.twimg.com/profile_images/523872835006365696/_p145rfx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @conexaobiebers: GAME POSER: Quem é a Yovanna? #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2767906419
);
INSERT INTO twit_user VALUES (
	'25308432',
	'Funny Favors',
	'funnyfavors',
	'Chicago check out my fav music',
	'FML Shirts available - http://www.cafepress.com/AlwaysFML',
	574,652,'Thu Mar 19 14:46:36 +0000 2009',5870,652,'en',
	'http://pbs.twimg.com/profile_images/1760864314/12784521257NCOv1_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	';;Fast and Furious 7;; gets new title http://t.co/UinB7Wg2DA via @EW',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	25308432
);
INSERT INTO twit_user VALUES (
	'15927393',
	'Anna Goldfarb',
	'ShmittenKitten',
	'Philadelphia, PA',
	'http://ShmittenKitten.com / Author of Clearly, I Didn;;t Think This Through / lover of free samples at Costco',
	5617,1082,'Thu Aug 21 03:42:45 +0000 2008',19140,1082,'en',
	'http://pbs.twimg.com/profile_images/525750659031638017/OE9q6kK6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::I;;m home, America. Now give me a REAL diamond ring.:: -Daya #90dayfiance',
	'<a href=::http://itunes.apple.com/us/app/twitter/id409789998?mt=12:: rel=::nofollow::>Twitter for Mac</a>',
	15927393
);
INSERT INTO twit_user VALUES (
	'863025894',
	'Carly McAvinue',
	'McavinueCarly',
	'pitman nj',
	'null',
	312,340,'Fri Oct 05 13:16:23 +0000 2012',2530,340,'en',
	'http://pbs.twimg.com/profile_images/525366948750983168/ox2JKS4m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ugh😔',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	863025894
);
INSERT INTO twit_user VALUES (
	'2868252068',
	'jeer',
	'gotjeer7',
	'South Korea',
	'朴珍榮 Park Jin-young - a vocal of Got7 - Roleplayer - September 22, 1994 #JYPAllNation',
	459,0,'Mon Oct 20 22:36:51 +0000 2014',13273,0,'en',
	'http://pbs.twimg.com/profile_images/524329137486315520/JgbXUY4W_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bbynanaz: ::xlhーluhver luhverpool: RT Choijinri26: “namthyx: ::bangtanpijim: #openfollow for rp esp jimin biased. Quote.::”::',
	'<a href=::http://www.cangkruk.com:: rel=::nofollow::>gotjeerauto</a>',
	2868252068
);
INSERT INTO twit_user VALUES (
	'2428553808',
	'▪ Aina F ▪',
	'ainafarisha321',
	'',
	'Weeklychris • ikan keli • Noor • Aina • Farisha• Bt • Ibrahim •',
	319,764,'Sat Apr 05 08:36:50 +0000 2014',195,764,'en',
	'http://pbs.twimg.com/profile_images/498385726090661888/L-wQW_Nc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'one person unfollowed me // automatically checked by http://t.co/CDbQMIAuC0',
	'<a href=::http://fllwrs.com:: rel=::nofollow::>fllwrs</a>',
	2428553808
);
INSERT INTO twit_user VALUES (
	'69055613',
	'vanessa ribeiro',
	'vanessadolzane',
	'manaus',
	':)',
	417,206,'Wed Aug 26 18:27:14 +0000 2009',1395,206,'pt',
	'http://pbs.twimg.com/profile_images/490481755108171776/RvBkni8K_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@nossarafaeol que besteira',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	69055613
);
INSERT INTO twit_user VALUES (
	'1059239580',
	'block dou rt dps',
	'horanzalea',
	'bia cher ane yas',
	'me serve vadia',
	1330,950,'Fri Jan 04 01:37:58 +0000 2013',42167,950,'pt',
	'http://pbs.twimg.com/profile_images/513830319297146880/D2twWgDG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @hitstylrs: louis: ``danger`` 
claro, perigoso em derrubar os forninhos #EMABiggestFans1D http://t.co/wv6iULsUPC',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1059239580
);
INSERT INTO twit_user VALUES (
	'2566127857',
	'Fer::12',
	'FernandoJvm12',
	'EASM3 , GSTG3 , SGVS',
	'Futbolista#5 Mi12Eterno:$',
	200,620,'Fri Jun 13 23:56:03 +0000 2014',1354,620,'es',
	'http://pbs.twimg.com/profile_images/512372330689855488/syEITzfY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Teamoooooby;Gsgt😍.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2566127857
);
INSERT INTO twit_user VALUES (
	'2869543536',
	'Lucid Alo',
	'Alopology',
	'',
	'Duo=@Zyncology Jump off shit and spin for @OurLucidMinds! Im not good. Fuck BO2!!! GT at the moment:iiAlo',
	73,235,'Tue Oct 21 22:09:12 +0000 2014',252,235,'en',
	'http://pbs.twimg.com/profile_images/524688477297070080/-eDxwIHo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@iThrowC4s @Haillistic ....',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2869543536
);
INSERT INTO twit_user VALUES (
	'232649959',
	'FIRE EVVVERYBODY',
	'JstKeepScrollin',
	'Home Chillin...',
	'My tweets are forever like hieroglyphics',
	1649,1109,'Fri Dec 31 20:13:17 +0000 2010',157817,1109,'en',
	'http://pbs.twimg.com/profile_images/524620522823221249/qMd5obg5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@_iceANDstorms: 11. Ass or Titties?::TITTAYS',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	232649959
);
INSERT INTO twit_user VALUES (
	'248469572',
	'nat',
	'mdnghtzayn',
	'27.04.14 wwat',
	'nh+hs',
	10237,6607,'Mon Feb 07 02:12:25 +0000 2011',39292,6607,'es',
	'http://pbs.twimg.com/profile_images/526517716425773056/eT-Rc4jl_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	248469572
);
INSERT INTO twit_user VALUES (
	'1033432819',
	'Cande',
	'CandeMolina27',
	'',
	'Respira, espera, levantate sin prisa...',
	291,296,'Mon Dec 24 20:42:39 +0000 2012',9003,296,'es',
	'http://pbs.twimg.com/profile_images/521438513879719936/cMQdSDAK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MarianoMRusso: Que lindo vientito',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	1033432819
);
INSERT INTO twit_user VALUES (
	'42614710',
	'Blake Beckham',
	'BlakeBeckham7',
	'Tucson, Az',
	'Great things are done by a series of small things brought together - Vincent Van Gogh',
	115,145,'Tue May 26 12:31:43 +0000 2009',28647,145,'en',
	'http://pbs.twimg.com/profile_images/492166249372454913/Rkx4MCEx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BBTN: Young @Cardinals outfielder Oscar Taveras died in a car accident Sunday in the Dominican Republic. He was only 22. http://t.co/Ha…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	42614710
);
INSERT INTO twit_user VALUES (
	'831482586',
	'Andrea Pèrez.  ',
	'iUnaPerezMas',
	'Venezuela.',
	'19/2014♥/Jjsv.',
	140,136,'Tue Sep 18 17:15:07 +0000 2012',431,136,'es',
	'http://pbs.twimg.com/profile_images/525723619804975104/c9ESd83S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@JchecheSoloBra Jjsv.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	831482586
);
INSERT INTO twit_user VALUES (
	'2578858658',
	'シェフのお料理レシピ♪',
	'syehunooryouri',
	'',
	'誰でもカンタンにできちゃうシェフのお手軽レシピをツイートします♪気に入ったらRT・フォローお願いします。',
	1629,662,'Fri Jun 20 15:35:32 +0000 2014',76059,662,'ja',
	'http://pbs.twimg.com/profile_images/482186852703547393/vFUl0gOS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @maccya_sweet: アップの写真をどうぞ☆
いただきま〜す！ http://t.co/E3hR2Ahz2q',
	'<a href=::https://www.google.co.jp:: rel=::nofollow::>テニス</a>',
	2578858658
);
INSERT INTO twit_user VALUES (
	'998964654',
	'1D AF',
	'disneyziallx',
	'Another World ∞',
	'Some people are worth melting for.',
	3124,2249,'Sun Dec 09 09:54:17 +0000 2012',34380,2249,'de',
	'http://pbs.twimg.com/profile_images/511182048581537792/whS2JMHV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Vevo: #Top3onVevo Today: 3. @Meghan_Trainor http://t.co/ebCpUUFs0J 2. @5SOS http://t.co/3QJwzXOpqf 1. @onedirection http://t.co/SqV6YKp…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	998964654
);
INSERT INTO twit_user VALUES (
	'111088371',
	'say cheese and die!',
	'liam_mckenna',
	'Charlottetown, PEI',
	'wisecracker. cartoonist. all of my opinions are your own.',
	369,563,'Wed Feb 03 19:38:58 +0000 2010',2632,563,'en',
	'http://pbs.twimg.com/profile_images/1671832437/Liam_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@davyaydo you think ::Jian Koresh-i:: would be a fair and humorous tweet',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	111088371
);
INSERT INTO twit_user VALUES (
	'2610901753',
	'Secret',
	'fatosecret',
	' ✔ Verified Account',
	'O aplicativo que veio para semear a discórdia.',
	20186,46,'Tue Jul 08 02:35:10 +0000 2014',17554,46,'pt',
	'http://pbs.twimg.com/profile_images/505808550556225536/At-nl3-g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MeuLadoSafado: se apaixonar é uma coisa, se foder é igualzinho! 👌',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2610901753
);
INSERT INTO twit_user VALUES (
	'2828882961',
	'Sophie✌️',
	'omgso5sos',
	'',
	'ew, but you;;re not 5sos~',
	185,551,'Tue Oct 14 03:28:35 +0000 2014',28,551,'es',
	'http://pbs.twimg.com/profile_images/526539317540569090/GnpLjSCs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne MARRY ME',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2828882961
);
INSERT INTO twit_user VALUES (
	'337123001',
	'Paige. ',
	'PaigePlatter',
	'',
	'Not much to give, but a heart to promise. Just a stoner with dreams.',
	217,230,'Sun Jul 17 13:57:48 +0000 2011',1427,230,'en',
	'http://pbs.twimg.com/profile_images/526524061833498624/lxG-PiuC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TaurusIsMagic: #Taurus got a million-dollar mind with a foodstamp temper.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	337123001
);
INSERT INTO twit_user VALUES (
	'19496182',
	'Cowboys Nation',
	'CowboysNation',
	'Dallas, TX',
	'Blogging Cowboys Football. News and analysis. #DallasCowboys #CowboysNation #BlueStarTimes Managed by @BlueStarTimes ***** http://BlueStarTimes.com',
	12910,336,'Sun Jan 25 17:33:56 +0000 2009',22813,336,'en',
	'http://pbs.twimg.com/profile_images/521773837738713088/9s7Qa-ko_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@DC4L88 Since you converse with @CowgirlCas22, you should see this: http://t.co/4VUvQkEqzy',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	19496182
);
INSERT INTO twit_user VALUES (
	'2828750079',
	'Charles Cook',
	'cookieboy380',
	'',
	'null',
	13,16,'Tue Oct 14 01:45:25 +0000 2014',1133,16,'en',
	'http://pbs.twimg.com/profile_images/521877815453831169/puQVjIh-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @EwingOilStore: Facebook profile for David Levy (head of Turner):
https://t.co/XxsyPiwgxv
Encourage him to reconsider. #WWJRD #SaveDALLAS',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2828750079
);
INSERT INTO twit_user VALUES (
	'1559443267',
	'mariéssss',
	'__kmrr15',
	'',
	'Sumate, murtiplicate, divite y restate pal;; carajo| East Coast, Puerto Rico',
	358,170,'Mon Jul 01 02:20:59 +0000 2013',16307,170,'es',
	'http://pbs.twimg.com/profile_images/525813055394177024/CUIaQ53N_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'los otros días pase por la mesa y Tarta estaba ayi sentado y tenía como 6 nenas al rededor y me miró como que ::Sácame de aquí puñeta::',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1559443267
);
INSERT INTO twit_user VALUES (
	'76146410',
	'Gweneviere',
	'JenKris75',
	'Boston',
	'21+ please.mom,wife,music/book series nut,LOVE everything British!! Love  livin in hoodies chucks n jeans TD1 awareness',
	601,1025,'Mon Sep 21 21:15:49 +0000 2009',21060,1025,'en',
	'http://pbs.twimg.com/profile_images/496604774968864768/otW4W78C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @cserratos: Things are gonna get crazy tonight. #TWD',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	76146410
);
INSERT INTO twit_user VALUES (
	'2609687275',
	'2014花火大会情報',
	'2014_hanabi',
	'',
	'2014年全国の花火大会の情報です。',
	274,321,'Mon Jul 07 13:55:00 +0000 2014',1010,321,'ja',
	'http://pbs.twimg.com/profile_images/486148984063275010/iSq4l20B_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @gif_anime_pics: クエストを進めて戦場を制覇！

スマホのクオリティを超えた
キレイなグラフィック！
戦略シミュレーションRPG！

⇒http://t.co/EnmSfhS6fx

敵をぶった切る爽快感ハンパないｗ http://t.co/W8cq75B…',
	'<a href=::https://twitter.com/2014_hanabi:: rel=::nofollow::>2014花火大会情報2</a>',
	2609687275
);
INSERT INTO twit_user VALUES (
	'543889060',
	'⚾Quigs⚾',
	'DrewQuigley',
	'',
	'snapchat:drew_quigley',
	864,494,'Tue Apr 03 01:54:51 +0000 2012',9443,494,'en',
	'http://pbs.twimg.com/profile_images/516364829154500608/G-cUyFr7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CullanOShea: “@SportsCenter:Top prospect Oscar Taveras was killed in a car accident in the Dominican Republic.
He wasjust 22 years old.…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	543889060
);
INSERT INTO twit_user VALUES (
	'27998918',
	'Cary Hunley',
	'CHunley1234',
	'',
	'null',
	25,1176,'Tue Mar 31 23:51:33 +0000 2009',299,1176,'en',
	'http://pbs.twimg.com/profile_images/501848630706589696/cZtRqX1z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ddahl21: Very shocked and saddened to hear the news about Oscar Taveras. My thoughts and prayers go out to his family and friends #RIPO…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	27998918
);
INSERT INTO twit_user VALUES (
	'2301691364',
	'sinomy.',
	'Itssinnomy',
	'',
	'seattle, wa .',
	218,184,'Mon Jan 20 16:45:34 +0000 2014',30132,184,'en',
	'http://pbs.twimg.com/profile_images/526095434125955072/Ryv6P66O_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ttupua_: “@khaleaf_da_don: Grow together, or be apart 😫 http://t.co/mQZCJUSLhG”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2301691364
);
INSERT INTO twit_user VALUES (
	'319401884',
	'Faleesha D.',
	'faleeshaaa__',
	'DSU18 T&F',
	'Mr.&Mrs.Collier killing shit ❤',
	1636,993,'Sat Jun 18 02:01:47 +0000 2011',30097,993,'en',
	'http://pbs.twimg.com/profile_images/523969020044005377/1Ao4Ye3M_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Sonnn why ain;;t nobody show me this?! http://t.co/2meiwvZXTw',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	319401884
);
INSERT INTO twit_user VALUES (
	'20843894',
	'Pat McGonigle KSDK',
	'PatMcGonigleNBC',
	'St. Louis, MO',
	'Anchor/reporter KSDK, St. Louis, MO. Father of 5, Saint Louis University ;;94.',
	4355,1154,'Sat Feb 14 12:13:42 +0000 2009',5964,1154,'en',
	'http://pbs.twimg.com/profile_images/378800000452187871/c1df2b4f6b4bcade8df23681425f7f51_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RIP Oscar Taveras, #STLCards prospect-who hit this HR to help tie NLCS w/ Giants 2 wks ago, dead at 22, car ax in DR http://t.co/ppdXjAm9zh',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	20843894
);
INSERT INTO twit_user VALUES (
	'214724126',
	'エンリコプッチ神父',
	'fatherpucci6',
	'',
	'プッチ神父のbotです。
今は1時間ごとのつぶやきになっていますが他の人物との絡み次第で変えようと思います。
自動でフォローするようになっているはずなのでDMくれたらセリフ追加修正できるかもです。',
	24,32,'Fri Nov 12 02:23:30 +0000 2010',12462,32,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'無償の愛とは……天国へ行くための『見返り』だからだ',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	214724126
);
INSERT INTO twit_user VALUES (
	'2470091485',
	'Dyla Cavazos Rojas',
	'deecavazosrojas',
	'',
	'null',
	0,22,'Wed Apr 30 00:38:45 +0000 2014',7,22,'en',
	'http://pbs.twimg.com/profile_images/461303947832348672/RoBacKmU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@WalkingDead_AMC   Come on Morgan;  where are you?',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2470091485
);
INSERT INTO twit_user VALUES (
	'923293832',
	'ann gee',
	'itsmeangiee_',
	'Cebu',
	'Pretty cool.',
	711,1989,'Sat Nov 03 14:09:31 +0000 2012',16744,1989,'en',
	'http://pbs.twimg.com/profile_images/511647481260568576/CRwuWtSX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@milesocampo Goodmorning :)))',
	'<a href=::http://store.ovi.com/content/256340:: rel=::nofollow::>Twitter for Nokia S40</a>',
	923293832
);
INSERT INTO twit_user VALUES (
	'2671128066',
	'ろりろりらろり',
	'___sally24___',
	'',
	'さりさんです。ぽんこつ美容師です。時々アクセサリーこさえてます。グミとアイスがあれば生きて行けます。頭痛いです。お腹痛いです。雑魚です。新潟が大好きです。',
	48,109,'Wed Jul 23 00:32:52 +0000 2014',2149,109,'ja',
	'http://pbs.twimg.com/profile_images/519839947738468352/bgeh_Bzj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'晴れてきた！
晴れ女なめんな！',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2671128066
);
INSERT INTO twit_user VALUES (
	'434852279',
	'DADAwsm',
	'DadarenFerrer',
	'Philippines',
	'POGI? Nahh. I;;m Awesome | Altar Server | Playing Basketball, Pointguard | League of Legends | Any role | Catherinean | Senior| Relatetors | 15 |',
	348,324,'Mon Dec 12 11:45:07 +0000 2011',19548,324,'en',
	'http://pbs.twimg.com/profile_images/517314382364041216/-ZQe7u6h_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::I;;m still thinkin about you...::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	434852279
);
INSERT INTO twit_user VALUES (
	'102407657',
	'jean willis-smith',
	'jeanwillissmith',
	'Troy,OH',
	'My Mission is helping people make money while they are getting healthy!',
	32,32,'Wed Jan 06 16:02:36 +0000 2010',6602,32,'en',
	'http://pbs.twimg.com/profile_images/472159038025637888/G0sEoRzf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'iQLife: Social Media With Reward Points &amp; Residual Income
This NEW Social Sharing platform will start a movement... http://t.co/t2QRLIx4Ay',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	102407657
);
INSERT INTO twit_user VALUES (
	'2181249590',
	'Moe',
	'_MoeDot',
	'',
	'#Loyalty #Honesty #Respect nutin MORE nutin LESS!!',
	45,79,'Fri Nov 08 01:53:16 +0000 2013',1001,79,'en',
	'http://pbs.twimg.com/profile_images/378800000709497391/ae6a3a8ee33124abc6866a6aa38ccd63_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I always get the last laugh...',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2181249590
);
INSERT INTO twit_user VALUES (
	'619268394',
	'Franc(Th)e(Rock)',
	'France__Tweets',
	'',
	'Can you smell what The Rock is cooking? If yes or no follow me.',
	390,251,'Tue Jun 26 15:46:36 +0000 2012',16583,251,'en',
	'http://pbs.twimg.com/profile_images/487831039801192448/tQ5NMp9m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WWECreative_ish: 2002 brought us @JohnCena, @RandyOrton &amp; Brock Lesnar so it makes sense we dumped OVW. #HIAC',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	619268394
);
INSERT INTO twit_user VALUES (
	'1648965966',
	'ﾕﾏｽｹ',
	'happinessymsk',
	'',
	'ｱﾆﾒ/声優/ｶﾗｵｹ/お洋服/古着/ｽｲｶ/息子/大泉洋                                        変態変人きちがい人妻子持ちとは私のこと。                   IWATE  ⇒  CHIBA   WEAR ⇒ @xxxymskxxx',
	196,65,'Tue Aug 06 00:04:21 +0000 2013',2709,65,'ja',
	'http://pbs.twimg.com/profile_images/503907981797253120/EGf7F1IL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@kdk125me 
ありがとうございます☺
そう言っていただけて嬉しい///
赤ちゃんともども、これから頑張ります🌠',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1648965966
);
INSERT INTO twit_user VALUES (
	'100923963',
	'✿HAZELTEH✿',
	'Rebellie_Fiori',
	'•••莉婷♡•••',
	'ℱℴℓℓℴω Instragram : rosey_tingx ♡___ ;;;;Anxiety kills me on a daily basis .;;;;_________ ❁16|Tattoo;;s|Sunflowers|LukeHemming❁',
	328,276,'Fri Jan 01 06:57:30 +0000 2010',9914,276,'en',
	'http://pbs.twimg.com/profile_images/526296485848031232/G8yjbbE__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'He told all girls he loved her , from names starting from A to Z. He told all girl their beautiful in his eyes now do u believe it?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	100923963
);
INSERT INTO twit_user VALUES (
	'172491109',
	'TrapGawdess ✨',
	'TayLAnotTayLOR_',
	'.',
	'Live. Love. Laugh. ❤️',
	557,568,'Thu Jul 29 21:06:07 +0000 2010',37235,568,'en',
	'http://pbs.twimg.com/profile_images/501519936033161216/uxPEMStk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@luhtootybooty you know I am chy 👌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	172491109
);
INSERT INTO twit_user VALUES (
	'132039413',
	'Ocala News',
	'OcalaBuzz',
	'Ocala, FL',
	'Curating the best media feeds in Ocala. A city in http://TheBreakingNewsNetwork.com, a community service media network supporting civic causes and local arts',
	1734,263,'Mon Apr 12 03:22:15 +0000 2010',36164,263,'en',
	'http://pbs.twimg.com/profile_images/1129714508/09_23_Ocala_Buzz_FB_Tw_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Driver safety classes available to seniors: SUMMERFIELD — Walt Yesberg, AARP Driver Safety Program instructor said… http://t.co/NbdMAbn6C8',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	132039413
);
INSERT INTO twit_user VALUES (
	'1930781166',
	'ﾏｲﾏｲ蛾꒰()꒱',
	'MaaaiMai_ga',
	'人と違ったｼﾓﾈﾀを。',
	'tトf✝△東京ｾｯｸｽ△ﾌｧﾐﾘ-in北✝処女JK✝since0410*',
	247,263,'Thu Oct 03 13:52:18 +0000 2013',12019,263,'ja',
	'http://pbs.twimg.com/profile_images/523047229020327936/cRxp-GQ2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'フォロワーさん知らない人が何人かいてジワる',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1930781166
);
INSERT INTO twit_user VALUES (
	'2587120237',
	'柏木由紀♡ゆきりん劇場',
	'AKByukirin45',
	'',
	'沙織１６歳(・∀・) AKB48の柏木由紀さんのファンです(#^.^#) AKB48、ハロプロなど、女性アイドルがダイスキな人、相互フォロー歓迎オーケー♪ 男女問わず、お友達も募集中(・∀・)',
	223,326,'Wed Jun 25 08:09:58 +0000 2014',198,326,'ja',
	'http://pbs.twimg.com/profile_images/524849052202971136/UJu5ntSC_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【速報(*ﾟ▽ﾟ*)】 浅田真央 羽生結弦と結婚... 高橋大輔は？ 横浜中華街デートの真相とは... http://t.co/RRMAKaok13',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2587120237
);
INSERT INTO twit_user VALUES (
	'566213925',
	' G • A • ї • L ツ',
	'Gailaaa_12',
	'',
	'Gail Racuya Fabrigas | 14years old | Simple | Sweet  | :)) Follow me also on Instagram @gailalushii_12',
	713,239,'Sun Apr 29 09:02:15 +0000 2012',4289,239,'en',
	'http://pbs.twimg.com/profile_images/518591092531265537/UNbheTg8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AMPinoyQuotes: REAL TALK: Masakit isiping hindi ka mahalaga sa taong palagi mong inuuna.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	566213925
);
INSERT INTO twit_user VALUES (
	'2687097552',
	'أحمد اليحمدي',
	'150276Lev',
	'',
	'null',
	12,2,'Mon Jul 28 09:38:23 +0000 2014',4095,2,'en',
	'http://pbs.twimg.com/profile_images/523737251709083648/AuVBwnU0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @almatjr: 1 ➊هاشتاغ نشط #كتاب_قرأته_أكثر_من_مرة ➋ الأكثر انتشاراً @almatjr➌اعلان مجاني http://t.co/Fj0rfe4GXN ➍ بيع متابعين☻⤵ http://t.c…',
	'<a href=::http://www.d33n.com/:: rel=::nofollow::>daan test</a>',
	2687097552
);
INSERT INTO twit_user VALUES (
	'41984227',
	'羽由バユー',
	'b4yu_wow',
	'deep inside',
	'husband to wife, father to son, follower to Allah SWT n prophet Muhammad SAW....',
	361,437,'Sat May 23 05:53:17 +0000 2009',3469,437,'en',
	'http://pbs.twimg.com/profile_images/494336918226616320/u-5tJQj-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @YourHistoryPics: Audrey Hepburn on her bike. http://t.co/P2jeabFGwv',
	'<a href=::http://www.myplume.com/:: rel=::nofollow::>Plume for Android</a>',
	41984227
);
INSERT INTO twit_user VALUES (
	'2802694446',
	'موجب حائل',
	'gvfyijc12',
	'',
	'الي مو جاد لا يجي',
	70,401,'Thu Sep 11 00:44:35 +0000 2014',277,401,'ar',
	'http://pbs.twimg.com/profile_images/524749651291828226/jUl2DpGZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dmo23ey: ااااااااااااااحيه  قمة المحنة  لما يبول بفمها http://t.co/5bCwzbUytd',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2802694446
);
INSERT INTO twit_user VALUES (
	'869745302',
	'Nick Nunez',
	'StudMcMuffinTop',
	'New York, NY',
	'I unfollow people in the dead of night.',
	163,160,'Tue Oct 09 11:52:52 +0000 2012',2567,160,'en',
	'http://pbs.twimg.com/profile_images/2698067229/887f6f18e64440a3076d90d854047a4f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @DCameronFG: The second-to-last at-bat of Oscar Taveras’ career. Glad he got that moment. http://t.co/oU3Xtt7XdV',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	869745302
);
INSERT INTO twit_user VALUES (
	'170476236',
	'Stefani Vojicic',
	'vojicicc',
	'Imbituba - Brasil',
	'Se você me deseja o mal, eu te desejo amor.... ☮ ❤',
	513,196,'Sat Jul 24 23:21:42 +0000 2010',12775,196,'pt',
	'http://pbs.twimg.com/profile_images/519460051934011393/1k1YdnwL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Jorge e mateus ganharam no fantástico, como a melhor dupla e a mais querida do Brasil!!!!! Eles merecem 👏👏👏👏👏❤️❤️❤️',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	170476236
);
INSERT INTO twit_user VALUES (
	'352054898',
	'Hannah Hewett',
	'palindromhewett',
	'Emporia',
	'Live everyday like you;;re gonna get free pie. 
#freepiefriday',
	188,177,'Wed Aug 10 02:42:25 +0000 2011',2346,177,'en',
	'http://pbs.twimg.com/profile_images/378800000694298787/a809e1caf081033c0f19de229428a371_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ImmortalDixon: Is this Pretty little Liars or The Walking Dead?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	352054898
);
INSERT INTO twit_user VALUES (
	'1003952875',
	'ごりぱ',
	'goripa_ys',
	'',
	'どーもありがとうございます、たいぽんFilmsのごりぱです。タバコよりもシーシャが好きなパーティー野郎で、なんだかんだHip Hop好きです。たまにツイキャスします、コメントしてくれたらもうお友達。なご猫さん推しです、ファンです。階級は永遠の二等兵、ちぃっす。',
	6420,786,'Tue Dec 11 12:31:53 +0000 2012',12307,786,'ja',
	'http://pbs.twimg.com/profile_images/514713356704309248/MfSKF2Fc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @__maichomuuuu: 全員まいちょむって書けてないところがまたまたすきです！！貧乳は忘れてくだぱい、、。最高の誕生日プレゼントでした！！また必ず会いに行きます。！！ http://t.co/auvhfbM0Ih',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1003952875
);
INSERT INTO twit_user VALUES (
	'2795261148',
	'「sensləs」',
	'kurodays',
	'Hikikomori',
	'I can live neither with you, nor without you ♡ @shirodays is the aoba to my sei ♡
『spoilers everywhere』',
	45,121,'Sun Sep 07 04:19:15 +0000 2014',2446,121,'en',
	'http://pbs.twimg.com/profile_images/523100556173115393/YQBI1Sen_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@juunkos @hk_miho please no arguing children. You are seniors now',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2795261148
);
INSERT INTO twit_user VALUES (
	'83244696',
	'Luis R',
	'LuisRiot',
	'Maracaibo, ZU',
	'El Rey de la Casa destronado por un loro. Coordinador @ProInclusionVP Zulia. Mandocas Lover. Smirnoff Lover.',
	617,209,'Sat Oct 17 23:21:03 +0000 2009',65822,209,'en',
	'http://pbs.twimg.com/profile_images/522477306271391744/6GkU6eIT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'La vida te da señales, señales te da la vida.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	83244696
);
INSERT INTO twit_user VALUES (
	'2815432435',
	'Барсковa Вероника',
	'Audra116_OR',
	'',
	'Злоречивый язык выдает безрассудного.',
	0,0,'Wed Sep 17 18:39:57 +0000 2014',1,0,'en',
	'http://pbs.twimg.com/profile_images/526542496063422464/34g8jc75_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Воспитать ребенка - не выпустить цыпленка.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2815432435
);
INSERT INTO twit_user VALUES (
	'1565489179',
	'Josaphat Gorner',
	'josaphat_gorner',
	'Ridgeway town, VA, USA',
	'we can give to you 10,000 HIGH Quality Followers to your account. Don;;t need your password, More Info :  http://goo.gl/Bt1SHM',
	112,551,'Wed Jul 03 10:52:18 +0000 2013',26,551,'en',
	'http://pbs.twimg.com/profile_images/525186292233936897/V0BxkH3g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::Harmony is pure love, for love is a concerto::',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1565489179
);
INSERT INTO twit_user VALUES (
	'1537726951',
	'#1 uan tour stan',
	'uantourIouis',
	'2/4 ✧ katie✧',
	'@zaynmalik: The show was great thanks Washington !! :)',
	11461,79,'Sat Jun 22 01:45:40 +0000 2013',94720,79,'en',
	'http://pbs.twimg.com/profile_images/526400385188384768/25m2jA7e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne hello liam how are you',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1537726951
);
INSERT INTO twit_user VALUES (
	'2273582912',
	'Ask WWE Network',
	'AskWWENetwork',
	'Everywhere',
	'It;;s Way Over The Top! 
Tweet your questions about @WWENetwork to @AskWWENetwork.',
	12808,7034,'Thu Jan 02 21:33:05 +0000 2014',27567,7034,'en',
	'http://pbs.twimg.com/profile_images/429087662079614978/FhPLMKYc_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@InVisionXXX Hello. We apologize for any frustration. Can you please clarify what you are referring to? ^RA',
	'<a href=::http://www.oracle.com:: rel=::nofollow::>Oracle Service Cloud</a>',
	2273582912
);
INSERT INTO twit_user VALUES (
	'2837706880',
	'Josiane',
	'JosyGalo',
	'belo horizonte',
	'null',
	53,111,'Sun Oct 19 22:19:36 +0000 2014',31,111,'pt',
	'http://pbs.twimg.com/profile_images/526153255433166850/RyQEVdOo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PastorMalafaia: Lamento dizer que, desde os tempos de Cristo, o povo prefere ladrão. Soltaram Barrabás e condenaram Jesus. Hoje, não é …',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2837706880
);
INSERT INTO twit_user VALUES (
	'1929264804',
	'Steal My Girl❤☯',
	'dbany_rad',
	'4.Privet Drive, Little Whingin',
	'VAS HAPPENIN!♡ ϟI;;m Pottericaϟ and Directioner♡9 ¾ ♡T1D ♡»Liam Payne»,ツLouis Tomlinsonツ,♣Niall Horan♣,☯Zayn Malik☯,★Harry Styles★♡†Alabama Capital*-*†,TWL♬SWS♬',
	227,785,'Thu Oct 03 04:25:03 +0000 2013',462,785,'es',
	'http://pbs.twimg.com/profile_images/525822742571278336/LR72Jp2s_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1929264804
);
INSERT INTO twit_user VALUES (
	'249464510',
	'Joshua Buchek',
	'Buchek07',
	'Ohio',
	'It is in your moments of decision that your destiny is shaped.                                                            Amanda is bae',
	417,387,'Wed Feb 09 03:00:08 +0000 2011',5572,387,'en',
	'http://pbs.twimg.com/profile_images/521359128292519937/MNupabHv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FootieJokes: What an amazing penalty!! https://t.co/GsAOzEwQRB',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	249464510
);
INSERT INTO twit_user VALUES (
	'942433579',
	'Cassidy Kiel',
	'CassidyKiel',
	'',
	'Forge ;;16',
	372,323,'Sun Nov 11 23:04:42 +0000 2012',8656,323,'en',
	'http://pbs.twimg.com/profile_images/522489680244523009/nYlFQ9z-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I think I;;ll just stick with penguin instead of snow clothes so I don;;t die of heat stroke',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	942433579
);
INSERT INTO twit_user VALUES (
	'2230491805',
	'Briiii',
	'briii_rosado',
	'',
	'briiiiii',
	553,272,'Wed Dec 04 21:02:22 +0000 2013',4227,272,'en',
	'http://pbs.twimg.com/profile_images/525062517341827072/2AVCy64G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Some really interesting costumes coming through 😏',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2230491805
);
INSERT INTO twit_user VALUES (
	'37675682',
	'Kristofer Jubinville',
	'NickyDeemus',
	'Naples, Florida/ ManchVegas,NH',
	'Award winning chef and restauranteur, microbrew enthusiast, cigar afficionado, music hermit, wrestling freak, broken creation. Either love it or leave it alone.',
	282,747,'Mon May 04 14:55:31 +0000 2009',3374,747,'en',
	'http://pbs.twimg.com/profile_images/378800000733677845/74fa167f2a621f803a8456ea7de5bac9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @BookOProverbs: Pray until your situation changes. Miracles happen every day, so never stop believing. God can change things very quickl…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	37675682
);
INSERT INTO twit_user VALUES (
	'405521344',
	'shone',
	'ClaireCdt',
	'fantasyland in disneyland',
	'rien de mieux qu;;aimer',
	248,97,'Sat Nov 05 12:39:17 +0000 2011',9360,97,'fr',
	'http://pbs.twimg.com/profile_images/526152580137615360/T_W8xR7x_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'je suis hs mais je veux pas lacher...',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	405521344
);
INSERT INTO twit_user VALUES (
	'2787467619',
	'never say never *_*',
	'1235_belieber',
	'',
	'null',
	58,24,'Sat Sep 27 17:17:45 +0000 2014',2460,24,'es',
	'http://pbs.twimg.com/profile_images/522543420959502337/RDmh4GJz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mariemilia_swag: justin pronto te conoceré creeré por mis sueños que son tu y mi musica especialfotos/30   #EMABiggestFansJustinBieber …',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2787467619
);
INSERT INTO twit_user VALUES (
	'17006077',
	'rosenda',
	'rosenda',
	'Texas',
	'news chica w/love for  documentaries & life on water The views expressed herein are the personal views of the author.',
	1880,2008,'Mon Oct 27 20:13:40 +0000 2008',12207,2008,'en',
	'http://pbs.twimg.com/profile_images/66244535/rosenda_rios_bio_pic_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @el_fenomeno_18: Thanks for all the fan support!',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	17006077
);
INSERT INTO twit_user VALUES (
	'1396593997',
	'samouraï | 4755 | ㊙',
	'ArnaudKhoury',
	'kik | ig | snap | Arnaudkhoury',
	'LAW4EVER |  CODE 4755 ✨| Alinah ❤',
	846,76,'Thu May 02 08:11:27 +0000 2013',24243,76,'fr',
	'http://pbs.twimg.com/profile_images/523434436894162944/RDeCwJxV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@DJSeade Mddddddr t un vrai connard',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1396593997
);
INSERT INTO twit_user VALUES (
	'720714491',
	'نوره المطلقه',
	'SaibNew',
	'',
	'قحبه تحت الطلب',
	32454,60,'Fri Oct 18 12:14:47 +0000 2013',168661,60,'ar',
	'http://pbs.twimg.com/profile_images/510701436758261761/vx5_jOqx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ممحونه تشتهي زب فحل ينيك طيزها http://t.co/OqAf78YbbE #جنس #نيك #ممحونه #اغتصاب #سكسيه #مص #لحس #دياثه #تحرر #كس #زب #طيز #شرموطه',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	720714491
);
INSERT INTO twit_user VALUES (
	'2305493365',
	'Daniela Aguirre.',
	'DaniAguirre_100',
	'',
	'Si supieras cuanto te ama DIOS no podrías no amarlo♥',
	152,124,'Wed Jan 22 21:27:40 +0000 2014',3290,124,'es',
	'http://pbs.twimg.com/profile_images/516432216852037632/0pD_2gf4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@memobdg @SofiaMqz frustrada mucho bastante,demasiado:(',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	2305493365
);
INSERT INTO twit_user VALUES (
	'972727357',
	'siall',
	'stylesavinon',
	'God above all',
	'ta achando que ser harry girl é fácil? experimenta ser narry girl então :):):):):)',
	1771,702,'Mon Nov 26 21:10:36 +0000 2012',53433,702,'pt',
	'http://pbs.twimg.com/profile_images/525732887262285824/-W13HkwD_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tiomlinson: @Real_Liam_Payne 

Hey Liam,
STEAL MY GIRL IS AMAZING
we, brazilians, we are so excited to new tour 👌💪😍
follow me, I 💚 YOU
…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	972727357
);
INSERT INTO twit_user VALUES (
	'368945327',
	'Josh Garcia',
	'JoshGengstout',
	'S4',
	'null',
	59,195,'Tue Sep 06 14:06:19 +0000 2011',1194,195,'en',
	'http://pbs.twimg.com/profile_images/3377446716/62bd3cb778a21fdab93a9f58ed6da1d9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#taintedmeat',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	368945327
);
INSERT INTO twit_user VALUES (
	'383415373',
	'HUNNAGANG SLIM',
	'HG_SLIM',
	'',
	'Small xirxle #AMNOG #Greenlightgang FAM FIRST ‼️Champion Lyfe ‼️#NAHFR WH812p‼️ WH1912p‼️ FREE MONSTA✊ FREE LAVA',
	456,291,'Sat Oct 01 20:58:47 +0000 2011',3388,291,'en',
	'http://pbs.twimg.com/profile_images/513423756430430209/Zro7LP-J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AMNOG_Tay @SoWhatImPoppin 😂😂We champs we ion beef wit eachothas lml',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	383415373
);
INSERT INTO twit_user VALUES (
	'18978172',
	'CWLOVER',
	'CWLOVER',
	'',
	'null',
	0,2,'Wed Jan 14 14:42:57 +0000 2009',3546,2,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'I can go Alice;;s Room! Have you already discovered this location? http://t.co/hil1vNFsWn #iPad #iPadGames #GameInsight',
	'<a href=::http://www.game-insight.com/:: rel=::nofollow::>Mirrors of Albion</a>',
	18978172
);
INSERT INTO twit_user VALUES (
	'417111398',
	'maria',
	'styIesjournal',
	'',
	'if you hate me, i probably hate you more',
	3904,693,'Sun Nov 20 14:55:34 +0000 2011',24065,693,'en',
	'http://pbs.twimg.com/profile_images/492480250983358465/o1uqsGwV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne baby',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	417111398
);
INSERT INTO twit_user VALUES (
	'570312623',
	'Sєяяαทѳ -',
	'01_Sincero',
	'',
	'null',
	252,97,'Thu May 03 21:48:55 +0000 2012',34882,97,'pt',
	'http://pbs.twimg.com/profile_images/471075902286086144/SMO4R-ed_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @uollace: A filha do pedreiro comprou o mesmo carro que o meu http://t.co/6lmvLhi5ZI',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	570312623
);
INSERT INTO twit_user VALUES (
	'2319827797',
	'mandi ',
	'forninhoVEVO',
	'',
	'SOU LARRY E CAMREN SHIPPER MESMO NAO GOSTOU FAZ TEXTINHO FOFA',
	1645,1499,'Thu Jan 30 23:12:30 +0000 2014',10425,1499,'pt',
	'http://pbs.twimg.com/profile_images/526533027539603456/fqIJCZAr_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'SOU NORDESTINA SIM, NÃO GOSTOU FAZ TEXTINHO NA TIMELINE #SouDoNordesteMesmoEComOrgulho',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2319827797
);
INSERT INTO twit_user VALUES (
	'546113896',
	'Linde',
	'ItsLindee',
	'London',
	'18, Music is my life, basguitar, violin, irish flutes, photography, concerts, festivals, Ed Sheeran, Passenger, Imagine Dragons, Saint Raymond',
	330,683,'Thu Apr 05 16:45:19 +0000 2012',9874,683,'nl',
	'http://pbs.twimg.com/profile_images/526538203113984000/3udZVoFq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ILlittlebirds: Is Ed wearing a hair tie on his wrist? 

Photo cred: @ItsLindee http://t.co/XTJjOJ8RMR',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	546113896
);
INSERT INTO twit_user VALUES (
	'423159119',
	'clancy',
	'liamclancy_',
	'Toronto',
	'Industrialist, philanthropist, bicyclist https://www.youtube.com/watch?v=OJi4bln-hHQ',
	192,147,'Mon Nov 28 04:49:55 +0000 2011',3351,147,'en',
	'http://pbs.twimg.com/profile_images/511302521730527232/nP9vMQQR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KLawlor_10 @_ThomasHickey shots fucking fired',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	423159119
);
INSERT INTO twit_user VALUES (
	'498222192',
	'Théo Vergnaud',
	'theovergnaud_',
	'Bordeaux, France',
	'null',
	76559,11945,'Mon Feb 20 20:30:23 +0000 2012',614391,11945,'fr',
	'http://pbs.twimg.com/profile_images/516345320918089729/gXqcLGfF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ollgburnings New Tyga lyrics song 💖 https://t.co/H3Pb1cMakl',
	'<a href=::http://www.bbotmaker.com/:: rel=::nofollow::>BBotMaker - Bot à mots-clés</a>',
	498222192
);
INSERT INTO twit_user VALUES (
	'158791648',
	'♫DeRon Make Hits♫',
	'Bestbeatstore',
	'Virginia/Worldwide ™ ✈✈',
	'Chase ur passion | Just a dude who likes 2 create | Im having a lil fun with this thing called MUSIC  ➔➔➔  Email: bestbeatstore@gmail.com',
	16753,18865,'Wed Jun 23 17:20:05 +0000 2010',228428,18865,'en',
	'http://pbs.twimg.com/profile_images/2303263071/2015ffzx8u5vl4lbr8gu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Recent poll shows that 90% of ppl go harder n the studio after buying beats from http://t.co/QEtOZ4GEn8   The other 10% buy just to listen',
	'<a href=::http://tweetadder.com:: rel=::nofollow::>TweetAdder v4</a>',
	158791648
);
INSERT INTO twit_user VALUES (
	'331218049',
	'julia ୨୧',
	'w0wharry_',
	'☾ Middle Earth and Narnia ☽',
	'15 . △ @Ashton5SOS мαкєѕ мє нαρρу ωнєи тнє ѕкιєѕ αяє gяєу ▽',
	7072,6175,'Thu Jul 07 20:43:06 +0000 2011',68798,6175,'es',
	'http://pbs.twimg.com/profile_images/525425379700637697/AXDrfnpD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	331218049
);
INSERT INTO twit_user VALUES (
	'2808986486',
	'ملكة الاشواق',
	'Mohmedmohiy203',
	'',
	'null',
	272,262,'Sun Sep 14 07:54:15 +0000 2014',2428,262,'ar',
	'http://pbs.twimg.com/profile_images/511075811718230016/Fs13lkB4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mastafa302: @DE3DLINE فزعتك أتعرض لحملة سبام جزاك الله خير',
	'<a href=::http://www.x-44.net/:: rel=::nofollow::>x-44.net</a>',
	2808986486
);
INSERT INTO twit_user VALUES (
	'384143373',
	'Modern Owner',
	'goSpiralArms',
	'Google Glass',
	'Modern Owner coming to Glass.  Details coming soon.',
	1338,3,'Mon Oct 03 04:31:33 +0000 2011',42296,3,'en',
	'http://pbs.twimg.com/profile_images/492845520717488128/JPce_XMu_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/QpDkgDwIYK NEW WITH TAG GIRLS ::JUMPING BEANS:: SCUBA BLUE HOODED FLEECE JACKET SZ 24 MONTHS http://t.co/LonQSMYoI1',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	384143373
);
INSERT INTO twit_user VALUES (
	'2298371623',
	'please 1/5? :(',
	'girlscouthoran',
	'8•5•14   8•13•14   10•1•14',
	'niall has seen my face and knows that i exist and that;;s all that matters to me',
	8169,5845,'Sat Jan 18 18:50:52 +0000 2014',29000,5845,'en',
	'http://pbs.twimg.com/profile_images/522460907193253888/MfhkwiC__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne be fetus you',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2298371623
);
INSERT INTO twit_user VALUES (
	'1038935179',
	'1side mike mike',
	'dream_chasing35',
	'on a field working',
	'RIP kj',
	389,701,'Thu Dec 27 05:56:52 +0000 2012',14043,701,'en',
	'http://pbs.twimg.com/profile_images/510998620259504128/fmZ_8_59_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TokyoAndVersace @OhThatsIke put it on the gram bra',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1038935179
);
INSERT INTO twit_user VALUES (
	'249498332',
	'Ccan ^^',
	'Ccan_Gomez',
	'Sol&Candu♥',
	'Sol me ama muchisimo♥',
	960,653,'Wed Feb 09 04:56:28 +0000 2011',60612,653,'es',
	'http://pbs.twimg.com/profile_images/520057152858099712/1pDDniUU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RochiCLopez: En un ratoooo a la joda aaa a a  a a (8',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	249498332
);
INSERT INTO twit_user VALUES (
	'957944570',
	'j',
	'niamorzao',
	'brazil',
	'fodas3',
	2784,2466,'Mon Nov 19 17:25:41 +0000 2012',45515,2466,'pt',
	'http://pbs.twimg.com/profile_images/526231207269253120/vucxU-XO_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Some really interesting costumes coming through 😏',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	957944570
);
INSERT INTO twit_user VALUES (
	'227529670',
	'Monica Martín ',
	'monicamartin96',
	'bogota-colombia',
	'si no fuera por la música, habría más razones para volverse loco.
Piotr llich Tchaikovski',
	606,605,'Fri Dec 17 02:24:14 +0000 2010',5810,605,'es',
	'http://pbs.twimg.com/profile_images/525081392481579008/-1mjxQ2G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Te extraño y como si fuera poco tengo frío TT-TT',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	227529670
);
INSERT INTO twit_user VALUES (
	'2163912552',
	'Michella Ramos ',
	'Michelle0825200',
	'México',
	'null',
	110,149,'Wed Oct 30 02:02:48 +0000 2013',2701,149,'es',
	'http://pbs.twimg.com/profile_images/515738002824634368/kH_mE95I_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Louis_Tomlinson: Shitting myself then !! @TheXFactor ! Get in @jwaltonmusic !!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2163912552
);
INSERT INTO twit_user VALUES (
	'67117685',
	'HELLFUCKER ',
	'Belzebutts',
	'Belo Horrorizonte ',
	'Junkie, Demente, Cafetão de puta gore, Criador de Dinossauros e Garganta de ouro da Human Abomination (Death Metal) http://www.lastfm.com.br/user/Morphinagore',
	1169,638,'Wed Aug 19 20:49:55 +0000 2009',35108,638,'pt',
	'http://pbs.twimg.com/profile_images/501740316550909952/TuLGod9U_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RhiitIer: só aceito tomar no cu se tiver vodka misturada',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	67117685
);
INSERT INTO twit_user VALUES (
	'2862727994',
	'Steven rick',
	'Stv_rick',
	'',
	'null',
	11,3,'Sat Oct 18 14:00:16 +0000 2014',6762,3,'en',
	'http://pbs.twimg.com/profile_images/523475061705940992/GfO2mpg9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#GalaxyATIVS #WindowsPhone81 - WindowsCentral reported that the official Windows Phone 8.1 update is only seeding… http://t.co/litevghew0',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	2862727994
);
INSERT INTO twit_user VALUES (
	'2734250893',
	'ひぐらしのなく頃に出題編・番外編',
	'higurashi_banga',
	'',
	'出題編・番外編の台詞を３時間に１度ツイートします',
	427,956,'Fri Aug 15 11:11:16 +0000 2014',2712,956,'ja',
	'http://pbs.twimg.com/profile_images/500239199509827584/exxsdKJm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'俺は具沢山な味噌汁は大好きだ。大根、にんじん、ゴボウにジャガイモ、パワフルな食感とボリューム・・・あぁ・・・その味噌汁、最高だよ。もちろん、味噌汁にご飯は欠かせない！ご飯をぱくぱくと喉にかきこみ、合間に味噌汁をすする。あぁ、よくぞ日本人に生まれけり・・・！！(前原圭一)',
	'<a href=::https://twitter.com/higurashi_banga:: rel=::nofollow::>９０１０</a>',
	2734250893
);
INSERT INTO twit_user VALUES (
	'759376952',
	'Blah ',
	'IgnacioHarrand',
	'Concorcity, Entre Rios',
	'Alumno ejemplar de La Goy. Fan de house y techno, pero el rock nos cae bien a todos.',
	176,259,'Wed Aug 15 13:34:50 +0000 2012',4456,259,'es',
	'http://pbs.twimg.com/profile_images/509327722536251393/INh4_KO-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'El campamento hizo que este trimestre sea diferente',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	759376952
);
INSERT INTO twit_user VALUES (
	'2383690819',
	'Empleo en Valencia',
	'Emple0Valencia',
	'Valencia, España',
	'#Ofertas de #Empleo y #Trabajo en #Valencia',
	804,2002,'Tue Mar 11 13:00:35 +0000 2014',78536,2002,'es',
	'http://pbs.twimg.com/profile_images/443371238761562112/pJRS7v5B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Empleo #Valencia Asesor Comercial / Sueldo Fijo + Comisiones ^: Valencia Empresa con amplio recorrido en el s... http://t.co/yiuec6wRpu',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	2383690819
);
INSERT INTO twit_user VALUES (
	'327765014',
	'Melinda hutton',
	'Cfbdbgxg',
	'',
	'null',
	18,125,'Sat Jul 02 03:28:48 +0000 2011',5115,125,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'I;;ve harvested 1,126 of food! http://t.co/A7HgCYx5A6 #android, #androidgames, #gameinsight',
	'<a href=::http://bit.ly/tribez_itw:: rel=::nofollow::>The Tribez for Android</a>',
	327765014
);
INSERT INTO twit_user VALUES (
	'731188304',
	'denise silva',
	'denises04521901',
	'',
	'null',
	8,35,'Wed Aug 01 18:18:24 +0000 2012',369,35,'pt',
	'http://pbs.twimg.com/profile_images/467872047415427072/n8sZbyvz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eu publiquei uma nova foto no Facebook http://t.co/iHRB2Raves',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	731188304
);
INSERT INTO twit_user VALUES (
	'1555510440',
	'Agus widiantoro',
	'elziwai',
	'JAKARTA',
	'Apabila supir kami ugal-ugalan dan membahayakan keselamatan pengendara lain FOLLOW @G_Braw',
	90,248,'Sat Jun 29 12:10:48 +0000 2013',10099,248,'id',
	'http://pbs.twimg.com/profile_images/477654094186676224/5ruykSrt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@promo_BRI @Samsung_ID hanya di http://t.co/7ZquHt6dMX gue bisa dapet galaxy s5 bonus galaxy s4 dihari terakhir #BRISpecialDeal',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	1555510440
);
INSERT INTO twit_user VALUES (
	'305142026',
	'☆',
	'alice8778',
	'',
	'赤黒☆黄黒ちゃんください(｡-`ω-)ﾁﾘﾘｯ!!!ショタ黒ちゃんのパンツください†┏┛墓┗┓†|o;;ㅁ;;///)',
	239,85,'Wed May 25 18:27:37 +0000 2011',18552,85,'ja',
	'http://pbs.twimg.com/profile_images/526311209973190659/wx1tMjVR_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Ka_Ke_Ru_211 くろぴよさんもうちょいでできまする。
出来たらかける嬢あかぴよさんあげるね。ぜひ使ってあげてください(｀・ω・´)ｷﾘｯ

黄瀬君のような赤司君ってどんな感じ…？それはそれでさらにイケメン(｡ ｰ`ωｰ´) ｷﾗﾝ☆',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	305142026
);
INSERT INTO twit_user VALUES (
	'229346155',
	'NervSoul',
	'NervBot',
	'',
	'日文名：碇シンジ
中译名：碇 真嗣/碇 真治
英文名：IKARI SHINJI
身份：第三适格者/第三新东京市立第一中学2年A班学生
血型：A
生日：6/6
年龄：14
声优：绪方惠美',
	21,29,'Wed Dec 22 05:02:11 +0000 2010',65071,29,'en',
	'http://pbs.twimg.com/profile_images/1196154207/shinji01_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'一日之始，讨厌的一天开始',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	229346155
);
INSERT INTO twit_user VALUES (
	'125381458',
	'Marlboro Light ',
	'PincheMarlboro',
	'Tlacotalpan,Mex',
	'Soy como el amor de tu vida, pero beso más rico             @RicardoArjonaMX 

Contacto/Negocios: jazhiiel.ibarra@gmail.com',
	154409,92370,'Mon Mar 22 16:36:55 +0000 2010',5590,92370,'es',
	'http://pbs.twimg.com/profile_images/489998795757740032/RGtWxnzG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RicardoArjonamx: Sí eres siempre un error entonces por que no se ven tus defectos. 🎵',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	125381458
);
INSERT INTO twit_user VALUES (
	'95227036',
	'れんげ',
	'ren2Loah',
	'こっちみんな♡(*´∀｀*)',
	'イケてる麺が好き♡(*´∀｀*)
あのひとが調理すると全部スタイリッシュになる不思議。まるで魔法使い。クリームの海にとろけたいよ。',
	44,60,'Mon Dec 07 16:02:36 +0000 2009',46380,60,'ja',
	'http://pbs.twimg.com/profile_images/468773276336930816/ryWAfbks_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'。゜゜(´^｀｡)°゜。',
	'<a href=::http://twitter.com/#!/hamoooooon/:: rel=::nofollow::>hamoooooon</a>',
	95227036
);
INSERT INTO twit_user VALUES (
	'2790529323',
	'メカクシティアクターズ画像',
	'egzetf',
	'',
	'メカクシティアクターズの画像などを集めました！メカクシティアクターズ好きはRTを！',
	1481,1238,'Mon Sep 29 03:05:09 +0000 2014',695,1238,'ja',
	'http://pbs.twimg.com/profile_images/516424878908375041/Zx5tZzKY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tndehdd: あのファイナルファンタジーの
最新ゲームがｷﾀ━(ﾟ∀ﾟ)━!
バイクを駆って闘うチェイスアクション♪

iOS→http://t.co/I4v8PI9x6M 
And→http://t.co/qeTkcn10hk

面白過ぎw http://t.co…',
	'<a href=::https://twitter.com/GnRegaro610:: rel=::nofollow::> 不二子のつぶやき</a>',
	2790529323
);
INSERT INTO twit_user VALUES (
	'1458175098',
	'IN- Oakville',
	'InOakvilleON',
	'Oakville Ontario Canada',
	'Latest IN-Oakville News + Oakville;;s Leading Free Local Business Directory & What;;s on Guide - Post Your Business Free- Are You IN! http://bit.ly/1ntCzyb',
	300,695,'Sat May 25 22:33:45 +0000 2013',2323,695,'en',
	'http://pbs.twimg.com/profile_images/378800000382345485/7ef15c4c47220319855d37f313eb82a1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Watch real-time election results online — from anywhere! http://t.co/7PZ3vwK9HW',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	1458175098
);
INSERT INTO twit_user VALUES (
	'2370607621',
	'ここあ@相互',
	'VLAZL',
	'',
	'完全相互',
	1375,1437,'Mon Mar 03 15:47:25 +0000 2014',47862,1437,'ja',
	'http://pbs.twimg.com/profile_images/475596128914636801/rzHQ2Wnv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@null 3210375032737457840724963',
	'<a href=::http://makebot.sh:: rel=::nofollow::>ツイ稼ぎbot</a>',
	2370607621
);
INSERT INTO twit_user VALUES (
	'1469918923',
	'まじすか！先生',
	'majisuka_sensei',
	'',
	'null',
	37769,0,'Thu May 30 14:41:50 +0000 2013',18538,0,'ja',
	'http://pbs.twimg.com/profile_images/3740005460/9a18ebbb81afee2d0b4417fc2b443642_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iroenpitsu_art: 可愛い猫ちゃん http://t.co/BvGu8jYIeO',
	'<a href=::http://twitter.com/super_trainz1:: rel=::nofollow::>super_trainz1</a>',
	1469918923
);
INSERT INTO twit_user VALUES (
	'2658618548',
	'Morgan',
	'morganlink13',
	'',
	'And if you could hear me i would say our finger prints dont fade from the lives weve touched',
	280,625,'Sat Jul 19 04:17:07 +0000 2014',4245,625,'en-GB',
	'http://pbs.twimg.com/profile_images/522899242856501248/E69iZ1ca_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I never pictured this is how it would be',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2658618548
);
INSERT INTO twit_user VALUES (
	'272338834',
	'八坂こう',
	'yasaka_kou',
	'埼玉',
	'陵桜学園3年の八坂こうです。らき☆すた非公式botです。適当につぶやくよ。リプとかTLにも反応することがあるからー、邪魔だったらブロックしてねー。',
	686,686,'Sat Mar 26 09:19:21 +0000 2011',316717,686,'ja',
	'http://pbs.twimg.com/profile_images/344513261568425395/d0bfbbd821bad3c75eb7257692941c76_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@tumodora_3 おめでとうーっ！',
	'<a href=::http://twitter.com/yasaka_kou:: rel=::nofollow::>やさこ</a>',
	272338834
);
INSERT INTO twit_user VALUES (
	'1586563628',
	'.......✌️',
	's_a_r_a_h14',
	'',
	'LEHS',
	851,682,'Thu Jul 11 18:58:16 +0000 2013',5328,682,'en',
	'http://pbs.twimg.com/profile_images/526513665965838336/0xn8ro0B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FxckDarius: Relationship Goal 😍👫💑👴👵 http://t.co/kDyxnsNaa0',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1586563628
);
INSERT INTO twit_user VALUES (
	'2219148836',
	'ちょり',
	'chori_1207',
	'',
	'東京朝高1-4  埼玉47期 う ちょりでーす！ヾ(@゜▽゜@)ノ',
	367,363,'Thu Nov 28 07:52:26 +0000 2013',3926,363,'ja',
	'http://pbs.twimg.com/profile_images/430561452814893056/1piZqywI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @syougekidouga_: 【画像】 ミス・コリア2014の最終候補者50人が「みんな同じ顔」と話題に
　　http://t.co/iPJDg8haG2

. http://t.co/8ct2SAFujM',
	'<a href=::http://bit.ly/gMcdDJ:: rel=::nofollow::>最新ニュース.jp　</a>',
	2219148836
);
INSERT INTO twit_user VALUES (
	'2685316146',
	'FOCUS.',
	'focus_478',
	'',
	'It;;me',
	92,89,'Sun Jul 27 15:48:36 +0000 2014',593,89,'th',
	'http://pbs.twimg.com/profile_images/521319448024588288/49PfNL7C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @bigbiggyabc: ใบหน้าของกู
ตอนเศร้า = 😁
ตอนน้อยใจ = 😃
ตอนเสียใจ = 😄
ตอนโดนทำให้เสียความรู้สึก = 😊

แต่ความรู้สึกในใจ = 😢😢😢😢😢😢😢

#กูนี่มัน…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2685316146
);
INSERT INTO twit_user VALUES (
	'737669496',
	'fuck yeah',
	'alupo_',
	'',
	'amo mi hermanita luzmila :3,gamer,youtuber',
	13,107,'Sun Aug 05 00:18:09 +0000 2012',160,107,'es',
	'http://pbs.twimg.com/profile_images/503942935914639360/3zbGfj-t_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'jajjajjaja http://t.co/NYcahDxO6e #ovejanegra #mixlr',
	'<a href=::http://mixlr.com:: rel=::nofollow::>Mixlr</a>',
	737669496
);
INSERT INTO twit_user VALUES (
	'846202777',
	'Amal♡',
	'Alamal4ever4',
	'❤️',
	'،، هنا عالمي..اغرد بحروف وكلمات تروق لي ،، وكلما تذكرت أن سورة يوسف بدأت بحلم وانتهت بحقيقة ...أعدت ترتيب أحلامي ؛ وزاد في الله حسن ظني ..يااارب نسألك من فضلك~',
	706,479,'Tue Sep 25 20:40:53 +0000 2012',9931,479,'ar',
	'http://pbs.twimg.com/profile_images/526352250881310720/PEOQo4NX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'(ذلك بأنهم شاقوا الله ورسوله ومن يشاقق الله ورسوله فإن الله شديد العقاب) [الأنفال:13]
http://t.co/hjJa75sjNk
 #تطبيق_قرآنى',
	'<a href=::http://qurani.tv:: rel=::nofollow::>تطبيق قرآني</a>',
	846202777
);
INSERT INTO twit_user VALUES (
	'2304984180',
	'•มุมหมอนของพี่ยอล•',
	'pchanbbh',
	'',
	'EXO ♡12♡',
	192,287,'Wed Jan 22 15:00:01 +0000 2014',23311,287,'th',
	'http://pbs.twimg.com/profile_images/509014498993111040/LSVXmL3R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dangnoi4: จะสายไม่ได้ จะไม่สวยก็ไม่ได้ http://t.co/eorfABK5uw',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2304984180
);
INSERT INTO twit_user VALUES (
	'2654802738',
	'Lucas Alves',
	'alveslc_',
	'',
	'null',
	82,92,'Thu Jul 17 20:28:55 +0000 2014',619,92,'pt',
	'http://pbs.twimg.com/profile_images/489871577601675264/_ZgpthG9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eu sei que agora ela deve tá olhando de lá. Tão sem graça, vendo o presente e o passado. Conversando de um assunto, ela já sabe qual é',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2654802738
);
INSERT INTO twit_user VALUES (
	'1521041551',
	'simplysoul || 1D AF',
	'Horan_TwerkTeam',
	'Chicago,IL',
	'||One Direction|5 Seconds Of Summer|Red Band Society|AHS|Food|ATL|| ☼/4 0/5 George Shelley',
	5592,888,'Sun Jun 16 03:01:17 +0000 2013',28805,888,'en',
	'http://pbs.twimg.com/profile_images/522883655090589697/_xmRUgSc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1521041551
);
INSERT INTO twit_user VALUES (
	'280678037',
	'About A Mom',
	'aboutamom',
	'Georgia',
	'Laura and Angela. Mom & Daughter. Storytellers, Lifestyle & #Travel Bloggers. Love #tech, #Disney, dogs, #diy, #crafts & entertaining. (Tweets by Angela.)',
	61323,35723,'Mon Apr 11 20:38:48 +0000 2011',51804,35723,'en',
	'http://pbs.twimg.com/profile_images/514493153668108288/dz1Hlewb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SurfDogRicochet: @aboutamom #MyHalloweenPet #Contest Trick or treat! http://t.co/xQSfUn1JvY',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	280678037
);
INSERT INTO twit_user VALUES (
	'15691197',
	'Bootrios-Ghouli',
	'Atrios',
	'Philadelphia',
	'A madman with a blog.
Otherwise known as Duncan Black.
Digital prophet.
I;;m going to need a bigger shed.',
	24718,1773,'Fri Aug 01 16:45:31 +0000 2008',33162,1773,'en',
	'http://pbs.twimg.com/profile_images/517857210907361280/XDhnkDww_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;m sure we;;ll allocate funds for appropriate humane quarantine facilities for when they;;re necessary #ikeed',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	15691197
);
INSERT INTO twit_user VALUES (
	'2334158192',
	'RoOody ;-)',
	'rowidaeldafrawy',
	'',
	'null',
	239,211,'Sat Feb 08 22:23:37 +0000 2014',1051,211,'en',
	'http://pbs.twimg.com/profile_images/516047746219118593/2gQgDAxi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'الباقيات الصالحات:سبحان الله والحمد لله ولا إله إلا الله والله أكبر و لا حول ولا قوة إلا بالله   http://t.co/VUiHQM1wiS',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	2334158192
);
INSERT INTO twit_user VALUES (
	'2666742130',
	'DejaRenae',
	'dejarenae10',
	'',
	'learnin life how i live it',
	242,211,'Thu Jul 03 05:54:58 +0000 2014',1971,211,'en',
	'http://pbs.twimg.com/profile_images/526316640276070400/7aYt4kD7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'females think hurting other females is coo, if anybody should understand it should be you, you a female with the same feelings',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2666742130
);
INSERT INTO twit_user VALUES (
	'2613477066',
	'仁@エロ垢',
	'1535344',
	'',
	'null',
	78,147,'Wed Jul 09 12:36:06 +0000 2014',71,147,'ja',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Hentai_win: こんなに感じるの初めてええ　http://t.co/rGTFCb38fH',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2613477066
);
INSERT INTO twit_user VALUES (
	'431925289',
	'Ceasar Leo✈',
	'killah863',
	'On The Edge .',
	'Bonjour, I;;m Lambert . I;;m Chill . Either Networkin;; or Workin;; For Net, Income That is . #Jets #iPhone5⃣s #Hov #DeadPrez',
	92,126,'Thu Dec 08 20:59:22 +0000 2011',1691,126,'en',
	'http://pbs.twimg.com/profile_images/482043816887984128/zJArfav7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Bro, I Got Sooo Much Homework Due This Week .😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	431925289
);
INSERT INTO twit_user VALUES (
	'2452174736',
	'Male Torres♥',
	'MalenaTorres261',
	'',
	'null',
	112,157,'Sat Apr 19 01:29:35 +0000 2014',1124,157,'es',
	'http://pbs.twimg.com/profile_images/525754810310868992/5P9lMqhw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'La moneda cayo por el lado de la soledad!',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	2452174736
);
INSERT INTO twit_user VALUES (
	'78723573',
	'Mr. Fernsehgarten ',
	'Selleman',
	'Bonn und in Deiner Timeline!',
	'Dosenöffner für zwei Kater zu Hause, einem Hund (†) im Garten mitsamt der wildlebenden Katzen, crazy, aber nett, Gay. DER Single unter den Fernsehgartenfans!',
	709,466,'Wed Sep 30 22:17:52 +0000 2009',66733,466,'de',
	'http://pbs.twimg.com/profile_images/518065938952773632/26YbOOA7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'War jemand schon mal mit nem Feuerzeug bei Madame Toussard ? #detlefmussreisen',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	78723573
);
INSERT INTO twit_user VALUES (
	'2870705455',
	'Ann harrison',
	'AnnHarrison99',
	'',
	'null',
	2,8,'Wed Oct 22 10:26:09 +0000 2014',58,8,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'I;;ve finished the Defeat the trollums quest! Are you able to fulfil the same task? http://t.co/j8uaZT9OTE #iphone,#iphonegames,#gamei...',
	'<a href=::http://gigam.es/TribezAndCastlez_tw:: rel=::nofollow::>The Tribez & Castlez</a>',
	2870705455
);
INSERT INTO twit_user VALUES (
	'157574373',
	'Ʀe♡',
	'RegiinaDuran',
	'',
	'Heaven is a place on earth with you. ♥',
	397,210,'Sun Jun 20 06:20:57 +0000 2010',75344,210,'es',
	'http://pbs.twimg.com/profile_images/498618938260213761/bWbasD0m_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Aparentemente todos mis zapatos están enamorados de la misma piedra.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	157574373
);
INSERT INTO twit_user VALUES (
	'335612444',
	'Juliana',
	'chegakiju',
	'',
	'É Perfeita: Mas pode chamar de Flamenguista! ♥',
	280,177,'Thu Jul 14 23:35:51 +0000 2011',15682,177,'pt',
	'http://pbs.twimg.com/profile_images/525981843695607808/-vsh1WDI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @alibeizuero: Eu tenho tudo, não posso reclamar de barriga cheia.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	335612444
);
INSERT INTO twit_user VALUES (
	'1481049205',
	'syd',
	'sydneyyjordon',
	'cant think straight',
	'♡Shaylie Tim Pow♡',
	611,408,'Tue Jun 04 01:12:18 +0000 2013',383,408,'en',
	'http://pbs.twimg.com/profile_images/524379194252603392/WQ2NDmXx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FIirtations: this is beautiful 😭❤️ http://t.co/DKf8oo52pU',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1481049205
);
INSERT INTO twit_user VALUES (
	'2519453292',
	'Jake Hintze',
	'HintzeJake',
	'',
	'|Ridge| |Junior| |Baseball| ⚾️',
	284,565,'Sat May 24 04:28:56 +0000 2014',3327,565,'en',
	'http://pbs.twimg.com/profile_images/506554841653866497/A58pLrJq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @srSHREK31: Wow just saw the tragic news about Oscar Tavares... prayers for his family, friends and his teammates on the Cardinals',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2519453292
);
INSERT INTO twit_user VALUES (
	'85139382',
	'Kevin',
	'golfnutkev',
	'Woodstock, ON',
	'null',
	144,782,'Sun Oct 25 18:46:17 +0000 2009',1552,782,'en',
	'http://pbs.twimg.com/profile_images/432509517067075584/4HzPDUvy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CTVToronto: Marcus Cirillo, 5, honoured his dad today with a puck drop in Hamilton http://t.co/wrIoghC72U http://t.co/MuzhyvUW9i',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	85139382
);
INSERT INTO twit_user VALUES (
	'2637791831',
	'✨',
	'GuwoppK',
	'',
	'D ❤️',
	990,869,'Tue Jun 24 14:22:04 +0000 2014',14563,869,'en',
	'http://pbs.twimg.com/profile_images/509507386395357184/81o8HhSL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@k_mesudi 😌😛',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2637791831
);
INSERT INTO twit_user VALUES (
	'2285741571',
	'Daniel Cozendey ',
	'cozendeydaniel',
	'Melbourne, Austrália',
	'140 caracteres e nenhum caráter',
	159,113,'Thu Jan 16 12:01:58 +0000 2014',3629,113,'pt',
	'http://pbs.twimg.com/profile_images/509036048505393152/CzRgvMXx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Fechar a noite com essa puta música da melhor band do mundo 💙 http://t.co/OZIZ89ab11',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2285741571
);
INSERT INTO twit_user VALUES (
	'427943586',
	'1.10 ♑✨',
	'wbdamar_',
	'bodymore⚠️✈️',
	'r.i.p earl & demyni',
	2736,1854,'Sun Dec 04 04:46:12 +0000 2011',60257,1854,'en',
	'http://pbs.twimg.com/profile_images/524806239222788096/NLeSYomv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FreakyTyreek: 💯🙌 its levels to this SHIT http://t.co/O6c1Oc8A5Q',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	427943586
);
INSERT INTO twit_user VALUES (
	'2715299135',
	'Bob Saget ',
	'joeyyhayes407',
	'',
	'Brooklyn',
	80,70,'Thu Jul 17 05:04:24 +0000 2014',1200,70,'en',
	'http://pbs.twimg.com/profile_images/512010598180454400/J_fO7lDr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WorIdStarComedy: Bruh! Spell BMW ☕🐸
http://t.co/qEOonYi039',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2715299135
);
INSERT INTO twit_user VALUES (
	'1625899357',
	'wilhelm the dog',
	'patrickvzen1',
	'S.C.  NV.',
	'if you are cruel to animals I WILL find you',
	158,149,'Sat Jul 27 16:56:15 +0000 2013',9982,149,'en',
	'http://pbs.twimg.com/profile_images/518011538796331008/w2zMRT4l_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@androtabere oh,behave!!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1625899357
);
INSERT INTO twit_user VALUES (
	'2840977727',
	'رائد الحزيمى',
	'BUdKSmTsABouW97',
	'',
	'قَد أُقاومْ كُل شَيء ؛ إلاَ رُؤيتِي لِ طِفل مُقبلاً تِجاهِي بِـ إبتسَامَة ♥:) !',
	2,15,'Wed Oct 22 07:25:41 +0000 2014',213,15,'tr',
	'http://pbs.twimg.com/profile_images/525772692062892032/8dIRdjHU_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mastafa302: @DE3DLINE فزعتك أتعرض لحملة سبام جزاك الله خير',
	'<a href=::http://www.retwet.cc:: rel=::nofollow::>retwet_eee</a>',
	2840977727
);
INSERT INTO twit_user VALUES (
	'705342008',
	'Big_Dawg',
	'Marco_ACE13',
	'NC..H-Town ',
	'funny/soccer player guy trying to make life fun| follow me to know more about me, mention me for a follow back',
	158,118,'Thu Jul 19 16:14:02 +0000 2012',2216,118,'en',
	'http://pbs.twimg.com/profile_images/499692988503969793/5qCT7Oyi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Manstagram_: RANDY ORTON DONT LOVE THESE HOES.. http://t.co/bzpjFPlMV8',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	705342008
);
INSERT INTO twit_user VALUES (
	'1061646296',
	'morgan',
	'tattedmgc',
	'lrh/4',
	'null',
	4523,551,'Fri Jan 04 23:05:27 +0000 2013',146570,551,'en',
	'http://pbs.twimg.com/profile_images/524382092923506688/vY3ujb5C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne I JUST WANT YOU TO BE MY MUTUAL FOR HALLOWEEN',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1061646296
);
INSERT INTO twit_user VALUES (
	'1475971663',
	'Eliezer',
	'bballmartinez',
	'Puerto Rico',
	'B-ball Player | PG/SG | 6;;0 | ST. Francis ✏ & GBA | 16 yrs old | Work hard in silence, let your success be your noise #Senior2015',
	558,552,'Sat Jun 01 23:46:41 +0000 2013',33893,552,'en',
	'http://pbs.twimg.com/profile_images/503615846003273729/-v5YFWHR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@nahomiaymee15 jajajajaja pues esta bien! yo env no sé! yo sé que la leí😹',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1475971663
);
INSERT INTO twit_user VALUES (
	'1698292400',
	'Colette',
	'lettie_bug',
	'',
	'Buy me socks and I;;m yours',
	295,295,'Sun Aug 25 06:00:27 +0000 2013',2105,295,'en',
	'http://pbs.twimg.com/profile_images/497850889869090816/qefeEBH9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Things4Athletes: Best couples Halloween costume idea ever ⚾️😍 http://t.co/wDCfjr67Ss',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1698292400
);
INSERT INTO twit_user VALUES (
	'320860585',
	'Gaia Warrior',
	'LeanneLeoEvans',
	'huntsabs.org.uk ',
	'A voice for the voiceless. #SeaShepherd. #animalrights activist. #Vegan #tweet4taiji #blackfish #dogmeattrade a mum to a rommie rescue pooch. i only follow AR',
	911,1033,'Mon Jun 20 17:03:25 +0000 2011',10052,1033,'en',
	'http://pbs.twimg.com/profile_images/514165331691327489/L5UQBjwP_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AbeShinzo the world is watching &amp; learning about your evil country. It;;s time to end the dolphin hunts #tweet4taiji http://t.co/WTY0aVDKYY',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	320860585
);
INSERT INTO twit_user VALUES (
	'2596099446',
	'любовь  выдрина',
	'LWTEK1',
	'',
	'08:47
#Я хочу кучу ретвитов и фолловеров!# #Взаимный фолловинг#  @ Партнер AllTogether @ Global Promotion @ #ЧИТАЮ ТОЛЬКО ВЗАИМНЫХ#',
	81,652,'Mon Jun 30 09:57:24 +0000 2014',170,652,'ru',
	'http://pbs.twimg.com/profile_images/484328923619016705/mLOsSf8c_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#заработок_в_сети@at_globalpromotion_official 

http://t.co/JM0xj294X0 http://t.co/kniIgPQlVn',
	'<a href=::http://at-gp.com/:: rel=::nofollow::>atgp</a>',
	2596099446
);
INSERT INTO twit_user VALUES (
	'2546045328',
	'Piper Runyon',
	'piprunyon',
	'',
	'Jesus is my strength.',
	112,241,'Wed Jun 04 12:51:24 +0000 2014',113,241,'en',
	'http://pbs.twimg.com/profile_images/521039200091914241/wRiWSJ___normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RachelCardillo: the world is so beautiful and so ugly at the same time',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2546045328
);
INSERT INTO twit_user VALUES (
	'332306946',
	'ยัยปีศาจองุ่น',
	'_MyungWolSeoul',
	'',
	'null',
	578,67,'Sat Jul 09 15:33:01 +0000 2011',31090,67,'en',
	'http://pbs.twimg.com/profile_images/522978551553724416/3g_tlhoj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'กินข้าวแปดโมง จะออกกำลังกายเก้าโมง จะออกไหวมั้ย',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	332306946
);
INSERT INTO twit_user VALUES (
	'2449957886',
	'相互フォローの輪',
	'sougohelper80',
	'',
	'相互フォロー支援＜アカウント＞ 当サービスを上手に使ってフォロワーを増やしましょう。 ＜手順＞ 当アカウントをフォロー→このツイートをリツイート→当アカウントのフォロアーをフォロー。リツイートすればするほどご自分のフォロワーが増えます。　#sougofollow',
	3591,2669,'Thu Apr 17 15:34:10 +0000 2014',75645,2669,'ja',
	'http://pbs.twimg.com/profile_images/456818115045646336/nuoVAn0B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'『アマゾンATM化計画』公開 

http://t.co/tWIwu7CXmU',
	'<a href=::http://www.twisuke.com:: rel=::nofollow::>ツイ助。</a>',
	2449957886
);
INSERT INTO twit_user VALUES (
	'1899565176',
	'PLEASE HARRY LOVELY',
	'daisychainlxrry',
	'| TMH 13.10.13 | UAN 21.4.12 |',
	'||✨Better than words, more than a feeling✨|| https://twitter.com/louis_tomlinson/status/120620074301267968 || Styles is my cinnamon apple || 1D af || kms/5 ||',
	1064,1534,'Tue Sep 24 07:51:50 +0000 2013',7526,1534,'en',
	'http://pbs.twimg.com/profile_images/525103953076187136/DUnRBGdr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne annabelle',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1899565176
);
INSERT INTO twit_user VALUES (
	'220499452',
	' Teonia ',
	'_ChinaDollxo',
	'',
	'IG: @china_dollxo May My Enemies Live Long So They Can See Me Progress RWG Imani #MoMoniMoProblems',
	2832,2166,'Sat Nov 27 23:57:58 +0000 2010',44825,2166,'en',
	'http://pbs.twimg.com/profile_images/516343148331540480/o9TjxTDq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'This nigga is so arrogant 😩annoying af',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	220499452
);
INSERT INTO twit_user VALUES (
	'609878850',
	'na::',
	'NA930720',
	'Indonesia',
	'♥ Jang Wooyoung + Lee Joon ♥ 2PM B2ST GOT7 B.A.P MBLAQ TEENTOP INFINITE ♥',
	1130,195,'Sat Jun 16 07:58:54 +0000 2012',23845,195,'en',
	'http://pbs.twimg.com/profile_images/516805524226981889/AeGQFLGk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @2AMCHANGMIN: @2PMagreement211 내입술이랑 바꿀래?',
	'<a href=::http://ubersocial.com:: rel=::nofollow::>UberSocial for BlackBerry</a>',
	609878850
);
INSERT INTO twit_user VALUES (
	'1954510350',
	'babyDubb✨',
	'MarQuetttta_',
	'',
	'Krystenah L. Evans ✨ Samuel Jordan Deshuan Anderson ⚡️LongLiveBravoe & ballForTreal✨',
	1528,836,'Fri Oct 11 16:23:33 +0000 2013',70304,836,'en',
	'http://pbs.twimg.com/profile_images/525434613968420864/J3ZIdHsU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TeeTheCreator_: I didn;;t have my real dad in my life another man came step in and play the part I know that made him feel less of a man',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1954510350
);
INSERT INTO twit_user VALUES (
	'264515753',
	'#FOLLOW ME NASH✌',
	'musicmylif3',
	'',
	'basta con cerrar los ojos y disfrutar de la montaña rusa que es la vida #Directioner one direction 5/0 janoskians 5/2',
	566,1102,'Sat Mar 12 01:28:31 +0000 2011',17241,1102,'es',
	'http://pbs.twimg.com/profile_images/522592516495794178/hxdSht5r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RESILIENCE. | via Tumblr http://t.co/cz0QhVWXOn',
	'<a href=::http://weheartit.com:: rel=::nofollow::>weheartit.com</a>',
	264515753
);
INSERT INTO twit_user VALUES (
	'1619010889',
	'Destiny',
	'ZachsThottie',
	'San Antonio, Texas ',
	'#oreosquad ❤️@angelairwin0❤️1/2 of Zachs Thotties 1/7 of the Nigga Higgas RT THE LINK PLEASE https://twitter.com/zachsthottie/status/522531413703147520',
	1775,1958,'Thu Jul 25 00:55:39 +0000 2013',10672,1958,'en',
	'http://pbs.twimg.com/profile_images/516279954078580736/UE34tkhs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: No but seriously, imagine that, living forever, scary thought',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1619010889
);
INSERT INTO twit_user VALUES (
	'243244921',
	'動物園ニュース',
	'news_zoo',
	'',
	'動物園・サファリパーク・牧場の最新トピックをお届けしています。基本は自動投稿のニュースbotです。管理人はリンク先の「誠ブログ」にいます。',
	4929,1566,'Wed Jan 26 16:40:17 +0000 2011',29585,1566,'ja',
	'http://pbs.twimg.com/profile_images/1243862151/ilm13_bb12027-s_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【おびひろ動物園】 10月27日のスポットガイド by スポットガイド予定表 http://t.co/wZenn0pdxt #zoo #animal',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	243244921
);
INSERT INTO twit_user VALUES (
	'523616179',
	'岡田',
	'sexyboy____',
	'新潟',
	'null',
	137,178,'Tue Mar 13 19:58:28 +0000 2012',2760,178,'ja',
	'http://pbs.twimg.com/profile_images/495890535333109760/t2kKdY-j_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'今週日曜も出勤とかもうダメ
月曜に言わないでよ先週くらいに言ってよ
えぐ、えぐっエグエグエグ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	523616179
);
INSERT INTO twit_user VALUES (
	'393164640',
	'anya',
	'anyaudriatika',
	'1d • acm',
	'✨You;;re the glitter in the darkness of my world✨',
	1388,1048,'Tue Oct 18 03:38:38 +0000 2011',43914,1048,'en',
	'http://pbs.twimg.com/profile_images/523068111432331265/pxiMkP3p_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	393164640
);
INSERT INTO twit_user VALUES (
	'938324786',
	'iRah',
	'Syahirah_NJ',
	'',
	'cat and yoghurt enthusiast ; also an indoors and isolated person',
	941,972,'Sat Nov 10 03:53:05 +0000 2012',40293,972,'en',
	'http://pbs.twimg.com/profile_images/519794400214269952/9XGf0HNh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @harrypubeshair: “@Real_Liam_Payne: Still not found the one” http://t.co/fHam24jA0n',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	938324786
);
INSERT INTO twit_user VALUES (
	'115695262',
	'アドセンスクリックお願いします',
	'sakky_takeda',
	'広島県広島市',
	'広島市在住の全裸自撮り中年です。 淫夢要素はありません。skypeID:fukushikun ３DSフレンドコード:4682-8672-1156 Steam http://steamcommunity.com/id/sakky_takeda /',
	883,1171,'Fri Feb 19 15:47:43 +0000 2010',21511,1171,'ja',
	'http://pbs.twimg.com/profile_images/519547717714849793/K_ijy_4__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@sora_tigers せやな',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	115695262
);
INSERT INTO twit_user VALUES (
	'2813506120',
	'ابراهيم الغساني',
	'noupraet',
	'',
	'null',
	148,57,'Tue Oct 07 10:48:26 +0000 2014',21584,57,'ar',
	'http://pbs.twimg.com/profile_images/519439324203327488/3uMsEG-x_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @V9va: ✅ اعمل رتويت للتغريدة✔ ✅أضف اللي مسوين رتويت✔ ✅التزم بإضافة اللي يضيفك✔ #كل_يوم_500_اكثر',
	'<a href=::http://r-xo.com/retweet/:: rel=::nofollow::>http://r-xo.comretweet</a>',
	2813506120
);
INSERT INTO twit_user VALUES (
	'2790481888',
	'maite',
	'maaiitee23',
	'',
	'null',
	38,133,'Mon Sep 29 02:04:41 +0000 2014',41348,133,'es',
	'http://pbs.twimg.com/profile_images/516409311208022016/cOTWKNGO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'u    rt votemos #KCAArgentina #LaliEsposito',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2790481888
);
INSERT INTO twit_user VALUES (
	'2510686103',
	'☪e||pls luke',
	'lrhxstyles',
	'等待/4 ',
	'⠀⠀⠀ ⠀⠀⠀⠀⠀⠀ “ i don;;t exist if i don;;t ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ have them ”⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
	4744,1839,'Sat Apr 26 15:46:21 +0000 2014',62683,1839,'en',
	'http://pbs.twimg.com/profile_images/525376734292885505/XyrGhEl2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'• ✼̥*ೄ･@Luke5SOS ✼̥*ೄ•

Luke Hemmings 5sos
❝希望 幸福❞ means
hope &amp; happiness
thats what you give me
follow me sunshine? ♡
i love you 

✧24,117',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2510686103
);
INSERT INTO twit_user VALUES (
	'476476194',
	'Skye ✌☀',
	'Skyeeee24',
	'Texas',
	'Philippians 4:13 † NHS ;;16 Yoncé',
	480,542,'Sat Jan 28 05:18:49 +0000 2012',5418,542,'en',
	'http://pbs.twimg.com/profile_images/516335992731893760/TbMeC6-R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'49',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	476476194
);
INSERT INTO twit_user VALUES (
	'551192281',
	'Joe Salamone',
	'joesalamone6',
	'Manlius, NY',
	'I got soul but im not a soldier',
	174,298,'Wed Apr 11 17:57:12 +0000 2012',1721,298,'en',
	'http://pbs.twimg.com/profile_images/498656876964634625/ZVMrflBG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Mike tyson mysteries? I am crying',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	551192281
);
INSERT INTO twit_user VALUES (
	'268371384',
	'Totu ✌ †♛ #1',
	'Cami_Bernales25',
	'Argentina',
	'Tauriana || Electronica- Rap- RN- Pop || Amante de la fotografia y la comida || Socia de McDonall || Nunca te olvides de vivir ||Wsp 3814658047',
	238,630,'Fri Mar 18 16:48:42 +0000 2011',4195,630,'es',
	'http://pbs.twimg.com/profile_images/519180795236610051/NQq0scCM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Envodkadas: #TAURO: ::Entonces ella se alejo y el no la siguió, fue ahí cuando ella noto que habia tomando la decision correcta:: #Envodk…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	268371384
);
INSERT INTO twit_user VALUES (
	'1048882705',
	'Vergil ',
	'FemaleNephilimV',
	'Limbo City',
	'There have always been angels and there have always been demons. We embrace one over the other eventually. [DmC Female V,Non-Canon RP in English & Spanish]',
	2204,686,'Sun Dec 30 21:42:22 +0000 2012',113014,686,'en',
	'http://pbs.twimg.com/profile_images/518823882112106496/YfTXtgMk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ZanderCosmos There is a difference between being pleasured and disturbed, Zander.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1048882705
);
INSERT INTO twit_user VALUES (
	'211690810',
	'Nicole Fiorelli',
	'coleyf13',
	'some where in florida ',
	'null',
	282,289,'Wed Nov 03 23:52:24 +0000 2010',21660,289,'en',
	'http://pbs.twimg.com/profile_images/496828556651945984/f8VzUfJh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@BeccaRapacz33 damn how hard did you just creep on me? And I follow shaun on insta',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	211690810
);
INSERT INTO twit_user VALUES (
	'2298371623',
	'please 1/5? :(',
	'girlscouthoran',
	'8•5•14   8•13•14   10•1•14',
	'niall has seen my face and knows that i exist and that;;s all that matters to me',
	8169,5845,'Sat Jan 18 18:50:52 +0000 2014',29001,5845,'en',
	'http://pbs.twimg.com/profile_images/522460907193253888/MfhkwiC__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2298371623
);
INSERT INTO twit_user VALUES (
	'908559163',
	'•idols•',
	'Jocelyn20301',
	'',
	'||Directioner 0/5||Mahomie 0/4||Mixer||5SOS Family 0/4|| ᵒᶰᵉ ᵈᶤʳᵉᶜᵗᶤᵒᶰ||none of my idols follow me||15||',
	6177,6168,'Sat Oct 27 17:23:31 +0000 2012',18949,6168,'en',
	'http://pbs.twimg.com/profile_images/526517215353659392/N2bm4UpC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	908559163
);
INSERT INTO twit_user VALUES (
	'907210080',
	'Lil Marco',
	'Marcod_69',
	'',
	'| Rep #Vsquadd till death | 863 | Basslife | Im what your bitch wishes she had |',
	428,483,'Sat Oct 27 02:35:31 +0000 2012',6795,483,'en',
	'http://pbs.twimg.com/profile_images/516385464652431360/ZBoEi9AG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Lol shut up dumb shit',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	907210080
);
INSERT INTO twit_user VALUES (
	'448688861',
	'Rob',
	'CrypThang',
	'Alaska, Texas',
	'18 / TX / Owner of @Valkyrie_Pro / I say what I want, just let my sucsess speak for its self / @TeamFeaR Fanatic / OFWGKTA / I say fuck alot',
	147,197,'Wed Dec 28 08:02:58 +0000 2011',2938,197,'en',
	'http://pbs.twimg.com/profile_images/503900250982346753/KpgssJo4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'https://t.co/b2VB3mAHve  @VaL_LoonaR',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	448688861
);
INSERT INTO twit_user VALUES (
	'29013887',
	'Ashley Noelle ',
	'shleesuxx',
	'Wisconsin',
	'Show no emotion, feel no pain. ~stay strong~ Followed by Kesha. She tweeted me 3 times so far :)',
	816,1779,'Sun Apr 05 16:32:45 +0000 2009',44687,1779,'en',
	'http://pbs.twimg.com/profile_images/494668249338892288/xSdO2I17_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @cwhite850: Twitter and #thewalkingdead are the best combo',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	29013887
);
INSERT INTO twit_user VALUES (
	'1398579518',
	'Victoria FA',
	'VickyPrigue',
	'Paradise City',
	'Wpp 091 944 025|Taurina| #UruguayNoSeDetiene #NoALaBaja',
	336,327,'Fri May 03 01:32:47 +0000 2013',6440,327,'es',
	'http://pbs.twimg.com/profile_images/526531478365433856/2mBilGG2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JeronimoAviles7: No se como no le da verguenza ser asi a Lacalle, igual aunque se una con todos AL FRENTE NO LO PARA NADIE',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	1398579518
);
INSERT INTO twit_user VALUES (
	'2558024780',
	'Gleisson F.S#TimBeta',
	'gleissonbboy',
	'',
	'#RumoAoBetaLab http://www.assistenciareal24horas.com.br/rendaextra.php?id=33005420',
	1516,2006,'Tue Jun 10 02:47:58 +0000 2014',2641,2006,'pt',
	'http://pbs.twimg.com/profile_images/479795378129502208/DvCoL6ZH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@drogalizado https://t.co/4jAGRQdqc1',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2558024780
);
INSERT INTO twit_user VALUES (
	'1503608383',
	'LOUISSSSS',
	'4sause_1d',
	'rt that link ',
	'✨Roses are red, Violets are blue, I like bands more than i like you... Unless your in a band then i will prob like you ✨',
	1159,875,'Tue Jun 11 14:14:11 +0000 2013',4904,875,'en',
	'http://pbs.twimg.com/profile_images/515894467434676224/ASycYrk2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1503608383
);
INSERT INTO twit_user VALUES (
	'263777793',
	'Parijat Deshpande',
	'ParijatDesh',
	'SF Bay Area',
	'Health & Wellness Counselor. Specializing in stress management and fertility/perinatal wellness coaching. Speaker. Founder of @MySahana. Tweets are my own.',
	928,978,'Thu Mar 10 18:34:00 +0000 2011',6504,978,'en',
	'http://pbs.twimg.com/profile_images/2078763195/Phead_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'So profoundly true. Thank you for sharing. MT @tstallone @caregiving A1) Then again, I feared always being a caregiver. #carechat',
	'<a href=::http://www.hootsuite.com:: rel=::nofollow::>Hootsuite</a>',
	263777793
);
INSERT INTO twit_user VALUES (
	'482623631',
	'reeownuh_',
	'reeownuh_',
	'wichita, kansas ',
	'null',
	531,386,'Sat Feb 04 03:59:36 +0000 2012',7703,386,'en',
	'http://pbs.twimg.com/profile_images/522582441123663872/Tg-6yXWL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Kendrick_snow29 shhh',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	482623631
);
INSERT INTO twit_user VALUES (
	'1000426662',
	'Misty Williams',
	'Misty_Williams1',
	'Pallet Town, Kanto',
	'Water Pokemon trainer and currently living in Pallet Town :P @AshKetchum1999 is my cutie boyfriend, we now have three adorable babies :3',
	168,52,'Sun Dec 09 23:23:55 +0000 2012',108061,52,'en',
	'http://pbs.twimg.com/profile_images/505205012872822784/N2GU-wiI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@AshKetchum1999 *Giggles, holding his hand*',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1000426662
);
INSERT INTO twit_user VALUES (
	'40771411',
	'Elinor Penna',
	'NFL_Elinor',
	'Long Island',
	'Antique dealer, Staffordshire collector, ex-NFL journalist,  knockout pool specialist, horse racing devotee, bet Jets BIG in 1969 Super Bowl',
	99,302,'Mon May 18 00:31:30 +0000 2009',2330,302,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'@DRFHersh @CBredar @BreedersCup Wes Welker will be in Boston for a date with the Patriots on Sunday.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	40771411
);
INSERT INTO twit_user VALUES (
	'770471089',
	'chris',
	'_chrisrivas19',
	'',
	'null',
	262,264,'Tue Aug 21 00:04:44 +0000 2012',13447,264,'en',
	'http://pbs.twimg.com/profile_images/511331872367185920/soWXRgv6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @VarsityAces: This national HSFB poll has Paramus Catholic 4th and Bergen Catholic 11th.
http://t.co/g1Z7815gE6',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	770471089
);
INSERT INTO twit_user VALUES (
	'827410986',
	'haleyween',
	'odairscatnip',
	'@natandalex RTed x2',
	'44%',
	2429,727,'Sun Sep 16 17:00:42 +0000 2012',26537,727,'en',
	'http://pbs.twimg.com/profile_images/521701298648125440/6F-gGWwD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ImmortalDixon: Is this Pretty little Liars or The Walking Dead?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	827410986
);
INSERT INTO twit_user VALUES (
	'402823143',
	'Doces Refrões',
	'DocesRefroes',
	'Ipanema',
	'Refrões e letras de musicas famosas que mexem com você.',
	8794,9081,'Tue Nov 01 16:38:14 +0000 2011',58128,9081,'pt',
	'http://pbs.twimg.com/profile_images/495662893442940929/zNIsEJl__normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JOVEMPAIXA0: Eu era a primeira pessoa a querer falar sobre você. Hoje evito ouvir seu nome.',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	402823143
);
INSERT INTO twit_user VALUES (
	'2826818169',
	'Vicky',
	'viqii17',
	'',
	'null',
	0,63,'Mon Oct 13 04:29:34 +0000 2014',19925,63,'es',
	'http://pbs.twimg.com/profile_images/521518490767745026/KmsyM5Xj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'u    rt votemos #KCAArgentina #LaliEsposito',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2826818169
);
INSERT INTO twit_user VALUES (
	'1580019266',
	'岡山大好き＠相互フォロー支援',
	'okayama_sogo',
	'岡山県',
	'岡山県人の相互フォローを応援するアカウントです。
岡山じゃなくても日本語アカならフォロー返しします♪
岡山県人＆岡山の友達を探したい人はフォローをよろしくね！',
	4488,4637,'Tue Jul 09 10:26:53 +0000 2013',8098,4637,'ja',
	'http://pbs.twimg.com/profile_images/523446259424583680/r3nmry4C_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'予約が開始されました!! 2015カレンダー レーシングミク http://t.co/hRcgLyLY2W http://t.co/BieAnA0atY',
	'<a href=::http://blog.kagato.me/:: rel=::nofollow::>PROJECT_TP_20141022_OKAYAMA</a>',
	1580019266
);
INSERT INTO twit_user VALUES (
	'2873482885',
	'sweet child ♔',
	'bonfim_paloma',
	'',
	'Eu te amei por mil anos, e amarei por mais mil. ♥',
	18,30,'Thu Oct 23 14:13:06 +0000 2014',63,30,'pt',
	'http://pbs.twimg.com/profile_images/525668374362066944/Oklvndwg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @VibePositiva: Eu queria um abraço agora, mas não é qualquer abraço, quero o seu.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2873482885
);
INSERT INTO twit_user VALUES (
	'574735648',
	'Hulk ',
	'SuperSaj786',
	'Pride Rock',
	'Pray. Gym. Eat. Sleep. #Akhihood @AkhiHood_Dawah',
	326,280,'Tue May 08 19:34:07 +0000 2012',24469,280,'en',
	'http://pbs.twimg.com/profile_images/479539202728947713/VEZIn_na_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@1988Nb @ArabProverbs dbi',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	574735648
);
INSERT INTO twit_user VALUES (
	'1379799636',
	'aninha ❁ PLEASE LIAM',
	'paynegrao',
	'08.05.2014',
	'sou uma menina estranha que assiste uma serie estranha com pessoas estranhas',
	2074,1737,'Thu Apr 25 16:15:29 +0000 2013',7904,1737,'pt',
	'http://pbs.twimg.com/profile_images/525640235187982336/7ok816Ul_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne 
🌸 Hi, Liam James Payne 🌸

💀 I;;m Annabelle, FOLLOW ME or I;;ll haunt you in the night 💀

💜 I LOVE YOU BABY 💜 x366',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1379799636
);
INSERT INTO twit_user VALUES (
	'536541528',
	'$t@rr Fi$H',
	'kevin_starr2',
	'',
	'null',
	772,400,'Sun Mar 25 16:42:59 +0000 2012',14176,400,'en',
	'http://pbs.twimg.com/profile_images/478045745749426176/BMH3KKE5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Doodlez7James: We;;ll tommorry is Monday so I guess I;;m gonna fuck somthing up',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	536541528
);
INSERT INTO twit_user VALUES (
	'408605070',
	'G&S',
	'HaikaissRappers',
	'zona norte | SP ',
	'Rappers brasileiros. NOT OFFICIAL. skype: gustavo.juttel',
	100229,163,'Wed Nov 09 17:01:34 +0000 2011',79317,163,'pt',
	'http://pbs.twimg.com/profile_images/498581853545066496/datZflTC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JOVEMPAIXA0: Eu era a primeira pessoa a querer falar sobre você. Hoje evito ouvir seu nome.',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	408605070
);
INSERT INTO twit_user VALUES (
	'1465270028',
	'neel ひ .',
	'CashinnOutt_',
	'85 nawff',
	'est. 1996',
	723,290,'Tue May 28 17:40:19 +0000 2013',1293,290,'en',
	'http://pbs.twimg.com/profile_images/526540455123886080/WQBfC02f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'shes poooder',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1465270028
);
INSERT INTO twit_user VALUES (
	'599731948',
	'harry the pineapple',
	'harrys_milkyway',
	' still hope/5',
	'Harry treats women like princesses because he was raised by a queen. ◡̈ Kaitlyn ◡̈',
	1267,2000,'Tue Jun 05 01:48:57 +0000 2012',18550,2000,'en',
	'http://pbs.twimg.com/profile_images/505567302138736640/GaUNe7mR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	599731948
);
INSERT INTO twit_user VALUES (
	'1498699154',
	'Leslie',
	'lesliesomethin',
	'',
	'schs ♡',
	198,185,'Mon Jun 10 16:24:02 +0000 2013',739,185,'en',
	'http://pbs.twimg.com/profile_images/523137397887090689/xO8Lzisa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Naterod_: this priest is more emotional than a girl on her perios',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1498699154
);
INSERT INTO twit_user VALUES (
	'2719608281',
	'Allexia ',
	'Allexia__brito',
	'Rj',
	'Alguns infinitos são maiores que outros ∞',
	159,149,'Mon Jul 21 10:06:12 +0000 2014',3298,149,'pt',
	'http://pbs.twimg.com/profile_images/525667169875791872/gXCqK9K8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_mtmonteiro Isso , entenda',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2719608281
);
INSERT INTO twit_user VALUES (
	'1247899723',
	'K.',
	'_itsK_',
	'',
	'back to the basics .❤️',
	1200,872,'Thu Mar 07 04:21:56 +0000 2013',39564,872,'en',
	'http://pbs.twimg.com/profile_images/518865466618826752/qOOLefmc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_diampiece__: “@littleredpimp: i dont get along with any other bitches accept mines😌”',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1247899723
);
INSERT INTO twit_user VALUES (
	'147805486',
	'xZHeXem',
	'xZ_HeXem',
	'',
	'null',
	47,32,'Tue May 25 03:00:18 +0000 2010',2668,32,'en',
	'http://pbs.twimg.com/profile_images/928432187/130_normal.gif',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@jul1alo не хочу тебя расстраивать, но только в следующем сезоне',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	147805486
);
INSERT INTO twit_user VALUES (
	'601505742',
	'v',
	'takedrauhlz',
	'',
	'3/12',
	1391,1151,'Thu Jun 07 00:50:44 +0000 2012',50293,1151,'pt',
	'http://pbs.twimg.com/profile_images/519176151835492352/DuwnDFB-_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@allmgcn ate depois, beijosss',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	601505742
);
INSERT INTO twit_user VALUES (
	'2788527244',
	'lupe',
	'luupee398',
	'',
	'null',
	44,142,'Sun Sep 28 05:17:26 +0000 2014',42548,142,'es',
	'http://pbs.twimg.com/profile_images/516096161254350849/9ZMk3xrx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'u    rt votemos #KCAArgentina #LaliEsposito',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2788527244
);
INSERT INTO twit_user VALUES (
	'2762117199',
	'Darin',
	'DarinSports',
	'',
	'null',
	27,85,'Fri Sep 05 18:07:15 +0000 2014',330,85,'en',
	'http://pbs.twimg.com/profile_images/508408518383124480/G7BD5e31_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @USATODAYsports: St. Louis Cardinals outfielder Oscar Taveras dies in car accident: http://t.co/6docwPjj2U http://t.co/mn7FQOvPUb',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2762117199
);
INSERT INTO twit_user VALUES (
	'2393487689',
	'Merry',
	'Merry2Fois',
	'',
	'J;;suis tombé si bas qu;;pour en parler faudrait qu;;jme fasse mal au dos... putain quelle rime de batard',
	371,155,'Sat Mar 08 10:05:32 +0000 2014',55181,155,'fr',
	'http://pbs.twimg.com/profile_images/523956602656022528/8BWQa6aS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@molotov93160 lui je vais lui faire une belle boutonnière',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2393487689
);
INSERT INTO twit_user VALUES (
	'2827054532',
	'لارا سعد',
	'fhg401',
	'',
	'null',
	1,1,'Mon Sep 22 22:48:36 +0000 2014',446,1,'ar',
	'http://pbs.twimg.com/profile_images/514184750496378880/1uNA4Kqk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LsAthkar: إن المرء يسوءه فوت مالم يكن ليدركه،ويسره درك مالم يكن ليفوته،فليكن سرورك بما نلت من أمر آخرتك،وليكن أسفك على ما فاتك منها.[عل…',
	'<a href=::http://tweetadder.com:: rel=::nofollow::>TweetAdder v4</a>',
	2827054532
);
INSERT INTO twit_user VALUES (
	'2216504010',
	'!Camila¡',
	'CL_Rodriguez_',
	'',
	'~Supernatural~       • One Direction •                 Both have taken over my life',
	143,115,'Tue Nov 26 21:21:20 +0000 2013',2362,115,'en',
	'http://pbs.twimg.com/profile_images/526045672282550272/3wOQvTaY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @eternityhxrry: #HalloweenCostumeSuggestionsForLiam http://t.co/CcvXa3rbZR',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2216504010
);
INSERT INTO twit_user VALUES (
	'1918214456',
	'Maëva✨',
	'maevaduda',
	'PARIS',
	'null',
	418,585,'Sun Sep 29 21:41:10 +0000 2013',11720,585,'fr',
	'http://pbs.twimg.com/profile_images/525791078201692160/UZZVzASN_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'gars il s;;en balec de c;;que tu lui dit ,il l;;aime c;;est tout #hsm3',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1918214456
);
INSERT INTO twit_user VALUES (
	'296950923',
	'Amor 93.1FM',
	'AMOR931FM',
	'New York',
	'#Amor93: Bacan Bacan, Luis Javier, Marisol Vargas, & Oscar Ramirez',
	10212,1178,'Wed May 11 17:30:30 +0000 2011',28647,1178,'en',
	'http://pbs.twimg.com/profile_images/1862882990/Amor-new-logo_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'¿Ya están listos para la nueva semana de trabajo? Disfruta lo poquito que queda de este fin de semana con @Amor931fm http://t.co/J7lRqnoqzQ',
	'<a href=::http://ifttt.com:: rel=::nofollow::>IFTTT</a>',
	296950923
);
INSERT INTO twit_user VALUES (
	'977455105',
	'Justin Nussbaum',
	'justin13196',
	'',
	'if you want something, then go get it',
	414,323,'Thu Nov 29 02:44:27 +0000 2012',2380,323,'en',
	'http://pbs.twimg.com/profile_images/504102109135261697/MP97L_AH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Now I;;m walking on a tightrope...',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	977455105
);
INSERT INTO twit_user VALUES (
	'2834672160',
	'I Stan 1d And 5sos',
	'1dlickmybutt',
	'',
	'null',
	4,11,'Sun Sep 28 05:34:10 +0000 2014',41,11,'en',
	'http://pbs.twimg.com/profile_images/516960420067028992/podEerXo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne shhhh im trying to do homework',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2834672160
);
INSERT INTO twit_user VALUES (
	'400922339',
	'gargalhemos ™',
	'gargalhemos',
	'',
	'Humor 100% saudável',
	5008,4845,'Sat Oct 29 19:42:10 +0000 2011',55101,4845,'pt',
	'http://pbs.twimg.com/profile_images/498808685657735169/QZx1SsOK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JOVEMPAIXA0: Eu era a primeira pessoa a querer falar sobre você. Hoje evito ouvir seu nome.',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	400922339
);
INSERT INTO twit_user VALUES (
	'1634034228',
	'Ramon Valle A',
	'RamonValleA',
	'México',
	'Soy un amante del futbol, la buena comida, las chicas y soy ecologista',
	479,1159,'Tue Jul 30 23:28:37 +0000 2013',4034,1159,'es',
	'http://pbs.twimg.com/profile_images/519674111744696320/JRQhg_rv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @cafeikkA: おはようございます♪【本日は茶摘みのため臨時休業いたします】ご迷惑をおかけしてすみません。只今、藤沢です！
大好きなお茶にまみれてまいりますー笑
いってきます～(*´∀｀)ノ
⇒ http://t.co/IWGYdzCLDq',
	'<a href=::http://www.botize.com:: rel=::nofollow::>Botize</a>',
	1634034228
);
INSERT INTO twit_user VALUES (
	'1675761902',
	'Kevin Dolan',
	'KDolan_34',
	'',
	'St. John;;s Baseball ;;16. Phillipians 4:13.',
	174,216,'Fri Aug 16 13:37:03 +0000 2013',1894,216,'en',
	'http://pbs.twimg.com/profile_images/526083312230858753/-VHA4ENK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @AtthIetes: 😂😂 
https://t.co/S0aFnSoINc',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1675761902
);
INSERT INTO twit_user VALUES (
	'178949830',
	'Des.',
	'Destinygibon',
	'@ Bueno Nacho w/ Monique & Ron',
	'Eso sí que es✌️// Mik, Sy and Bri are my everything❤️',
	373,212,'Mon Aug 16 03:13:39 +0000 2010',34684,212,'en',
	'http://pbs.twimg.com/profile_images/513711193740312576/yQMNNUjG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LatinPrincess__: Literally happens about 9 times a day.. http://t.co/nQF2YK8sJQ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	178949830
);
INSERT INTO twit_user VALUES (
	'606789494',
	' الشرۇق ',
	'shosho4488',
	'',
	'ربي أحتاجك مَعي ب كل لحظه أمر بها  ف كلما إنقبض قلبي مِن هم وتعب  قوني بِ صبر جميل حينما اقول يالله .',
	468,957,'Wed Jun 13 01:25:49 +0000 2012',4414,957,'ar',
	'http://pbs.twimg.com/profile_images/524787525521395713/TEsLABii_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اللهم إني أعوذ بك من جار السوء  
http://t.co/Ea1TMlLEMX',
	'<a href=::http://7snah.com:: rel=::nofollow::>حسنة</a>',
	606789494
);
INSERT INTO twit_user VALUES (
	'2288220374',
	'ⓡⓖtoledawnⓓⓩ',
	'Tcf15Faye',
	'',
	'DawnLovers/CharDawnians II Senior-IV II HAU student II Certified CharDawn II Music Lover II Fangirl 4ever II ❤❤',
	256,480,'Sun Jan 12 14:10:56 +0000 2014',4547,480,'en',
	'http://pbs.twimg.com/profile_images/526538948714061824/jxRlHRnI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Gulong dito, gulong doon, gulong everywhere CHARDAWN;;S WAY BACK INTO LOVE',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	2288220374
);
INSERT INTO twit_user VALUES (
	'2582280830',
	'ななせまる＠乃木坂46 西野七瀬',
	'29NOGInanase',
	'',
	'乃木坂46「ななせまる」こと西野七瀬ちゃん押しの女子大生デスヾ(＠⌒ー⌒＠)ノ 乃木坂46ファンのみんな～ 相互フォロー歓迎だよ～ (≧∇≦*) /白石麻衣/松村沙友理/橋本奈々未/西野七瀬/生田絵梨花/生駒里奈/高山一実/深川麻衣/秋元真夏/桜井玲香/若月佑美/衛藤美彩/',
	294,435,'Sun Jun 22 14:04:02 +0000 2014',217,435,'ja',
	'http://pbs.twimg.com/profile_images/524817572512800768/iAnnqp80_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'AKB48のPVに幽霊？ 呪われたメンバーも・・・ http://t.co/vRRZCpYRh8',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2582280830
);
INSERT INTO twit_user VALUES (
	'2202879960',
	'كُنَا',
	'hgvlho1',
	'',
	'لست بينكم',
	18,122,'Tue Nov 19 10:37:19 +0000 2013',2265,122,'ar',
	'http://pbs.twimg.com/profile_images/378800000760912796/b13b78e0b2865372068058e846e5eb4f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'عن عائشة أنّها قالت: يا رسول اللّه، نرى الجهاد أفضل العمل أفلا نجاهد؟ قال: «لا، لكنّ أفضل الجهاد حج مبرور» -- حديث صحيح  #Hadith',
	'<a href=::http://twitquran.com/About.aspx:: rel=::nofollow::> تويت قرآن</a>',
	2202879960
);
INSERT INTO twit_user VALUES (
	'298356981',
	'Alyanna ',
	'delosreyesyanna',
	'kab • bcd',
	'day dreamer, night schemer | eighteen | wanderlust | peter pan syndrome',
	881,669,'Sat May 14 05:17:36 +0000 2011',58201,669,'en',
	'http://pbs.twimg.com/profile_images/525178421911891969/kLYgLP9r_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Good Morninggg 😘',
	'<a href=::https://twitter.com/download/android:: rel=::nofollow::>Twitter for Android Tablets</a>',
	298356981
);
INSERT INTO twit_user VALUES (
	'1263594878',
	'Dede sofian fauzi デデ',
	'sofian_fauzi',
	'indonesia•Pandeglang•Tangerang',
	'My Name is Dede Sofian fauzi
[25.12.2000]
♥Hallo♥
• https://t.co/D7ohcvnUSA
• http://t.co/Dp6dcKijov
• http://t.co/Rd0VVYLWzQ
• http://t.co/6uOT3raMbq',
	393,540,'Wed Mar 13 04:54:44 +0000 2013',7567,540,'id',
	'http://pbs.twimg.com/profile_images/512562763197976577/8XuFMm0x_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Aku suka pada dirimu
Jikalau itu ku sampaikan
Walau tidak dijawab',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	1263594878
);
INSERT INTO twit_user VALUES (
	'486198543',
	'Sam Sztym ',
	'SamSztym',
	'',
	'Don;;t worry about the people in your past, there;;s a reason they didn;;t make it to your future.',
	372,377,'Wed Feb 08 01:26:31 +0000 2012',3569,377,'en-gb',
	'http://pbs.twimg.com/profile_images/523847864431439872/1h-Hhnpd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'🌀and then realized adventures are the best way to learn 🌀 http://t.co/FSWOE2E8UA',
	'<a href=::http://instagram.com:: rel=::nofollow::>Instagram</a>',
	486198543
);
INSERT INTO twit_user VALUES (
	'533942666',
	'Arthur Evans ',
	'arthurevans94',
	'Singapore',
	'null',
	111,135,'Fri Mar 23 06:18:33 +0000 2012',1823,135,'en',
	'http://pbs.twimg.com/profile_images/378800000580936498/8e21f64fc0536e6f58408d6c50299305_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Khlo3Lim @tweettierGrace HAHAHAHAHAHA 😂😂😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	533942666
);
INSERT INTO twit_user VALUES (
	'2751029329',
	'Jayden willi',
	'WilliTechno_New',
	'',
	'null',
	78,602,'Thu Aug 21 01:44:59 +0000 2014',28571,602,'en',
	'http://pbs.twimg.com/profile_images/502270521333936128/fdU4y3vJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Google #Techno - Google;;s Nest purchases Revolv, to further ::Works with Nest:: projects: #... http://t.co/X0exjDLEZw - #Tech #Googletech',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	2751029329
);
INSERT INTO twit_user VALUES (
	'2723770660',
	'Sammy',
	'SurvivingSammy',
	'~Single~OC~RP~',
	'Names Samantha, but you can call me Sammy. I;;m saving people like always. Saving them from them Black eyed freaks and everything unnatural.',
	675,875,'Fri Jul 25 02:58:11 +0000 2014',3738,875,'en',
	'http://pbs.twimg.com/profile_images/526475889127989248/HRyqHxjz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TricksAndSugar She continued to suck slowly, teasingly',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2723770660
);
INSERT INTO twit_user VALUES (
	'1548240284',
	'たくやんぐ',
	'young002200',
	'',
	'club music / 日本酒 / back number があれば生きていけます 夢は歌手！ 札幌ﾗﾌﾞｽﾄｰﾘｰ 横浜ﾗﾌﾞｽﾄｰﾘｰ 北海道⇄東京',
	684,536,'Wed Jun 26 13:44:00 +0000 2013',18771,536,'ja',
	'http://pbs.twimg.com/profile_images/524193115821727744/HsVktzaq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @axyy9: 寂しいと思ってアプリ
やってみたら出会えたｗｗ

しかも超絶可愛いしｗ
結局彼女になったったｗｗ

神アプリだから試してみてくれｗ

→http://t.co/e1TZNn26bA http://t.co/nZfBEEvzh3',
	'<a href=::http://v5716.vir.kagoya.net/user01/:: rel=::nofollow::>【緊急速報】日本人女性（27）エボラ感染か！？</a>',
	1548240284
);
INSERT INTO twit_user VALUES (
	'2154731191',
	'PLEASE LIAM ',
	'harrys16inch',
	'filipinigga | luke/4 | haha/5',
	'✖️ good girls are bad girls that havent been caught ✖️',
	8078,5411,'Fri Oct 25 11:41:56 +0000 2013',55650,5411,'en',
	'http://pbs.twimg.com/profile_images/525999524116836352/0Zp9QruW_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'🎤 Hi Liam Payne 🎤
☀️ you;;re my sunshine ☀️
💍 will you please follow me? 💍
🙈 its worth a try 🙈
✨ i love you!! ✨

@Real_Liam_Payne x1,293',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2154731191
);
INSERT INTO twit_user VALUES (
	'552677299',
	'Slicc ⚾',
	'RickDaRula_',
	'',
	'#RIPSaulSandoval I Love You Bro ! #TexansNation #RedNation #GoStros #HoustonTx #FATB',
	872,1042,'Fri Apr 13 12:57:19 +0000 2012',99500,1042,'en',
	'http://pbs.twimg.com/profile_images/522651412245671936/uyZwKKK0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'only 22.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	552677299
);
INSERT INTO twit_user VALUES (
	'525904011',
	'dανιѕιηнσ Ⓜ',
	'romantikoxti27',
	'Guanajuato ',
	'Without her love I can;;t do nothing, with her love there is nothing I cannot do.',
	499,1999,'Fri Mar 16 01:02:12 +0000 2012',30437,1999,'en',
	'http://pbs.twimg.com/profile_images/524974438370902016/kKGCdO2M_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SFGiantsFanss: “@MLB: We mourn the passing of Cardinals outfielder Oscar Taveras. http://t.co/ca8XgY6IYV http://t.co/SAanAxCaRZ” 😢😢',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	525904011
);
INSERT INTO twit_user VALUES (
	'2523666464',
	'エロゲーNEWS',
	'eroge_news_z',
	'',
	'エロゲーを中心に集めました。無料のがほとんどです。あとは、気に入ったものです。イケそうだったらＲＴ！',
	1577,1297,'Sun May 25 23:28:52 +0000 2014',1478,1297,'ja',
	'http://pbs.twimg.com/profile_images/477842340116045824/4ceEkgAO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @appapppfree: 作業簡単すぎてワロタww
一ヶ月で会社に辞表。
ラストチャンスで大勝利ww

→http://t.co/BheaL8Vgxv
２万楽勝すぎる。 http://t.co/M3QmVfaxGT',
	'<a href=::https://twitter.com/hapytime535:: rel=::nofollow::>ＡＰＩ１０月０２日版１号</a>',
	2523666464
);
INSERT INTO twit_user VALUES (
	'2688000012',
	'نسرين الهمامي',
	'AmvrosovNik',
	'',
	'null',
	8,1,'Mon Jul 28 17:59:16 +0000 2014',4037,1,'en',
	'http://pbs.twimg.com/profile_images/523734040981958656/YL4X8LMa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @almatjr: 1 ➊هاشتاغ نشط #كتاب_قرأته_أكثر_من_مرة ➋ الأكثر انتشاراً @almatjr➌اعلان مجاني http://t.co/Fj0rfe4GXN ➍ بيع متابعين☻⤵ http://t.c…',
	'<a href=::http://www.d33n.com/:: rel=::nofollow::>daan test</a>',
	2688000012
);
INSERT INTO twit_user VALUES (
	'1219498898',
	'Sean Murphy',
	'SPMurphy67',
	'',
	'null',
	17,40,'Mon Feb 25 18:23:25 +0000 2013',788,40,'en',
	'http://pbs.twimg.com/profile_images/517740911208300544/NCMwMRWo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Lis_Smith Ashley Dupree laughs at you.',
	'<a href=::https://dev.twitter.com/docs/tfw:: rel=::nofollow::>Twitter for Websites</a>',
	1219498898
);
INSERT INTO twit_user VALUES (
	'2745890043',
	'Amanda ',
	'TirusdaSoftdiva',
	'',
	'Tirulipa da Soft',
	101,274,'Mon Aug 18 01:18:27 +0000 2014',1325,274,'pt',
	'http://pbs.twimg.com/profile_images/511375615011094528/Ln5Prc9u_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@carolinamunhoz Minha mae fica de neura ñ gosta que eu compre pela net,na livraria fica quando?',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2745890043
);
INSERT INTO twit_user VALUES (
	'17080465',
	'bmcvrkel',
	'bmcvrkel',
	'DC',
	'PR professional and forever STEELERS fan...always willing and able to explain why you are wrong!!  These views are strictly my own!',
	110,455,'Fri Oct 31 04:05:52 +0000 2008',1221,455,'en',
	'http://pbs.twimg.com/profile_images/524803208053407744/xQb-Refp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ESPNStatsInfo: Summarizing Ben Roethlisberger;;s record-setting game for the Steelers today http://t.co/Jo0UxeixOe',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	17080465
);
INSERT INTO twit_user VALUES (
	'750787776',
	'steph',
	'Stephatron_',
	'',
	'livin life like a potato',
	288,226,'Sat Aug 11 06:32:39 +0000 2012',3051,226,'en',
	'http://pbs.twimg.com/profile_images/523663450338492420/vsbardsi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Guys guys guys powells essay is due tomorrow night !',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	750787776
);
INSERT INTO twit_user VALUES (
	'1386978618',
	'Thanks Daniaal ♡ : )',
	'NiallerIsSoSexy',
	'Lima,Peru',
	'Everybody want steal my Comida❤️ Follow me♡ I love @OneDirection : ) Thanks for following @_DanialMalik & @MadisonPettis Niall Horan is my obsession ♡ ♡ ♡',
	282,454,'Sun Apr 28 13:43:39 +0000 2013',712,454,'es',
	'http://pbs.twimg.com/profile_images/526428226269114368/kEufLk9l_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1386978618
);
INSERT INTO twit_user VALUES (
	'2172815875',
	'layla 278',
	'sillyladnjh',
	'lp field',
	'so we can start it all over again',
	15217,393,'Sun Nov 03 21:05:35 +0000 2013',54002,393,'en',
	'http://pbs.twimg.com/profile_images/526370420896067584/sImYNmQv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2172815875
);
INSERT INTO twit_user VALUES (
	'39260541',
	'mugugnone',
	'david_purley',
	'Lunigiana',
	'Forgiato in Lunigiana,modifico il vostro mondo. Faccio scelte sconvenienti. Giuoco a pallacanestro (man in the middle for @laspeziatunas) ma non sono credibile.',
	69,358,'Mon May 11 14:27:02 +0000 2009',6346,358,'it',
	'http://pbs.twimg.com/profile_images/378800000363911217/a8bfa78f871a474c26c65843ba5ed96c_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Niente da dire: un finesettimana che ha onorato le aspettative,tanto per cambiare.Ora speriamo che la sveglia non sia un trauma invincibile.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	39260541
);
INSERT INTO twit_user VALUES (
	'495649055',
	'Justin James',
	'justin_m_james',
	'Lexington, SC',
	'Software developer, writer for #TechRepublic in Software Development, and writer for @pwtorch.',
	380,137,'Sat Feb 18 05:29:07 +0000 2012',1345,137,'en',
	'http://pbs.twimg.com/profile_images/3642542915/0a3a9bc4972afa6a81bc17fd61277982_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No, not the fencing with all that slack in it! #hiac',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	495649055
);
INSERT INTO twit_user VALUES (
	'523800700',
	'TEEN',
	'Christine_021',
	'MD',
	'i dont really give a fuck & my excuse is that im young',
	427,348,'Tue Mar 13 23:36:23 +0000 2012',15919,348,'en',
	'http://pbs.twimg.com/profile_images/525763340417912833/UZbvVX1O_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_darriengreen: been about Ya and I;;m still about Ya',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	523800700
);
INSERT INTO twit_user VALUES (
	'399727823',
	'Nessa',
	'larrystuped',
	'larry shipper',
	'eu queria um follow, não sua amizade  @5secondstommo',
	2206,2127,'Thu Oct 27 23:15:11 +0000 2011',18636,2127,'pt',
	'http://pbs.twimg.com/profile_images/524354704755544064/CP-KJRYC_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ourswiftaylor gente eu ia ter um heart attack',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	399727823
);
INSERT INTO twit_user VALUES (
	'2303932942',
	' ★Ŋüĥã★',
	'nuha_c9',
	'',
	'آنا فتاه ملگه بعشقها للهلال ابرز مفاتني كوني من جميلات وطنگ يازعيم لا افقدگ بسببگ انوثتي كما يعتقدون بل اصبح بشعارگ اكثر فتنه',
	343,133,'Sat Jan 25 17:28:44 +0000 2014',2565,133,'ar',
	'http://pbs.twimg.com/profile_images/511605970837860352/GlXfk3wy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله و لا تكلني إلى نفسي طرفـة عيـن http://t.co/6h2y9nCVJu',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	2303932942
);
INSERT INTO twit_user VALUES (
	'320278463',
	'Vonno™',
	'67_Plus2',
	'Chiraq, Drillinois ',
	'My Main Focus is To Remain Focused | No Regrets Just Lessons Learned. C/O ;;15 #Simeon',
	2255,1614,'Sun Jun 19 16:41:14 +0000 2011',120354,1614,'en',
	'http://pbs.twimg.com/profile_images/524364957643575296/juvFWYDH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@MagnificentMone 😒',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	320278463
);
INSERT INTO twit_user VALUES (
	'1597414718',
	'come galletas ✌',
	'MariMorales09',
	'Rio Tercero-Cordoba',
	'Jugadora
 De Basquet♥ #CjS#SLB#LVP#LPDA Te convertiste en el angel que me 
salvo♥ Justin Bieber is my life♥ Never say never and believe♥ Wpp: 3571555041',
	485,445,'Tue Jul 16 03:27:11 +0000 2013',18260,445,'es',
	'http://pbs.twimg.com/profile_images/526277928850825216/HNXt0qZa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @alexisgarciaCVU: Con vos mi alma se volvió a iluminar',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1597414718
);
INSERT INTO twit_user VALUES (
	'2606563600',
	'MATT PLEASE',
	'ohohEspinosa',
	'Nash/Cash   •••    Ireland ',
	'☀︎Waiting for Matt to follow☀︎',
	1203,1602,'Fri Jun 13 15:46:27 +0000 2014',8242,1602,'en',
	'http://pbs.twimg.com/profile_images/518473181783687168/Xdp9F9i4_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TheMattEspinosa that;;s what makes life so precious',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2606563600
);
INSERT INTO twit_user VALUES (
	'741261319',
	'†∞Camila Castillo∞†',
	'LG2cami2LC',
	'Bogotá',
	'No creo en las ilusiones,tengo,sueños,pasiones y metas,el amor lo clasifico como autodestructivo,pero un beso de la personal indicada puede atarte el alma!',
	285,349,'Mon Aug 06 19:23:34 +0000 2012',4709,349,'es',
	'http://pbs.twimg.com/profile_images/520745966652358656/GSMc-JjJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'8 días 😍😍Dios ojala se pueda',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	741261319
);
INSERT INTO twit_user VALUES (
	'506455987',
	'Side Nigga Marko',
	'I_juicedHer',
	'',
	'This side nigga shit ain;;t just a movement oh noooo ✋ this shits a lifestyle❗️ #SNS #SideNiggaShit',
	1356,1213,'Mon Feb 27 21:51:40 +0000 2012',47157,1213,'en',
	'http://pbs.twimg.com/profile_images/513775591250997248/4zeBNCP__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Lagushy_Bitch: My attitude getting worst and worst everyday',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	506455987
);
INSERT INTO twit_user VALUES (
	'478985640',
	'Ben harrison',
	'volcomrider24',
	'',
	'null',
	15,143,'Mon Jan 30 21:54:41 +0000 2012',281,143,'en',
	'http://pbs.twimg.com/profile_images/2865911415/10ecfbf3d9bd543244fa5612a8be2833_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Reds: Our thoughts are with the family of Oscar Taveras and the @Cardinals organization.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	478985640
);
INSERT INTO twit_user VALUES (
	'2713409925',
	'#RahmatnimousTamvan',
	'IDsTamvan03',
	'Surabaya
',
	'Cinta memberikan alasan untuk tersenyum & waktu indah untuk tertawa, tapi kadang cinta juga memberikan kenangan yang tak pernah terlupa.',
	4,9,'Tue Jul 15 22:54:49 +0000 2014',289,9,'en',
	'http://pbs.twimg.com/profile_images/518776639807692800/pqDkiOvD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ratuastiti Bantu Follow akun Kepo yukk Kak → @Keponesianers . Terimakasih kak udah Follow :)',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2713409925
);
INSERT INTO twit_user VALUES (
	'182162810',
	'nicøly',
	'gagafuckings',
	'',
	'bitch don;;t kill my vibe',
	1166,460,'Mon Aug 23 23:54:51 +0000 2010',63499,460,'pt',
	'http://pbs.twimg.com/profile_images/525092673766821888/-3Qm2wm7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'meus deus jdbsjsnsjdn',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	182162810
);
INSERT INTO twit_user VALUES (
	'1260966332',
	'Aleigha',
	'____arb',
	'North Carolina',
	'Like a butterfly, beautiful, yet hard to catch.',
	1445,1220,'Tue Mar 12 03:03:52 +0000 2013',25862,1220,'en',
	'http://pbs.twimg.com/profile_images/526541762601693186/gL0xa8jI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheOneTrueYaya: I;;m at the point where i;;m just letting life take the wheel',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1260966332
);
INSERT INTO twit_user VALUES (
	'467831649',
	'Dalal Al-moqata',
	'dalal_983',
	'♥͡Kuwait♥͡',
	'‏​‏​هـنـاك اشخـاص ظـلـمـونـي وضـرونـي فـ;;يـارب إجـعـل الأيـام تُـبـيـن لـهـم مـا انـا ومـا هُـم.  (الحوبه تبطي بس ماتخطي)',
	289,290,'Wed Jan 18 22:05:49 +0000 2012',4912,290,'en',
	'http://pbs.twimg.com/profile_images/510759074472816641/DLxlDCE7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'الباقيات الصالحات:سبحان الله والحمد لله ولا إله إلا الله والله أكبر و لا حول ولا قوة إلا بالله   http://t.co/WT0g0aHnSq',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	467831649
);
INSERT INTO twit_user VALUES (
	'2501644764',
	'alecia the gangster',
	'alecia_anora',
	'',
	'Bio',
	141,232,'Sat May 17 14:09:11 +0000 2014',844,232,'en',
	'http://pbs.twimg.com/profile_images/521823898321829888/a5dJrM8N_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @shayray44: I;;m laughing harder than I should tbh😂😂 https://t.co/V7zaEOi41n',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2501644764
);
INSERT INTO twit_user VALUES (
	'1713986851',
	'Chelsea',
	'danadayum',
	'',
	'null',
	380,83,'Fri Aug 30 23:11:50 +0000 2013',14300,83,'en',
	'http://pbs.twimg.com/profile_images/525501559887503361/UKaCqBmb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'How has your day been? :) @coleIM5',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1713986851
);
INSERT INTO twit_user VALUES (
	'597181260',
	'leila',
	'lookafterliam',
	'',
	'hobbies: liam',
	2026,398,'Sat Jun 02 04:59:32 +0000 2012',110795,398,'en',
	'http://pbs.twimg.com/profile_images/522979381057028096/IrPXIBNs_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: 😐',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	597181260
);
INSERT INTO twit_user VALUES (
	'234652588',
	'▃ ▅ ▆ █【KG】 █ ▆ ▅ ▃ ',
	'K88G',
	'CAROLINA SOUTH',
	'YOU JUST WANT ME CUZ IM NEXT #SFMG #MEANBUSINESS #FocusedPhotos #GMEBOYz #SCSU #Instagram: KGtheArtist #YouTube: Keith Gee',
	1385,1491,'Thu Jan 06 06:22:42 +0000 2011',41580,1491,'en',
	'http://pbs.twimg.com/profile_images/479337445230526464/bG8w5KEc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @DJCHUCKT: [SpinMyHit Priority] @KGTheArtist FT. HALO &amp; SKII FLY - ::PORSCHE DREAMS:: (CLEAN/DIRTY) http://t.co/bSWSjubvXY via @stay_focus…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	234652588
);
INSERT INTO twit_user VALUES (
	'2151382211',
	'aca manda ian lol',
	'abriMansilla',
	'En donde Mi Mejor Amiga este',
	'CJS en todo momento♥ Te quiero banda abri , yo Ian.  NUNCA ME FALTES MEJORAMIGA TEAMO #mili',
	222,157,'Thu Oct 24 18:33:31 +0000 2013',9950,157,'es',
	'http://pbs.twimg.com/profile_images/512696426535469056/ZBNqK76Z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tequieromalik: 2 meses y ya es 2015 ¿qué hice en todo el año?',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2151382211
);
INSERT INTO twit_user VALUES (
	'1558943803',
	'TATA',
	'18tlouis',
	'',
	'❁   there is nothing on this earth better than a genuinely happy louis tomlinson   ❁',
	10792,277,'Sun Jun 30 20:56:54 +0000 2013',115124,277,'pt',
	'http://pbs.twimg.com/profile_images/526428901904363520/7WBYTnA1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Harry_Styles im being ignored for the band since 2 years can you change it',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1558943803
);
INSERT INTO twit_user VALUES (
	'1780372159',
	'//////////',
	'infectedbybands',
	'',
	'Youre the oops to my Hi                                         Cali ✌',
	456,324,'Sat Sep 07 22:05:00 +0000 2013',13111,324,'en',
	'http://pbs.twimg.com/profile_images/523695235402985474/S28uPVQJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne Be a zombie or crayon!!!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1780372159
);
INSERT INTO twit_user VALUES (
	'576531679',
	'Vic Williams',
	'vic_t_williams',
	'Tulsa',
	'My life is all about drag, my family, and living life to the fullest. Automotive Service Tech is my goal. I;;m a lesbian with an exception.',
	126,392,'Thu May 10 20:02:34 +0000 2012',711,392,'en',
	'http://pbs.twimg.com/profile_images/503842511203598337/jEPn8bJ5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@wolfcriedNat come to Majestic!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	576531679
);
INSERT INTO twit_user VALUES (
	'2563751927',
	'will',
	'GrandeWILL1',
	'',
	'null',
	106,89,'Sun May 25 16:54:46 +0000 2014',4203,89,'pt',
	'http://pbs.twimg.com/profile_images/525016050203889664/MZAr2_UK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'To com 17 % d bateria',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2563751927
);
INSERT INTO twit_user VALUES (
	'2717567232',
	'Tiffany Jordan',
	'jordantiffany41',
	'The USA',
	'a writer/poet/theater alum/extra actress/ singer/ costume assistant.  I love being me!',
	783,2001,'Fri Aug 08 17:34:08 +0000 2014',2113,2001,'en',
	'http://pbs.twimg.com/profile_images/497798820399693824/yO8iozd6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Tune in tonight to watch #mbfl on youtube. Type in Jona Nanette. This is part two. Yay!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2717567232
);
INSERT INTO twit_user VALUES (
	'1498918777',
	'Spencer Russell',
	'Spencer1519',
	'',
	'Hi. I;;m awkward.',
	101,108,'Mon Jun 10 17:45:41 +0000 2013',175,108,'en',
	'http://pbs.twimg.com/profile_images/500433461807575040/sDR3pQN6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WalkingDead_AMC: RT for a chance to win a signed Polaroid of #TheWalkingDead cast! #TWDCastSweeps http://t.co/qT6u6gIZYM',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1498918777
);
INSERT INTO twit_user VALUES (
	'2513380783',
	'Hiena de metal \m/',
	'V8DESTRUCCION',
	'',
	'Y vengan 
todos acá hay un lugar. Junto a las brigadas del metal.
 ...',
	402,426,'Wed May 21 18:49:28 +0000 2014',4636,426,'es',
	'http://pbs.twimg.com/profile_images/515144392642818049/Me1PL11e_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @PableteSeverson: —Señor, ¿no tiene latas de Coca-Cola de nombres que empiecen con ‘‘L’’?
—Claro, hay Laura, Lina, Liz… ¿Cómo te llamas?…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2513380783
);
INSERT INTO twit_user VALUES (
	'246129431',
	'love & danger',
	'gotommmogo',
	'ᵅʳᶢᵉᵑᵗᶥᵑᵅ ᵚʰᵉʳᵉ ᵚᵉ ᵅʳᵉ',
	'I was part of WWA 03.05.14- 04.05.14 ben winston answered me 11.10.14',
	10084,9998,'Wed Feb 02 05:32:38 +0000 2011',82222,9998,'es',
	'http://pbs.twimg.com/profile_images/525385203054051329/vlKMWyoU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	246129431
);
INSERT INTO twit_user VALUES (
	'1681979850',
	'eRa Supreme',
	'eRaSupreme',
	'California',
	'Leader of @eRa_Eternity & @TheAutomaticHQ',
	41133,408,'Mon Aug 19 01:05:02 +0000 2013',16442,408,'en',
	'http://pbs.twimg.com/profile_images/522988033507725312/AD76JpQQ_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Fatalityy_ nobody hates him his tweets are just awful',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1681979850
);
INSERT INTO twit_user VALUES (
	'925994762',
	'1989',
	'swiftlyjb',
	'miranda ari & justin follow',
	'normal is boring',
	4960,4649,'Sun Nov 04 19:34:58 +0000 2012',24394,4649,'en',
	'http://pbs.twimg.com/profile_images/525067335858929664/dZawGa5P_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@SICKRAUHLS Amina;;s voice?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	925994762
);
INSERT INTO twit_user VALUES (
	'185754022',
	'Sameer Bhalla',
	'sambhall',
	'Bay Area',
	'null',
	119,367,'Wed Sep 01 19:18:51 +0000 2010',168,367,'en',
	'http://pbs.twimg.com/profile_images/1447226236/image_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @dgoold: #cardinals and Taveras;; agent confirm that the 22-year-old outfielder died this afternoon. Another sudden tragedy for the club,…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	185754022
);
INSERT INTO twit_user VALUES (
	'2389909976',
	'Retrasado-chan.',
	'AkatsukiXisco',
	'No lo se xd.',
	'玉 無 Stalker a ratos, xico geimer, AFK pro player -Relleno-. Tengo el mejor novio del mundo, @bakasaurio. @akatsukiSyndra Puta ama.',
	359,197,'Fri Mar 14 21:50:59 +0000 2014',28001,197,'es',
	'http://pbs.twimg.com/profile_images/519961374416314368/AZsuRHQK_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @HumorEnTuits: «Hoy empecé con el pie derecho».

—Un caníbal en el desayuno.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2389909976
);
INSERT INTO twit_user VALUES (
	'84200267',
	' Call me Coach',
	'iiBRoyaL',
	'757 South Norfolk',
	'Practice makes perfect Im perfect so I dont practice now',
	3327,3428,'Thu Oct 22 00:37:06 +0000 2009',33586,3428,'en',
	'http://pbs.twimg.com/profile_images/514024076571332608/xDkgdk7T_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@_babyyfacesara negative yall all da same 😂😂',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	84200267
);
INSERT INTO twit_user VALUES (
	'2548840614',
	'Jerry',
	'jerryphilemy',
	'',
	'I wish I was Carlton',
	66,72,'Thu Jun 05 23:27:51 +0000 2014',234,72,'en',
	'http://pbs.twimg.com/profile_images/515281525710278656/jnhYcy5d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Cholowithalimp: bein 18 don;;t make u grown... handlin your business like an adult does',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2548840614
);
INSERT INTO twit_user VALUES (
	'311788500',
	'Iliana',
	'ilicerna_nh',
	'El Salvador',
	'I love God❤️The best day to me 21/01/14❤️ I love @NiallOfficial and I love music',
	752,540,'Mon Jun 06 02:09:09 +0000 2011',24260,540,'es',
	'http://pbs.twimg.com/profile_images/526199165756657664/lLeGzNiP_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ao_tfios: I wanna be the reason you smile.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	311788500
);
INSERT INTO twit_user VALUES (
	'327735472',
	'、° ましゅもと ° 、',
	'hsnyaa',
	'Instagram :: gnyaa',
	'○▲  洋服 と 音楽 と きのこ',
	350,309,'Sat Jul 02 02:09:48 +0000 2011',37269,309,'ja',
	'http://pbs.twimg.com/profile_images/524584338738774016/hbNi2onR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'挟まってた http://t.co/49P1ezYkRS',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	327735472
);
INSERT INTO twit_user VALUES (
	'1152630560',
	'moosh',
	'_matthewrooney',
	'262',
	'Four score and bout a week ago.',
	351,266,'Wed Feb 06 02:08:53 +0000 2013',4487,266,'en',
	'http://pbs.twimg.com/profile_images/509729809648582656/ss3L1htM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Ya so my mom is this close at the packer game tonight... http://t.co/JULKcvbf2Z',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1152630560
);
INSERT INTO twit_user VALUES (
	'2344559377',
	'Lauren ♡',
	'RefinedFashi0n',
	'FL',
	'Licensed Skin Care Specialist | Obsessed with makeup and zombies ❤️ ig: refinedfashi0n',
	261,91,'Sat Feb 15 04:40:05 +0000 2014',2074,91,'en',
	'http://pbs.twimg.com/profile_images/525119562707398656/chMTvO5H_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'🎃📺💀 http://t.co/iPoeZjVDTG',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2344559377
);
INSERT INTO twit_user VALUES (
	'540525582',
	'LIVESIDERADIO',
	'livesideradio',
	'MIAMI FL',
	'2014 THE NEW LIVESIDERADIO ENT IN THE ONLY HIP HOP AND RNB ONLINE RADIO STATION101.1FM BLAZING ON THE RADIO SOON DJ THUGHOUND LIVE WWW.1011LIVESIDERADIO. NET ht',
	659,2002,'Fri Mar 30 01:58:43 +0000 2012',1727,2002,'en',
	'http://pbs.twimg.com/profile_images/526542460047335425/ksPnYsny_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/TFDwfBca0K',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	540525582
);
INSERT INTO twit_user VALUES (
	'332569825',
	'ray ',
	'xohoransbabe',
	'',
	'take a girl to dinner, before you fuck her up the ass',
	3362,495,'Sun Jul 10 01:54:50 +0000 2011',53435,495,'en',
	'http://pbs.twimg.com/profile_images/524432481324662784/lwszPJAb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'such a nice view http://t.co/68UVSwNU1T',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	332569825
);
INSERT INTO twit_user VALUES (
	'363699504',
	'NewsCaster Serbia',
	'NewsCastSerbia',
	'SERBIA',
	'GREAT NEWS FROM SERBIA',
	481,1124,'Sun Aug 28 15:00:12 +0000 2011',83357,1124,'en',
	'http://pbs.twimg.com/profile_images/1517497832/4444_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Now hospitals are saving babies born at just 22 weeks: Medical advances raise new doubts on abortion limit : D... http://t.co/3kpLyAClLr',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	363699504
);
INSERT INTO twit_user VALUES (
	'2545126824',
	'エロ童子',
	'doujimaru',
	'',
	'エッチな写真を紹介します　おっぱい　お尻　裸　裸体　少女　アート　イラスト　小説紹介　ロリ',
	20,17,'Wed Jun 04 03:25:25 +0000 2014',42842,17,'ja',
	'http://pbs.twimg.com/profile_images/474378372701630466/yyLt-V-R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'私が今みたいに若くて美しくなくなっても　あなたはちゃんと愛してくれる？ 私が純粋な心でなくなって今とは変わってしまってもあなたはちゃんと愛してくれる？ http://t.co/k0VLJ69bmG',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2545126824
);
INSERT INTO twit_user VALUES (
	'476997785',
	'Frase Cruda',
	'UnaFraseCruda',
	'Venezuela',
	'Tweets Random.',
	58076,10217,'Sat Jan 28 18:34:29 +0000 2012',427,10217,'es',
	'http://pbs.twimg.com/profile_images/492461673257521152/Nz8ol8A-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @NoSoyCorleone: Me niego a permitir que mis temores por el futuro arruinen mi presente.',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	476997785
);
INSERT INTO twit_user VALUES (
	'2479822904',
	'☆るーちゃん☆',
	'MaccyaVanilla',
	'',
	'直江津＞＞＞上総1637　/ピカチュウLove♥/美女めん/NOオブラートYESストレート',
	234,229,'Tue May 06 13:26:23 +0000 2014',3038,229,'ja',
	'http://pbs.twimg.com/profile_images/519459087776354304/DnG3UH2T_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@envix_24 
明日関根も早帰りでしょ

親のお手伝い(｀-ω-´)

そして言い忘れたが
あたしはデブではない((ｷﾘｯ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2479822904
);
INSERT INTO twit_user VALUES (
	'2775985549',
	'忍者ハットリくん',
	'ninjya_hattori',
	'',
	'忍者ハットリ！ただいま参上でござるよ。',
	154,905,'Thu Aug 28 07:42:37 +0000 2014',2305,905,'ja',
	'http://pbs.twimg.com/profile_images/504897802422345728/JdorEpr9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'ボーリングの穴にオリーブ油を入れて営業妨害でござる  の巻',
	'<a href=::https://twitter.com/ninjya_hattori:: rel=::nofollow::>1015</a>',
	2775985549
);
INSERT INTO twit_user VALUES (
	'335956445',
	'やよbot',
	'yayo_puchi',
	'四条家に居候中',
	'ぷちます！の元気系ぷちどる「やよ」のbot(非公式)
管理者：双葉P（@futaba2010）',
	3350,1875,'Fri Jul 15 14:31:07 +0000 2011',110404,1875,'ja',
	'http://pbs.twimg.com/profile_images/477050082517217280/r_6QrWGb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@YukipoBot う～　　・・・・・・うぅ？？',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	335956445
);
INSERT INTO twit_user VALUES (
	'1258944000',
	'OFFICIAL ACCOUNT:)',
	'dewa_rully',
	'mamuju sulawesi barat indonesi',
	'Do what makes you happy. Be with who
makes you smile. Laugh as much as you
breathe. Love as long as you live.
instagram: Rully_Dewa',
	244,617,'Mon Mar 11 08:46:55 +0000 2013',5837,617,'en',
	'http://pbs.twimg.com/profile_images/518026099616268288/TMb1cw1G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Don;;t cry for a man who;;s left you; The next one may fall for your smile.',
	'<a href=::http://sites.google.com/site/yorufukurou/:: rel=::nofollow::>YoruFukurou</a>',
	1258944000
);
INSERT INTO twit_user VALUES (
	'311110334',
	'maya',
	'MayaBerdan',
	'Calabasas',
	'null',
	97,118,'Sat Jun 04 22:31:07 +0000 2011',185,118,'en',
	'http://pbs.twimg.com/profile_images/525341018527645696/nJvA4vZd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne you must be enjoying this',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	311110334
);
INSERT INTO twit_user VALUES (
	'63606812',
	'BajoLaMismaEstrella',
	'Filosofo_Cabron',
	'Tuxtla Gtz, Chiapas',
	'Nutriologo Y De Chiapas
Contacto:Nutri_giron@hotmail.com
http://www.instagram.com/davidgiron_',
	170297,88703,'Fri Aug 07 01:56:06 +0000 2009',49731,88703,'es',
	'http://pbs.twimg.com/profile_images/512325335296122880/2j0Cozs-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @UnDislexico: Estos podremos ser nosotros. http://t.co/VYs6jtaz4E',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	63606812
);
INSERT INTO twit_user VALUES (
	'38891723',
	'StayHere⚓️',
	'VivaLaTonia_',
	'Arlington; San Marvelous',
	'Hebrews 11:1; TXST16; Liberian.',
	379,574,'Sat May 09 17:33:24 +0000 2009',16445,574,'en',
	'http://pbs.twimg.com/profile_images/523733934618595329/Hx79xF8__normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@bxbybambam lmao how many do we take?? @exxxile_saveon',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	38891723
);
INSERT INTO twit_user VALUES (
	'17109233',
	'ハイキュー!!×喰種',
	'HQ_gu_ru',
	'埼玉',
	'喰種化したハイキュー!!キャラの画像をあげていきます！#ハイキューキャラを喰種化してみた',
	1269,729,'Sun Nov 02 02:39:15 +0000 2008',174,729,'en',
	'http://pbs.twimg.com/profile_images/523467455541178368/0QH5rEZv_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @kenma_s_app: ファイナルファンタジー7のアプリが登場！

クラウドを操作して
敵をなぎ倒せ！

ios→http://t.co/6VHfrFaqxh
and→http://t.co/WK5EG1KuL0

事前予約で限定アイテムもらえる♪ http://t.…',
	'<a href=::https://twitter.com/aobaHQ_owarai:: rel=::nofollow::>t4o2new</a>',
	17109233
);
INSERT INTO twit_user VALUES (
	'1621745658',
	'DeMiNovio♡',
	'RomiSantanav',
	'Barrio Vialidad',
	'SOY TODA DE MI NOVIO!! el&yo jps.',
	1088,789,'Fri Jul 26 02:07:30 +0000 2013',46248,789,'es',
	'http://pbs.twimg.com/profile_images/522160344744353792/LGSiEAGH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'no me meti, dije q le tenia asco noma',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1621745658
);
INSERT INTO twit_user VALUES (
	'1104714973',
	'Amandine ',
	'Amandine210699',
	'sur ton écran ',
	'La distance ne veux rien dire quand les deux coeurs sont liés ~ Alexis ~',
	1129,1923,'Sat Jan 19 21:30:16 +0000 2013',10075,1923,'fr',
	'http://pbs.twimg.com/profile_images/526067175262789632/aznRJaFy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Demain jai mo nouveau portable !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1104714973
);
INSERT INTO twit_user VALUES (
	'2809259163',
	'Seeba :3',
	'sebafede_rojas',
	'',
	'null',
	12,99,'Sun Oct 05 23:19:53 +0000 2014',54,99,'es',
	'http://pbs.twimg.com/profile_images/519672868334870529/o_vxEFH1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Se re calento AJJAJAJAJA mañana se le va a pasar c: ah',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2809259163
);
INSERT INTO twit_user VALUES (
	'306000230',
	'Sara Mannes',
	'saramannes',
	'',
	'Who is John Galt?',
	173,178,'Fri May 27 03:26:12 +0000 2011',896,178,'en',
	'http://pbs.twimg.com/profile_images/510623496574357504/WNunXLQ2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'shamelessly in love with the Carrie Diaries',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	306000230
);
INSERT INTO twit_user VALUES (
	'2523520011',
	'RaYrIcE',
	'tylermeredith70',
	'Niagara Falls ',
	'i came bearing only the beat of my heart and the best of my intentions',
	112,267,'Fri May 02 15:35:46 +0000 2014',420,267,'en',
	'http://pbs.twimg.com/profile_images/526294083665674241/OkyogTwg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Dude i cant wait for dominick to come get me turn up',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2523520011
);
INSERT INTO twit_user VALUES (
	'204466784',
	'Ana.✌ ',
	'iAdoringCam',
	'July twenty one at 01:04 am.',
	'this love will be the death of me, but i know... i;;ll die happily.||Justin, The Rosso Sisters, Madison, Cody, Cimorelli and John fwed|| Madison rted. Lox faved.',
	7690,6935,'Mon Oct 18 19:19:43 +0000 2010',78826,6935,'en-gb',
	'http://pbs.twimg.com/profile_images/526456360813088768/IK5I4vCn_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Foto:  http://t.co/tXFmhWghtn',
	'<a href=::http://www.tumblr.com/:: rel=::nofollow::>Tumblr</a>',
	204466784
);
INSERT INTO twit_user VALUES (
	'255243457',
	'N/N ',
	'Eddie_Ficio',
	'Armenia, Colombia',
	'I speak Gringo, Taco and Baguette. Coquin déguisé. Ghibli, Nintendo, and Zelda fan. R∆ - ⏃.',
	557,326,'Sun Feb 20 23:54:46 +0000 2011',66116,326,'es',
	'http://pbs.twimg.com/profile_images/525376575198736384/nJ_IqQZM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'The nature of life is not permanence, but flux.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	255243457
);
INSERT INTO twit_user VALUES (
	'133213321',
	'Arian',
	'ariancaballero',
	'manila philippines',
	'null',
	444,802,'Thu Apr 15 08:43:50 +0000 2010',11709,802,'en',
	'http://pbs.twimg.com/profile_images/480308039749087232/LEjib3Jc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@ANNAlyzation magpahinga lang. Haha. Masyado napagod sa school. 😪😪✌️',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	133213321
);
INSERT INTO twit_user VALUES (
	'257078353',
	'Ana Claudia ',
	'weanna_',
	'Cláudio - Minas Gerais ',
	'snapchat: nanerib',
	593,290,'Thu Feb 24 17:44:56 +0000 2011',46337,290,'en',
	'http://pbs.twimg.com/profile_images/514703361984442368/TS4IpQiR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Como se não bastasse ainda tenho que ler uma porcaria dessa 👇',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	257078353
);
INSERT INTO twit_user VALUES (
	'14074819',
	'Rodríguez',
	'wandarodriguez',
	'Editora Revista El Paracaídas ',
	'PALTA Y FUSIL',
	4879,1201,'Mon Mar 03 22:10:49 +0000 2008',74636,1201,'en',
	'http://pbs.twimg.com/profile_images/3467428254/9c2e3b6b7c623a6bfa83e634b32836c5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@esterinh jajaja, sufre amarrada',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	14074819
);
INSERT INTO twit_user VALUES (
	'260489439',
	'Laurie Hudgins',
	'LabBreeder',
	'Virginia',
	'A kind word costs nothing, but can accomplish a great deal! Owned by lots of gr8 dogs, love Hallmark Channel & proud member of the #Hearties.',
	71,158,'Fri Mar 04 00:08:30 +0000 2011',881,158,'en',
	'http://pbs.twimg.com/profile_images/519897852705660928/0oGOyYtO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No, don;;t let him
in...#GarageSaleMystery',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	260489439
);
INSERT INTO twit_user VALUES (
	'820549098',
	'Captain Red Beard',
	'JLitt360',
	'',
	'Smile like you mean ittt. Some say I;;m sarcastic, but i dont see it. The Cubs, Bears, music, videogames and superheroes.',
	212,139,'Wed Sep 12 23:52:12 +0000 2012',4050,139,'en',
	'http://pbs.twimg.com/profile_images/524443856100925440/EAiPpttT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Daaaaaangit missed the first 15 minutes',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	820549098
);
INSERT INTO twit_user VALUES (
	'173705031',
	'Ox From Belly',
	'FameCipriano',
	'Gettin It Out The Mud',
	'21 | You Don;;t Know My Story, You Know What I Show You | #TeamCMU |Need a host, promotion, or event planning? BOOK ME #LivingLegendz',
	6472,5668,'Mon Aug 02 04:14:20 +0000 2010',162681,5668,'en',
	'http://pbs.twimg.com/profile_images/525839648182898689/2OS_lyFd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KekeMontana_ huh?',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	173705031
);
INSERT INTO twit_user VALUES (
	'1055004510',
	'MOAMEN',
	'Moamen28Moamen',
	'',
	'No Bio',
	948,1282,'Wed Jan 02 12:45:47 +0000 2013',3404,1282,'en',
	'http://pbs.twimg.com/profile_images/524325321282031616/WtrOn9MQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'سـأحــــاول أن أتـفـــــائـــــل رغــم أن كــل شـيء حـولـــي [ يــسـد الـنـفــس ]',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1055004510
);
INSERT INTO twit_user VALUES (
	'243244129',
	'castiela ',
	'deubranco_',
	'',
	'tu reclama que eu fumo demais, mas no fim das contas gosta da energia que a planta me traz ☮',
	1238,324,'Wed Jan 26 16:38:14 +0000 2011',107175,324,'pt',
	'http://pbs.twimg.com/profile_images/514209717342593026/JAZfiaVU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'meu psicológico não está preparado para ter que acordar cedo amanhã',
	'<a href=::https://mobile.twitter.com:: rel=::nofollow::>Mobile Web (M2)</a>',
	243244129
);
INSERT INTO twit_user VALUES (
	'2838335686',
	'Joe Moore',
	'jfmoore1',
	'',
	'null',
	3,4,'Mon Oct 20 17:47:33 +0000 2014',4424,4,'en-gb',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'5769 minutes to TNF! #PythonsNFLuk @nfl_uk',
	'<a href=::http://pythons.com:: rel=::nofollow::>PythonsTwtBot</a>',
	2838335686
);
INSERT INTO twit_user VALUES (
	'1364955104',
	'Belive In Me❤',
	'iYosoyxochitl',
	'México ',
	'16. Vivir por el momento porque todo lo demás es incierto.// ❤Patch Cipriano & Daniel Grigori❤ Snap: xochitlgm',
	464,413,'Fri Apr 19 17:23:30 +0000 2013',6302,413,'es',
	'http://pbs.twimg.com/profile_images/524963833744736256/2VhUUnE9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Still not found the one',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1364955104
);
INSERT INTO twit_user VALUES (
	'344973395',
	'Man Of The Year',
	'Kell_Houston',
	'',
	'Feeling Like The Man Of The Year',
	2274,1872,'Fri Jul 29 21:42:25 +0000 2011',42839,1872,'en',
	'http://pbs.twimg.com/profile_images/526118564580040704/ZpFErbJ2_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Positive_Kyree yea but yall still a solid team',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	344973395
);
INSERT INTO twit_user VALUES (
	'2700313864',
	'Shawn Mendes is bae.',
	'tonssxo_',
	'bish whet?',
	'magcon boys are life.',
	118,122,'Fri Jul 11 20:27:15 +0000 2014',236,122,'en-gb',
	'http://pbs.twimg.com/profile_images/511279852037898241/NE2Fi5lq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MadisonElleBeer: sometimes it;;s hard to face reality',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2700313864
);
INSERT INTO twit_user VALUES (
	'539437083',
	'sophia | pcd no thnx',
	'gothmiley',
	'',
	'this isnt just a pancake this is a freaking delia smith pancake 
i love @blueberrylouiis',
	1159,736,'Wed Mar 28 20:17:02 +0000 2012',19242,736,'en',
	'http://pbs.twimg.com/profile_images/511159526213840896/lavOWDRg_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	539437083
);
INSERT INTO twit_user VALUES (
	'842343360',
	'bruno',
	'brunnocammargo',
	'',
	'null',
	3484,1856,'Sun Sep 23 20:25:16 +0000 2012',49690,1856,'pt',
	'http://pbs.twimg.com/profile_images/520778825861324800/9s92UPnv_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'se amanhã sair stills quero johanna, tris cortando o cabelo, ataque na amizade e sem-facções',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	842343360
);
INSERT INTO twit_user VALUES (
	'2730991845',
	'QUEEN♍️',
	'RaeBambitious_',
	'',
	'Queen of my own castle | too cute for my own good | 07.22.2k14 | JCSU #18',
	193,193,'Fri Aug 01 20:12:32 +0000 2014',1198,193,'en',
	'http://pbs.twimg.com/profile_images/510466516312420352/hlwzBh4p_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mkingasaurous: I swear every time I take a fall I get back up stronger every time 💪',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2730991845
);
INSERT INTO twit_user VALUES (
	'2565265777',
	'Fajoor',
	'Fj38x_',
	'سعد العبدالله ',
	'ويُعطي الله بالظن الجميل جمالاً لم تراه العيون ♡ ;; 17 ;;something couldnt be twice ;$',
	679,88,'Fri Jun 13 12:44:18 +0000 2014',18160,88,'ar',
	'http://pbs.twimg.com/profile_images/526411679341359104/LDScn2-U_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'الباقيات الصالحات:سبحان الله والحمد لله ولا إله إلا الله والله أكبر و لا حول ولا قوة إلا بالله   http://t.co/LzxV1dbQvl',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	2565265777
);
INSERT INTO twit_user VALUES (
	'340245743',
	'stay real',
	'stylesmess',
	'280614',
	'is it too much to ask for something great?',
	2212,1012,'Fri Jul 22 11:27:59 +0000 2011',42829,1012,'en',
	'http://pbs.twimg.com/profile_images/506374111803633664/1oRlpndB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Still not found the one',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	340245743
);
INSERT INTO twit_user VALUES (
	'2770434201',
	'Dean Winchester',
	'alluringhybrid5',
	'',
	'(SPN RP MV 21+)',
	264,431,'Sun Sep 14 21:07:05 +0000 2014',744,431,'en',
	'http://pbs.twimg.com/profile_images/525609993748627457/Gqa_9lVT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@BurntWings_ ::he smirks and slides him into his mouth quickly',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2770434201
);
INSERT INTO twit_user VALUES (
	'715977319',
	'Furhdéz Rbk',
	'Loto22De',
	'Canada',
	'¡¡¡ México despierta ya !!!',
	177,315,'Wed Jul 25 12:20:20 +0000 2012',6388,315,'es',
	'http://pbs.twimg.com/profile_images/523154485573464064/BTkcpbO1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Pajaropolitico: El secuestro de los estudiantes de #Ayotzinapa ha encendido alarma entre organizaciones a nivel nacional y mundial—&gt; ht…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	715977319
);
INSERT INTO twit_user VALUES (
	'2544417644',
	'Nigga ツ ',
	'AleBorda7',
	'',
	'Perdoname por tener miedo.Perdoname por alejarme de vos.Esto es lo que hago, a eso me dedico, a cagarla cuando todo va muy bien.',
	282,273,'Tue Jun 03 22:01:40 +0000 2014',5443,273,'es',
	'http://pbs.twimg.com/profile_images/516290358179680256/L9D8MlC5_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JohaaRiquelme: -Te contesto para no hacerte sentir mal
Gracias negro,feo,fiero,forro,sorete,siempre tan amoroso conmigo',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2544417644
);
INSERT INTO twit_user VALUES (
	'620282064',
	'your wce',
	'jenniferkaaaa',
	'IG: __goldcruelty',
	'null',
	496,238,'Wed Jun 27 17:50:35 +0000 2012',14038,238,'en',
	'http://pbs.twimg.com/profile_images/477460487399940096/f4zFDTNv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LulMixedBreed: HDM 👀😈 #RT',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	620282064
);
INSERT INTO twit_user VALUES (
	'1716594637',
	'Makayla Quinn',
	'mquinntbird',
	'El Paso, Tx',
	'see yourself in paradise⚓️',
	51,191,'Sat Aug 31 19:20:57 +0000 2013',380,191,'en',
	'http://pbs.twimg.com/profile_images/483364258093088769/A5exWFMX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne a knight😊',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1716594637
);
INSERT INTO twit_user VALUES (
	'2878000117',
	'Dream wedding',
	'DreamOnl2forme2',
	'',
	'It is a wise father that knows his own child.
		-- William Shakespeare, The Merchant of Venice',
	0,0,'Sun Oct 26 07:31:52 +0000 2014',9,0,'en',
	'http://pbs.twimg.com/profile_images/526285231490203649/0gOwFj2F_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'An outdoor fall wedding ceremony decorated with crisp fallen leaves. A beautiful way to add color to the aisle. http://t.co/XFQME0J8kP',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2878000117
);
INSERT INTO twit_user VALUES (
	'1975968391',
	'がりゅーん',
	'nagamonprpr',
	'',
	'兵卒のがりゅーんです、よろしく。',
	90,148,'Sun Oct 20 18:08:56 +0000 2013',24352,148,'ja',
	'http://pbs.twimg.com/profile_images/525290230866120704/gt3FHN5z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'兄貴私服似合うんすよ http://t.co/SKvhf178nU',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1975968391
);
INSERT INTO twit_user VALUES (
	'34763171',
	'256 DAYS!',
	'Lovely_Horan150',
	'UTAH',
	'| TMH: 7/25/13 & WWA: 9/12/14 & 9/13/14 & OTRA: 7/09/14 | -- The moment the lights go out..i;;m home. --Michael+Band/4',
	6516,5500,'Thu Apr 23 23:04:16 +0000 2009',50765,5500,'en',
	'http://pbs.twimg.com/profile_images/525841460680482816/9t24hFbR_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne You little shit! This is not a game 😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	34763171
);
INSERT INTO twit_user VALUES (
	'2787634959',
	'Kaps',
	'clapsforkaps',
	'',
	'I;;m one of a kind making a differrnce each day. sarcasm is my first language.  ❌⭕️❌⭕️',
	21,86,'Sat Sep 27 18:44:47 +0000 2014',29,86,'en',
	'http://pbs.twimg.com/profile_images/515943215703531520/kQFsFVCx_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JordanSchnepp: #SingleBecause I didn;;t forward the chain email in 2004',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2787634959
);
INSERT INTO twit_user VALUES (
	'635904621',
	'Täñńēr',
	'SpiveyTanner',
	'',
	'bitch me too!',
	354,286,'Sun Jul 15 02:15:44 +0000 2012',13534,286,'en',
	'http://pbs.twimg.com/profile_images/526523056312053761/Okrzkf4j_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @SamuelDaGoat: School has me like http://t.co/svESTWZ8sK',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	635904621
);
INSERT INTO twit_user VALUES (
	'2349387636',
	'Jasa Tambah Follower',
	'TingkatFoll4',
	'PIN 2855E9B5 / 081996362500',
	'Solusi untuk popularitas dan bisnis anda | Kami menyediakan Follower Aktif asli INDONESIA | Bukti ? Cek Favorites | Iklan berkala di 8 akun | Cbg @TingkatFoll1',
	21682,7405,'Tue Feb 18 02:13:56 +0000 2014',49592,7405,'id',
	'http://pbs.twimg.com/profile_images/441391282665975808/S9Vw0g_l_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Kami hanya menggunakan metode &amp; tehnik yang 100% aman dalam mengirimkan follower. Mau? Hub / sms / WA : 081996362500 | 2855E9B5',
	'<a href=::http://www.grabinbox.com:: rel=::nofollow::>GrabInbox</a>',
	2349387636
);
INSERT INTO twit_user VALUES (
	'2856404190',
	'Nica Guevarra',
	'jnncgvrr',
	'',
	'kyodaina kokoro to kyukutsu kurozettoーtsuki moderu',
	42,233,'Wed Oct 15 07:53:15 +0000 2014',398,233,'en',
	'http://pbs.twimg.com/profile_images/522388605612736513/-oT7NDdd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Po pow pay !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2856404190
);
INSERT INTO twit_user VALUES (
	'2827205058',
	'Verlander ',
	'mariomorales_24',
	'',
	'⚾',
	96,68,'Tue Sep 23 01:54:59 +0000 2014',1111,68,'en',
	'http://pbs.twimg.com/profile_images/523878746441662464/pF3R-98R_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'bumgarner is so nasty',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2827205058
);
INSERT INTO twit_user VALUES (
	'286938642',
	'Chloe:: no Kardashian',
	'___ChloeC',
	'',
	'Ain;;t nothing like a strong mind and some confidence',
	337,401,'Sun Apr 24 00:49:13 +0000 2011',6788,401,'en',
	'http://pbs.twimg.com/profile_images/518849532029698048/zuANzgbY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @QuietBz: Have People In Yo Corner That;;s Bout Progress!!!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	286938642
);
INSERT INTO twit_user VALUES (
	'2798706421',
	'mache bobo',
	'MacheYby',
	'',
	'null',
	1,3,'Mon Sep 08 21:46:54 +0000 2014',17685,3,'en',
	'http://pbs.twimg.com/profile_images/509096102788739072/xGJ8G1v3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#LGG3 #GalaxyNote4 - Sources have hinted that LG and Samsung are planning to push the newest Android 5.0 Lollipop… http://t.co/Z64DqpVvTF',
	'<a href=::http://dlvr.it:: rel=::nofollow::>dlvr.it</a>',
	2798706421
);
INSERT INTO twit_user VALUES (
	'2567052331',
	'さくぱん@おかん系男子',
	'agagkarisuma',
	'',
	'CAS配信/得意技ゎ人ぉムカつかせることだぉ☆/フォロバ100%/顔年齢高め/ダメ人間開き直り系/暇人を全力で支えてやるよ',
	95,102,'Sat Jun 14 12:30:39 +0000 2014',1296,102,'ja',
	'http://pbs.twimg.com/profile_images/488642184111857664/MMLfdmrv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@taka_daruma_88 かつゆき',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2567052331
);
INSERT INTO twit_user VALUES (
	'2739788905',
	'いわちりりん',
	'Marble123ren',
	'',
	'☞神宮寺/あらちか世代kinkan/なにわ皇子☜ 要はJr.担✌︎◎れんれん◎れんしょう◎松松コンビ◎あらちか◎sexy boys/じぐいわハニー/にわかセクガル☜☞*フォロバ123%* なにきんせくぼ応援中○あらんいわちげんげんれんれん',
	185,263,'Sun Aug 17 13:56:59 +0000 2014',1478,263,'ja',
	'http://pbs.twimg.com/profile_images/524076131217969152/NFyOgTDF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'昨日セクゾンの振り付けちょっとやってたけど案外むずいしなにより覚えられない(；ﾟДﾟ；)
とても一回だけでは覚えられないなあ',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2739788905
);
INSERT INTO twit_user VALUES (
	'2286315350',
	'あすなろ@',
	'compla05',
	'',
	'お絵かき垢 主にアナログ/好物:アニメ、漫画 【アイコン▷▷@shin_akara】',
	10,17,'Sat Jan 11 08:35:38 +0000 2014',94,17,'ja',
	'http://pbs.twimg.com/profile_images/514063350263603202/O1PclU5I_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lzdfu49121: 会員数は450万人を突破！全国各地にてプロモーション強化中の【ミントＣ！Ｊメール】だから、
ファッション雑誌などへの出稿で女性の集客にも力を 入れています。
⇒http://t.co/6puA17Nxss http://t.co/wYHkSehJ…',
	'<a href=::http://yahoo.co.jp:: rel=::nofollow::>sexy-game-messege</a>',
	2286315350
);
INSERT INTO twit_user VALUES (
	'2642299128',
	'かずみ',
	'kzm83st727911',
	'',
	'Sonar Pocket   NEXT☞1220
Honoka.S   Family',
	100,97,'Mon Jul 14 02:45:21 +0000 2014',368,97,'ja',
	'http://pbs.twimg.com/profile_images/517967545526018048/-FeZz5iv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @K41558406K: とりあえずきのー1日
たのしすーぎった☺️☺️💕
裏向きのジェットコースターだって
のれたしいろんな人と
しゃめとってもらえたし最高👏💓
ゾンビわ怖くてさいしょっから
逃げました。笑
明日からも仕事がんばろ😑👏 http://t.co/7u6Oe…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2642299128
);
INSERT INTO twit_user VALUES (
	'157546172',
	'Hideki Shimizu',
	'ShimizuTechLab',
	'Tokyo,Japan',
	'自らの妄想のままにモノを作る人。身につけたスキルを阿呆な事に利用する、がモットー。紙モノから立体、時計・カメラの修理など出来る事は何でもやります。 自作CNC、Ultimaker 1(改良中)、UP mini 使いです。',
	112,167,'Sun Jun 20 04:10:50 +0000 2010',9879,167,'ja',
	'http://pbs.twimg.com/profile_images/1006607895/Face_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @tamio_snow: ネットで見つけた「ねこのおすわり洗濯バサミ」が可愛くて購入しようか悩んでる日曜日の朝。 http://t.co/k7hyjoQSdR',
	'<a href=::http://sinproject.net/tweecha/:: rel=::nofollow::>tweecha for android</a>',
	157546172
);
INSERT INTO twit_user VALUES (
	'848492522',
	'Christopher Bush',
	'Beans1947',
	'Elgin, Nebraska',
	'null',
	22,75,'Thu Sep 27 02:05:09 +0000 2012',34,75,'en',
	'http://pbs.twimg.com/profile_images/518511319964602368/5XwOBowf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @N0tAaronRodgers: Mike may have hit Bourbon Street a little early.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	848492522
);
INSERT INTO twit_user VALUES (
	'2866337688',
	'ASHTON IM PUNK',
	'ashtunirwunx',
	'',
	'dont fuck with my teenage mutant ninja turtles -FOUR- ❤️AHS❤️ Close to 4/4 just need 4 more..',
	366,744,'Mon Oct 20 04:12:11 +0000 2014',1754,744,'en',
	'http://pbs.twimg.com/profile_images/524057916299415552/CezgF33W_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne ::shall we play a game?::',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2866337688
);
INSERT INTO twit_user VALUES (
	'124094934',
	'(´・ω・｀)',
	'hokkai_do',
	'ニュ(いやんもう)かシベリア',
	'4じが好きです(´・ω・｀) 激しい人見知りのためじぶんからフォローしたりリプライしたりにすごく勇気が必要なタイプなのでROMのことが多いです。あとシティボーイズミックスbotを( ´ﾉω｀)ｺｯｿﾘ作ったりしてます。居てもいいですか(´・ω・｀)？',
	507,502,'Thu Mar 18 07:05:03 +0000 2010',7251,502,'ja',
	'http://pbs.twimg.com/profile_images/3019342515/e74d69a993283bf231170adac71f2f19_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'よんよんしたから6じかんかー。あと2じかん睡眠ほしいかなっと',
	'<a href=::http://twilog.org/hokkai_do:: rel=::nofollow::>4時の方角</a>',
	124094934
);
INSERT INTO twit_user VALUES (
	'989915953',
	'Tara Jones',
	'MsTaraMae',
	'',
	'19. Psychology student . UNCC junior. Loyal friend. Proud auntie. Future psychiatrist. Football fan. Born sinner. ⚡️⚡️.',
	458,594,'Wed Dec 05 01:01:52 +0000 2012',14125,594,'en',
	'http://pbs.twimg.com/profile_images/520243008286257152/VUKHGjFI_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RapFavorites: 12 years ago today Kanye West was in a car crash that would eventually inspire his debut single ::Through The Wire:: http:/…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	989915953
);
INSERT INTO twit_user VALUES (
	'855698995',
	'Destiny⚽️✌️',
	'destiny_segovia',
	'',
	'SSHS | Soccer #10 ♡ | C/O 2016 ✌ | 8-31-13 , 3-29-14 , 10-4-14 @luiscoronel281 ♡(:',
	235,204,'Mon Oct 01 02:12:55 +0000 2012',7015,204,'en',
	'http://pbs.twimg.com/profile_images/518966373435715585/29gE7tNs_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ussoccer_wnt: CONCACAF Women;;s Championship Champions and Qualified for the 2015 Women;;s World Cup. Canada here we come! http://t.co/nF…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	855698995
);
INSERT INTO twit_user VALUES (
	'152421023',
	'DEPORTES',
	'informador_DEP',
	'Guadalajara, Jalisco',
	'Noticias más recientes del futbol mexicano, internacional, NFL, automovilismo, boxeo y MÁS ::: Una cuenta de @informador.',
	10633,181,'Sat Jun 05 22:59:09 +0000 2010',76655,181,'es',
	'http://pbs.twimg.com/profile_images/514902947499479041/9OvBY7Mp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Óscar Taveras fallece en accidente de tránsito http://t.co/EBPPVmppSl',
	'<a href=::http://www.informador.com.mx/:: rel=::nofollow::>Informador_Jalisco</a>',
	152421023
);
INSERT INTO twit_user VALUES (
	'1537088192',
	'東京レイヴンズ♡fan',
	'tokyoreiht',
	'',
	'東京レイヴンズの画像まとめです、まだまだフォロワー少ないですがよろしく、東京レイヴンズ好きな方はフォローくださいフォロバも致します、二期早くやってほしいな～',
	716,1759,'Fri Jun 21 18:31:56 +0000 2013',408,1759,'ja',
	'http://pbs.twimg.com/profile_images/507709652314771456/SPFYljLZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @6zyouht: 好きなキャラを好き勝手に着せ替え♪

例えば初音ミクを裸にして
自分好みに着せ替えまくれるｗ

ios⇒http://t.co/KL674KQmcx

and⇒http://t.co/I4RK9m9IEt
楽しみ方いろいろ♪ http://t.co/X…',
	'<a href=::https://twitter.com/apurizyouhou:: rel=::nofollow::>negi4１</a>',
	1537088192
);
INSERT INTO twit_user VALUES (
	'366776577',
	'zhenna',
	'zhenbby',
	'It all depends',
	'your freedom is bound by nothing but the limits of your imagination',
	280,262,'Fri Sep 02 20:09:44 +0000 2011',4214,262,'en',
	'http://pbs.twimg.com/profile_images/519234102923653120/_EsbrTEe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'They;;re all so funny when they stare',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	366776577
);
INSERT INTO twit_user VALUES (
	'1726559887',
	'StealMyGirl♪',
	'NiccolG1D',
	'',
	'Mi vida  →One Direction ❤ Directioner por siempre ♡',
	805,592,'Tue Sep 03 20:11:14 +0000 2013',8779,592,'es',
	'http://pbs.twimg.com/profile_images/525804416528842752/YRK15-Bt_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Some really interesting costumes coming through 😏',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1726559887
);
INSERT INTO twit_user VALUES (
	'2801769981',
	'Jerome Jordan',
	'jwmjordan',
	'',
	'null',
	14,29,'Fri Oct 03 11:54:39 +0000 2014',156,29,'en',
	'http://pbs.twimg.com/profile_images/522739218498723840/t9DN8Ooe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'How come Erin eh message me nothing for class this week boi',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2801769981
);
INSERT INTO twit_user VALUES (
	'174797823',
	'VOTE FOR ME | BIO!!',
	'RlHSPECT',
	'',
	'please click that link for me to win tickets to see Chris and Trey, i;;ll really appreciate it :D',
	2568,460,'Wed Aug 04 21:15:13 +0000 2010',101556,460,'en',
	'http://pbs.twimg.com/profile_images/524655273982828545/PbTDERXc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne you should be Chris Brown in the loyal video',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	174797823
);
INSERT INTO twit_user VALUES (
	'1453112540',
	'Jenny Fletcher',
	'jfletch19',
	'Fenwick Island, De',
	'Young, wild, & free.✌️',
	193,186,'Fri May 24 03:20:45 +0000 2013',4994,186,'en',
	'http://pbs.twimg.com/profile_images/502497202812780545/ZCzRm6GO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@ILiVEEBlonde_x3: “@jfletch19: I slowly fell in love with all your flaws.” I know.” Sike.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1453112540
);
INSERT INTO twit_user VALUES (
	'2518773146',
	'mili',
	'IM5P10L4',
	'Buenos Aires',
	'No me rompan las pelotas',
	595,631,'Fri May 23 21:56:04 +0000 2014',8068,631,'es',
	'http://pbs.twimg.com/profile_images/525822285001670658/OtgAkTU6_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@coleIM5 #FollowMeCole i love you so much, I swear that if you follow me I;;II be happy all week ❤ x29',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2518773146
);
INSERT INTO twit_user VALUES (
	'354382086',
	'Annie',
	'Ana_OliveiraK',
	'Portugal',
	'2 fancy 4 u . ✌                                  Music is my everything.',
	196,91,'Sat Aug 13 16:35:15 +0000 2011',8142,91,'en',
	'http://pbs.twimg.com/profile_images/480413759115366400/AdG2LqH3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'eia, mas havia um vídeo no YouTube de um grupo de amigos a fingirem que estavam no filme, eu ria horas',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	354382086
);
INSERT INTO twit_user VALUES (
	'1271476968',
	'haley',
	'restlessharrry',
	'',
	'stay rad.',
	818,814,'Sat Mar 16 05:33:30 +0000 2013',13564,814,'en',
	'http://pbs.twimg.com/profile_images/523658032123629569/Uqimm5sL_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne power ranger',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1271476968
);
INSERT INTO twit_user VALUES (
	'419236452',
	'kyleigh',
	'mahone_ftdorsey',
	'MD',
	'•2 of Austins concerts • 2/4 follow • Met 2/4 & all the dancers on 3.4.14 •',
	330,113,'Wed Nov 23 03:45:30 +0000 2011',11146,113,'en',
	'http://pbs.twimg.com/profile_images/498542103216291840/PTEeeDOy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MahonexMendes: #TeamImNeverGoingToMeetAustin',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	419236452
);
INSERT INTO twit_user VALUES (
	'1489212337',
	'& Solitario...™',
	'Unlocoaqui',
	'En un bunker',
	'Una vida, un vacio, una felicidad, una persona, un viaje.',
	131,322,'Fri Jun 07 01:24:56 +0000 2013',392,322,'es',
	'http://pbs.twimg.com/profile_images/523294697301622784/8btcmKxk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Sé cuando una mujer no es inteligente porque en su avatar se ven más sus tetas que cualquier otra cosa.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1489212337
);
INSERT INTO twit_user VALUES (
	'704305171',
	'Thamy',
	'Thamypfvr',
	'',
	'Snap: thamyarruda',
	297,273,'Thu Jul 19 03:51:15 +0000 2012',11674,273,'pt',
	'http://pbs.twimg.com/profile_images/522043967362576386/TxF1dwuU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;m at thamy;;s house https://t.co/rd03RjqNE4',
	'<a href=::http://foursquare.com:: rel=::nofollow::>Foursquare</a>',
	704305171
);
INSERT INTO twit_user VALUES (
	'1350569010',
	'Diamri Tomlinson ❤️',
	'Diamri_Horan',
	'',
	'My interests are One Direction, 5SOS, Ed Sheeran, Little Mix, Artic Monkeys, Bethany Mota, Tyler Oakley, and so many more I can;;t think of. :-) ♥♥♥',
	107,582,'Sun Apr 14 00:33:02 +0000 2013',881,582,'en',
	'http://pbs.twimg.com/profile_images/525803619069612032/4w8kvkzy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne LIAM HAZEL AND GUS PLEEEEASE I WANT TO SEE IT',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1350569010
);
INSERT INTO twit_user VALUES (
	'47929532',
	'Aguiar Cunha',
	'aguiarcunha',
	'Terra da luz',
	'The lunatic is in my head...',
	197,85,'Wed Jun 17 11:23:51 +0000 2009',11017,85,'pt',
	'http://pbs.twimg.com/profile_images/524059527088717825/9diy23ZE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Analfabetismo político gera esse tipo de pensamento, que não tem nenhum sentido e não acrescenta nada.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	47929532
);
INSERT INTO twit_user VALUES (
	'47506036',
	'Patrick Bedell',
	'pattyb94',
	'Merrick, NY',
	'Junior at St. John;;s University',
	503,783,'Tue Jun 16 01:36:30 +0000 2009',8315,783,'en',
	'http://pbs.twimg.com/profile_images/516804283443208192/eTNajX2y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'LRT: Damn, this is some sad stuff #RIPOscarTaveras',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	47506036
);
INSERT INTO twit_user VALUES (
	'417430120',
	'PLEASE MANI',
	'SammyCanto_',
	'',
	'-My life? -My idols 4/17',
	1280,933,'Sun Nov 20 22:50:29 +0000 2011',15616,933,'es',
	'http://pbs.twimg.com/profile_images/525110898013528064/pQ5PmtGA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	417430120
);
INSERT INTO twit_user VALUES (
	'631188113',
	'shianne',
	'narrysunset',
	'',
	'they make me happy',
	28341,12744,'Mon Jul 09 15:37:38 +0000 2012',33723,12744,'en',
	'http://pbs.twimg.com/profile_images/520593436702146560/yzIJwJCh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	631188113
);
INSERT INTO twit_user VALUES (
	'295235025',
	'DeynerPiko',
	'DeynerPiko',
	'Barranquilla',
	'Futuro Ingeniero Industrial',
	151,54,'Sun May 08 16:39:46 +0000 2011',10054,54,'es',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'Mi Junior eliminado, el otro año el titulo sera nuestra con la ayuda de DIOS, JUNIOR MANDA ley de Colombia',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	295235025
);
INSERT INTO twit_user VALUES (
	'939619921',
	'Matt Courville',
	'MCville27',
	'California',
	'hockey, country music, pizza',
	130,337,'Sat Nov 10 18:10:05 +0000 2012',5916,337,'en',
	'http://pbs.twimg.com/profile_images/522159321334185984/UTzD7s1q_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLB: We mourn the passing of Cardinals outfielder Oscar Taveras. http://t.co/fCuSK3nB9n http://t.co/0USk5vzaXF',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	939619921
);
INSERT INTO twit_user VALUES (
	'460869392',
	'Brenden Cooke',
	'Mr_PoundTown',
	'',
	'null',
	584,922,'Wed Jan 11 06:25:39 +0000 2012',1460,922,'en',
	'http://pbs.twimg.com/profile_images/464828217329975297/OwXgjDmS_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RELATlONSHlP: You;;re the only one who matters to me.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	460869392
);
INSERT INTO twit_user VALUES (
	'2776516477',
	'世界遺産（自然遺産/文化遺産など）',
	'se_kai_isan',
	'',
	'UNESCO世界遺産の全般について呟いていきます☆世界遺産の数々を画像付きでご紹介☆直ぐに旅行したくなったらＲＴとかフォローしてくださいね!!',
	964,1118,'Thu Aug 28 13:50:56 +0000 2014',721,1118,'ja',
	'http://pbs.twimg.com/profile_images/504989938635374593/aDycE9Tn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mai_sexy_H: おっぱい(//∇//)よかったらRTしてね～(//∇//) http://t.co/PVdyHBfKZ0',
	'<a href=::https://twitter.com/se_kai_isan:: rel=::nofollow::>世界遺産（自然遺産/文化遺産など）</a>',
	2776516477
);
INSERT INTO twit_user VALUES (
	'172156941',
	'Dudinha',
	'duda_rainho',
	'@BieberMeuVicio',
	'Raça, amor e paixão. ⚫️❤️',
	627,378,'Thu Jul 29 01:27:31 +0000 2010',26429,378,'pt',
	'http://pbs.twimg.com/profile_images/526227356806283264/yNfLOiEG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Queria ter coragem de pintar meu cabelo de preto',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	172156941
);
INSERT INTO twit_user VALUES (
	'575811571',
	'Maddie Addy✨',
	'maddieaddy1',
	'',
	'Lexington, SC',
	844,471,'Thu May 10 00:55:51 +0000 2012',12547,471,'en',
	'http://pbs.twimg.com/profile_images/523881657267654656/KnYziafZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'every time I eat I get sick... here we go again.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	575811571
);
INSERT INTO twit_user VALUES (
	'555009737',
	'Joy Arianna Ü ☮',
	'joyarianna',
	'BND-PHL',
	'I believe that everything happens for a reason and I just have to wait for that moment to happen cause I have faith.x',
	422,575,'Mon Apr 16 10:06:32 +0000 2012',13548,575,'en',
	'http://pbs.twimg.com/profile_images/516461459782381570/GzW0YXGk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RingPorns: ☺️ 💕 http://t.co/mDBewzf4cM',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	555009737
);
INSERT INTO twit_user VALUES (
	'2209668578',
	'brennanicoal',
	'brennanicoal',
	'',
	'Brenna is my name. Fockey is my game .X.',
	109,165,'Fri Nov 22 23:18:25 +0000 2013',1894,165,'en',
	'http://pbs.twimg.com/profile_images/524733495596580864/h5f1yHgG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'It feels like I should have at least another day before going back to school. #monday',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2209668578
);
INSERT INTO twit_user VALUES (
	'1927865706',
	'Post',
	'kposty3',
	'',
	'Its kind of hard to sleep when you spend your days dreaming',
	322,302,'Wed Oct 02 19:15:42 +0000 2013',5901,302,'en',
	'http://pbs.twimg.com/profile_images/514099258136752129/FZUtq542_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@tracy_rhonda: Guess they are done eating bob 😈”😂👍',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1927865706
);
INSERT INTO twit_user VALUES (
	'1495698342',
	'maddie',
	'okaymads',
	'chicago',
	'i spend 90% of my life fangirling over singers',
	1161,1361,'Sun Jun 09 14:19:01 +0000 2013',39379,1361,'en',
	'http://pbs.twimg.com/profile_images/525114452841332737/Cf3NICW9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1495698342
);
INSERT INTO twit_user VALUES (
	'797404729',
	'Iriss❤️',
	'Iriss_Rios',
	'México',
	'Belieber, Directioner, Mixer, Simpsonizer, Mahomie, Lovatic, Vampette, 5SOSFam❤️❤️❤️',
	851,1988,'Sun Sep 02 03:19:17 +0000 2012',3871,1988,'es',
	'http://pbs.twimg.com/profile_images/519327777854861313/QImOFja6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: Still not found the one',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	797404729
);
INSERT INTO twit_user VALUES (
	'1567453544',
	'nicole||@IMa5erx3',
	'twerkingvaughns',
	'6/5',
	'We twerked on each other',
	2712,1980,'Thu Jul 04 05:55:53 +0000 2013',55190,1980,'en',
	'http://pbs.twimg.com/profile_images/520826581770444800/fZjMutqE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@coleIM5 wish me luck for my game tomorrow?¿ I need it #FollowMeCole',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1567453544
);
INSERT INTO twit_user VALUES (
	'472392340',
	'Julie Mason♛♡',
	'rain_mason',
	'',
	'Instagram-@rain_mason1 |Vine↠Julie Mason|Girls Life Magazine Favorited|Allicattt, Cameron Dallas,Nash Grier,Cody Johns, Christian Delgrosso & LilGratata follow',
	619,103,'Mon Jan 23 22:14:45 +0000 2012',3014,103,'en',
	'http://pbs.twimg.com/profile_images/520729912618254336/_-r0YsyE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @RelatableQuote: School tomorrow http://t.co/5CMdlzfVVO',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	472392340
);
INSERT INTO twit_user VALUES (
	'2182319275',
	'Daniela Nam',
	'Nam_Daniela',
	'',
	'ツ★  never stop dreaming !ツ★',
	65,57,'Fri Nov 08 14:32:51 +0000 2013',749,57,'es',
	'http://pbs.twimg.com/profile_images/521107120805003264/-8m6gFdq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LicGemido: Hay ocasiones que quisiera odiarte y borrarte para siempre de mi memoria, luego me sonríe tu recuerdo y te dejo otro día más…',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2182319275
);
INSERT INTO twit_user VALUES (
	'365870360',
	'Astrid Campagnani ♔',
	'AstridCampa',
	'Made in Panamá ',
	'Thanks GOD for everything .. GoodLife!! si del cielo te cae limones, busca tekila y sal  Salud...',
	352,240,'Thu Sep 01 04:40:57 +0000 2011',12156,240,'es',
	'http://pbs.twimg.com/profile_images/522175828718018561/Mt4IsAqJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#WorldSeries ⚾️👌',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	365870360
);
INSERT INTO twit_user VALUES (
	'288768373',
	'raquel',
	'rakelbena',
	'',
	'null',
	15,88,'Wed Apr 27 12:52:00 +0000 2011',330,88,'es',
	'http://pbs.twimg.com/profile_images/523924869575344128/5KGCn2mZ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @criticadeGH15: LLAMAMIENTO A YOLANDRISTAS, LAS QUE VOTÁIS PARA QUE SE VAYA SHAIMA OS INFORMO QUE PAULA ESTÁ RAJANDO DE ALE. DE NADA. GH…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	288768373
);
INSERT INTO twit_user VALUES (
	'508592943',
	'Maria',
	'GBMaria7',
	'',
	'null',
	162,132,'Wed Feb 29 08:38:43 +0000 2012',685,132,'es',
	'http://pbs.twimg.com/profile_images/467953053875068928/88r7gzLo_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iFrasesCitas: Las mejores cosas de la vida no son cosas. http://t.co/Okyk5FZyki',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	508592943
);
INSERT INTO twit_user VALUES (
	'217856777',
	'3 años de ORO ツ',
	'Taty_Palmuchi6',
	'Bs. As - Barcelona',
	'Handball | Simonet | Banfieldღ | Fut. Prof. de Ed. Física | Marc Marquez93ღ | JSღ | LBDCS | Santi me quiere 9Mღ | FCB | Lauti Bugattoღ | #BRC16 | Leo 10Mღ',
	1761,1666,'Sat Nov 20 18:44:25 +0000 2010',22497,1666,'es',
	'http://pbs.twimg.com/profile_images/525746678477762560/LvXxJAXk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'La confianza es la mas fácil de perder y la más difícil para recuperar.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	217856777
);
INSERT INTO twit_user VALUES (
	'1356764484',
	'Camila Menna',
	'CamiDgo',
	'Coronel Dorrego',
	'Mamà
 de un Bombonaso llamado Tiziano ♥   Escorpiana ☮ Sé paciente, a veces 
hay que pasar por lo peor para conseguir lo mejor. . .❀ Amo a mis Hermanos J B A',
	366,309,'Tue Apr 16 12:37:51 +0000 2013',7833,309,'es',
	'http://pbs.twimg.com/profile_images/526542529114959872/q1qzYiN8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Laaa ni la lluvia lo para a mi hermano',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1356764484
);
INSERT INTO twit_user VALUES (
	'1138897375',
	'juli',
	'juli_leuzzi',
	'',
	'♥SEÑORES YO SOY DEL GALLINERO♥//Alexis el mas lindo♥♥',
	497,433,'Fri Feb 01 06:30:36 +0000 2013',18131,433,'es',
	'http://pbs.twimg.com/profile_images/509512053334499328/VWjszPJj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me extraña y no lo quiere admitir http://t.co/LeTCLm3bFX',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1138897375
);
INSERT INTO twit_user VALUES (
	'70108298',
	'SNZK_和',
	'SNZK_Wa',
	'池袋,Tokyo,Japan',
	'元ラーメン屋のせがれ。 kszaki@gmail.com',
	175,235,'Sun Aug 30 12:13:33 +0000 2009',23156,235,'en',
	'http://pbs.twimg.com/profile_images/378800000450893635/6641ea487e9abc01c6a6347f72ff89aa_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @afpbbcom: アジア最大のゲイ・パレード、台北で開催 http://t.co/LP95Z57lnX 世界の最新ニュースはこちら→ http://t.co/89EqvyqpaN ：写真 http://t.co/fg3QFhxuce',
	'<a href=::http://www.echofon.com/:: rel=::nofollow::>Echofon</a>',
	70108298
);
INSERT INTO twit_user VALUES (
	'1481218500',
	'belen maidana',
	'belee_16',
	'Villaguay ER',
	'coordinadora y promotora en mirstravel estudiantil',
	98,139,'Tue Jun 04 03:21:25 +0000 2013',607,139,'es',
	'http://pbs.twimg.com/profile_images/521681040306610176/qKJjAIw8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Partiendo a #carlospaz con la banda de #mirstavel 😚 http://t.co/WoYUpQ1qK3',
	'<a href=::http://www.twitter.com:: rel=::nofollow::>Twitter for Windows Phone</a>',
	1481218500
);
INSERT INTO twit_user VALUES (
	'419825692',
	'regan',
	'ColorMeRegan',
	'',
	'outside voices, please.',
	451,178,'Wed Nov 23 20:54:46 +0000 2011',12589,178,'en',
	'http://pbs.twimg.com/profile_images/518876976028086272/0AUg3WQi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'spiced things up a little bit http://t.co/i5JVSbKvzT',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	419825692
);
INSERT INTO twit_user VALUES (
	'121300533',
	'れん',
	'renchobin',
	'佐賀県',
	'デカちわわの飼い主であり、ジャニオタ。ほとんど放置状態で、お犬さまBot▼・w・▼が発言中。',
	228,295,'Tue Mar 09 02:33:49 +0000 2010',42023,295,'ja',
	'http://pbs.twimg.com/profile_images/1622895599/1320454052-8735_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'りんね～、オヤツがばい好いとうさ～♪　毎日オヤツだけでん良か～♪　▼・ｗ・▼',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	121300533
);
INSERT INTO twit_user VALUES (
	'577672259',
	'テルルパーク佐原東店',
	'terurusawaraazu',
	'茨城県稲敷市西代1480番地アピタ佐原東1F',
	'アピタ佐原東店１Fです！皆様のご愛顧のおかげで『ドコモ　茨城県内　家電量販店・携帯ショップ　乗り換え実績No,1』の表彰をいただきました。今後とも、さらなるご愛顧のほどよろしくお願い致します。圏央道神崎インター降りて１５分！特価機種だけツイートします♪TEL0299805033',
	2582,2798,'Sat May 12 02:55:52 +0000 2012',52,2798,'ja',
	'http://pbs.twimg.com/profile_images/2213682743/image2993_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【#docomo　土日限定特価 】
【機種】#F01F
【価格】#お乗り換え　#一括0円
【条件】オプション+ツイッターパック✩
【特典】3000円キャッシュバック
家族紹介割、お帰り割適用で20000円/1台キャッシュバック
お早めにお電話下さい！！
TEL0299805033',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	577672259
);
INSERT INTO twit_user VALUES (
	'568719840',
	'dont u mind this',
	'NateGinop',
	'dont u mind that',
	'bshon = breathed slightly harder out nose',
	73,1029,'Tue May 01 23:52:24 +0000 2012',305,1029,'en',
	'http://pbs.twimg.com/profile_images/526520961621704705/pom1msun_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'A? When did #PrettyLittleLiars come to #TheWalkingDead',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	568719840
);
INSERT INTO twit_user VALUES (
	'1453243592',
	'経済労働事情',
	'toki_komuinbota',
	'',
	'null',
	38,1,'Fri May 24 04:50:33 +0000 2013',24806,1,'ja',
	'http://pbs.twimg.com/profile_images/3701808751/e47d4c0d36b650898837372134de7b98_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'【社会労働事情】　世界遺産は現在１６個　文化遺産に富士山と鎌倉提案中',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	1453243592
);
INSERT INTO twit_user VALUES (
	'508870146',
	'Olivia Shank',
	'Olivia_Shank',
	'',
	'Missions is where my heart is',
	129,162,'Wed Feb 29 13:53:39 +0000 2012',934,162,'en',
	'http://pbs.twimg.com/profile_images/378800000487203807/4e3a663eb2639ce967b4a2d783940b91_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I may or may not have attempted to tackle my car when I got it back
#TheLoveWasNotMutual',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	508870146
);
INSERT INTO twit_user VALUES (
	'2687531184',
	'廣瀬遥香',
	'ponpoko0428',
	'石川県',
	'小工マテ科3年',
	59,57,'Mon Jul 28 13:35:43 +0000 2014',118,57,'ja',
	'http://pbs.twimg.com/profile_images/515834014922309632/ZliwQ0Sm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'今日はゆっきーが帰ってくる日だ~( ´ ▽ ` )ﾉ♫',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2687531184
);
INSERT INTO twit_user VALUES (
	'2170551955',
	'Receitas Completas',
	'ReceitasComplet',
	'Brasil',
	'null',
	13,76,'Sat Nov 02 16:38:07 +0000 2013',142906,76,'pt',
	'http://pbs.twimg.com/profile_images/495630484848656384/dRGs94Ts_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Biscoito de aveia - #Receitas http://t.co/nKdLShqpYb #Biscoitos #Destaque',
	'<a href=::http://winthecustomer.com/:: rel=::nofollow::>Win the Customer</a>',
	2170551955
);
INSERT INTO twit_user VALUES (
	'2523408074',
	'えうろぺ@(ΦωΦ)',
	'filixuwoxij',
	'',
	'null',
	1799,2020,'Sun May 25 20:27:47 +0000 2014',247,2020,'en',
	'http://pbs.twimg.com/profile_images/494460717924225026/6zNsaO8G_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'本当は今すぐに、会いに行きたいのになぁ・・・',
	'<a href=::https://twitter.com/sattyan55:: rel=::nofollow::>みんなナカーマのbotシステム</a>',
	2523408074
);
INSERT INTO twit_user VALUES (
	'205499393',
	'農夫 グレン',
	'Glenn_w_bot',
	'juna国',
	'人狼審問キャラ、グレンの非公式botです。「占って」「占いして」「占い結果」という単語に反応する占い機能付き。反応には10分程度かかる模様。',
	115,147,'Thu Oct 21 00:54:14 +0000 2010',23310,147,'ja',
	'http://pbs.twimg.com/profile_images/1155539365/____normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'えっ、人狼？　ハロウィンの仮装の話かい？　カボチャだったら用意してあげるよ。 #shinmon_bot',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	205499393
);
INSERT INTO twit_user VALUES (
	'2416017992',
	'Trabaja en León',
	'TrabajaLeon',
	'León, España',
	'Consige #Trabajo en #León #Ofertas de #Empleo en #León',
	362,952,'Fri Mar 28 14:47:43 +0000 2014',72657,952,'es',
	'http://pbs.twimg.com/profile_images/449558803466317824/CGgtF2JJ_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#Empleo en #León Ayudante de camarero/a: León Seleccionamos ayudante de camarero/a para sala de hotel con expe... http://t.co/7PnCA89nvG',
	'<a href=::http://twitterfeed.com:: rel=::nofollow::>twitterfeed</a>',
	2416017992
);
INSERT INTO twit_user VALUES (
	'133557031',
	'jodi',
	'jungkcook',
	'防弹少年团',
	'△ Nugu ttaemune? Bangtan ttaemune! △',
	409,335,'Fri Apr 16 02:56:54 +0000 2010',53075,335,'en',
	'http://pbs.twimg.com/profile_images/524442824679256064/xx96IvAx_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I feel extremely anti social today',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	133557031
);
INSERT INTO twit_user VALUES (
	'2286402558',
	'光',
	'kis_joker0625',
	'ξ*‘ ｰ‘)(´∀｀*)←この辺ｗ',
	'Kis-My-Ft2☆藤ヶ谷太輔☆専用アカです♪革命さんもダイスキデス☆超初心者なので、お手柔らかにどーぞ( ´∀`)/☆82年組→№9☆',
	85,69,'Sat Jan 11 10:08:51 +0000 2014',2173,69,'ja',
	'http://pbs.twimg.com/profile_images/459305085655580672/1SIQoUVe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @lzdfu49121: 会員数は450万人を突破！全国各地にてプロモーション強化中の【ミントＣ！Ｊメール】だから、
ファッション雑誌などへの出稿で女性の集客にも力を 入れています。
⇒http://t.co/6puA17Nxss http://t.co/wYHkSehJ…',
	'<a href=::http://google.co.jp:: rel=::nofollow::>炎上動画</a>',
	2286402558
);
INSERT INTO twit_user VALUES (
	'2809278733',
	'新なおぴー@D男',
	'exjsbnao24',
	'',
	'\kusano→yotukraFDK/ 16の代/\EXILE TRIBE/\3代目JSB/\GENERATIONS/\E-gilrs/\basketball#21/\beautician/\free/',
	433,415,'Sun Sep 14 11:04:57 +0000 2014',403,415,'ja',
	'http://pbs.twimg.com/profile_images/516566059441082368/Q9JOE8m7_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iwpqp386651: 会員数は450万人を突破！全国各地にてプロモーション強化中の【ミントＣ！Ｊメール】だから、
ファッション雑誌などへの出稿で女性の集客にも力を 入れています。
⇒http://t.co/k8fqPJjw79 http://t.co/E24Km52…',
	'<a href=::http://google.co.jp:: rel=::nofollow::>sports-information</a>',
	2809278733
);
INSERT INTO twit_user VALUES (
	'623412133',
	'そら',
	'sora_kof',
	'福岡',
	'福岡のカジノ京町でKOF13climax（デュオロン、紅丸、舞）をやってます！電撃も始めました（シャナ＆ヴィルへルミナ）。テイルズ好きなおっさん',
	91,67,'Sun Jul 01 04:32:32 +0000 2012',2728,67,'ja',
	'http://pbs.twimg.com/profile_images/511980072094281728/_I0BxFtq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @777_kim_kof: 11月にメルクスタイトーでやろうと考えてるKOF13イベントですが、来れそうな人の都合を考えて16日の日曜日にしようかなと思っています。
初めは9日にするつもりでしたが、9日はNGの人が居たので。
参加してくださる人で、16日の予定はどうですか…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	623412133
);
INSERT INTO twit_user VALUES (
	'1037009924',
	'Tenebs',
	'tenebrojazzmyn',
	'Niall Horan::s heart',
	'Chillin at',
	247,180,'Wed Dec 26 12:18:58 +0000 2012',5057,180,'en',
	'http://pbs.twimg.com/profile_images/516192698059853826/sDQF9zi-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1037009924
);
INSERT INTO twit_user VALUES (
	'859242438',
	'♡Sammy♡',
	'lovely__sammy',
	'Los Angeles, California',
	'#22 ♡ Live. Breathe. Blue.',
	307,255,'Wed Oct 03 05:59:27 +0000 2012',9093,255,'en',
	'http://pbs.twimg.com/profile_images/523553534902403072/U6gdFf5g_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@heavencx I;;m sick babe 😓',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	859242438
);
INSERT INTO twit_user VALUES (
	'2262235644',
	'anik rifah',
	'Anikrifah',
	'di dalam kamar',
	'bulan smile',
	598,1773,'Thu Dec 26 03:18:21 +0000 2013',4376,1773,'id',
	'http://pbs.twimg.com/profile_images/521944933645553664/yV1YDTrO_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @DiaryKangen: Orang yang bisa ngebuat kita ;;nyaman;; orang yang bisa ngebuat kita ;;jadi apa adanya;; itu patut dipertahanin. :)?',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2262235644
);
INSERT INTO twit_user VALUES (
	'501710699',
	'Misandrist ღ',
	'imElizabethJuco',
	'Concepcion, Tarlac',
	'Zaken ja ne-e zo',
	219,480,'Fri Feb 24 12:02:20 +0000 2012',2347,480,'en',
	'http://pbs.twimg.com/profile_images/520813407163801600/g_8zw9FA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @OnlyFoodPorn: Pizza Cake http://t.co/WMzeuTncYM',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	501710699
);
INSERT INTO twit_user VALUES (
	'2834463284',
	'Travis ♈️',
	'TravisLloydd',
	'LA Nigga',
	'Follow Me , You Want To ! Goal ; 1.4k |',
	777,789,'Sat Sep 27 23:43:48 +0000 2014',1648,789,'en',
	'http://pbs.twimg.com/profile_images/521660085601570816/7mrNbe_S_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @_o_DOGFATHER_o_: ☑️ #FOLLOWTRICK

✅ RETWEET

☑️ FOLLOW ALL WHO RT

✅ FOLLOWBACK

☑️ GAIN WITH #MGWV

✅ #FOLLOW ☞ @__ChiTown__Gal',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2834463284
);
INSERT INTO twit_user VALUES (
	'871510783',
	'Black Bart Simpson',
	'nigga_bart',
	'Springfield',
	'A penis is like an elbow..don;;t put it on the table during dinner. PARODY',
	31107,4769,'Wed Oct 10 10:15:42 +0000 2012',29334,4769,'en',
	'http://pbs.twimg.com/profile_images/2701378397/0a48a68309639d73e3a63b99af3fc5e3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JustinBielber_x: JUSTIN BIEBER LEAKED NUDES (On Pic #2) 😱😨 http://t.co/neWGxv7N4C',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	871510783
);
INSERT INTO twit_user VALUES (
	'604086317',
	'Paola Andrea',
	'andreamendez141',
	'salsera de nacimiento ',
	'Por ley Hincha del @Asodeporcali Amante del Mercadeo y la publicidad simpatizante al @Fcbarcelona Admiracion total a @10ronaldinho Amor puro a la salsa la timba',
	269,208,'Sun Jun 10 01:45:28 +0000 2012',11423,208,'es',
	'http://pbs.twimg.com/profile_images/522849666094755841/2TKFdPTT_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'QUE HERRERA NI QUE HPTAS!',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	604086317
);
INSERT INTO twit_user VALUES (
	'2489844342',
	'なる@お取引専用',
	'naru_otorihiki',
	'',
	'柿原徹也さん関連グッズを回収しています！関連以外にもNORN9(宿吏暁人)関係などを集めています！！※ゆうちょ銀行のみ対応。きちんとお取引できる方のみにさせていただきます。金銭トラブルの関係により義務教育終了している方のみとお取引させていただきます。',
	32,33,'Sun May 11 13:30:43 +0000 2014',284,33,'ja',
	'http://pbs.twimg.com/profile_images/524057994279911425/PbPP4u15_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@kajiji0903 こんにちは、はじめまして。検索よりリプライ失礼致します。当方アリスNETにて予約済みなのですが、朔也⇔暁人の交換は可能でしょうか？御検討宜しくお願い致します。',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2489844342
);
INSERT INTO twit_user VALUES (
	'616394249',
	'Sol ñ.ñ ',
	'chikititita1999',
	'',
	'Nunca dejes de sonreír, ni siquiera cuando estés triste, porque nunca sabes quien se puede enamorar de tu sonrisa.',
	562,678,'Sat Jun 23 19:30:39 +0000 2012',5677,678,'es',
	'http://pbs.twimg.com/profile_images/526059276045778945/83vXl0hG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'habían personas que  en mi vida  molestaban  (:',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	616394249
);
INSERT INTO twit_user VALUES (
	'367016371',
	'Ella StaMaria',
	'MsPurpleHaze15',
	'City of Angels',
	'I am who I am',
	78,343,'Sat Sep 03 06:56:58 +0000 2011',244,343,'en',
	'http://pbs.twimg.com/profile_images/378800000751701661/f94c63a5b1d58d509090da0ca7eb8ae1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Now tune in @INCTV #InternationalEvangelicalMissonINC',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	367016371
);
INSERT INTO twit_user VALUES (
	'2595913333',
	'Ashley Hernandez',
	'ashleenandez',
	'',
	'One day at a time⚓️✨',
	239,217,'Mon Jun 30 06:13:56 +0000 2014',4250,217,'en',
	'http://pbs.twimg.com/profile_images/526534646025035777/K5hdIYHn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @HonestMessage: Wake up every morning with the thought that something wonderful is about to happen.',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2595913333
);
INSERT INTO twit_user VALUES (
	'1480764228',
	'PLEASE CAMERON ILYSM',
	'dallasnegao',
	'10/12 - never/cam',
	'i support all of them no matter what - 4/5 from da queen',
	10659,427,'Mon Jun 03 22:41:20 +0000 2013',83844,427,'en',
	'http://pbs.twimg.com/profile_images/526494538702258176/T9t63BJA_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@camerondallas hey cam. please follow me and make me the happiest person in this world. u;;re my everything. ilysm. 😭🙏❤️  x12,035',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1480764228
);
INSERT INTO twit_user VALUES (
	'2793301612',
	'barbie.',
	'sheisbarbara',
	'',
	'su sonrisa es todo lo que esta bien',
	22,18,'Tue Sep 30 01:16:51 +0000 2014',12709,18,'es',
	'http://pbs.twimg.com/profile_images/524335999128576000/kcQbFshg_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2793301612
);
INSERT INTO twit_user VALUES (
	'1966990490',
	'livia',
	'despercybida',
	'DDL AG 5H',
	'cuidado a noite eu posso aparecer na sua janela como uma cachorra louca nunca se sabe o que vem de uma fã de twolf',
	9206,6772,'Thu Oct 17 14:47:56 +0000 2013',60678,6772,'pt',
	'http://pbs.twimg.com/profile_images/526459408516014080/dlLC2Xlw_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@nodeminow O QUE É',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1966990490
);
INSERT INTO twit_user VALUES (
	'940592317',
	'Elisha Holmes ',
	'ElishaKHolmes',
	'',
	'null',
	64,305,'Sun Nov 11 05:07:37 +0000 2012',128,305,'en',
	'http://pbs.twimg.com/profile_images/378800000607779162/57723dbb0c9ab8523c39e534369bf15d_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'#TheWalkingDead A stands for APPETIZER!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	940592317
);
INSERT INTO twit_user VALUES (
	'221738756',
	'Louisiana',
	'CCCS_Louisiana',
	'Louisiana',
	'Consumer credit counseling Louisiana call (800) 254-4100 for State of Louisiana credit counseling http://t.co/XQ2uow8hIR https://t.co/NN1NbrfPgx',
	1476,1811,'Wed Dec 01 13:41:21 +0000 2010',148561,1811,'en',
	'http://pbs.twimg.com/profile_images/489265451461922818/PG1ztxHw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/dXJyJMpkFY - shorten that long URL into a tiny URL http://t.co/JRTbua8VTw',
	'<a href=::http://www.facebook.com/twitter:: rel=::nofollow::>Facebook</a>',
	221738756
);
INSERT INTO twit_user VALUES (
	'178446843',
	'Heloize ',
	'helocazaroto',
	'',
	'O blá blá blá é por conta de vcs',
	391,155,'Sat Aug 14 19:57:33 +0000 2010',12619,155,'en',
	'http://pbs.twimg.com/profile_images/518095560331755520/Vupt82-8_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Deu mole pra caramba, tremendo vacilão',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	178446843
);
INSERT INTO twit_user VALUES (
	'283794175',
	'Soti♥',
	'Soti_3',
	'Paysandu, Uruguay',
	'12/07 Pedro Alfonso, Iliana Calabro. 13/09 Victorio D;;Alessandro. los conocí. Gracias por  todo!',
	968,1605,'Mon Apr 18 01:40:42 +0000 2011',18866,1605,'es',
	'http://pbs.twimg.com/profile_images/521684110272512000/MjTSXykn_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	283794175
);
INSERT INTO twit_user VALUES (
	'2877037230',
	'bar pucheteta',
	'puchetavelez',
	'',
	'null',
	0,0,'Sat Oct 25 17:04:36 +0000 2014',1820,0,'es',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2877037230
);
INSERT INTO twit_user VALUES (
	'780300314',
	'hizuru',
	'hizuru10',
	'岐阜',
	'スーパーGT/ビート/crーz/無限/ホンダ/HSV/みんカラ      とうとう27歳になりました！気軽にからんでください',
	430,685,'Sat Aug 25 13:19:08 +0000 2012',1341,685,'ja',
	'http://pbs.twimg.com/profile_images/378800000781015868/2c9a183122511ed0de9e2fa830ac4674_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @cawaiinew: 【品切れ続出！！】
「科学的」に立証された痩せる糖の効果が凄い！！

今、悩める若い世代に大人気の魔法のダイエットって知ってる？♡

⇒http://t.co/9bcbjq8qNV

運動なし、食事制限で痩せられるから超簡単♡ http://t.c…',
	'<a href=::http://twwi.jp/:: rel=::nofollow::>瞬感♪apptter</a>',
	780300314
);
INSERT INTO twit_user VALUES (
	'2707233736',
	'3 meses con Consu♥',
	'SonrisasDeConsu',
	'Consu me siguio el 13/07/14 ♡',
	'Fans Club Oficial Argentino de @ConsuSchuster ♡ Oficializada por Consu ♡ Cantante Chilena ♡   #SonrisitaDeConsu',
	116,58,'Sun Jul 13 14:30:37 +0000 2014',20630,58,'es',
	'http://pbs.twimg.com/profile_images/519170587256958976/TbgtEB-J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2707233736
);
INSERT INTO twit_user VALUES (
	'591125320',
	'Sexy y Cabrona',
	'chikuela123',
	'',
	'SOY FUERTE Y DÉBIL, VALIENTE Y COBARDE, SENSIBLE Y SIN CORAZÓN. 
http://www.instagram.com/chikuela123
Contacto: carito.chikuela@hotmail.com',
	96143,22628,'Sat May 26 17:59:35 +0000 2012',622,22628,'es',
	'http://pbs.twimg.com/profile_images/522158984417927168/a2fSIn6t_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @IronManMeeme: ¿QUIERES 1000 SEGUIDORES O MÁS?

Esta es TÚ oportunidad

SIGUE A @HeroeDeFiccion y te los regalaremos

¡SÍGUELO YA! http:…',
	'<a href=::http://twitter.com:: rel=::nofollow::>SoloParaDeckApp</a>',
	591125320
);
INSERT INTO twit_user VALUES (
	'129590075',
	'MAIARA',
	'maiarallima',
	'Minas Gerais',
	'os dias já estão chegados',
	420,88,'Sun Apr 04 20:23:19 +0000 2010',20034,88,'en',
	'http://pbs.twimg.com/profile_images/526227298262200320/znoUBR2B_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'sou tao ligada em assunto de politica que agora que descobri que a dilma é mineira',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	129590075
);
INSERT INTO twit_user VALUES (
	'2521578203',
	'Letícia',
	'atuavozjorge',
	'',
	'Sou fã de um gordo cachaceiro e um rockeiro que toca sertanejo. @jorgeemateus',
	607,225,'Thu May 01 17:29:14 +0000 2014',25305,225,'pt',
	'http://pbs.twimg.com/profile_images/514218519362543617/j4aPkT0n_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JeM_myLife: e a Dupla Mais Querida Foi : Jorge E Mateus! #Orgulho 👏👏👏😍😍😍😍',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2521578203
);
INSERT INTO twit_user VALUES (
	'1586824711',
	'STEAL MY GIRL',
	'RohhAviila',
	'',
	'Directioner Forever♥/Argentina manda//ODAO MANDA/ Magcon ❤ MAGCULT FOREVAH/ Matthew;;s Girl ✌❤ :;;)',
	619,1012,'Thu Jul 11 21:05:47 +0000 2013',5779,1012,'es',
	'http://pbs.twimg.com/profile_images/524754322765410304/kLQbmKVe_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheMattEspinosa: Takin sips from the fountain of youth',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1586824711
);
INSERT INTO twit_user VALUES (
	'2738199123',
	'Hi or Hey?',
	'BangingHazza',
	'',
	'✖I was a normal girl until i discovered 5sos✖ 0/11',
	139,355,'Sat Aug 09 15:49:51 +0000 2014',946,355,'en',
	'http://pbs.twimg.com/profile_images/524262284957609985/WeaQkyvf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	2738199123
);
INSERT INTO twit_user VALUES (
	'1362218191',
	'☁️PLEASE KEATON',
	'caniffsriker',
	'6/12,Sammy+Dillon+R5 band acc',
	'emblem 3, orignal 12, R5, echosmith, mkto, KAM, 5SOS, 1D, Jake miller',
	3085,85,'Thu Apr 18 15:26:12 +0000 2013',22717,85,'en',
	'http://pbs.twimg.com/profile_images/525844859740229632/9-yPRwM6_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'i hope you;;re well :)
if you happen to see this,
can you please follow me?
it would make me sooo happy!

@KeatonStromberg 😘39',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1362218191
);
INSERT INTO twit_user VALUES (
	'136497122',
	'∽†∽',
	'_OriginalSteez',
	'Exit 1 . miami',
	'st△y psitive.  #RipShakey follow my bestfriend @theotherjuniorr | the most loyal nigga i have ever met ✊',
	2140,2142,'Sat Apr 24 03:24:17 +0000 2010',29847,2142,'en',
	'http://pbs.twimg.com/profile_images/518120464590581760/1JkDESF1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @DopeAs_Estrella: “@_OriginalSteez: Enough said. http://t.co/1ZewFlF6jK”❗️❗️',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	136497122
);
INSERT INTO twit_user VALUES (
	'979107901',
	'ƒacundo §amudio',
	'faacuu99',
	'argentina',
	'#BelieberBoy 1D|Wiz Khalifa|Dubstep| //Live life to the fullest and never back down.',
	346,255,'Thu Nov 29 20:27:32 +0000 2012',10548,255,'es',
	'http://pbs.twimg.com/profile_images/378800000402145856/a1b782cdb6a60bcdd310195e99adc004_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Photo:  http://t.co/O6TPRhQ1b9',
	'<a href=::http://www.tumblr.com/:: rel=::nofollow::>Tumblr</a>',
	979107901
);
INSERT INTO twit_user VALUES (
	'1081805576',
	'Jeff Pointer',
	'jeffpointer147',
	'',
	'Star Wars! DC Comics! STL Cardinals! Naruto! Im short, redhead, nerd and cant be stopped from being myself! Baseball is life!',
	133,348,'Sat Jan 12 04:25:39 +0000 2013',3526,348,'en',
	'http://pbs.twimg.com/profile_images/477961780292227074/WGdnHB7o_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Im still shocked I just can;;t believe it',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1081805576
);
INSERT INTO twit_user VALUES (
	'583291489',
	'Veronika Diaz',
	'VeronikaDiazW',
	'',
	'null',
	235,100,'Fri May 18 00:09:09 +0000 2012',946,100,'es',
	'http://pbs.twimg.com/profile_images/519255274042171394/bNOAi-Ad_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Orisiviraa: Yo loca por volverte a ver.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	583291489
);
INSERT INTO twit_user VALUES (
	'2620743123',
	'lara porto',
	'larapportoo',
	'',
	'WWAT 11/05/14 ;;cause right now everything is new to me;;',
	325,615,'Wed Jun 18 18:45:22 +0000 2014',2327,615,'pt',
	'http://pbs.twimg.com/profile_images/491994803492880384/U0F_RuyD_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@larrycalque entao vc n precisa flr NORDESTINOS',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2620743123
);
INSERT INTO twit_user VALUES (
	'1898170284',
	'Tengo el puto limit.',
	'WithalwaysBar',
	'',
	'•5Menciones y un RT de Barbie• ♥  bar me saludo para mi cumple hoy 23/10/14 1 mención de coki',
	735,741,'Mon Sep 23 19:30:30 +0000 2013',21392,741,'es',
	'http://pbs.twimg.com/profile_images/523277864150384640/kOODyRVi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	1898170284
);
INSERT INTO twit_user VALUES (
	'2316286169',
	' Sooffi ffiiiii ☆',
	'eusofii',
	'',
	'Me haces sonreír como nadie puede llegar hacerlo ♥',
	95,138,'Fri Jan 31 15:11:07 +0000 2014',3395,138,'es',
	'http://pbs.twimg.com/profile_images/524585228325912577/klzqD9Iy_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Daai_Cuerva tal cuaaaaal !!',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2316286169
);
INSERT INTO twit_user VALUES (
	'484562761',
	'جاري البحثⓂ',
	'naif_vip6',
	'',
	'متواجد في إيرلندا-Galway',
	133,229,'Mon Feb 06 07:43:09 +0000 2012',5060,229,'ar',
	'http://pbs.twimg.com/profile_images/506872804449718272/yhBINQqr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'اللهم افتح لنـا أبواب الخير في هذا الصباح http://t.co/oTUFQbpGhL',
	'<a href=::http://du3a.org:: rel=::nofollow::>تطبيق تغريد دعاء</a>',
	484562761
);
INSERT INTO twit_user VALUES (
	'2508262757',
	'Priscilla',
	'fiveonedurex',
	'São Paulo',
	'no começo eu achei que eles gostavam de ppk, mas me enganei. {11.05.14}',
	61,105,'Fri Apr 25 12:02:45 +0000 2014',1533,105,'pt',
	'http://pbs.twimg.com/profile_images/512017765889089536/oADzMuCn_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2508262757
);
INSERT INTO twit_user VALUES (
	'166345602',
	'Mati Frosasco',
	'MatiFrosasco',
	'Cordoba',
	'No pain & no gain -     Estudiante Lic. en Adm. de Empresas',
	348,300,'Tue Jul 13 22:57:59 +0000 2010',5616,300,'es',
	'http://pbs.twimg.com/profile_images/517367636163059714/g_Ojs1LG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No seas tan cruel , no busques mas pretextos !',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	166345602
);
INSERT INTO twit_user VALUES (
	'610255817',
	'Rubia Hueca †',
	'CianfloneChiaru',
	'jose manda chiaru obdc',
	'http://facebook.com/chiaru.vaderet… WPP: 3404506387',
	170,117,'Sat Jun 16 20:29:57 +0000 2012',3717,117,'es',
	'http://pbs.twimg.com/profile_images/514892735933722624/W75cZ4Yr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'JAJAJAJAJJAJAJAJA No podes',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	610255817
);
INSERT INTO twit_user VALUES (
	'2779752336',
	'tengo el puto limit',
	'endlessbarbara',
	'',
	'actualmente gorda fan de Barbara Velez',
	274,220,'Sat Aug 30 03:06:14 +0000 2014',22713,220,'es',
	'http://pbs.twimg.com/profile_images/519193885159849986/qJyTXGHY_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@KCAArgentina_ Rt por la mas diosa #BarbaraVelez #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2779752336
);
INSERT INTO twit_user VALUES (
	'822454813',
	'Natalia Ordoñez ღ ',
	'NataliaOrd55',
	'Santiago del Estero ARGENTINA',
	'Dia a dia aprendiendo a ser.',
	801,582,'Fri Sep 14 01:06:40 +0000 2012',29710,582,'es',
	'http://pbs.twimg.com/profile_images/523586942936829952/AcFmpNQ0_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'No veo la hora que pase volando el año, pero antes quiero y tengo que aprobar los finales. a meterle pata',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	822454813
);
INSERT INTO twit_user VALUES (
	'2714657366',
	'FDSGameplay ',
	'FDSGameplay',
	'',
	'Não quero ser melhor que ninguém e nem pior, só quero alcançar meu objetivo ;;;; Foco, Força e Fé ;;;; ♦http://www.facebook.com/fdsgames',
	1303,328,'Thu Aug 07 14:26:09 +0000 2014',21641,328,'pt',
	'http://pbs.twimg.com/profile_images/525395688847196160/zmErq3-s_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@PedroUBRGamer ♦Curte Gameplay
♦http://t.co/2V2GVUzedc
♦Fanpage: http://t.co/g2Saqrgmba
♦Me Segue eu sigo de volta 
♦OBRIGADO',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2714657366
);
INSERT INTO twit_user VALUES (
	'1332360314',
	'Amanda',
	'_manmuller',
	'',
	'null',
	319,454,'Sat Apr 06 19:50:18 +0000 2013',4891,454,'pt',
	'http://pbs.twimg.com/profile_images/524025067718848512/tTx08bsM_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Aeee seus bosta dilma ne? Nois 😒',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1332360314
);
INSERT INTO twit_user VALUES (
	'1628917129',
	'ℓ υ c ί α ',
	'MoraLuciaa',
	'',
	'Te pido un favor desde donde estes  no me dejes no me sueltes  puedo enloquecer••',
	395,341,'Sun Jul 28 22:32:31 +0000 2013',6761,341,'es',
	'http://pbs.twimg.com/profile_images/525067720904015874/ktbU42aV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @LatidosDeRock: Yo te juro me voy si me decís que hay alguien mejor.',
	'<a href=::http://blackberry.com/twitter:: rel=::nofollow::>Twitter for BlackBerry®</a>',
	1628917129
);
INSERT INTO twit_user VALUES (
	'2453601648',
	'gabi',
	'gabiftzayn',
	'Argentina',
	'the love of my life, zayn malik ♡ / cam te amo.',
	9016,6357,'Sat Apr 19 19:35:02 +0000 2014',38420,6357,'es',
	'http://pbs.twimg.com/profile_images/525771415585177600/Wi2GQqs3_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2453601648
);
INSERT INTO twit_user VALUES (
	'1279128830',
	'Carnage',
	'noehernandez67',
	'South texas.. womp womp womp! ',
	'haters gonna hate',
	33,114,'Tue Mar 19 00:35:19 +0000 2013',93,114,'en',
	'http://pbs.twimg.com/profile_images/526177367342190592/61izN4Nv_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Forever thinking about random stuff!! Check out http://t.co/D1dvxo79HW to look at whats going on around the world',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1279128830
);
INSERT INTO twit_user VALUES (
	'309065962',
	'Brand',
	'BrandSNK',
	'Caracas ',
	'XVIII. Se ve que es pana. Ingenieria-UCV |-/ instagram:brandsnk',
	582,236,'Wed Jun 01 13:37:38 +0000 2011',33801,236,'es',
	'http://pbs.twimg.com/profile_images/516383479429599232/QnyENb8f_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@problemario Esa es igual de buena o mejor obvio',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	309065962
);
INSERT INTO twit_user VALUES (
	'609740973',
	'.:♎️ Kalvin ♎️:.',
	'CalvinNT',
	'Katy, Texas',
	'If you don;;t know the name, that;;s cuz it;;s Xclusive',
	157,748,'Sat Jun 16 03:45:48 +0000 2012',1385,748,'en',
	'http://pbs.twimg.com/profile_images/476961057982799872/HMvSNggr_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MartianRemix: There;;s two different type of females http://t.co/HXtl2iUfCT',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	609740973
);
INSERT INTO twit_user VALUES (
	'532076217',
	'EMINƎM',
	'mrnialler_',
	'njh/5',
	'did i mention i am a guy // 4006 // WWA tour 9/13/14',
	29013,9601,'Wed Mar 21 06:59:15 +0000 2012',98487,9601,'en',
	'http://pbs.twimg.com/profile_images/517177287184113664/oYP3FPD-_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne lol',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	532076217
);
INSERT INTO twit_user VALUES (
	'2261242098',
	'MINE NATSUMI',
	'8251129312',
	'',
	'旭川龍谷▷東北福祉 陸上 毎日楽しく☺︎',
	267,291,'Wed Dec 25 08:50:27 +0000 2013',1379,291,'ja',
	'http://pbs.twimg.com/profile_images/523784714125975553/V_vMmPsC_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @qachn: これって実際の話なんでしょうかね？？
⇒http://t.co/FPbNCa3aye',
	'<a href=::http://bazoos.info/:: rel=::nofollow::>めちゃんこワロッター</a>',
	2261242098
);
INSERT INTO twit_user VALUES (
	'760332091',
	'destiel af !!',
	'skylitpayne',
	'(୨୧•͈ᴗ•͈)◞*',
	'who is liam payne',
	6443,3326,'Wed Aug 15 22:52:28 +0000 2012',28131,3326,'en',
	'http://pbs.twimg.com/profile_images/523683217287958528/KsK6YWmV_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Real_Liam_Payne you should be a snake habitat',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	760332091
);
INSERT INTO twit_user VALUES (
	'1041392294',
	'monica ✧ njh',
	'narrycashh',
	'ig; sohodollz',
	'odi et amo. quare id faciam, fortasse requiris? nescio, sed fieri sentio et excrucior゜ﾟ*･:.✧',
	2064,1564,'Fri Dec 28 05:19:44 +0000 2012',44747,1564,'en',
	'http://pbs.twimg.com/profile_images/524705627785166848/OitXGEeF_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'◡̈ do you see this

smiley face? oh, its

bc of you Liam! pretty

please follow me (ू•ᴗ•ू❁)

@Real_Liam_Payne 132 🌁🌁🌈',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1041392294
);
INSERT INTO twit_user VALUES (
	'58957179',
	'Brandon',
	'brandon_hassett',
	'Trinidad',
	'Yes I did biology',
	245,245,'Tue Jul 21 23:17:36 +0000 2009',30772,245,'en',
	'http://pbs.twimg.com/profile_images/526257214143873024/D4bxCXsE_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FriendlyAssh0le: relationship tip: don;;t',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	58957179
);
INSERT INTO twit_user VALUES (
	'1003087362',
	'nathan',
	'NathanHohe',
	'',
	'tatiana is bae 10/21/14',
	98,104,'Tue Dec 11 02:17:58 +0000 2012',1980,104,'en',
	'http://pbs.twimg.com/profile_images/524441649943166977/-9jasoyY_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @FunnyViness: When you;;re super scared but play it cool by laughing cause you;;re with friends.. https://t.co/mgAEWW0Onk',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1003087362
);
INSERT INTO twit_user VALUES (
	'2782629420',
	'public enemy',
	'vogartrath',
	'mezzo/juliet • 15 • va • esfj',
	'『 remember us, remember that we lived. 』 || @klausdove ♛ @kousukeseto ♛ @kynareths',
	138,127,'Sun Aug 31 17:36:56 +0000 2014',10596,127,'en',
	'http://pbs.twimg.com/profile_images/525044147632099328/FEDKKn1I_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @UberFactsEbooks: Banana slugs and humans have been known to try and mate with their owners.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2782629420
);
INSERT INTO twit_user VALUES (
	'181951207',
	'Seight',
	'JustAGuyGuy',
	'Someabouts.',
	'ALL ANIMALS CAN SCREAM',
	142,492,'Mon Aug 23 13:10:11 +0000 2010',17587,492,'en',
	'http://pbs.twimg.com/profile_images/1245141067/x5rpcy_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @robwhisman: im going as a pumpkin spice latte for halloween. basic white girl much. cant wait to be a punkip spince lambe. love pemner …',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	181951207
);
INSERT INTO twit_user VALUES (
	'1387299360',
	'紺々子猫(こここねこ)',
	'Rinchan_Loverin',
	'',
	'あいこんはいおから',
	3563,3768,'Sun Apr 28 16:16:06 +0000 2013',25041,3768,'ja',
	'http://pbs.twimg.com/profile_images/521283680128339970/GRumnB4t_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'バスケ全勝だった三(;;ω;;)三( ε: )三(.ω.)三( :3 )三(;;ω;;)三( ε: )三(.ω.)三( :3 )ｺﾞﾛｺﾞﾛｺﾞ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1387299360
);
INSERT INTO twit_user VALUES (
	'46544890',
	'Wendy Black Magley',
	'wmags',
	'',
	'null',
	420,828,'Fri Jun 12 01:26:21 +0000 2009',7606,828,'en',
	'http://pbs.twimg.com/profile_images/476476768182747136/7M-Yzono_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'https://t.co/Sya3eFWyWT',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	46544890
);
INSERT INTO twit_user VALUES (
	'1555234064',
	'だあみん',
	'__Darm_8',
	'',
	'ー*＊ I Love Yuki ≪ ♡ ≫ @Azulgrana_Yuki ＊* ー ⑅❤︎ Header = 4co1 ❤︎⑅ ༼ ͒ ̶ ͒༽Y༼⍨༽Y༼⍢༽A༼∵༽D ❤︎ 可愛いしおたん ≫ @chiotplay',
	4103,1077,'Sat Jun 29 09:12:48 +0000 2013',35488,1077,'ja',
	'http://pbs.twimg.com/profile_images/520815322052317184/998o1Qzj_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@churiri_ 

ありがとう（ ;  ; ）
ぱおちゃんもきをつけて',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1555234064
);
INSERT INTO twit_user VALUES (
	'76179761',
	'能美クドリャフカ',
	'Kudryavka_bot',
	'リトルバスターズ！',
	'リトルバスターズ!の能美クドリャフカのBOTです。VisualArt;;s社とは無関係の個人が運用しています。リトバスBOT(@busters_bot)。作者にご用命の方は@norick_v125まで。',
	13986,13953,'Mon Sep 21 23:23:46 +0000 2009',1128786,13953,'ja',
	'http://pbs.twimg.com/profile_images/2149966646/kud09_normal.jpg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@nicocooking 和風ドレッシングをかけましょう。わふー',
	'<a href=::http://blog.lagrange-point.info/:: rel=::nofollow::>Kudryavka</a>',
	76179761
);
INSERT INTO twit_user VALUES (
	'224666139',
	'ラスター',
	'laster_dq9',
	'星空の戦士団',
	'DQ9二次創作サイト「Loop」の第二パーティ主人公のbotです。時期はクエスト163後、仲間と一緒に設立した戦士団の副団長として働いています。仲間×主人公のBL要素を含みますので苦手な方はご注意下さい。何かありましたら、@kite_stringまで！',
	19,19,'Thu Dec 09 15:25:52 +0000 2010',26989,19,'ja',
	'http://pbs.twimg.com/profile_images/2009785917/laster_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'時々エルと一緒に、石の町に行くんだ。何をするってわけでもないけど、あの場所にいると、お互いの大切さを再確認できる気がして、な。',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	224666139
);
INSERT INTO twit_user VALUES (
	'578960842',
	'Krel ',
	'karilaayn',
	'Alfakapalmuks ♥️',
	'No, it;;s Becky.',
	3816,4197,'Sun May 13 13:28:31 +0000 2012',27852,4197,'en',
	'http://pbs.twimg.com/profile_images/516115829994180608/bkyD3dkk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @HereForTaylor8: #3HoursTil1989 it was a good life guys, 
it was a pleasure fangirling with you.',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	578960842
);
INSERT INTO twit_user VALUES (
	'2855393725',
	'激ヤバ！少女マンガ面白すぎ！',
	'dsivnsa',
	'',
	'面白い少女マンガの世界へようこそ！これってどうしてこうなった？おかしな少女マンガの画像を集めました★お気軽にフォローお願いします！',
	92,1381,'Tue Oct 14 09:21:15 +0000 2014',172,1381,'ja',
	'http://pbs.twimg.com/profile_images/521954121297838080/CEhbjYOB_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @koijhu77: FF7の完全新作が遂にアプリで登場！
待ってましたー！

iOS
⇒http://t.co/3AzzlzpG40
アンドロイド
⇒http://t.co/ueK8Z6NBMD

限定マテリアが貰える
事前登録キャンペーン中！ http://t.co/…',
	'<a href=::https://twitter.com/dsivnsa:: rel=::nofollow::>激ヤバ！少女マンガ面白すぎ！</a>',
	2855393725
);
INSERT INTO twit_user VALUES (
	'1024450352',
	'하늘',
	'sky_ing_',
	'',
	'Pump it up, DDR 등등.. 리듬게이머 / 팔로우 후에는 멘션 주세요! / 서현에서 볼수있는 유우저 / 日本語は少しだけ / 라노베나 애니, 음악을 즐기는 잡덕 / DDR 라이벌코드 4418 4454',
	489,479,'Thu Dec 20 15:20:33 +0000 2012',68222,479,'ko',
	'http://pbs.twimg.com/profile_images/524561462174294017/-vFP5vBJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'배고파아아아아아아ㅏㅇ아ㅏㅇ아아아ㅏ앙아아아아아ㅏ앙아ㅏ아앙아아아아아아아아앙아아아아아ㅏㅏ아아아ㅏ앙아아ㅏ',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1024450352
);
INSERT INTO twit_user VALUES (
	'452058160',
	'Paola ❀',
	'zaynsmirks',
	'',
	'I was looking for a reason to stay alive and somewhere along the way, I found five. ❤',
	10315,9169,'Sun Jan 01 10:57:29 +0000 2012',35403,9169,'en',
	'http://pbs.twimg.com/profile_images/522392396227547139/0E78FHnJ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	452058160
);
INSERT INTO twit_user VALUES (
	'2576888166',
	'Minhyuk',
	'_Kang_Minhyuk',
	'',
	'Kang Minhyuk CN Blue 91 L | not dare, my everything @scrthys :*',
	187,215,'Thu Jun 19 13:47:53 +0000 2014',1486,215,'en',
	'http://pbs.twimg.com/profile_images/525224778068525058/2WEbiSFH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@EvilMinah93 ganteng pinter gini di bilang pea-_-',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2576888166
);
INSERT INTO twit_user VALUES (
	'2809318873',
	'勝部拓斗',
	'kattyann121',
	'',
	'松商1年商業科 バレーボール部',
	113,169,'Sun Sep 14 11:32:00 +0000 2014',62,169,'ja',
	'http://pbs.twimg.com/profile_images/511159923414016000/jEy2C5ot_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @iwpqp386651: 会員数は450万人を突破！全国各地にてプロモーション強化中の【ミントＣ！Ｊメール】だから、
ファッション雑誌などへの出稿で女性の集客にも力を 入れています。
⇒http://t.co/k8fqPJjw79 http://t.co/E24Km52…',
	'<a href=::http://www.google.co.jp:: rel=::nofollow::>health-messege</a>',
	2809318873
);
INSERT INTO twit_user VALUES (
	'2546291055',
	'K-Eazy',
	'TrippyyGilinsky',
	'',
	'Its rough out here in the 402',
	1456,395,'Wed May 14 01:57:53 +0000 2014',12194,395,'en',
	'http://pbs.twimg.com/profile_images/519693262978703360/__yc4PJH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @benmadermusic: RT for a follow/phone call http://t.co/RINL8VnCm9',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2546291055
);
INSERT INTO twit_user VALUES (
	'2858010972',
	'بدون لعب',
	'bdonl3b',
	'',
	'كثر الكلام مايفيد . مايفيد غير الفعل والزين زين الغيد. والغيد يبغالهن رجل @rawanalammari2 حساب حبيبت قلبي رنوش',
	535,529,'Thu Oct 16 12:43:24 +0000 2014',2358,529,'ar',
	'http://pbs.twimg.com/profile_images/522946437764505600/DnZJwyEm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @mayabetween95: منتهى نور العين http://t.co/g4g2LiKrc3',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2858010972
);
INSERT INTO twit_user VALUES (
	'93432983',
	'king bleak',
	'bleakhtkniit',
	'money york',
	'shit aint neva wat it seems n if u outside lookin in u lost',
	268,485,'Sun Nov 29 16:39:44 +0000 2009',19557,485,'en',
	'http://pbs.twimg.com/profile_images/1693867125/330CW08h_normal',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Guess I;;m not working tomorrow',
	'<a href=::http://www.handmark.com:: rel=::nofollow::>TweetCaster for iOS</a>',
	93432983
);
INSERT INTO twit_user VALUES (
	'330214268',
	'เอโอเอ็ม',
	'siriphan1',
	'',
	'null',
	28,84,'Wed Jul 06 08:41:06 +0000 2011',3246,84,'en',
	'http://pbs.twimg.com/profile_images/522791959241302016/7gzHq8Gf_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Bigsmile_smile: http://t.co/J4LrkyeKs3',
	'<a href=::http://twitter.com/#!/download/ipad:: rel=::nofollow::>Twitter for iPad</a>',
	330214268
);
INSERT INTO twit_user VALUES (
	'2869921436',
	'レン',
	'ren14106',
	'愛と苦しみと歌の世界',
	'両想い希望なので
片想いの場合は外します
m(__)m',
	45,60,'Wed Oct 22 01:53:36 +0000 2014',37,60,'ja',
	'http://pbs.twimg.com/profile_images/525039354884788224/W0pM75Zw_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @kuronekounion: ゆい：おお！もちろん！どちらも吹き替えで見ます！（笑） RT @tsuda_ken: お！良いのに目をつけましたね！何故ならどっちも俺が吹き替えで出ているからです 笑 RT  ゆい：スーパーナチュラルという作品とワンスアポンアタイムという作…',
	'<a href=::http://twitter.softama.com/:: rel=::nofollow::>ツイタマ for Android</a>',
	2869921436
);
INSERT INTO twit_user VALUES (
	'1378941914',
	'คุณชายชานคุณนายแบค',
	'winechosita',
	'',
	'.',
	147,201,'Thu Apr 25 08:04:24 +0000 2013',106337,201,'th',
	'http://pbs.twimg.com/profile_images/511433792104308736/mnUcruO3_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @KRISYEOL_FINALE: [PIC] 141025 🐥 #Chanyeol D.O.@ MBC KMW In Beijing. # 2 [© BlackKnight]
http://t.co/tdEZwBM1yf
http://t.co/lkP55bp641 h…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1378941914
);
INSERT INTO twit_user VALUES (
	'2407191758',
	'UNI GIRL ',
	'5SOS_UnionJ_x',
	'Long Way Home ',
	'LUKE HEMMINGS BE MINE ❤️ #JoshGirl Josh Dmed 11/09/14  5SOS 0/4 Union J 2/4 Josh and JJ (Band Account follows) The Vamps 1/4 James,
I Follow and Unfollow back',
	4593,4658,'Sun Mar 23 14:36:42 +0000 2014',10633,4658,'en',
	'http://pbs.twimg.com/profile_images/526386411021152256/3ra6Enib_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2407191758
);
INSERT INTO twit_user VALUES (
	'216534172',
	'Drew Osborne',
	'AwzRocks',
	'Neosho, MO',
	'I love my family.  I love baseball.  I enjoy breaking the game down and understanding it at a level most people don;;t.  I enjoy watching all KC teams.',
	281,844,'Wed Nov 17 00:09:39 +0000 2010',15885,844,'en',
	'http://pbs.twimg.com/profile_images/457952094918434816/NJoRYGSQ_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @MLBONFOX: Heartbreaking news.

Oscar Taveras has died in a car accident. Our thoughts go out to his family and loved ones. http://t.co/…',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	216534172
);
INSERT INTO twit_user VALUES (
	'1940067594',
	'Celine Valdeabella',
	'atomicceline',
	'The Big Blue Box',
	'i didn;;t choose the thug life...                    And the thug life didn;;t choose me either.',
	68,177,'Sun Oct 06 07:14:56 +0000 2013',782,177,'en',
	'http://pbs.twimg.com/profile_images/520186998774968320/zZ_bqawH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @CauseWereGuys: I must be old cause who the fuck is this? http://t.co/4pzgUnrB9C',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1940067594
);
INSERT INTO twit_user VALUES (
	'1659057408',
	'Carly Matarazzo',
	'_carlyboo',
	'',
	'null',
	175,174,'Sat Aug 10 02:35:00 +0000 2013',47368,174,'en',
	'http://pbs.twimg.com/profile_images/526498124890505218/0fIQMtSU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'“@BestProAdvice: http://t.co/BwK08IhCWu” weird 😳',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1659057408
);
INSERT INTO twit_user VALUES (
	'2820827066',
	'Cecilia ',
	'Ceciliagdc_',
	'',
	'✌ ♫ ►✿',
	90,188,'Sat Sep 20 01:45:08 +0000 2014',1230,188,'es',
	'http://pbs.twimg.com/profile_images/524053438506618880/BVFM3W2l_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Me dejo en seen, me muero :;;(',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	2820827066
);
INSERT INTO twit_user VALUES (
	'382726172',
	'Le Généraal ',
	'SafoineBastos',
	'4000 Nord ! ',
	'Pourquoi craindre les Hommes il pourrait se croire comparable a Dieu. #Démon      #UnTontonQuiDéchire',
	351,272,'Fri Sep 30 15:40:25 +0000 2011',31491,272,'fr',
	'http://pbs.twimg.com/profile_images/509473227878322177/G-REy5mG_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'jai maal mortel wallah jsuis attein',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	382726172
);
INSERT INTO twit_user VALUES (
	'2841577408',
	'DDDeck2',
	'DDDeck2',
	'',
	'null',
	2,0,'Wed Oct 22 21:21:22 +0000 2014',6046,0,'es',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	's  #Aliados #KCAArgentina',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	2841577408
);
INSERT INTO twit_user VALUES (
	'204050469',
	'Stich',
	'FlaTechera',
	'',
	'Aprendí que el amor mata si de tu lado no esta',
	285,302,'Sun Oct 17 20:18:48 +0000 2010',10612,302,'es',
	'http://pbs.twimg.com/profile_images/504101563703767040/HmodjLYX_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Casi me desmayo hoy , me bajo la presion y los nervios por el techo',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	204050469
);
INSERT INTO twit_user VALUES (
	'750042469',
	'H.S. defense squad',
	'17siriusblack',
	'eashaa is my #1',
	'happiness and harry start with the same lettter, coincidence? i think not',
	15766,6487,'Fri Aug 10 20:56:35 +0000 2012',142682,6487,'en',
	'http://pbs.twimg.com/profile_images/525696642184663040/e4BNrQYq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @meanpIastic: Rufus and Lilly are a real life couple. This is too perfect. http://t.co/AXqBRHa1XV',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	750042469
);
INSERT INTO twit_user VALUES (
	'1580320710',
	'たく',
	'SALangley02',
	'',
	'琉大の経済/身長のばしたい',
	70,89,'Tue Jul 09 13:11:59 +0000 2013',8061,89,'ja',
	'http://pbs.twimg.com/profile_images/523494516204896257/OQnq69V1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @cccbbabbccc: らぶらぶなう😻 http://t.co/JwmTU835kC',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1580320710
);
INSERT INTO twit_user VALUES (
	'1066137193',
	'Malú',
	'maluaquino_',
	'Lorena ',
	'O que Deus quiser pra mim, eu quero! ',
	356,241,'Sun Jan 06 16:39:48 +0000 2013',23594,241,'pt',
	'http://pbs.twimg.com/profile_images/525443224304119809/DByWalEk_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Colocar uma musica boa, fechar os olhos e imaginar mil coisas...',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1066137193
);
INSERT INTO twit_user VALUES (
	'46527622',
	'Shannon',
	'ShanOfTheShire',
	'Wales UK',
	'Shannon, 18, Makeup artist, Music lover, Lord Of The Rings fangirl, Book worm, Film fanatic, Fantasist.',
	1701,938,'Thu Jun 11 23:59:37 +0000 2009',11943,938,'en',
	'http://pbs.twimg.com/profile_images/524221980799533056/LGpSpmWu_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I love buying people gifts, I am so good at gifts',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	46527622
);
INSERT INTO twit_user VALUES (
	'2231878378',
	'Imane❤️',
	'cheichei09',
	'somerholic',
	'•tvd|tw|arrow|twd|reign|the100|ouat• Imanemylove',
	409,332,'Wed Dec 18 16:25:28 +0000 2013',9362,332,'fr',
	'http://pbs.twimg.com/profile_images/524512946484162560/ljweeZZm_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Je suis à l;;épisode ou Azuma il meurt, j;;ai encore pleurer comme une tapete alors que j;;avais déjà vu cette épisode.. #NarutoShippuden',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2231878378
);
INSERT INTO twit_user VALUES (
	'743492130',
	'أمجاد الشهري',
	'Amjaid_',
	'',
	'سبحان الله وبحمده سبحان الله العظيم ..',
	6187,160,'Tue Aug 07 18:45:25 +0000 2012',6561,160,'ar',
	'http://pbs.twimg.com/profile_images/523408416325115904/rZlUW4iq_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'المدرسه http://t.co/cQOGfQnS5u',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	743492130
);
INSERT INTO twit_user VALUES (
	'76844884',
	'Camilo',
	'CamiloNicolas25',
	'Chile',
	'InJeniero. Aquí hablo solo y a veces interactúo. Socio del CSD COLO-COLO!!. Matilieber, Hala Madrid!, Come on Chelsea!. Extraterrestre y Avatar por esencia :)',
	1267,839,'Thu Sep 24 03:30:32 +0000 2009',62562,839,'es',
	'http://pbs.twimg.com/profile_images/513120362994073600/wN-dfgqT_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Porque para estar en el equipo de Sampa debes correr. Da lo mismo si eres malo, pero debes correr',
	'<a href=::https://about.twitter.com/products/tweetdeck:: rel=::nofollow::>TweetDeck</a>',
	76844884
);
INSERT INTO twit_user VALUES (
	'2538739302',
	'きゅるら@TLレイプ補助4',
	'9fehe_',
	'',
	'本垢(@m0cululla)のTLレイプ垢(@Cululla_TLrape)がツイート数をより多く稼ぐのを助けるために作られた、とっても健全な認証済みアカウントその4です。',
	64,63,'Sun Jun 01 05:07:15 +0000 2014',140811,63,'ja',
	'http://pbs.twimg.com/profile_images/506311913211322368/GhrPM1pD_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@g7d34P qgq3',
	'<a href=::http://twittbot.net/:: rel=::nofollow::>twittbot.net</a>',
	2538739302
);
INSERT INTO twit_user VALUES (
	'1613892494',
	'',
	'votingluan',
	'',
	'vota no prêmio multishow também',
	87,62,'Mon Jul 22 23:32:08 +0000 2013',10116,62,'pt',
	'http://pbs.twimg.com/profile_images/526126271722315777/-CCBNCes_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'quatrocentos e trinta e nove #JOVEMDOANOLuanSantana #PJB',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	1613892494
);
INSERT INTO twit_user VALUES (
	'106826443',
	'Venialgo',
	'Mariovenialgo',
	'',
	'Agronomía UNA - OLIMPIA -
Exa CTN 012 -  FÚTBOL',
	2206,659,'Wed Jan 20 20:32:48 +0000 2010',29982,659,'es',
	'http://pbs.twimg.com/profile_images/514809538659504128/oZIvBV-z_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ru7902: El snap a estas horas se vuelve interesante 😏',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	106826443
);
INSERT INTO twit_user VALUES (
	'2159027630',
	'Daniel Torres',
	'DTorres_95',
	'North Austin ',
	'Ig:@DTorres_95',
	274,267,'Sun Oct 27 14:47:06 +0000 2013',5623,267,'en',
	'http://pbs.twimg.com/profile_images/519919295242174466/p1COIyWd_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@TaniaOoooo hopefully or else a waiter leaving without a tip 🙈 jk jk',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2159027630
);
INSERT INTO twit_user VALUES (
	'352911290',
	'RJ',
	'RJ_Cruise',
	'Philadelphia pa',
	'Joke alot don;;t take much seriously. Random at times. If I could marry Mac & cheese I would have (not joking)',
	215,322,'Thu Aug 11 07:45:41 +0000 2011',1899,322,'en',
	'http://pbs.twimg.com/profile_images/519304590559567872/7pWQHxre_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @WWE: Trending Worldwide for @WWE #HIAC: Ambrose and Rollins',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	352911290
);
INSERT INTO twit_user VALUES (
	'271065228',
	'Sade&Destiny::s Page',
	'TheReal_Sade',
	'',
	'LongLiveJOJO',
	1079,820,'Wed Mar 23 19:55:54 +0000 2011',46433,820,'en',
	'http://pbs.twimg.com/profile_images/526538030119936001/beccmMdH_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'I;;mma Do This Shit For My Ken folks 💯',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	271065228
);
INSERT INTO twit_user VALUES (
	'2785366250',
	'ミニチュアアート集',
	'minimini_artart',
	'',
	'null',
	1477,1951,'Tue Sep 02 06:32:49 +0000 2014',2139,1951,'ja',
	'http://pbs.twimg.com/profile_images/506692271396225024/vkZUTC4J_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'底なしの美味さ。
大好きだぜ！！ http://t.co/60RLhPdQUn',
	'<a href=::https://twitter.com/minimini_artart:: rel=::nofollow::>1652</a>',
	2785366250
);
INSERT INTO twit_user VALUES (
	'1654043202',
	'xaxa',
	'fernandesxaxa',
	'',
	'Me atualizando...',
	134,124,'Wed Aug 07 23:07:56 +0000 2013',3040,124,'pt',
	'http://pbs.twimg.com/profile_images/511192160792621057/aMhAwhlU_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @afazendaopnioes: Em uma suposta roça entre DH x Marlos
Vocês são:
#FicaMarlos: RT
#FicaDH: Fav',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1654043202
);
INSERT INTO twit_user VALUES (
	'1324965224',
	'key :)',
	'keyannaberrios',
	'',
	'null',
	882,707,'Wed Apr 03 16:29:35 +0000 2013',59149,707,'en',
	'http://pbs.twimg.com/profile_images/526476367962324992/yLe78UHc_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@will__hohlbein true !😂',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	1324965224
);
INSERT INTO twit_user VALUES (
	'474358175',
	'Alex Ho',
	'alexhooo21',
	'',
	'I love food',
	380,381,'Wed Jan 25 22:30:31 +0000 2012',3643,381,'en',
	'http://pbs.twimg.com/profile_images/506128314356858880/_-J5U_sp_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@Tndehchinaman lol nigga you were high af. I started to complain after finish both my ranch',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	474358175
);
INSERT INTO twit_user VALUES (
	'108088664',
	'ZELTUXA',
	'JesusChriest',
	'WooDHooD',
	'“Ja Tu vari sasmīdināt meiteni, tad Tu viņu vari arī ievilkt gultā.” es meitenēm esmu licis rēkt kā drāztām hiēnām gadiem, bet nekas dižs līdz noteiktam posmam',
	146,144,'Sun Jan 24 20:21:56 +0000 2010',5000,144,'en',
	'http://pbs.twimg.com/profile_images/3704915291/82c8995b39a7c0fe6d8fab12da6d285b_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'::@es_te_biju: Ar roku noķert lidojošu kvadkopteri - viens no dienas sliktākajiem lēmumiem. Propeleri sāp::',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	108088664
);
INSERT INTO twit_user VALUES (
	'186630783',
	'maria',
	'antorrilla',
	'inSantas',
	'i will love for end of time - 
mroficial lanaparrilla gioanto',
	3529,1348,'Fri Sep 03 23:50:47 +0000 2010',95903,1348,'pt',
	'http://pbs.twimg.com/profile_images/523896834385649664/tNJcQraz_normal.png',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@LanaParrilla a sra ja esta c a vida ganha mas eu tenho q estudar',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	186630783
);
INSERT INTO twit_user VALUES (
	'593589220',
	'W eee ...',
	'bats13_',
	'',
	'BRONK$.',
	385,293,'Tue May 29 10:35:37 +0000 2012',29312,293,'pt',
	'http://pbs.twimg.com/profile_images/524154961190735872/cFy_clK9_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'Eu torrei um baseado c a novinha do meu lado 🎶🍁',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	593589220
);
INSERT INTO twit_user VALUES (
	'865586660',
	'Annalisa ♕',
	'Annaaliisaax3',
	'Brooklynn ☁️',
	'ig: annalisa_marie21',
	1512,849,'Sun Oct 07 01:36:30 +0000 2012',155037,849,'en',
	'http://pbs.twimg.com/profile_images/526116900569632769/gse9tu2b_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@derosaalexa ily.',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	865586660
);
INSERT INTO twit_user VALUES (
	'1663580185',
	'jenni',
	'bieberdiosa',
	'Argentina',
	'bieber ◦ 1d ◦ cyrus ◦ 5sos                                                                  ⇨ cody ⊿ madison ⊿ shane ⊿ and more ◦  follows ⇦',
	2634,2485,'Sun Aug 11 22:02:59 +0000 2013',15839,2485,'es',
	'http://pbs.twimg.com/profile_images/526105391575609344/PyY1kSe1_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @ibiebersupdates: RT si Justin cambió tu vida. #EMABiggestFansJustinBieber',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1663580185
);
INSERT INTO twit_user VALUES (
	'1223100492',
	'AnikaHutchStyles',
	'Eternallyarenee',
	'',
	'null',
	60,180,'Tue Feb 26 22:40:48 +0000 2013',676,180,'en',
	'http://pbs.twimg.com/profile_images/491768374129463296/OA-89lRh_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @Real_Liam_Payne: This is quite a good game',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	1223100492
);
INSERT INTO twit_user VALUES (
	'28429352',
	'Instagram: @DJJDough',
	'DJJDough',
	'Live From CINCINNATI!!!!',
	'Club DJ/ Mixshow DJ/ TV DJ/ Radio Personality/ Mixtape DJ/ Tour DJ Catch Me Mon-Fri On @WizNationCincy 8-9p #InTheStreetzMix #CirocIsAllIDrink',
	2480,569,'Thu Apr 02 21:54:25 +0000 2009',45086,569,'en',
	'http://pbs.twimg.com/profile_images/522275357760958464/GRfr6_Uz_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @djdrizzle: [Mixtape] We Are The Streets 10 :: #GetItLIVE! http://t.co/P2fLZ0AjtW @LiveMixtapes @DJEDubMixtapes @DJDrizzle @DJJDough @Li…',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	28429352
);
INSERT INTO twit_user VALUES (
	'2191509002',
	'SaferatElelm',
	'SaferatElelm',
	'kafr El sheikh, Egypt',
	'‏‏‏ربى انى وكلتك امرى فأنت حسبى ووكيلى !!',
	1520,1520,'Wed Nov 13 02:53:17 +0000 2013',1582,1520,'en',
	'http://pbs.twimg.com/profile_images/522727474695012353/CaTzfBqU_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'http://t.co/RQNQOGKiIT',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	2191509002
);
INSERT INTO twit_user VALUES (
	'926539082',
	'            Jew Boii',
	'jewthatskates',
	'',
	'null',
	229,181,'Mon Nov 05 00:59:37 +0000 2012',3038,181,'en',
	'http://pbs.twimg.com/profile_images/507920010065760256/q_oZcB-Y_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @JustSexQuotes: Kissing burns 6.4 calories a minute. Let;;s work out.',
	'<a href=::http://twitter.com/download/android:: rel=::nofollow::>Twitter for Android</a>',
	926539082
);
INSERT INTO twit_user VALUES (
	'631231198',
	'♕ȉĦǦӦ♕',
	'iago_marques123',
	'Alegrete-RS',
	'http://www.facebook.com/iago.marquesrodrigues',
	624,417,'Mon Jul 09 16:31:11 +0000 2012',767,417,'pt',
	'http://pbs.twimg.com/profile_images/525701512433905664/r-3KbHVb_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'@FatinhaLopess http://t.co/1QvlJunlTg',
	'<a href=::http://twitter.com:: rel=::nofollow::>Twitter Web Client</a>',
	631231198
);
INSERT INTO twit_user VALUES (
	'2762464072',
	'Nick Mearnic',
	'nick_mearnic',
	'',
	'19 Detroit Pistons Flight Crew Why live for tomorrow, if its not guaranteed?',
	181,349,'Sat Sep 06 00:10:39 +0000 2014',1561,349,'en',
	'http://pbs.twimg.com/profile_images/524757159150886912/rHs9adfi_normal.jpeg',
	'false'
);

INSERT INTO tweets VALUES (
	default,
	'RT @TheD_Zone: Stevenson will host Chippewa Valley at 1pm on Saturday.  http://t.co/Lv9HMrej5K',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2762464072
);
INSERT INTO twit_user VALUES (
	'2606192808',
	'ashley',
	'ash_1421',
	'',
	'null',
	52,484,'Sat Jul 05 21:59:36 +0000 2014',2603,484,'en',
	'http://abs.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
	'true'
);

INSERT INTO tweets VALUES (
	default,
	'RT @GlossyFinds: Want FREE Beauty Products? Read what #GGRewards Program has in store for you! http://t.co/ZAKXjhdImc http://t.co/3s6SQ0lJ3U',
	'<a href=::http://twitter.com/download/iphone:: rel=::nofollow::>Twitter for iPhone</a>',
	2606192808
);
