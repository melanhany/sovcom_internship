-- 1 ЗАДАНИЕ
-- база данных отеделений
CREATE TABLE departments
(
    id SERIAL PRIMARY KEY, -- уник ключ
    department_name TEXT NOT NULL -- название отделения
);

-- таблица данных для авторизаций
CREATE TABLE auth
(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50),
    password text
);

-- таблица данных для истории и достижении управления
CREATE TABLE achievements
(
    id SERIAL PRIMARY KEY,
    header TEXT,
    description TEXT
);

-- таблица данных для всех сотрудников (обьеденил и переименовал таблицы сотрудников и профилей)
CREATE TABLE employees
(
    id SERIAL PRIMARY KEY, -- уникальный ключ
    role TEXT NOT NULL, -- добавил таблицу ролей для каждого из сотрудников
    first_name VARCHAR(100), -- имя
    last_name VARCHAR(100), -- фамилия
    birth_date DATE, -- дата рождения
    work_start DATE, -- дата начала работы
    email VARCHAR(50), -- почта
    department_id INTEGER REFERENCES departments (id), -- указатель на базу данных отделов
    telegram_url TEXT, -- ссылка на telegram
    phone_number TEXT, -- номера телефонов
    profile_picture TEXT -- аватарка
);

-- ВВОД ДАННЫХ
-- ввод данных в таблицу
INSERT INTO auth (email, password)
VALUES
('username1@ups.sovcom.ru','aaa12341'),
('username2@ups.sovcom.ru','aaa12342'),
('username3@ups.sovcom.ru','aaa12343'),
('username4@ups.sovcom.ru','aaa12344'),
('username5@ups.sovcom.ru','aaa12345'),
('username6@ups.sovcom.ru','aaa12346'),
('username7@ups.sovcom.ru','aaa12347'),
('username8@ups.sovcom.ru','aaa12348'),
('username9@ups.sovcom.ru','aaa12349'),
('username10@ups.sovcom.ru','aaa123410'),
('username11@ups.sovcom.ru','aaa123411'),
('username12@ups.sovcom.ru','aaa123412'),
('username13@ups.sovcom.ru','aaa123413'),
('username14@ups.sovcom.ru','aaa123414');
-- Вводим названия отделов в базу
INSERT INTO departments (department_name)
VALUES
       ('УПС'),
       ('Отдел аналитики'),
       ('Бухгалтерия'),
       ('Отдел разработки');
-- Вводим информацию в список сотрудников

