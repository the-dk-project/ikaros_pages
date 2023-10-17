-- Number of average pageviews per visitor
-- Assumption: Got the average value of pageviews 
-- by adding all pageviews and dividing them by total count

{{ config(alias='average_pageviews') }}

SELECT
	(SUM(cnt) / COUNT(1)) AS average_pageviews
FROM	(
		SELECT
			anonymous_id
			,COUNT(1) AS cnt
		FROM {{ ref('ikaros_pages') }}
		GROUP BY
			anonymous_id
		) s