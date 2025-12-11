CREATE OR REPLACE PROCEDURE sample_procedure (
    p_param1 IN VARCHAR2,
    p_param2 IN NUMBER,
    p_result OUT VARCHAR2
) IS
BEGIN
    -- Deklaracje zmiennych lokalnych
    v_local_var VARCHAR2(100);

    -- Logika procedury
    BEGIN
        -- Przykładowa operacja: Konkatenacja tekstu
        v_local_var := 'Param1: ' || p_param1 || ', Param2: ' || TO_CHAR(p_param2);

        -- Ustawienie wyniku wyjściowego
        p_result := v_local_var;

    EXCEPTION
        WHEN OTHERS THEN
            -- Obsługa wyjątków
            p_result := 'Error: ' || SQLERRM;
    END;

END sample_procedure;