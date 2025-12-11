CREATE OR REPLACE FUNCTION function_name (
    p_param1 IN data_type,
    p_param2 IN data_type
) RETURN return_data_type IS
    -- Deklaracje zmiennych lokalnych
    v_local_variable data_type;
BEGIN
    -- Logika funkcji

    -- Przykładowa operacja: dodanie dwóch parametrów
    v_local_variable := p_param1 + p_param2;

    -- Zwrócenie wyniku
    RETURN v_local_variable;

EXCEPTION
    WHEN OTHERS THEN
        -- Obsługa wyjątków
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        RETURN NULL; -- lub inna odpowiednia wartość zwracana w przypadku błędu
END function_name;
