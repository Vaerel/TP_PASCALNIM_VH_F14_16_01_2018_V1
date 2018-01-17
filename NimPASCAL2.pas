PROGRAM NIM_IA;
USES crt;

CONST
PIOCHEMIN = 1;
PIOCHEMAX = 3;
FIN = 1;
ALLUMAX = 21;


VAR
retirerAllumettes, allumettes : INTEGER;
ordi : BOOLEAN;

BEGIN
randomize;

retirerAllumettes:= 0;
allumettes:= ALLUMAX;
ordi:= FALSE;

writeln('Bienvenue dans le jeu des allumettes.Vous allez affronter l ordinateur. Chacun joue à son tour en retirant 1,2 ou 3 allumettes, et celui qui retire la derniere allumette fait gagner son adversaire. Bonne chance !');
REPEAT
BEGIN
	writeln('Retirer 1, 2 ou 3 allumettes ?');
	writeln('Il reste ',allumettes,' allumettes');
	readln (retirerAllumettes);

		IF((retirerAllumettes<PIOCHEMIN)OR(retirerAllumettes>PIOCHEMAX))THEN
			BEGIN
			writeln('Nombre d allumettes retirées incorrect');
			writeln ('Il reste ',allumettes,' allumettes');
			END
		ELSE
		allumettes:=allumettes-retirerAllumettes;
		writeln ('Il reste ',allumettes,' allumettes');
			IF (allumettes < 0) THEN
				CASE retirerAllumettes OF
				2 : 
					BEGIN
					allumettes:= allumettes +2;
					writeln('Nombre d allumettes retirées incorrect');
					writeln ('Il reste ',allumettes,' allumettes');
					END;
				3 : 
					BEGIN
					allumettes:= allumettes +3;
					writeln('Nombre d allumettes retirées incorrect');
					writeln ('Il reste ',allumettes,' allumettes');
					END;
				END;

		END;

	REPEAT
		BEGIN
		REPEAT
			BEGIN
			retirerAllumettes:= random(3);
			END;
			UNTIL((retirerAllumettes >= PIOCHEMIN)AND(retirerAllumettes <= PIOCHEMAX));

		allumettes:=allumettes-retirerAllumettes;
			IF(allumettes <= 0) THEN
				BEGIN
				CASE retirerAllumettes OF
					
					2 : allumettes:=allumettes +2;
					3 : allumettes:=allumettes +3;
					END;
				END
			ELSE
			BEGIN
				ordi:= TRUE
			END;
		END;	
		UNTIL (ordi = TRUE);
	writeln ('Allumettes restantes : ', allumettes);
UNTIL(allumettes <= FIN);
writeln('Victoire de l autre joueur, dommage !');
readln;
END.