-- Limits --
select age,firstname,major 
from students 
where major="physics"
order by age 
limit 1,2
;
-- Aliasing --
SELECT Major, COUNT(StudentID) AS NumberOfStudents
FROM Students
GROUP BY Major
ORDER BY NumberOfStudents DESC;
 