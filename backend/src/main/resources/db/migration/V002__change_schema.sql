CREATE INDEX IF NOT EXISTS idx_orders_date_created ON orders(date_created);
CREATE INDEX IF NOT EXISTS idx_orders_status ON orders(status);
