-- Unique number of page views
-- Got the unique number of anonymous_id + timestamp 
-- combination for unique number of pageviews

{{ config(alias='pageviews', schema='analytics') }}

SELECT
	COUNT(DISTINCT timestamp, anonymous_id) AS page_views
FROM {{ ref('ikaros_pages') }}