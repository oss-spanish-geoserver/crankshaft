CREATE OR REPLACE FUNCTION
    CDB_PyAggS(current_state Numeric[], current_row Numeric[]) 
    returns NUMERIC[] as $$
    BEGIN
        if array_upper(current_state,1) is null  then
            RAISE NOTICE 'setting state %',array_upper(current_row,1);
            current_state[1] = array_upper(current_row,1);
        end if;
        return array_cat(current_state,current_row) ;
    END
    $$ LANGUAGE plpgsql;


CREATE AGGREGATE CDB_PyAgg(NUMERIC[])(
    SFUNC = CDB_PyAggS,
    STYPE = Numeric[],
    INITCOND = "{}" 
);

