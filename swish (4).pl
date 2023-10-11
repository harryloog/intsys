kass(miisu).
kass(liisu).
emane(miisu).

isane(X):-
  \+emane(X).

% laps, vanme
laps(toomas, jaagup).
laps(paula, jaagup).

laps(jaagup, pille).
laps(jaagup, vello).

laps(pille, aleksander).
laps(viivi, aleksander).

lapselaps(A, B):-
    laps(A, X), laps(X, B).
%odevend kui on samavanem erineval lapsel
ove(A, B):-
    laps(A, X), laps(B, X),
    A\=B.
%tadionu kui lapse b vanem x on ode vend
tadionu(A, B):-
    laps(B, X), ove(X, A).
%küsige tädid ja onud 
%tadionu(Y, X)
%X = jaagup,
%Y = viivi
%false
%küsige jaagupi vanemad
%laps(jaagup, X)
%X = pille
%küsige pille lapsed
%laps(X, pille)
%X = jaagup













homme(esmaspäev, pühapäev).
homme(teisipäev, esmaspäev).
homme(kolmapäev, teisipäev).
homme(neljapäev, kolmapäev).
homme(reede, neljapäev).
homme(laupäev, reede).
homme(pühapäev, laupäev).

lõvivaletab(esmaspäev).
lõvivaletab(teisipäev).
lõvivaletab(kolmapäev).

ülehomme(A, B):-
    homme(A, X), homme(X, B).
%kas homme valetab
lõvitõtt(X):-
    homme(X, _), \+lõvivaletab(X).

lõvieiletõtt(X):-
    homme(X, Paev), lõvitõtt(Paev).
%kas eile tott ja tana valetb - valetab
lõviütlebeilevaletab(X):-
    lõvitõtt(X), homme(X, Y), lõvivaletab(Y).
%kas eile valetab ja tana tott - valetab
lõviütlebeilevaletab(X):-
    lõvivaletab(X), homme(X, Y), lõvitõtt(Y).

%nelj
puhkepäev(X):-
    homme(X, reede).
%puha
puhkepäev(X):-
    homme(esmaspäev, X).


%lõvitõtt(X).
%X = neljapäev
%lõvitõtt(X).
%X = neljapäev
%X = reede
%X = laupäev
%X = pühapäev
%lõvitõtt(reede).
%1true
%lõvitõtt(esmaspäev).
%false
%lõvieiletõtt(X).
%X = esmaspäev
%X = reede
%X = laupäev
%X = pühapäev
%puhkepäev(X).
%X = laupäev
%X = pühapäev
%lõviütlebeilevaletab(X).
%X = neljapäev
%X = esmaspäev





varv(sinine).
varv(kollane).
varv(punane).

piir(Riik1, Riik2):-
    varv(Riik1), varv(Riik2),
      Riik1\=Riik2.

otsing1():-
    piir(Austria, Sveits), 
    piir(Austria, Saksamaa),
    piir(Saksamaa, Poola),
    piir(Holland,Saksamaa),
    piir(Holland,Belgia),
    piir(Prantsusmaa,Belgia),
    piir(Prantsusmaa,Luksemburg),
    piir(Belgia,Luksemburg),
    piir(Saksamaa,Luksemburg),
    piir(Prantsusmaa,Itaalia),
    piir(Sveits,Itaalia),
      write(Austria), write("-Austria "),  write(Sveits),  write("-Sveits "), 
      write(Austria), write("-Austria "), write(Saksamaa), write("-Saksamaa "), 
      write(Saksamaa), write("-Saksamaa "), write(Poola), write("-Poola "), 
      write(Holland), write("-Holland "), write(Saksamaa), write("-Saksamaa "), 
      write(Holland), write("-Holland "), write(Belgia), write("-Belgia "), 
      write(Prantsusmaa), write("-Prantsusmaa "), write(Belgia), write("-Belgia "), 
      write(Prantsusmaa), write("-Prantsusmaa "), write(Luksemburg), write("-Luksemburg "), 
      write(Belgia), write("-Belgia "), write(Luksemburg), write("-Luksemburg "), 
      write(Saksamaa), write("-Saksamaa "), write(Luksemburg), write("-Luksemburg "), 
      write(Prantsusmaa), write("-Prantsusmaa "), write(Itaalia), write("-Itaalia "), 
      write(Sveits), write("-Sveits "), write(Itaalia), write("-Itaalia "),!.
%piir maarab varvi, mis ei ole sama kui teise riigi oma
%otsing1
%sinine-Austria kollane-Sveits sinine-Austria kollane-Saksamaa kollane-Saksamaa sinine-Poola sinine-Holland kollane-Saksamaa
% sinine-Holland kollane-Belgia sinine-Prantsusmaa kollane-Belgia sinine-Prantsusmaa punane-Luksemburg kollane-Belgia
%  punane-Luksemburg kollane-Saksamaa punane-Luksemburg sinine-Prantsusmaa punane-Itaalia kollane-Sveits punane-Itaalia
%1true
%%Uurige Euroopa kaarti. Otsige kümmekond riiki koos kokkupuutumistega
%Laske riigid võimalikult väheste värvidega värvida



sõbrad(Isikud):-
    Isikud=[
       isik(ants, _, _, _),
       isik(jüri, _, _, _),
       isik(mati, _, _, _)
    ],
    member(isik(ants, punane, _, _), Isikud),
    member(isik(jüri, _, korvpall, _), Isikud),
    member(isik(_, _, jalgpall, koer), Isikud),
    member(isik(_, roheline, _, kanaarilind), Isikud),
    member(isik(_, sinine, _, kana), Isikud)

    .
    
	
%sõbrad(L), member(isik(X, _, tennis, _), L).

%Koostage sarnane piirangutega ülesanne

laevad(Alused):-
    Alused=[
           alus(seafarer, _, _, _),
           alus(wave, _, _, _),
           alus(whirlpool, _, _, _),
           alus(current, _, _, _),
           alus(typhoon, _, _, _)
           ],
    member(alus(seafarer, oil, _, _), Alused),
    member(alus(_, silver, _, gold), Alused),
    member(alus(_, iron, lead, _), Alused),
    member(alus(_, _, platinum, rubber), Alused),
    member(alus(_, _, pillows, fruit), Alused),
    member(alus(_, helium, _, _), Alused),
    member(alus(_, _, _, meat), Alused),
    member(alus(_, _, shampoo, granules), Alused),
    member(alus(_, _, titainium, _), Alused),
    member(alus(_, feathers, _, _), Alused)
    .
    
    %laevad(L), member(alus(X, _, _, fruit), L).
    