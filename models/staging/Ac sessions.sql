-- Unique sessions
-- Assumption: sessions are visits with more than 1 pageviews

{{ config(alias='sessions') }}

SELECT
	COUNT(1) AS sessions
FROM 	(
		SELECT
			anonymous_id
		FROM {{ ref('ikaros_pages') }}
		GROUP BY anonymous_id
		HAVING COUNT(anonymous_id) > 1
		) z