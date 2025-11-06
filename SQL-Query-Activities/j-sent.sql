SELECT            JO.JourneyName, 
                  COUNT(S.SubscriberKey) AS TotalSent, 
                   /*TotalOpen
                  OpenRate, 
                  TotalClick, 
                  ClickRate, 
                  TotalClaimed, 
                  ClaimedRate, */
                  '1' AS ToDIsplay
FROM              [Sent_DV] S

INNER JOIN        [Job_DV] J
ON                S.JobID = J.JobID

INNER JOIN        [Journey_Activity] JA
ON                S.TriggererSendDefinitionObjectID = JA.JourneyActivityObjectID

INNER JOIN        [Journey_DV] JO
ON                JA.VersionID = JO.VersionID
WHERE             JO.JourneyName = 'Special Discount Promotion Campaign'
GROUP BY          JO.JourneyName