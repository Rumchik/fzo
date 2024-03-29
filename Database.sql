CREATE DATABASE FZO;	

CREATE TABLE ABITURIENTS (
    id_abiturient SERIAL PRIMARY KEY NOT NULL,
    speciality_a text,
    surname_a text,
    name_a text,
    midname_a text,
    data_birth_a text,
    zvanie text,
    complect text,
    place_service text,
    group_number_a text,
    phone_number text,
    individual text,
    note_a text,
    document text,
    number_registration text,
    seria text,
    number text,
    who_take text,
    year_take text,
    specialist text);

CREATE TABLE EXAMS (
    id_exam SERIAL PRIMARY KEY NOT NULL,
    russian text,
    social text,	
    history text,
    md text,
    individual_d text,
    summa text,
    id_abiturient_exam serial not null,
FOREIGN KEY (id_abiturient_exam) 
REFERENCES ABITURIENTS (id_abiturient));

CREATE TABLE KYRSES (
    id_kyrs SERIAL PRIMARY KEY NOT NULL,
    year_nabor text,
    speciality text,
    srok_obuchenia text);

CREATE TABLE SLYSHATELS (
    id_slyshatel SERIAL PRIMARY KEY NOT NULL,
    speciality_s text,
    number_specialty text,
    surname_s text,
    name_s text,
    midname_s text,
    date_birth_s text,
    surname_s_dp text,
    name_s_dp text,
    midname_s_dp text,
    surname_s_rp text,
    name_s_rp text,
    midname_s_rp text,
    old_surname text,
    phone_number text,
    year_nabor text,
    year_postuplenia text,
    number_specialization text,
    specialization_s text,
    kod_specialization text,
    kyrs text,
    kod_kyrsa text,
    number_group_s text,
    number_group_gia text,
    number_group_preznie text,
    lichnie_number text,
    zachet_book_number text,
    note_s text, 
    document_s text,
    number_registration_s text,
    seria_s text,
    number_s text,
    who_take_s text,
    year_take_s text,
    specialist_s text,
    id_kyrs serial NOT NULL,
FOREIGN KEY (id_kyrs) 
REFERENCES KYRSES (id_kyrs));

CREATE TABLE KAFEDRES (
    id_kafedra SERIAL PRIMARY KEY NOT NULL,
    name text);

CREATE TABLE DISCIPLINES (
    id_discipline SERIAL PRIMARY KEY NOT NULL,
    name text,
    id_kafedra serial,
FOREIGN KEY (id_kafedra) 
REFERENCES KAFEDRES (id_kafedra));

CREATE TABLE TEACHERS (
    id_teacher SERIAL PRIMARY KEY NOT NULL,
    fio text,
    id_kafedra serial NOT NULL,
FOREIGN KEY (id_kafedra) 
REFERENCES KAFEDRES (id_kafedra));

CREATE TABLE arhiv (
    id_arhiv SERIAL PRIMARY KEY NOT NULL,
    speciality_arhiv text,
    surname_arhiv text,
    name_arhiv text,
    midname_arhiv text,
    data_birth_arhiv text,
    zvanie_arhiv text,
    complect_arhiv text,
    place_service_arhiv text,
    group_number_arhiv text,
    phone_number text,
    individual_arhiv text,
    note_arhiv text,
    document_arhiv text,
    number_registration_arhiv text,
    seria_arhiv text,
    number_arhiv text,
    who_take_arhiv text,
    year_take_arhiv text,
    specialist_arhiv text);


CREATE TABLE PLAN_COPLECT (
    id_plan SERIAL PRIMARY KEY NOT NULL,
    complect text,
    PD text,
    AD text,
    ORD text,
    UR text,
    PONB text,
    PPDP text);

CREATE TABLE KVOTA (
    id_kvota SERIAL PRIMARY KEY NOT NULL,
    speciality text,
    kvota_o text,
    kvota_s text);


 
