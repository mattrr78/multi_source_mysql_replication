USE tv;

create table actor
(
    id         varchar(64)  not null
        primary key,
    first_name varchar(100) not null,
    last_name  varchar(100) not null
);

create table quote
(
    id        varchar(36) not null
        primary key,
    actor_id   varchar(64) not null,
    send_date datetime    not null,
    line   text        not null,
    constraint user___fk
        foreign key (actor_id) references actor (id)
);

INSERT INTO actor (id, first_name, last_name) VALUES ('lucy', 'Lucille', 'Ball');


INSERT INTO quote (id, actor_id, send_date, line) VALUES ('5e58c6f9-0c4e-11ed-8d91-080027b72d1a', 'lucy', '2022-08-01 00:00:01', 'Ethel and I have decided that you have married us and not a television set.');
