PROGRAM Nim_2_Joueurs;
USES crt;

CONST

PIOCHEMIN = 1;
PIOCHEMAX = 3;
FIN = 1;
ALLUMAX = 21;

VAR

retirerAllumettes, allumettes : INTEGER;

BEGIN
	retirerAllumettes:=0;
	allumettes:=ALLUMAX;
	writeln ('Bienvenue dans le jeu des allumettes. Chaque joueur joue à son tour en retirant 1,2 ou 3 allumettes, et celui qui retire la derniere allumette fait gagner son adversaire. Bonne chance !');
	REPEAT
        BEGIN
		writeln ('Retirer 1, 2 ou 3 allumettes ?');
		readln (retirerAllumettes);
			IF ((retirerAllumettes<PIOCHEMIN)OR(retirerAllumettes>PIOCHEMAX)) THEN
			BEGIN
			writeln ('Nombre d allumettes retirees incorrect.');
			writeln ('Il reste ',allumettes,' allumettes');
			END
			ELSE
                BEGIN
			        allumettes:=allumettes-retirerAllumettes;
                                writeln('Il reste ',allumettes,' allumettes');
				 IF (allumettes <0) THEN

				BEGIN
				        CASE (retirerAllumettes) OF
				                2 :
				                	BEGIN
                                        allumettes:= allumettes +2;
			                            writeln('Nombre d allumettes retirees incorrect');
			                            writeln('Il reste ', allumettes, ' allumettes.')
                                    END;

        			            3 :
                                    BEGIN
                                        allumettes:= allumettes +3;
					                	writeln('Nombre d allumettes retirees incorrect');
					               		writeln('Il reste ',allumettes,' allumettes');
                                    END;
                END;

				END
            END

         END;


	UNTIL (allumettes<=FIN);
	writeln('Victoire de l''autre joueur, dommage !');
	readln;
END.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

					
