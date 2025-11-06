SELECT        EmailName,
              (cast((TotalOpens) as decimal(18,2)) / cast([TotalSent] as decimal(18,2))) * 100 AS OpenRate,
              (cast((TotalClicks) as decimal(18,2)) / cast([TotalSent] as decimal(18,2))) * 100 AS ClickRate,
              (cast((TotalClaimed) as decimal(18,2)) / cast([TotalSent] as decimal(18,2))) * 100 AS ClaimedRate
FROM          [Special Discount Email Reporting Dashboard]