CREATE TABLE "users" (
    "username" varchar PRIMARY KEY,
    "hased_password" varchar NOT NULL,
    "full_name" varchar NOT NULL,
    "email" varchar UNIQUE NOT NULL,
    "passwords_changed_at" timestamptz NOT NULL DEFAULT '0001-01-01 00:00:00z',
    "created_at" timestamptz NOT NULL DEFAULT (now())
);

ALTER TABLE "accounts" ADD FOREIGN KEY ("owner") REFERENCES "users" ("username");

-- CREATE UNIQUE INDEX ON "accounts" ("owner", "currency");
ALTER TABLE "accounts" ADD CONSTRAINT "owner_current_key" UNIQUE ("owner", "currency");

