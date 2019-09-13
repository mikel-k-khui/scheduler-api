WITH days(day) AS (
  VALUES ( 'Monday' ), ( 'Tuesday' ), ( 'Wednesday' ), ( 'Thursday' ), ( 'Friday' )
)
INSERT INTO days (name)
SELECT day FROM days;

WITH times(time) AS (
	VALUES ('0800 / 8am'), ('0900 / 9am'), ('1000 / 10am'), ('1100 / 11am'), ('1200 / 12pm'), ('1300 / 1pm'), ('1400 / 2pm'), ('1500 / 3pm'), ('1600 / 4pm')
)
INSERT INTO appointments (time, day_id)
SELECT time, id as day_id FROM days, times ORDER BY day_id, time;

INSERT INTO interviewers (name, avatar)
VALUES
  ('Tony "Iron Man" Stark', 'https://i.imgur.com/LpaY82x.png'),
  ('Steve "Captain America" Rogers', 'https://i.imgur.com/Nmx0Qxo.png'),
  ('Bruce "Hulk" Banner', 'https://i.imgur.com/T2WwVfS.png'),
  ('Thor Odinson', 'https://i.imgur.com/FK8V841.jpg'),
  ('Natasha "Black Widow" Romanoff', 'https://i.imgur.com/twYrpay.jpg'),
  ('Clint "Hakweye" Barton', 'https://i.imgur.com/TdOAdde.jpg'),
  ('Scott "Ant-man" Lang', 'https://i.imgur.com/3tVgsra.jpg'),
  ('James "War Machine" Rhodes', 'https://i.imgur.com/iHq8K8Z.jpg'),
  ('Carol "Captain Marvel" Danvers', 'https://i.imgur.com/nPywAp1.jpg'),
  ('Doctor Stephen Strange', 'https://i.imgur.com/okB9WKC.jpg');

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 1 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 2 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 3 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 4 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 5 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;
