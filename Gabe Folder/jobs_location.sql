SELECT j.uniq_id, j.job_title, j.job_descr, l.location
FROM jobs.job_opening_tbl j, jobs.location_dim l
where j.job_title like '%Data%'
and j.uniq_id = l.uniq_id
;