CREATE TYPE "status_reviews" AS ENUM (
  'PENDENTE',
  'APROVADO',
  'REJEITADO'
);

CREATE TABLE "places" (
  "id" serial PRIMARY KEY,
  "name" varchar(150) NOT NULL,
  "contact" varchar(20),
  "opening_hours" varchar(100),
  "description" text,
  "latitude" float UNIQUE NOT NULL,
  "longitude" float UNIQUE NOT NULL,
  "created_at" timestamp DEFAULT 'now()'
);

CREATE TABLE "reviews" (
  "id" serial PRIMARY KEY,
  "place_id" integer NOT NULL,
  "name" text NOT NULL,
  "email" varchar(150),
  "stars" decimal(2,1),
  "date" timestamp,
  "status" status_reviews DEFAULT 'PENDENTE',
  "created_at" timestamp DEFAULT 'now()'
);

ALTER TABLE "reviews" ADD FOREIGN KEY ("place_id") REFERENCES "places" ("id");
