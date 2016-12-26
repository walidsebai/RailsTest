CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "contenu" text, "pdate" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "articles_users" ("article_id" integer, "user_id" integer);
CREATE INDEX "index_articles_users_on_article_id" ON "articles_users" ("article_id");
CREATE INDEX "index_articles_users_on_user_id" ON "articles_users" ("user_id");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "username" varchar);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_users_on_username" ON "users" ("username");
INSERT INTO schema_migrations (version) VALUES ('20161119184929'), ('20161119215240'), ('20161127180634'), ('20161219152944');


