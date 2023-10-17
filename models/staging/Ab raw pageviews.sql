-- Unique number of page views
-- Got the unique number of anonymous_id + timestamp 
-- combination for unique number of pageviews

{{ config(alias='pageviews') }}

SELECT
	DISTINCT
    timestamp, anonymous_id
FROM {{ ref('ikaros_pages') }}