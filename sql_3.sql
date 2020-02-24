SELECT u.name, c.name, p.name
FROM `community_members` cm
LEFT JOIN users u ON u.id = cm.user_id
LEFT JOIN communities c ON cm.community_id = c.id
LEFT JOIN community_member_permissions cmp ON cm.id = cmp.member_id
LEFT JOIN permissions p ON p.id = cmp.permission_id
WHERE LENGTH(c.name)>=15 
AND u.name LIKE '%T%' 
OR p.name LIKE '%articles%'