create database Hipstagram;
 
 use Hipstagram;
 create table User (
 	username varchar(30) primary key, 
 	name varchar(40) not null,
 	lastname varchar(30) not null,
 	birthday date not null,
 	password_ LongBlob not null,
 	mail varchar(50) not null unique,
 	status_ int not null
 );


create table Post(
 ref_image varchar(200)primary key,
 decripcion text not null,
 username varchar(30),
 FOREIGN KEY (username) REFERENCES user(username) 
);

create table Comment (
	date_ dateTime ,
	value text not null,
	username varchar(30) ,
 	ref_image varchar(200),
 	foreign key (username) references user (username),
 	foreign key (ref_image) references post (ref_image),
 	primary key (date_, username,ref_image)
 	
);


create table Ranking (
	date_ dateTime ,
	value int not null,
	username varchar(30) ,
 	ref_image varchar(200),
 	foreign key (username) references user (username),
 	foreign key (ref_image) references post (ref_image),
 	primary key (date_, username,ref_image)
 	
);


create table hashtag(
	tag varchar(100) primary key
);




create table post_hashtag(
	ref_image varchar(200) not null,
	tag varchar(100) not null,
	foreign key (ref_image) references POST (ref_image),
	foreign key (tag)  references hashtag (tag),
	primary key (ref_image,tag)
);