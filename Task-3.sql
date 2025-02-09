use studentmanagement;
select studentid, Name, MathScore, ScienceScore,EnglishScore from students;
ALTER TABLE students
add column TotalScore float;
update students
set TotalScore = MathScore + ScienceScore + EnglishScore
where studentid>0;

select * from students;

select name,TotalScore from students
order by TotalScore desc
Limit 5;

select avg(Mathscore) as Avg_MathScore , avg(TotalScore) as Avg_TotalScore from students
where Mathscore > 70 and TotalScore >200 and TotalScore<250;

select name,Max(MathScore) as SecondHighest from students
where MathScore < (select Max(MathScore) from students)
group by name, MathScore;

SELECT name, MathScore 
FROM students 
WHERE MathScore = (SELECT MAX(MathScore) FROM students 
WHERE MathScore < (SELECT MAX(MathScore) FROM students));


