CREATE TABLE IF NOT EXISTS public.client
(
    referenceclient SERIAL PRIMARY KEY,
    nom character(100) COLLATE pg_catalog."default",
    prenom character(100) COLLATE pg_catalog."default",
    mail character(100) COLLATE pg_catalog."default",
    telephone character(20) COLLATE pg_catalog."default",
    commande character(100) COLLATE pg_catalog."default",
    role character(100) COLLATE pg_catalog."default",
    datesuppression date
);


CREATE TABLE IF NOT EXISTS public.adresse
(
    referenceadresse SERIAL PRIMARY KEY,
    ville character(100) COLLATE pg_catalog."default",
    rue character(100) COLLATE pg_catalog."default",
    codepostal character(20) COLLATE pg_catalog."default",
    datesuppression date
);


CREATE TABLE IF NOT EXISTS public.commande
(
    referencecommande SERIAL PRIMARY KEY,
    referenceclient integer REFERENCES public.client (referenceclient),
    adressefacturation integer REFERENCES public.adresse (referenceadresse),
    adresselivraison integer REFERENCES public.adresse (referenceadresse),
    statue character(100) COLLATE pg_catalog."default",
    datecreationcommande date,
    referencevin integer REFERENCES public.vin (referencevin),
    quantiteproduit integer,
    datesuppression date
);


CREATE TABLE IF NOT EXISTS public.vin
(
    referencevin SERIAL PRIMARY KEY,
    nom character(100) COLLATE pg_catalog."default",
    image character(100) COLLATE pg_catalog."default",
    region character(100) COLLATE pg_catalog."default",
    famille character(100) COLLATE pg_catalog."default",
    annee date,
    quantite integer,
    format character(100) COLLATE pg_catalog."default",
    promotion float,
    prix integer,
    datesuppression date
);


CREATE TABLE IF NOT EXISTS public.depot
(
    referencedepot SERIAL PRIMARY KEY,
    nomdepot character(100) COLLATE pg_catalog."default",
    datesuppression date,
    referencevin integer REFERENCES public.vin (referencevin),
    referencefournisseur integer REFERENCES public.fournisseur (referencefournisseur)
);

CREATE TABLE IF NOT EXISTS public.fournisseur
(
    referencefournisseur SERIAL PRIMARY KEY,
    referencevin integer REFERENCES public.vin (referencevin),
    nom character(100) COLLATE pg_catalog."default",
    datecreation date,
    valeursvin integer,
    datesuppression date
);

