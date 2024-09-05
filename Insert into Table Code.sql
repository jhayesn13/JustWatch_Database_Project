#SQL to insert values

insert into streaming_service values (000001, 'Netflix', 'www.netflix.com');
insert into streaming_service values (000002, 'Apple Tv', 'www.appletv.com');
insert into streaming_service values (000003, 'Amazon Prime', 'www.amazonprime.com');
insert into streaming_service values (000004, 'Fubo TV', 'www.fubo.tv');




insert into user values (0001, 'user1@gmail.com', 'password1', 'United States');
insert into user values (0002, 'user2@gmail.com', 'password2', 'United Arab Emrites');
insert into user values (0003, 'user3@gmail.com', 'password3', 'United Kingdom');
insert into user values (0004, 'user4@gmail.com', 'password4', 'Puerto Rico');



insert into movie values (0000001, 'No Hard Feelings', '2023-06-23', 
' ', ' ', 'R', '77%', 6.4, 
'Maddie is working as an Uber driver in Montauk, New York. She’s already struggling to make ends meet but when her car gets repossessed she looks set to face bankruptcy if she can’t find a solution. Desperate for something, she accepts an unusual posting on Craigslist that would win her a Buick Regal. In exchange for the car, she needs to date Percy, the introverted son of the helicopter parents behind the ad. Hoping to bring him out of his social seclusion, the parents agree that Maddie will seduce him and become Percy’s girlfriend in order to teach him about adult life. But unleashing the full force of Percy’s pent-up adolescence has consequences no one could imagine.', '1h 44min');

