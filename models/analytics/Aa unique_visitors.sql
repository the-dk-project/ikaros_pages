-- Unique number of visitors
-- Used anonymous_id as reference for number of unique visits

{{ config(alias='unique_visitors', schema='analytics') }}

SELECT
	COUNT(DISTINCT(anonymous_id)) AS unique_visitors    
FROM {{ ref('ikaros_pages') }}