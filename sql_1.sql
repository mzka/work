SELECT u.name, c.name, cm.joined_at
FROM users as u, communities as c, community_members as cm
WHERE u.id = cm.user_id and cm.joined_at >='2013-01-01 00:00:00'
ORDER BY `cm`.`joined_at` DESC