INSERT INTO employees (role, first_name, last_name, birth_date, work_start, email, department_id, telegram_url, phone_number, profile_picture)
VALUES
('admin', 'Евгений', 'Агапов', '11.01.2000', '01.01.2021', 'username1@ups.sovcom.ru', 1, '@user1', '+78888888801', 'https://myhost.com/picture1.jpg.
'),
('user', 'Инна', 'Маркова', '10.02.1999', '01.01.2021', 'username2@ups.sovcom.ru', 1, '@user2', '+78888888802', 'https://myhost.com/picture2.jpg.
'),
('admin', 'Анастасия', 'Шатова', '04.02.1999', '01.01.2021', 'username3@ups.sovcom.ru', 2, '@user3', '+78888888803', 'https://myhost.com/picture3.jpg.
'),
('user', 'Савелий', 'Дорофеев', '01.01.2001', '01.01.2021', 'username4@ups.sovcom.ru', 3, '@user4', '+78888888804', 'https://myhost.com/picture4.jpg.
'),
('user', 'Илья', 'Сериков', '10.11.1999', '01.01.2021', 'username5@ups.sovcom.ru', 1, '@user5', '+78888888805', 'https://myhost.com/picture5.jpg.
'),
('user', 'Никита', 'Хабенский', '10.11.1999', '01.01.2021', 'username6@ups.sovcom.ru', 3, '@user6', '+78888888806', 'https://myhost.com/picture6.jpg.
'),
('user', 'Александр', 'Яшагин', '11.06.1995', '01.01.2021', 'username7@ups.sovcom.ru', 1, '@user7', '+78888888807', 'https://myhost.com/picture7.jpg.
'),
('user', 'Екатерина', 'Оболенская', '10.09.1998', '01.01.2021', 'username8@ups.sovcom.ru', 2, '@user8', '+78888888808', 'https://myhost.com/picture8.jpg.
'),
('admin', 'Дмитрий', 'Грешнев', '05.04.1993', '01.01.2021', 'username9@ups.sovcom.ru', 1, '@user9', '+78888888809', 'https://myhost.com/picture9.jpg.
'),
('user', 'Карина', 'Лапаева', '11.02.1999', '01.01.2021', 'username10@ups.sovcom.ru', 1, '@user10', '+78888888810', 'https://myhost.com/picture10.jpg.
'),
('user', 'Любовь', 'Романенко', '06.12.1994', '01.01.2021', 'username11@ups.sovcom.ru', 1, '@user11', '+78888888811', 'https://myhost.com/picture11.jpg.
'),
('user', 'Георгий', 'Зверев', '10.10.2000', '01.01.2021', 'username12@ups.sovcom.ru', 2, '@user12', '+78888888812', 'https://myhost.com/picture12.jpg.
'),
('user', 'Людмила', 'Янкина', '11.12.1994', '01.01.2021', 'username13@ups.sovcom.ru', 1, '@user13', '+78888888813', 'https://myhost.com/picture13.jpg.
'),
('user', 'Даниил', 'Скороходов', '10.09.1992', '01.01.2021', 'username14@ups.sovcom.ru', 1, '@user14', '+78888888814', 'https://myhost.com/picture14.jpg.
');

-- 2 ЗАДАНИЕ
--Вставить 5 сотрудников банка (3 из УПС, 2 из другого управления). Данные придумайте сами.
INSERT INTO employees (role, first_name, last_name, department_id) VALUES
('user', 'Влас','Смирнов', 4),
('admin', 'Мечислав', 'Власов', 1),
('user', 'Вилен', 'Терентьев', 4),
('user','Бенедикт', 'Беляев', 1),
('user','Альфред', 'Пономарёв', 1);

--Вставить данные с описанием управления.
INSERT INTO achievements (header, description) VALUES
('Управление Перспективных Систем',
'На протяжении 19 лет Совкомбанк успешно реализует собственную стратегию развития благодаря
сочетанию элементов органического и неорганического роста.
Руководству Банка удалось тщательно отобрать ниши с ограниченной конкуренцией и благодаря уникальному
продуктовому предложению и широкому охвату покупателей добиться значительных успехов.
Неорганический рост во многом обусловлен точечными приобретениями
других банков и компаний: с 2014 года Группа Совкомбанка осуществила более 20 крупных приобретений,
в результате чего удалось разнообразить продуктовую линейку и расширить клиентскую базу.');

--Обновить данные с описанием управления.
UPDATE achievements SET description =
'В 2002 году, когда Совкомбанк (в то время Буйкомбанк) был приобретен Сергеем Хотимским
и группой соинвесторов, у банка были один филиал и 17 сотрудников, а капитал составлял ' ||
'2 миллиона рублей. К концу 2020 года Совкомбанк стал третьим частным банком России по размеру ' ||
'активов РСБУ согласно рейтингу Интерфакс, сеть филиалов расширилась до 2 334 офисов в 1 тысяче ' ||
'городов России, численность персонала превысила 17 000 человек, а капитал Группы по МСФО составил ' ||
'188 миллиардов рублей.' WHERE id = 1;

--Получить список всех сотрудников
--(ФИО, логин, дата рождения, дата начала работы, телефон, телеграм, ссылка на аватарку, название управления).
SELECT e.id as employees_id, e.first_name, e.last_name, e.birth_date, e.work_start, e.phone_number, e.telegram_url, e.profile_picture, e.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

--Получить сотрудника по логину
--(ФИО, логин, дата рождения, дата начала работы, телефон, телеграм, ссылка на аватарку, название управления).
SELECT * from employees where email = 'username14@ups.sovcom.ru';

--Обновить телеграм и телефон у сотрудника по логину.
UPDATE employees SET telegram_url = '@user_edgy' WHERE email = 'username14@ups.sovcom.ru';
UPDATE employees SET phone_number = '+78888888855' WHERE email = 'username14@ups.sovcom.ru';

--Обновить аватарку у сотрудника по логину
UPDATE employees SET profile_picture = 'https://myhost.com/picture100.jpg' WHERE email = 'username14@ups.sovcom.ru';

