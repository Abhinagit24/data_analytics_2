--Abhina Premachandran
--creating a table named 'videos' with info about a few videos.
create table Videos(
	videoID serial primary key not null,
	title varchar(100) not null,
	length time not null,
	URL varchar(250) not null
 );

--inserting values into the table videos
insert into Videos(title,length,URL)
values('What is SQL? [in 4 minutes for beginners]','00:04:25','https://www.youtube.com/watch?v=27axs9dO7AE'),
('Learn SQL In 60 Minutes','00:56:23','https://www.youtube.com/watch?v=p3qvj9hO_Bo'),
('Data Analytics for Beginners','00:22:35','https://www.youtube.com/watch?v=mm2A5tKVIpg'),
('What is Data Analytics','00:02:45','https://www.youtube.com/watch?v=59SFeXcRpLE');

select *from videos;

--creating the table named 'reviewers' having the reviews on some videos in the 'videos' table
create table Reviewers(
	ID serial not null,
	user_name varchar(50) not null,
	rating int,
	review varchar(250) not null,
	CONSTRAINT fk_Reviewers_Videos_videoID FOREIGN KEY(ID) REFERENCES Videos(videoID)
);
--inserting the values in the table reviewers
insert into Reviewers(user_name,rating,review)
values('Jane',4,'Very informative!'),
('Mark',2,'insufficient info for beginners'),
('John',5,'Great video!');

select *from reviewers;

--joining information from the tables videos and reviewers
select a.videoid,a.title,b.rating,b.review
from videos a
join reviewers b
on a.videoID = b.id;
