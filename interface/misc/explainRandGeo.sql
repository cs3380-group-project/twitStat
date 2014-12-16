explain analyze select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
			from twitStat.twit_user as u
			inner join twitStat.tweets as t
			on t.user_id=u.usr_id
			inner join twitStat.geo as g
			on t.id=g.id
			order by random() limit 500;
