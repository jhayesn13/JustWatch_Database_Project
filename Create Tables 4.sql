#SQL to create tables

create table streaming_service (
service_id int primary key not null, 
service_name varchar(20), 
service_url varchar(30));

create table user (
user_id int primary key not null, 
email varchar(45), 
password varchar(20), 
user_country varchar(50));

create table movie (
movie_id int primary key not null, 
movie_title varchar(45), 
release_date date, 
what_to_know text, 
official_just_watch_writer varchar(20), 
age_rating enum('G', 'PG', 'PG-13', 'R', 'NC-17'), 
just_watch_rating varchar(7), 
imdb_rating float, 
synopsis text, 
runtime varchar(15));

create table tv_show (
tv_show_id int primary key not null, 
tv_show_title varchar(45), 
release_date date, 
age_rating enum('TV-Y', 'TV-Y7', 'TV-Y7 FV', 'TV-G', 'TV-PG', 'TV-14', 'TV-MA'), 
just_watch_rating varchar(7), 
imdb_rating float, 
runtime varchar(15));

create table season (
season_id int not null, 
tv_show_id int not null,
foreign key (tv_show_id) references tv_show(tv_show_id), 
primary key (season_id, tv_show_id),
season_no int, 
synopsis text, 
runtime varchar(15), 
release_date date, 
official_just_watch_writer varchar(20), 
what_to_know text);

create table episode (
episode_id int not null, 
season_id int not null,
foreign key (season_id) references season(season_id), 
primary key (episode_id, season_id),
episode_name varchar(50), 
episode_description tinytext, 
release_date date, 
episode_no int);

create table cast_member (
cast_id int primary key not null, 
first_name varchar(30), 
last_name varchar(40), 
birthday date, 
bio text);

create table sporting_event (
event_id int primary key not null, 
event_name varchar(50), 
event_description text, 
competition varchar(30), 
league varchar(30), 
airdate date, 
venue varchar(30), 
start_time time, 
end_time time);

create table service_streams_movie_price_quality (
service_id int not null, 
movie_id int not null, 
foreign key (service_id) references streaming_service(service_id), 
foreign key (movie_id) references movie(movie_id), 
primary key (service_id, movie_id),
rent_price varchar(7), 
buy_price varchar(7), 
avail_free enum('y', 'n'), 
avail_sd enum('y', 'n'), 
avail_hd enum('Y', 'N'), 
avail_4k enum ('Y', 'N'));

create table service_streams_tv_show_price_quality (
service_id int not null,
tv_show_id int not null,
foreign key (service_id) references streaming_service(service_id), 
foreign key (tv_show_id) references tv_show(tv_show_id), 
primary key(service_id, tv_show_id),
rent_price varchar(7), 
buy_price varchar(7),
avail_free enum('y', 'n'), 
avail_sd enum('y', 'n'), 
avail_hd enum('y', 'n'), 
avail_4k enum('y', 'n'));

create table service_streams_movie (
service_id int not null,
movie_id int not null,
foreign key (service_id) references streaming_service(service_id), 
foreign key (movie_id) references movie(movie_id),
primary key (service_id, movie_id));

create table service_streams_tv_show (
service_id int not null,
tv_show_id int not null,
foreign key (service_id) references streaming_service(service_id), 
foreign key (tv_show_id) references tv_show(tv_show_id),
primary key (service_id, tv_show_id));

create table service_streams_sporting_event (
service_id int not null,
event_id int not null,
foreign key (event_id) references sporting_event(event_id), 
foreign key (event_id) references sporting_event(event_id),
primary key (service_id, event_id));

create table cast_stars_in_movie(
cast_id int not null,
movie_id int not null,
foreign key (cast_id) references cast_member(cast_id), 
foreign key (movie_id) references movie(movie_id), 
cast_role varchar(20),
primary key(cast_id, movie_id));

create table cast_stars_in_tv_show (
cast_id int not null,
tv_show_id int not null,
foreign key (cast_id) references cast_member(cast_id), 
foreign key (tv_show_id) references tv_show(tv_show_id), 
cast_role varchar(20),
primary key(cast_id, tv_show_id));

create table movie_genre (
movie_id int not null,
foreign key (movie_id) references movie(movie_id), 
genre varchar(20) not null,
primary key (movie_id, genre));

create table tv_show_genre(
tv_show_id int not null,
foreign key (tv_show_id)  references tv_show(tv_show_id), 
genre varchar(20) not null,
primary key (tv_show_id, genre));

create table movie_subtitle_language (
movie_id int not null,
foreign key (movie_id) references movie(movie_id), 
sub_language varchar(20) not null,
primary key (movie_id, sub_language));

create table tv_show_subtitle_language (
tv_show_id int not null,
foreign key (tv_show_id) references tv_show(tv_show_id), 
sub_language varchar(20) not null,
primary key (tv_show_id, sub_language));

create table movie_audio_language (
movie_id int not null,
foreign key (movie_id) references movie(movie_id), 
aud_language varchar(20) not null,
primary key (movie_id, aud_language));

create table season_audio_language (
season_id int not null,
foreign key (season_id) references season(season_id), 
aud_language varchar(20) not null,
primary key (season_id, aud_language));

create table movie_production_country (
movie_id int not null,
foreign key (movie_id) references movie(movie_id), 
country varchar(30),
primary key (movie_id, country));

create table season_production_country (
season_id int not null,
foreign key (season_id) references season(season_id), 
country varchar(30),
primary key (season_id, country));

create table sporting_event_participants (
event_id int not null,
foreign key (event_id) references sporting_event(event_id), 
participant_name varchar(30) not null,
primary key (event_id, participant_name));