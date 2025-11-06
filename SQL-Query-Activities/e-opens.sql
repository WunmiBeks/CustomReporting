SELECT            TOP 10000 J.EmailName, 
                  COUNT(O.SubscriberKey) AS TotalOpens, 
                   /*TotalOpens
                  OpenRate, 
                  TotalClick, 
                  ClickRate, 
                  TotalClaimed, 
                  ClaimedRate, */
                  '1' AS ToDIsplay
FROM              [Open_DV] O

INNER JOIN        [Job_DV] J
ON                O.JobID = J.JobID

INNER JOIN        [Journey_Activity] JA
ON                O.TriggererSendDefinitionObjectID = JA.JourneyActivityObjectID

INNER JOIN        [Journey_DV] JO
ON                JA.VersionID = JO.VersionID
WHERE             JO.JourneyName = 'Special Discount Promotion Campaign'
GROUP BY          J.EmailName
ORDER BY          J.EmailName