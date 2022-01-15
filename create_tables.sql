CREATE TABLE IF NOT EXISTS Inventory (
  uid INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  ammount INTEGER DEFAULT 0 NOT NULL
);

CREATE TABLE IF NOT EXISTS event_history (
  uid INTEGER PRIMARY KEY AUTOINCREMENT,
  action TEXT NOT NULL,
  item_uid INTEGER NOT NULL,
  item_previous TEXT NOT NULL,
  timestamp INTEGER DEFAULT CURRENT_TIMESTAMP NOT NULL,
  description TEXT NOT NULL
);