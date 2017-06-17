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





