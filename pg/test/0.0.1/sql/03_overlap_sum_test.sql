\i test/fixtures/polyg_values.sql

SELECT round(cdb_crankshaft.cdb_overlap_sum(
  '0106000020E61000000100000001030000000100000004000000FFFFFFFFFF3604C09A0B9ECEC42E444000000000C060FBBF30C7FD70E01D44400000000040AD02C06481F1C8CD034440FFFFFFFFFF3604C09A0B9ECEC42E4440'::geometry,
  'values', 'value'
), 2);

SELECT round(cdb_crankshaft.cdb_overlap_sum(
  '0106000020E61000000100000001030000000100000004000000FFFFFFFFFF3604C09A0B9ECEC42E444000000000C060FBBF30C7FD70E01D44400000000040AD02C06481F1C8CD034440FFFFFFFFFF3604C09A0B9ECEC42E4440'::geometry,
  'values', 'value', schema_name := 'public'
), 2);
