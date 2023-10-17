-- Average duration of sessions
-- Solution: Got the start time and end time of each anonymous_id
-- Get the time difference in seconds, then get the total average

{{ config(alias='average_session_duration', schema='analytics') }}

SELECT
	SUM(duration_in_sec) / COUNT(1) AS average_duration_in_sec
FROM (
		SELECT
			anonymous_id
			,MIN(timestamp) AS start_time
			,MAX(timestamp) AS end_time    
			,TIMEDIFF(SECOND, MIN(timestamp), MAX(timestamp)) AS duration_in_sec
		FROM {{ ref('ikaros_pages') }}
		GROUP BY
			anonymous_id
	 ) s
 WHERE
	duration_in_sec != 0