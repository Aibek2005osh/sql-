create database sql_task;
create table  if not exists groups(
                                      id serial primary key ,
                                      group_name varchar(50),
    date_of_birth date,
    image varchar
    );

create table courses(
                        id serial primary key ,
                        course_name varchar (50),
                        image varchar(50),
                        group_id int references groups(id)

) ;

create table mentors(
                        id serial primary key ,
                        firs_name varchar,
                        last_name varchar,
                        gender varchar ,
                        email varchar(19),
                        phon_number varchar(13),
                        course_id int references courses(id)
);

create table lessons(
                        id serial primary key ,
                        lesson_name varchar (50),
                        course_name int references courses(id)
);

create table students(
                         id serial primary key ,
                         firs_name varchar(50),
                         last_name varchar (50),
                         gender varchar (50),
                         phone_number varchar(13),
                         group_id int references groups(id)
);

alter table groups drop column date_of_birth;
alter table groups drop column image;
alter table courses add column  start_date varchar;
alter table students drop column  phone_number ;
alter table students add date_of_birth date;
alter table mentors add column specialization varchar(50);
alter table mentors add column experience int ;
alter table mentors drop phon_number;
alter table students add email varchar;
alter table students drop column firs_name;
alter table students add column first_name varchar;
alter table courses drop column image;


insert into groups(group_name)
values ('Java 16'),
       ('JS 17'),
       ('Java 12'),
       ('JS 16'),
       ('Java 17'),
       ('JS 12');

insert into courses (course_name, start_date, group_id)
values ('Java 16 core', '2023-01-03', 1),
       ('JS 16 core', '2023-01-03', 2),
       ('Java 17 core', '2023-10-03', 3),
       ('JS 17 core', '2023-10-03', 4),
       ('Java 12 core', '2024-01-08', 5),
       ('JS 12 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);

insert into lessons(lesson_name, course_name)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);

insert into mentors (firs_name, last_name, gender, email, specialization, experience, course_id)
values ('Mukhammed', 'Asantegin', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Urmat', 'Taichikov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);

insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);

Tasks(Query) Groups
1. Получите все записи таблицы groups;
select *from groups;
2. Получите общее количество записей таблицы groups
select count(*) as "groups count" from groups;
3. Выведите группы их курсы
select * from groups join courses c on groups.id = c.group_id;
4. Выведите курсы групп у которых курс начался с 202011 по 202333
select * from groups join courses c on groups.id = c.group_id where c.start_date between '2020-0101'and '2023-03-03';

5. Выведите имена, дату рождения студентов , которые родились с 198011 по 20041212, и названиегруппы
select s.first_name ,g.group_name , s.date_of_birth from students s join groups g on g.id = s.group_id where s.date_of_birth between '1980-01-01' and '2004-12-12';
6. Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select s.first_name, s.last_name as "полное имя",s.email,g.group_name from students s join groups g on s.group_id = g.id where s.group_id = 3;
7. Вывести все курсы одной группы, где название группы 'Java-16'
select c.course_name,g.group_name from courses c join groups g on g.id = c.group_id where g.group_name like ('Java 16');

8. Вывести название всех групп и количество студентов в группе
select g.group_name ,count(s.group_id) from groups g join students s on g.id = s.group_id  group by g.group_name;
9.Вывести название всех групп и количество студентов в группе, если в
группе больше 4 студентов.;


10. Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айдистудента, имя, пол и название группы.
1-айдидеги группанын студенттеринин аттарын кемүү тартибинде иреттеп, студенттин идентификаторун, атын, жынысын жана группасын аталышын чыгарыңыз
select   s.id,s.first_name,s.gender,g.group_name from groups g join students s on g.id = s.group_id where g.id = 1 order by s.first_name
    Tasks(Query) Course
1. Вывести все курсы;
select * from courses;
2. Вывести все уроки курса 'Technical English';
select * from  courses c where c.course_name = 'Technical English';
3. Вывести количество всех студентов курса id  4
select s.* from  groups g join students s on g.id = s.group_id join courses c on g.id = c.group_id where c.id >4;
4. Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
select m.firs_name,m.email,m.specialization,s.course_name from courses s join mentors m on s.id = m.course_id where s.id = 2;
5. Посчитaть сколько менторов в каждом курсе;
select   c.course_name ,   count(m.course_id) as mentor_count from courses c join  mentors m  on c.id = m.course_id group by  c.course_name;

;
6. Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где в курсебольше 2 менторов
. Ар бир курстагы менторлорду топтоштуруп, саноо жана 2 ментордон көп болгон курстарды гана чыгаруу;
select  c.course_name, count(m.course_id) from courses c join mentors m on c.id = m.course_id group by  c.course_name;