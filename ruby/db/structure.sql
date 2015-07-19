CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "crypted_password" varchar(40), "salt" varchar(40), "remember_token" varchar(255), "remember_token_expires_at" datetime, "name" varchar(255), "email_address" varchar(255), "administrator" boolean DEFAULT 'f', "created_at" datetime, "updated_at" datetime, "state" varchar(255) DEFAULT 'active', "key_timestamp" datetime);
CREATE INDEX "index_users_on_state" ON "users" ("state");
CREATE TABLE "userprefs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "cID" integer, "uID" integer, "percent" integer, "created_at" datetime, "updated_at" datetime, "creditchoice" varchar(255));
CREATE TABLE "subcategories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "macro" integer, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "charities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "catID" integer, "name" varchar(255), "info" varchar(255), "description" varchar(255), "amntraised" decimal, "created_at" datetime, "updated_at" datetime, "logo" varchar(255), "location" varchar(255));
CREATE TABLE "macrocategories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "user_transacts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "uID" integer, "amount" decimal, "cID" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "transparency_reports" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "charityID" integer, "userID" integer, "report" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "charity_transacts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "amount" decimal, "cID" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20150718183647');

INSERT INTO schema_migrations (version) VALUES ('20150718201849');

INSERT INTO schema_migrations (version) VALUES ('20150718202138');

INSERT INTO schema_migrations (version) VALUES ('20150718205635');

INSERT INTO schema_migrations (version) VALUES ('20150718205804');
