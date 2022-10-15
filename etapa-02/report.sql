CREATE SCHEMA "report";

CREATE TABLE "report"."routes" (
  "id" int PRIMARY KEY,
  "licensePlate" varchar(8),
  "protocol" varchar,
  "deviceTime" timestamp,
  "fixTime" timestamp,
  "serverTime" timestamp,
  "outdated" timestamp,
  "valid" boolean,
  "latitude" decimal,
  "longitude" decimal,
  "altitude" decimal,
  "speed" decimal,
  "address" varchar,
  "accuracy" decimal,
  "ignition" boolean,
  "status" long,
  "distance" decimal,
  "totalDistance" decimal,
  "motion" boolean,
  "hours" long,
  "users_id" int
);

CREATE TABLE "report"."events" (
  "id" int PRIMARY KEY,
  "licensePlate" varchar(8),
  "serverTime" timestamp,
  "type" varchar,
  "address" varchar,
  "users_id" int
);

CREATE TABLE "report"."summary" (
  "id" int PRIMARY KEY,
  "licensePlate" varchar(8),
  "DeviceName" varchar,
  "distance" decimal,
  "averageSpeed" decimal,
  "maxSpeed" decimal,
  "spentFuel" decimal,
  "startOdometer" decimal,
  "endOdometer" decimal,
  "engineHours" long,
  "users_id" int
);

CREATE TABLE "users" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "email" varchar
);

ALTER TABLE "report"."routes" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "report"."events" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "report"."summary" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");
