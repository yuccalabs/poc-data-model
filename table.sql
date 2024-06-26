do $$
    DECLARE nbr_of_lines integer;
begin
EXECUTE format('
        CREATE TABLE
            employee (
                id INT NOT NULL,
                firstname VARCHAR(255) NOT NULL,
                lastname VARCHAR(255) NOT NULL,
                phone_number VARCHAR(20) NOT NULL,
                company VARCHAR(255) NOT NULL
             )
        ;
        ');
    COMMIT;

    for nbr_of_lines in 1..500000000 loop
        EXECUTE format('INSERT INTO employee VALUES ($1,$2,$3,$4,$5)'::text) using nbr_of_lines, 'john', 'doe', '0666666666', 'company';
          COMMIT;
    end loop;
end; $$
