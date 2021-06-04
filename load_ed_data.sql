SET search_path TO mimiciv;

\cd /your/base/dir

-- change /your/base/dir to your mimic-iv base_dir

\copy EDSTAYS FROM 'edstays.csv' DELIMITER ',' CSV HEADER NULL ''

\copy DIAGNOSIS FROM 'diagnosis.csv' DELIMITER ',' CSV HEADER NULL ''

\copy MEDRECON FROM 'medrecon.csv' DELIMITER ',' CSV HEADER NULL ''

\copy PYXIS FROM 'pyxis.csv' DELIMITER ',' CSV HEADER NULL ''

\copy TRIAGE FROM 'triage.csv' DELIMITER ',' CSV HEADER NULL ''

\copy VITALSIGN FROM 'vitalsign.csv' DELIMITER ',' CSV HEADER NULL ''