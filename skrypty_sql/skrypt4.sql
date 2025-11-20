BEGIN
    -- Nadawanie uprawnień systemowych
    EXECUTE IMMEDIATE 'GRANT CREATE SESSION TO my_user';
    EXECUTE IMMEDIATE 'GRANT CREATE TABLE TO my_user';

    -- Nadawanie uprawnień obiektowych
    EXECUTE IMMEDIATE 'GRANT SELECT ON my_schema.my_table TO my_user';
    EXECUTE IMMEDIATE 'GRANT INSERT ON my_schema.my_table TO my_user';
    EXECUTE IMMEDIATE 'GRANT UPDATE ON my_schema.my_table TO my_user';
    EXECUTE IMMEDIATE 'GRANT DELETE ON my_schema.my_table TO my_user';

    -- Nadawanie uprawnień roli
    EXECUTE IMMEDIATE 'GRANT my_role TO my_user';

    -- Nadawanie uprawnień z opcją GRANT
    EXECUTE IMMEDIATE 'GRANT SELECT ON my_schema.my_table TO my_user WITH GRANT OPTION';

    -- Nadawanie uprawnień do pakietu
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON my_schema.my_package TO my_user';

    -- Nadawanie uprawnień do procedury
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON my_schema.my_procedure TO my_user';

    -- Nadawanie uprawnień do funkcji
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON my_schema.my_function TO my_user';

    -- Nadawanie uprawnień do widoku
    EXECUTE IMMEDIATE 'GRANT SELECT ON my_schema.my_view TO my_user';

    -- Nadawanie uprawnień do sekwencji
    EXECUTE IMMEDIATE 'GRANT SELECT ON my_schema.my_sequence TO my_user';

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;