CREATE TABLE IF NOT EXISTS product (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(500),
    price DECIMAL(19,2)
);

CREATE TABLE IF NOT EXISTS orders (
    id BIGSERIAL PRIMARY KEY,
    date_created DATE,
    status VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS order_product (
    quantity INTEGER NOT NULL,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
