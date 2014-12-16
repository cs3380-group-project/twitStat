explain analyze select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
				from twitStat.twit_user as u
				inner join twitStat.tweets as t
				on t.user_id=u.usr_id
				inner join twitStat.geo as g
				on t.id=g.id
				where ( t.tweet ilike 'n' );
				
explain analyze select u.usr_id, u.name, u.screen_name, u.lang, t.tweet, g.latitude, g.longitude
				from twitStat.twit_user as u
				inner join twitStat.tweets as t
				on t.user_id=u.usr_id
				inner join twitStat.geo as g
				on t.id=g.id
				where ( u.screen_name ilike 'n' );
