BEGIN TRANSACTION;
CREATE TABLE "event_photos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "photo_file_name" varchar(255) DEFAULT NULL NULL, "photo_content_type" varchar(255) DEFAULT NULL NULL, "photo_file_size" integer DEFAULT NULL NULL, "event_id" integer DEFAULT NULL NULL, "caption" text DEFAULT NULL NULL, "created_at" datetime DEFAULT NULL NULL, "updated_at" datetime DEFAULT NULL NULL, "photo_updated_at" datetime);
INSERT INTO "event_photos" VALUES(1,'IMG_2790.JPG','image/jpeg',2943254,NULL,NULL,'2009-03-02 01:47:04','2009-03-02 01:47:04','2009-03-02 01:46:52');
COMMIT;
