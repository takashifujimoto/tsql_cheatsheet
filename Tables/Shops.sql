drop table shops

create table shops(
    id int IDENtity(1,1) PRIMARY key,
    name varchar(50),
    rating INT,
    prefecture varchar(50),
);

INSERT into shops(name, rating, prefecture) values ('abc shoten',       3, 'Hokkaido');
iNSERT into shops(name, rating, prefecture) values ('sankaku shoten' ,  5, 'Aomori');
iNSERT into shops(name, rating, prefecture) values ('batsu batu shoten',4, 'Iwate');
INSERT into shops(name, rating, prefecture) VALUEs ('shikaku shoten', 5, 'Miyagi');
INSERT into shops(name, rating, prefecture) values ('a shoten', 5, 'Akita')
INSERT into shops(name, rating, prefecture) values ('b store', 4, 'Yamagata')
INSERT into shops(name, rating, prefecture) values ('c shoten', 3, 'Fukushima')
INSERT into shops(name, rating, prefecture) values ('d shoten', 1, 'Ibaragi')
INSERT into shops(name, rating, prefecture) values ('e shoten', 1, 'Tochigi')
INSERT into shops(name, rating, prefecture) values ('f shoten', 4, 'Gunma')