{//Algorythme allumettes

//BUT executer un jeu de nym entre deux joueurs
//ENTREE allumettes enlevees
//SORTIE nombre allumettes toto et victoire/défaite

//PRINCIPE boucle de saisie puis le reste

CONST
	NbAllumettes<-21 : ENTIER

VAR

	Saisie, AllumettesJoueur1, totaux :ENTIER

DEBUT
	AllumettesJoueur1<-0
	REPETER 
		ECRIRE "Entrez le nombre d'allumettes que vous souhaitez enlever entre 1 et 3 joueur 1, il vous reste",totaux
		LIRE Saisie
		SI Saisie>=1 ET <=3 ALORS
		AllumettesJoueur1<-AllumettesJoueur1+Saisie
		totaux<-NbAllumettes-AllumettesJoueur1
		FINSI
		SI totaux=1 ALORS
		ECRIRE"Joueur 1 a gagné"
		FINSI 
		ECRIRE "Entrez le nombre d'allumettes que vous souhaitez enlever entre 1 et 3 joueur 2, il vous reste",totaux
		LIRE Saisie
		SI Saisie>=1 ET <=3 ALORS
		AllumettesJoueur1<-AllumettesJoueur1+Saisie
		totaux<-NbAllumettes-AllumettesJoueur1
		FINSI
		SI totaux=1 ALORS
		ECRIRE"Joueur 2 a gagné"
		FINSI 
	JUSQUA (NbAllumettes-AllumettesJoueur1=1)

FIN}

PROGRAM JeuDeNim;

CONST
	NbAllumettes = 21 ;

VAR
	Saisie, AllumettesJoueur1, totaux : INTEGER;

BEGIN
	AllumettesJoueur1:=0;
	REPEAT
		writteln 'Entrez le nombre d allumettes que vous souhaitez elenver entre 1 et 3 joueur 1, il en reste:',totaux;
		readln Saisie;
		IF Saisie >=1 AND <=3 THEN
		BEGIN
			AllumettesJoueur1 := AllumettesJoueur1+Saisie;
			totaux := NbAllumettes-AllumettesJoueur1;
		END;

		IF totaux=1 THEN
		writteln 'Joueur 1 a gagné';
		ELSE
			BEGIN
				writteln 'Entrez le nombre d allumettes que vous souhaitez elenver entre 1 et 3 joueur 2, il en reste:',totaux;
				readln Saisie;
				IF Saisie >=1 AND <=3 THEN
					BEGIN
						AllumettesJoueur1 := AllumettesJoueur1+Saisie;
						totaux := NbAllumettes-AllumettesJoueur1;
					END;
					IF totaux=1 THEN
						writteln 'Joueur 1 a gagné';
					END;
				END;
			END;
		END;
	UNTIL (NbAllumettes-AllumettesJoueur1=1)
END.