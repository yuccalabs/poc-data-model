CREATE TABLE
    employee_%s (
        id INT NOT NULL,
        firstname VARCHAR(255) NOT NULL,
        lastname VARCHAR(255) NOT NULL,
        phone_number VARCHAR(20) NOT NULL,
        company VARCHAR(255) NOT NULL,
        created_at TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
        updated_at TIMESTAMP(0) WITHOUT TIME ZONE DEFAULT NULL, PRIMARY KEY(id)
    )
;
COMMIT;

for nbr_of_lines in 1..500000000 loop
    EXECUTE INSERT INTO employee VALUES ($1,$2,$3,$4,$5) using nbr_of_lines, 'john', 'doe', '0666666666', 'company';
    COMMIT;
end loop;