insert into movie values (0000002, 'The Killer', '2023-10-07', ' ', ' ', 'R', '76%', 6.5,
"Fans who love a thrilling revenge story will be intrigued by David Fincher's The Killer. Although it is a straightforward revenge story, Fincher makes it unique by examining the titular Killer's struggles with OCD and giving the film a noir flare. Michael Fassbender is convincing as a stone-cold killer, while Fincher's meticulous filmmaking and direction shine through in the Killer's quirks and the smooth and thrilling ride the plot provides. The Killer is a revenge story at heart but also elevates its premise with a few unique touches."", 'Rachel Ulatowski', 'R', '78%', '6.9', 'In The Killer, a botched hit changes everything for a callous hitman with no moral compass
The Killer is a cold-blooded and methodological assassin, renowned for his precision and unpitying outlook. When a routine hit goes wrong, he contemplates retirement but he is not the only person invested in his career. When his employers learn of the events and his intention to step down, the Killer becomes the target.", '1h 58min');

insert into movie values (0000003, 'Spider-Man: Across the Spider-Verse', '2023-06-02', ' ', ' ', 'PG', '77%', 6.4, 'After his mind-bending introduction to the multiverse, Miles Morales is back for another reality-altering trip
Better known as the web-slinging Spider-Man, Miles reteams with Gwen Stacey a.k.a. Spider-Woman to fight a dangerous foe. As the pair learn of a supervillain with multi-dimensional powers, they must warn all Spider-People across different universes of the oncoming threat. In the process the pair meet the Spider-Force, sworn protectors of the multiverse who have their own ideas of how to deal with the menace.', '2h 20min');

insert into movie values (0000004, 'Blue Beetle', '2023-08-18', ' ', ' ', 'PG-13', '76%', 6.1, "Villains, beware! Blue Beetle fights for justice throughout the cosmos
Jaime Reyes is a freshly graduated college student returning home to a new life. Facing new challenges and struggles, Jaime must find his purpose and position in society. What he doesn't know is that destiny has a plan for him. When a mysterious ancient scarab attaches to his spine, it gives him the ability to travel through space in blue alien armor. Suddenly the host of this symbiotic power, Jaime becomes a superhero protected and powered by this alien technology.", '2h 8min');


insert into tv_show values (100000, 'The Fall of the House of Usher', '2023-10-12', 'TV-MA', '87%', '8.0', '57min');

insert into tv_show values (200000, 'All the Light We Cannot See', '2023-11-02', 'TV-MA', '85%', '7.6', '1h 2min');

insert into tv_show values (300000, 'Bodies', '2023-10-12', 'TV-MA', '80%', '7.4', '57min');

insert into tv_show values (400000, 'Gen V', '2023-09-29', 'TV-MA', '89%', '7.8', '47min');


insert into season values (111, 100000, 1, 
'An ever-changing demon from the past haunts the House of Usher 
A wealthy family who owns a pharmaceutical company is haunted by a dark spirit from their past. The CEO of Fortunata Pharmaceuticals is Roderick Usher who runs the corporate empire with his twin sister Madeline. But the pair must face their past deeds and reckon with all the ways in which they have been corrupt as a demon haunts their house. Shape-shifting and out for blood, this demon from the past threatens the lives of the entire House of Usher.', '1h 2min', '2023-10-12', '', '');

insert into season values (222, 200000, 1, 
'In Nazi-occupied France, a father and daughter must escape from a relentless pursuit Marie-Laure LeBlanc is a blind teenage girl on the run from the Nazis. Along with her father, Daniel, the pair are trying to stop an important diamond from falling into Nazi possession. But there is one Gestapo officer who will stop at nothing to find it. They must take refuge with Marie-Laure’s great-uncle Etienne who is part of the resistance. But nowhere is safe from Nazi persecution and the trio must do everything they can to evade capture and protect everything they love from being destroyed. One of their pursuers is a young German soldier, Werner Pfennig. Horrified by all that is happening around him, Pfennig is a teenage boy who grew up or orphan. Entering the story in a key moment of discovery, Pfennig must make a choice about what he does with the secret information he uncovers.', '57min', '2023-11-02', '', '');


insert into season values (333, 300000, 1,
"One victim, found dead on a London street. Four detectives, in four different time periods, must solve the mystery to protect Britain's future.", '57min', '2023-10-12', '', '');

insert into season values (444, 400000, 1, 
'Even superheroes need to go to school. In fact, those with supernatural powers are the ones who need guidance and teaching. The Godolkin University of Crimefighting is the only college dedicated exclusively to teaching young supes how to save the day. The Godolkin way involves pitching angsty teens against each other to compete for crimefighting contracts across US cities. While competition can certainly breed success, it will also leave plenty nursing wounds and mopping up their own blood from the cafeteria floor. Leading the drama are Marie M. and Emma Shaw the powerful pair trying to navigate what wider conspiracies are at play. Meanwhile, in some ways, Godolkin offers a regular college experience. Expect sexual tension and hormonal stress, drama and dirt-dishing, gossip at parties, and a fair share of trademark R-rated randomness.', '47min', '2023-09-29', '', '');

insert into season values(555, 400000, 2, 
'No plot details are currently available for this season.', '47min', '2024-09-29', '', '');

insert into season values(667, 400000, 3, 
'No plot details are currently available for this season.', '47min', '2025-09-29', '', '');


insert into episode values (006, 111, 'Goldbug', 
'Pym digs up disturbing information on Verna. With her marriage on the decline, Tamerlane hosts a turbulent product launch that shatters expectations.', '2023-10-12', 6);

insert into episode values (007, 111, 'The Pit and the Pendulum', "A furious Frederick sets out to handle unfinished business. Madeline receives an ominous message at an old haunt. Dupin grows wary of Roderick's motives.", '2023-10-12', 7);

insert into episode values (008, 111, 'The Raven', 'In 1980, Roderick and Madeline seize a chance to cement their fortune — for a price. Decades later, the remaining Ushers reckon with the consequences.', '2023-10-12', 8);

insert into episode values (002, 222, 'Episode 2', 'During an intense interrogation, Marie recalls the Nazi invasion of Paris as Werner remembers a fateful visit from an SS officer to his orphanage.', '2023-11-23', 2);



insert into cast_member values (123, 'Carla', 'Gugino', '1971-09-29', "Carla Gugino (born August 29, 1971) is an American actress. After appearing in Troop Beverly Hills (1989) and This Boy's Life (1993), she received recognition for her starring roles as Ingrid Cortez in the Spy Kids trilogy (2001–2003), Rebecca Hutman in Night At The Museum (2006), Laurie Roberts in American Gangster (2007), Sally Jupiter in Watchmen (2009), Dr. Vera Gorski in Sucker Punch (2011), Emma Gaines in San Andreas (2015), and Jessie Burlingame in Gerald's Game (2017).

Gugino also starred as the lead character in the crime drama series Karen Sisco (2003), the science fiction series Threshold (2005–2006), the supernatural horror series The Haunting of Hill House (2018), and the crime drama series Jett (2019), and also appeared in The Haunting of Bly Manor (2020).");

insert into cast_member values (279, 'Jaz', 'Sinclair', '1994-07-22', 'Jacob Fortune-Lloyd is an actor, known for Star Wars: Episode IX - The Rise of Skywalker (2019), Wolf Hall (2015) and Crooked House (2017).');

insert into cast_member values (789, 'Jacob', 'Fortune-Lloyd', '1971-01-18', 'Jacob Fortune-Lloyd is an actor, known for Star Wars: Episode IX - The Rise of Skywalker (2019), Wolf Hall (2015) and Crooked House (2017).');

insert into cast_member values (456, 'Louis', 'Hofmann', '1997-06-03', "Louis Hofmann is a German film and television actor who was born in Bensberg but grew up in Cologne.
He is best known for his role in the original Netflix series Dark (2017-20), and his roles in the war drama Under Sandet (2015) for which he won a Bodil Award for Best Supporting Actor. He gained recognition in Germany through his work in Tom Sawyer (2011) and Freistatt (2015). He also starred as Phil in the romantic drama Die Mitte der Welt (2016)");




insert into sporting_event values (111, 'Sacramento Kings @ Dallas Mavericks' , 'SACRAMENTO KINGS @ DALLAS MAVERICKS: LIVE STREAM & ON TV TODAY
Sacramento Kings @ Dallas Mavericks is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, and NBA League Pass Amazon Channel.', 'Regular Season', 'NBA', '2023-11-19', 'American Airlines Center', '19:30:00', '22:00:00');

insert into sporting_event values (122, 'Boston Celtics @ Memphis Grizzlies' , 'BOSTON CELTICS @ MEMPHIS GRIZZLIES: LIVE STREAM & ON TV TODAY
Boston Celtics @ Memphis Grizzlies is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, USA Network, NBA League Pass, and NBA League Pass Amazon Channel.', 'Regular Season', 'NBA', '2023-11-19', 'FedExForum', '19:30:00', '22:00:00');

insert into sporting_event values (311, 'Phoenix Suns @ Utah Jazz' , 'PHOENIX SUNS @ UTAH JAZZ: LIVE STREAM & ON TV TODAY
Phoenix Suns @ Utah Jazz is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, NBA TV Amazon Channel, NBA League Pass Amazon Channel, and Sling TV Sports Extras.', 'Regular Season', 'NBA', '2023-11-19', 'Vivint Arena', '19:30:00', '22:00:00');

insert into sporting_event values (114, 'Oklahoma City Thunder @ Portland Trail Blazers' , 'OKLAHOMA CITY THUNDER @ PORTLAND TRAIL BLAZERS: LIVE STREAM & ON TV TODAY
Oklahoma City Thunder @ Portland Trail Blazers is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, NBA League Pass Amazon Channel, and NBA League Pass on YouTube TV.', 'Regular Season', 'NBA', '2023-11-19', 'Moda Center', '19:30:00', '22:00:00');


insert into service_streams_movie_price_quality values (000001, 0000001, '', '', 'n', 'y', 'y', 'y');

insert into service_streams_movie_price_quality values (000002, 0000001, '$5.99', '$7.99', 'n', 'y', 'y', 'y');

insert into service_streams_movie_price_quality values (000001, 0000003, '', '', 'n', 'y', 'y', 'y');

insert into service_streams_movie_price_quality values (000002, 0000004, '$5.99', '$9.99', 'n', 'y', 'y', 'y');




insert into service_streams_tv_show_price_quality values (000001, 100000, '', '', 'n', 'y', 'y', 'y');

insert into service_streams_tv_show_price_quality values (000001, 200000, '', '', 'n', 'y', 'y', 'y');

insert into service_streams_tv_show_price_quality values (000001, 300000, '', '', 'n', 'y', 'y', 'y');

insert into service_streams_tv_show_price_quality values (000003, 400000, '', '', 'n', 'y', 'y', 'y');


insert into service_streams_sporting_event values (000004, 111);

insert into service_streams_sporting_event values (000004, 122);

insert into service_streams_sporting_event values (000004, 311);

insert into service_streams_sporting_event values (000003, 114);




insert into service_streams_movie values(000001, 0000001);
insert into service_streams_movie values(000001, 0000002);
insert into service_streams_movie values(000001, 0000003);
insert into service_streams_movie values(000002, 0000004);



insert into service_streams_tv_show values(000001, 100000);
insert into service_streams_tv_show values(000001, 200000);
insert into service_streams_tv_show values(000001, 300000);
insert into service_streams_tv_show values(000003, 400000);



insert into cast_stars_in_movie values(123, 0000001, 'director');
insert into cast_stars_in_movie values(123, 0000002, 'actress');
insert into cast_stars_in_movie values(279, 0000003, 'director');
insert into cast_stars_in_movie values(279, 0000004, 'actor');



insert into cast_stars_in_tv_show values(789, 100000, 'director');
insert into cast_stars_in_tv_show values(789, 200000, 'actor');
insert into cast_stars_in_tv_show values(456, 100000, 'director');
insert into cast_stars_in_tv_show values(456, 200000, 'actor');




insert into movie_genre values(0000001, 'Comedy');
insert into movie_genre values(0000001, 'Romance');
insert into movie_genre values(0000002, 'Crime');
insert into movie_genre values(0000002, 'Mystery&Thriller');



insert into tv_show_genre values(100000, 'Horror');
insert into tv_show_genre values(100000, 'Drama');
insert into tv_show_genre values(200000, 'Drama');
insert into tv_show_genre values(200000, 'History');


insert into movie_subtitle_language values(0000001, 'English');
insert into movie_subtitle_language values(0000001, 'Spanish');
insert into movie_subtitle_language values(0000002, 'Portuguese');
insert into movie_subtitle_language values(0000004, 'German');



insert into tv_show_subtitle_language values(100000, 'English');
insert into tv_show_subtitle_language values(200000, 'Spanish');
insert into tv_show_subtitle_language values(300000, 'Portuguese');
insert into tv_show_subtitle_language values(400000, 'German');



insert into movie_audio_language values(0000001, 'English');
insert into movie_audio_language values(0000001, 'Spanish');
insert into movie_audio_language values(0000002, 'Portuguese');
insert into movie_audio_language values(0000004, 'German');



insert into season_audio_language values(111, 'English');
insert into season_audio_language values(222, 'Spanish');
insert into season_audio_language values(333, 'Portuguese');
insert into season_audio_language values(444, 'German');



insert into movie_production_country values(0000001, 'United States');
insert into movie_production_country values(0000002, 'United States');
insert into movie_production_country values(0000003, 'United States');
insert into movie_production_country values(0000004, 'United States');



insert into season_production_country values(111, 'United States');
insert into season_production_country values(222, 'United States');
insert into season_production_country values(333, 'United States');
insert into season_production_country values(444, 'United States');



insert into sporting_event_participants values(111, 'Sacramento Kings');
insert into sporting_event_participants values(111, 'Dallas Mavericks');
insert into sporting_event_participants values(122, 'Boston Celtics');
insert into sporting_event_participants values(122, 'Memphis Grizzlies');