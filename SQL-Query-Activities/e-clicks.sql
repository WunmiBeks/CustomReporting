SELECT            TOP 10000 J.EmailName, 
                  COUNT(C.SubscriberKey) AS TotalClicks, 
                   /*TotalOpen
                  OpenRate, 
                  TotalClick, 
                  ClickRate, 
                  TotalClaimed, 
                  ClaimedRate, */
                  '1' AS ToDIsplay
FROM              [Click_DV] C

INNER JOIN        [Job_DV] J
ON                C.JobID = J.JobID

INNER JOIN        [Journey_Activity] JA
ON                C.TriggererSendDefinitionObjectID = JA.JourneyActivityObjectID

INNER JOIN        [Journey_DV] JO
ON                JA.VersionID = JO.VersionID
WHERE             JO.JourneyName = 'Special Discount Promotion Campaign'
GROUP BY          J.EmailName
ORDER BY          J.EmailName