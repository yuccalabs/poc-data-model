do $$
    DECLARE nbr_of_tables integer;
    DECLARE nbr_of_lines integer;
begin
    for nbr_of_tables in 1..5000 loop
        EXECUTE format('
            CREATE TABLE
                employee_%s (
                    id INT NOT NULL,
                    firstname VARCHAR(255) NOT NULL,
                    lastname VARCHAR(255) NOT NULL,
                    phone_number VARCHAR(20) NOT NULL,
                    company VARCHAR(255) NOT NULL
                 )
            ;
        ', nbr_of_tables);
        COMMIT;
    end loop;

    for nbr_of_tables in 1..5000 loop
        for nbr_of_lines in 1..100000 loop
          EXECUTE format('INSERT INTO employee_%s VALUES ($1,$2,$3,$4,$5)'::text ,nbr_of_tables) using nbr_of_lines, 'john', 'doe', '0666666666', 'company';
        end loop;
        COMMIT;
    end loop;
end; $$
