-- Generic event-quality checks.
-- Replace table and column names with your warehouse schema before running.

-- 1. Missing campaign parameters.
select
    event_date,
    count(*) as events_without_campaign
from marketing_events
where event_name = 'conversion'
  and (utm_source is null or utm_medium is null or utm_campaign is null)
group by event_date;

-- 2. Potential duplicate conversions.
select
    user_id,
    event_name,
    transaction_id,
    count(*) as duplicate_count
from marketing_events
where event_name = 'conversion'
group by user_id, event_name, transaction_id
having count(*) > 1;

-- 3. Platform/source consistency.
select
    utm_source,
    platform,
    count(*) as events
from marketing_events
group by utm_source, platform
order by events desc;
