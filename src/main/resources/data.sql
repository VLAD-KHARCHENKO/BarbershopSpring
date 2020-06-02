
insert into `user` (`first_name`, `last_name`,`phone`,`login`, `password`, `role`) values
('Сергій', 'Адміненко','11234567','admin@g.com', '$2a$11$geT/1yKaCbgb4r8hU9MKwOW0/kTB54ybw8QKqFEzRKiVTECoMgA52', 'ADMIN'),
('Петро', 'Мастеровий', '11234569','master@g.com', '$2a$11$P/UIAts6M5IylCydgyST/.xZ6sYY9/BSd/3eZUDQoRX1Rlyz.dfou', 'MASTER'),
('Папа', 'Карло', '11234560','user1@g.com', '$2a$11$Pfyrb.Pz/Jwa/4Iw2w5GfuL3PaMyeEhuN1XaixTY.kh5bdBLO6N3G', 'CUSTOMER'),
('Буратіно','Карло', '11234571','user2@g.com', '$2a$11$Pfyrb.Pz/Jwa/4Iw2w5GfuL3PaMyeEhuN1XaixTY.kh5bdBLO6N3G', 'CUSTOMER'),
('Федір', 'Дядя', '11234572','user3@g.com', '$2a$11$Pfyrb.Pz/Jwa/4Iw2w5GfuL3PaMyeEhuN1XaixTY.kh5bdBLO6N3G', 'CUSTOMER'),
('Дженіфер', 'Лопес', '11234573','user4@g.com', '$2a$11$Pfyrb.Pz/Jwa/4Iw2w5GfuL3PaMyeEhuN1XaixTY.kh5bdBLO6N3G', 'CUSTOMER');

insert into `feedback` (`date`, `feedback`, `user_id`) values
('2019-08-30','Дуже задоволений сервiсом та якiстю! Буду рекомендувати знайомим та звертатися повторно!',5),
('2019-09-05','Ремонтували комп. Думав, що йому гаплик (досi вiдчуваю запах диму). Та майстри зробили неможливе та ще й не дорого. Супер майстерня! Рекомендую!',6);

