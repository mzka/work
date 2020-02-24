SELECT c.id, c.name, p.name, COUNT(*) as user_count
FROM communities as c
LEFT JOIN community_members cm ON c.id = cm.community_id
LEFT JOIN community_member_permissions cmp ON cmp.member_id = cm.id
LEFT JOIN permissions p ON cmp.permission_id = p.id
WHERE p.name IS NOT NULL
GROUP BY c.id, c.name, p.name
ORDER BY `id` DESC
LIMIT 100