-- Number of average sessions per visitor
-- Assumption: sessions are visits with more than 1 pageviews

{{ config(alias='average_sessions', schema='analytics') }}

SELECT
	(SUM(cnt) / COUNT(1)) AS average_sessions
FROM	(
		SELECT
			anonymous_id
			,COUNT(anonymous_id) AS cnt
		FROM {{ ref('ikaros_pages') }}
		GROUP BY anonymous_id
		HAVING count(anonymous_id) > 1
		) s