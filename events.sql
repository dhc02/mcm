BEGIN TRANSACTION;
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255) DEFAULT NULL NULL, "body" text DEFAULT NULL NULL, "public" boolean DEFAULT NULL NULL, "created_by" varchar(255) DEFAULT NULL NULL, "updated_by" varchar(255) DEFAULT NULL NULL, "start_date" date DEFAULT NULL NULL, "end_date" date DEFAULT NULL NULL, "start_time" time DEFAULT NULL NULL, "end_time" time DEFAULT NULL NULL, "created_at" datetime DEFAULT NULL NULL, "updated_at" datetime DEFAULT NULL NULL, "teaser" text DEFAULT NULL NULL, "event_type" varchar(255));
INSERT INTO "events" VALUES(1,'Test Event 13847','<h2>Matagorda County Museum</h2>
<h3>Sub-Heading Here</h3>
<p>&nbsp;</p>
<p>This is some <span class="style1">sample</span> text for this test event, with some <span class="style1">in-line</span> highlighting.</p>
<p>&nbsp;</p>
<p><img height="150" width="112" src="/uploads/Image/IMG_2790_1.jpg" alt="" /></p>','t','Donnie','','2009-05-01','2009-06-01','2000-01-01 08:03:00','2000-01-01 12:03:00','2009-03-01 08:47:51','2009-03-02 01:29:53','<p>Matagorda County Museum<br />
Sub-Heading Here<br />
fdsafdsa This is the story of a fdsa kind of day. La la la fkjld;sa gobbledegook.</p>','Exhibit');
COMMIT;
