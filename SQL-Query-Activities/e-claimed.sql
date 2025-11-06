SELECT          J.EmailName,
                COUNT(C.MemberNo) AS TotalClaimed
FROM            [ClaimedDiscounts] C
INNER JOIN      [Job_DV] J
ON              C.EmailID = J.EmailID
GROUP BY        J.EmailName