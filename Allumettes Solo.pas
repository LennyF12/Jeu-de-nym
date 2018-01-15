{ALGORITHME AllumetteVsIa
//BUT Simulerer une partie entre l'ordinnateur au jeu de nym
//ENTREE
//SORTIE

CONST
	 PAQUET←21 :ENTIER
VAR
	compteur,CompteurJoueur,nombre,aleatoire :ENTIER

DEBUT 
    aleatoire(3)//cette methode retourne un etier entre 1 et 3, celle-ci est simulée
    nombre←paquet
    CompteurJoueur←2

        REPETER

            SI CompteurJoueur MOD 2=0 ALORS
            ECRIRE "joueurs 1"
            FINSI

            ECRIRE"veuillez entrez le nombre d'allumette que vous retirez" 
            LIRE nombre 

            SI nombre>=1 ET nombre <=3 ALORS
                CompteurJoueur←CompteurJoueur+1
                compteur←compteur-nombre 
            SINON 
                ECRIRE " veuillez entrez un nombre valide, entre 1 et 3"
            FINSI

            SI CompteurJoueur MOD 2=1 ALORS 
            	ECRIRE "l'ordinateur joue"

                SI aleatoire>=1 ET aleatoire <=3 ALORS
                    CompteurJoueur←CompteurJoueur+1
                    compteur←compteur-aleatoire
                    ECRIRE compteur 

                SINON 
                    ECRIRE "Erreur de l'ordinateur, il va tenter de rentrer un nombre entre 1 et 3 "
                FINSI 
            FINSI

                //quand l'ordinateur il faut compteur<-compteur-aleatoire si aléatoire valide.

        JUSQUA compteur<=1

                        SI CompteurJoueur MOD 2=0  ALORS
                        	ECRIRE "Dommage l'ordinateur a gagner"
                        SINON 
                        	ECRIRE "felicitation vous avez gagner"
                        FINSI

FIN}


PROGRAM AllumetteVsIa;

	uses crt;

CONST
	PAQUET=21;
VAR
	compteur,CompteurJoueur,nombre,aleatoire : INTEGER;

BEGIN
	random(3);//cette methode retourne un etier entre 1 et 3, celle-ci est simulée
    nombre:=paquet;
    CompteurJoueur:=2;

    	REPEAT
    		IF CompteurJoueur MOD 2=0 THEN
            	writeln ('joueurs 1');

           	writeln('veuillez entrez le nombre d'' allumette que vous retirez') ;
            readln (nombre);

            IF (nombre >=1) AND (nombre <=3)  THEN
                CompteurJoueur:=CompteurJoueur+1;
                compteur:=compteur-nombre ;
            ELSE;
                writeln ('Veuillez entrez un nombre valide, entre 1 et 3.');

            IF CompteurJoueur MOD 2=1 THEN 
            	writeln ('l''ordinateur joue');

                IF random>=1 AND random <=3 THEN
                	BEGIN
	                    CompteurJoueur:=CompteurJoueur+1;
	                   	compteur:=compteur-random;
	                    writeln (compteur) ;
	                END;
	            ELSE ;
                    writeln ('Erreur de l''ordinateur, il va tenter de rentrer un nombre entre 1 et 3');

        UNTIL compteur<=1;

                        IF CompteurJoueur MOD 2=0  THEN
                        	writeln ('Dommage l''ordinateur a gagner');
                        ELSE;
                        	writeln ('félicitation vous avez gagné');
                        END;

END.