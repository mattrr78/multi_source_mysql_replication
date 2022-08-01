USE movie;

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

INSERT INTO actor (id, first_name, last_name) VALUES ('will', 'Will', 'Ferrell');


INSERT INTO quote (id, actor_id, send_date, line) VALUES ('4e58c6f9-0c4e-12ed-8d91-080027b62d1a', 'will', '2022-08-01 00:17:05', 'You sit on a throne of lies.');
