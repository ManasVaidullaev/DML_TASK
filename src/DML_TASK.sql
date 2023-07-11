-- 4/ 4 id-деги person-дун адрессин “Гражданская 119” озгорткуло
update people set adress='Гражданская 119' where id=4;

--5/ id-си 4 болгон person-дун кесибин жана электронный почтасын озгорт
update people set occupation='Mentor',email='qwerty@gmail.com' where id=4;

--6/ 1 -id деги person-ду очур
delete from people where id=1;

--7/ баардык person-дордун id-лерин чыгар
select id, first_name as id_all_persons from people;

--8/ USA- жашаган адамдарды чыгар
select *from people where adress='USA';

--9/    25 жаштан 35 жашка чейинки “Engineer” -лерди чыгар
select *from people where age between 25 and 35 and occupation='Food Chemist';

--10/ уй-булоосу бар жана балдары бар адамдарды чыгар
select *from people where is_married=true and has_children=true;

--11/ боюнун узундугу 170 тен ойдо айымдарды чыгар
select *from people where height>170 and gender='Female';

--12/ салмагы 75 кг-га жетпеген эркектерди чыгар
select *from people where weight<75;

--13/ баардык адамдардын ичинен орто эсептеги жашты чыгар
select avg(age)from people;

--14
select occupation,count(*)from people group by occupation;
--15
select min(age) from people;
select first_name,age from people where age=(select min(age)from people);
--16
select *from people where email ilike '%gmail.com';
--17
select first_name, height from people order by height;
--18
select count(*)as people_live_in_8th_floor from people where adress='8th Floor';
--19
select *from people where email ilike '%com'and phone_number ilike '922%';
--20
select *from people where occupation is null;
--21
select *from people where is_married=false;
--22
select *from people where education ilike 'University%';
--23
select *from people where height between 160 and 200;
--24
select *from people where languages='Azeri'or languages='Spanish';
--25
select *from people where is_married=false and has_children=true;
--26
select *from people where is_married=true or weight>80;
--27
select first_name,age,height from people group by first_name, age, height order by age , height desc;
--28
select distinct first_name from people;
--29
select *from people where nationality='China'or nationality='Russia';
--30
select first_name,adress from people where adress ilike '%floor' group by first_name, adress;

--31
--номери “55” же “22” же “80” сандарды камтыган адамдын атын жана gender жана номерин чыгар
select first_name,gender,phone_number from people where phone_number
    ilike '%55%'or phone_number ilike '%22%'or phone_number ilike '%80%';

--32 никеде турбаган адамдардын кесибин developer-ге озгорт7
update people set occupation='Developer' where is_married=false;

--33
update people set first_name='Manas', last_name='Vaidullaev', age=29,gender='male',
                  adress='Tunguch 56',phone_number='996773213425',email='manas@gmail.com',
                  occupation='programmer',nationality='Kyrgyzstan',education='KRSU',
                  languages='kyrgyz',is_married=true,has_children=true,height=175,
                  weight=70 where id=2;
--34
update people set weight=weight+5  where has_children=true;
--35
delete from people where occupation ilike '%manager%';
--36
delete from people where age<20;
--37
delete from people where adress is null;
--38
select first_name,height from people order by height desc limit 3;
--39
select *from people where is_married=true order by weight limit 1;
--40
select avg(age) from people where is_married=true;
--41
select sum(weight)from people where occupation='Developer';
--42
select *from people where email not ilike '%gmail.com';
--43
select *from people where age=42 and occupation='Developer';
--44
select distinct nationality from people;