%pareja(Persona, Persona)
pareja(marsellus, mia).
pareja(pumkin,    honeyBunny).
pareja(bernardo,bianca).
pareja(bernardo,charo).

%trabajaPara(Empleador, Empleado)
trabajaPara(marsellus, vincent).
trabajaPara(marsellus, jules).
trabajaPara(marsellus, winston).

saleCon(Persona1,Persona2):-
  pareja(Persona1,Persona2).
saleCon(Persona1,Persona2):-
  pareja(Persona2,Persona1).
 
trabajaPara(Empleador,bernardo):-
  trabajaPara(Empleador,marsellus),
  Empleador \= jules.
  
trabajaPara(Empleador,george):-
  saleCon(bernardo,Empleador).
  
esFiel(Persona):-
	saleCon(Persona,Pareja),
	findall(Pareja,saleCon(Persona,Pareja),Parejas),
	length(Parejas,CuantasParejas),
	CuantasParejas=1.
 
 esPeligroso(Alguien):-
	actPeligrosa(Alguien).
esPeligroso(Alguien):-
	jefePeligroso(Alguien).

actPeligrosa(Alguien):-
	personaje(Alguien,ladron(cosasRobadas)),
	elem(licorerias,cosasRobadas).
	
actPeligrosa(Alguien):-
	personaje(Alguien,mafioso(cargoMafioso)).
	elem(maton,cargoMafioso).

jefePeligroso(Alguien):-
	trabajaPara(JefePeligroso,Alguien),
	esPeligroso(JefePeligroso).
 





