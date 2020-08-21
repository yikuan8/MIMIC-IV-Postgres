SET search_path TO mimiciv;

-- \cd /share/fsmresfiles/mimic4/physionet.org/files/mimiciv/0.4/core

-- \copy ADMISSIONS FROM 'admissions.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy PATIENTS FROM 'patients.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy TRANSFERS FROM 'transfers.csv' DELIMITER ',' CSV HEADER NULL ''

\cd /share/fsmresfiles/mimic4/physionet.org/files/mimiciv/0.4/icu

-- \copy D_ITEMS FROM 'd_items.csv' DELIMITER ',' CSV HEADER NULL ''

\copy CHARTEVENTS FROM 'chartevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy DATETIMEEVENTS FROM 'datetimeevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy ICUSTAYS FROM 'icustays.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy INPUTEVENTS FROM 'inputevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy OUTPUTEVENTS FROM 'outputevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy PROCEDUREEVENTS FROM 'procedureevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \cd /share/fsmresfiles/mimic4/physionet.org/files/mimiciv/0.4/hosp

-- \copy D_HCPCS FROM 'd_hcpcs.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy D_ICD_DIAGNOSES FROM 'd_icd_diagnoses.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy D_ICD_PROCEDURES FROM 'd_icd_procedures.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy D_LABITEMS FROM 'd_labitems.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy DIAGNOSES_ICD FROM 'diagnoses_icd.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy DRGCODES FROM 'drgcodes.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy EMAR FROM 'emar.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy HCPCSEVENTS FROM 'hcpcsevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy LABEVENTS FROM 'labevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy MICROBIOLOGYEVENTS FROM 'microbiologyevents.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy PHARMACY FROM 'pharmacy.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy POE FROM 'poe.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy POE_DETAIL FROM 'poe_detail.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy PRESCRIPTIONS FROM 'prescriptions.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy PROCEDURES_ICD FROM 'procedures_icd.csv' DELIMITER ',' CSV HEADER NULL ''

-- \copy SERVICES FROM 'services.csv' DELIMITER ',' CSV HEADER NULL ''




