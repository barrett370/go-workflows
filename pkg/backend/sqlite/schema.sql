CREATE TABLE IF NOT EXISTS `instances` (
  `id` TEXT PRIMARY KEY,
  `execution_id` TEXT NO NULL,
  `parent_instance_id` TEXT NULL,
  `parent_event_id` INTEGER NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `completed_at` DATETIME NULL,
  `locked_until` DATETIME NULL,
  `locked_by` TEXT NULL
);

CREATE TABLE IF NOT EXISTS `pending_events` (
  `id` TEXT PRIMARY KEY,
  `instance_id` TEXT NOT NULL,
  `event_type` INTEGER NOT NULL,
  `event_id` INTEGER NOT NULL,
  `attributes` BLOB NOT NULL,
  `visible_at` DATETIME NULL
);

CREATE TABLE IF NOT EXISTS `history` (
  `id` TEXT PRIMARY KEY,
  `instance_id` TEXT NOT NULL,
  `event_type` INTEGER NOT NULL,
  `event_id` INTEGER NOT NULL,
  `attributes` BLOB NOT NULL,
  `visible_at` DATETIME NULL
);

CREATE TABLE IF NOT EXISTS `activities` (
  `id` TEXT PRIMARY KEY,
  `instance_id` TEXT NOT NULL,
  `execution_id` TEXT NOT NULL,
  `event_type` INTEGER NOT NULL,
  `event_id` INTEGER NOT NULL,
  `attributes` BLOB NOT NULL,
  `visible_at` DATETIME NULL,
  `locked_until` DATETIME NULL,
  `locked_by` TEXT NULL
);