# Write your MySQL query statement below

        # ROOT
SELECT id, 'Root' as type
FROM Tree
WHERE p_id IS NULL


UNION
        # INNERS
(SELECT id, 'Inner' as type
FROM Tree
WHERE id IN (SELECT p_id FROM Tree) AND p_id IS NOT NULL)

UNION
        # LEAFS
(SELECT id, 'Leaf' as type
FROM Tree
WHERE p_id IS NOT NULL 
    AND id NOT IN (SELECT p_id FROM Tree WHERE P_id IS NOT NULL) )

Order by id
