--drop table books_genre;
--drop table books;
--drop table genres;
--drop table authors;

create table genres(
	id serial not null constraint pk_genres primary key,
	name text not null
);

create table authors(
	id serial not null constraint pk_authors primary key,
	surname text not null,	
	name text not null,
	patronimic text
);

create table books(
	id serial not null constraint pk_books primary key,
	title text not null,	
	author int not null constraint fk_authors_to_books references authors(id) on delete cascade,
	release_year int not null
);

create table books_genre(
	id serial not null constraint pk_books_genre primary key,
	book int not null constraint fk_books_to_books_genre references books(id) on delete cascade,
	genre int not null constraint fk_genres_to_books_genre references genres(id) on delete cascade
);

