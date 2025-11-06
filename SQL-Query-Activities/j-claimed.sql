SELECT          JO.JourneyName,
                COUNT(C.MemberNo) AS TotalClaimed        
FROM            [ClaimedDiscounts] C
INNER JOIN      [Job_DV] J
ON              C.emailID = J.emailID
INNER JOIN      [Journey_Activity] JA
ON              J.TriggererSendDefinitionObjectID = JA.JourneyActivityObjectID
INNER JOIN      [Journey_DV] JO
ON              JA.VersionID = JO.VersionID
GROUP BY        JO.JourneyName