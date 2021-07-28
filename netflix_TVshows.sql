CREATE TABLE shows_detail(
title varchar primary key not null,
country varchar not null,
publish_date varchar,
release_year varchar,
description varchar);

CREATE TABLE shows_other(
title varchar primary key not null,
genre varchar,
no_of_seasons varchar,
no_of_episodes varchar);

SELECT * FROM shows_detail

SELECT * FROM shows_other

SELECT sd.title, sd.country, sd.publish_date, sd.release_year,sd.description,so.genre,so.no_of_seasons,so.no_of_episodes
from shows_detail as sd
inner join shows_other as so
on sd.title = so.title;