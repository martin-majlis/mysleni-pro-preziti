# Vývoj - Souboj s drakem

Na královském dvoře přistane velký, zlý drak a oznámí králi, že přišel nejdříve sežrat jeho jedinou dceru a potom postupně všechny další podanné. Král se nejdřívě vyděsí, ale potom si uvědomí, že by mohl s drakem vyjednávat. Po chvíli vyjednávání se dohodnou, že pokud jsou obyvatelé království chytřejší než drak, tak je nesežere a poletí někam jinam. Zkouška chytrosti bude následující:

Drak si k sobě pozve náhodných 100 lidí z království, kteří k němu budou chodit jeden po druhém. Když k němu člověk přijde, tak drak zamíchá balíček a řekne nějakou kartu. Úkol toho člověka bude říct, na kterém místě v balíčku se vyskytuje. Pokud je to karta, kterou jsme si drak vybral, tak ten člověk přežije. Pokud ne, tak drak balíček znovu zamíchá, řekně novou kartu. Obyvatel se pokusí znovu říct, kde se v balíčku vyskytuje. Takhle se to bude opakovat, dokud tu kartu nenajde. Pokud většina lidí kartu uhádne na první pokus, tak si je drak bude považivat za chytré.

TODO: Spočítat pravděpodobnost, že drak prohraje jenom díky náhodě.

Králi se povede také vyjednat, že než se zkouška uskuteční, tak budou draka krmit dobytkem a princeznu neprovdá.

Král chce nad drakem vyhrát a proto oznámí, že ten, kdo mu připraví zázračný lektvar, který dá lidem schopnost najít kartu v balíčku získá půl království.

## Hodně týmů

Prestiž, sláva a odměna za nalezení takového lektvaru naláká velké množství alchymistických týmů, které se pustí do vývoje lektvaru.

Každý výběr má pravděpodobnost 1:52, že vybere tu správnou kartu. Takže průměrný počet pokusů na nelezení karty bude okolo 52. Občas budeme mít štěstí a naší kartu nalezneme dříve, ale občas budeme mít smůlu a naší kartu nalezneme později.

Pokud 1000 týmů namíchá lektvar, vypije ho, tak potřebný počet výběrů na nalezení vypadá takto:

![](../.gitbook/assets/vyber-karty-pocet-pokusu.png)

V tomto konkrétním případě 18 týmů mělo štěstí a kartu se jim povedlo najít hned prvním pokusem. Největší smolaři našli kartu až 522. výběrem. Průměrný počet výběrů byl 51,81. Čtvrtina týmů našla kartu za méně než 17 výběrů a polovinu týmů našla svoji kartu za méně než 37 pokusů.

Pokud nějaký tým našel kartu hned prvním výběrem, tak to neznamená, že podváděl. Taky to není důkaz toho, že draka do království nalíkali, domluvili se s ním na úkolu, aby si mohli připravit lektvar s předstihem.

#### Covid

V současné době se vakcínu snaží vyvinout více než [270](https://www.mc-praha.cz/mcp/prehled-vakcin-proti-covid-19-mechanismy-ucinku-vyhody-a-nevyhody/) různých týmů, takže se dá očekávat, že některé budou mít štěstí, a vyjde jim hned první nápad.

## Paralelní postup

Chvíli po tom, co král oznámil svoji soutěž, tak se k němu na hrad dostaví první tři úspěšní řešitelé, kteří mají následující výsledky:

| Tým | Počet dobrovolníků | Našlo kartu | Ropucha |
| :--- | :--- | :--- | :--- |
| A | 1 | 1 | 0 |
| B | 10 | 7 | 0 |
| C | 100 | 60 | 3 |

Z prvních výsledků vidíme, že lektvary mají i vedlejší účinek, že občas dobrovolníka přemění na ropuchu. Na první pohled to vypadá, že tým A má perfektní lektvar \(všichni dobrovolníci našli kartu a žádný se neproměnil v ropuchu\), tým B má o trochu horší výsledky, zatímco C má nejhorší výsledky.

Naštěstí se král zajímal o matematiku, tak na svůj první dojem nedá a rozhodne se použít [vědeckou metodu](https://cs.wikipedia.org/wiki/V%C4%9Bdeck%C3%A1_metoda) a

Proto než král určí výherce, tak si ověří 2 věci:

1. Je ten lektvar bezpečný?
2. Skutečně ten lektvar funguje?

TODO:

* 4x hlava ze 4 hodu - nemuzeme vyvrátit hypotezu, ze je mince ferova, ale uz to vypada, ze by byt nemusela. Stejne tak 11/30 - neni statisticky signifikantni. 
* graf/simulaci, kdy můžeme vyvrátit nulovou hypotezu. 
* [https://www.wolframalpha.com/widgets/view.jsp?id=d821210668c6cc5a02db1069cc52464f](https://www.wolframalpha.com/widgets/view.jsp?id=d821210668c6cc5a02db1069cc52464f)
* 4x hlava ze 4 hodu - nemuzeme vyvrátit hypotezu, ze je mince ferova

## Rychlé získání výsledků

Pokud je možné získat výsledky rychle, tak to také urychlí vývoj.

První tým, vyvijí lektvar štěstí - namíchá lektvar, dá ho dobrobolníkovi, nechá ho vytáhnout kartu - za 1 minutu vím výsledek. Poupraví lektvar, dá ho dobrovolníkovi, nechá ho vytáhnout kartu - za 1 minutu výsledek.

Druhý tým, vyvíjí hnojivo. Když se s ním na jaře pohnojí švestka, tak když se z toho stromu posbírájí švestky, vypálí slivovice - tak tento nápoj bude dávat štěstí.

Když tým dva bude na vývoji pracovat 5 roků, tak za tu dobu stihne udělat 5 vylepšení. Vetšinu času stráví čekáním na uzrání švestek. Zatímco tým jedna za 1 odpoledne udělá těch změn klidně 100.

Samotný časový o době vývoje nám nic neřekne o tom, jak bude výsledek kvalitní.

#### Covid

Pokud budete chtít vyvinout vakcínu pro vzteklině, tak část lidí naočkujete vakcínou a část placebem. Žádná etická komise vám nedovolí lidi cíleně nakazit, a nejspíše ani žádný dobrovolník nebude cíleně vyhledávat vzteklé psy. Jedinou věc, co můžete dělat je roky čekat, než dostatečný počet lidí s placebem bude pokousáno a vyvine se u nich vzteklina. Pak můžete začít ověřovat, že očkovaní lidé mají mezi sebou menší počet nakažených vzteklinou.

Při vývoji vakcíny proti SARS-CoV-2 máte výhodu. Zatímco nikdo nechce být se vzteklými psy, tak naopak lidé chtějí být pohromadě s dalšími lidmi. Díky tomu, že je nakaženo hodně lidí, a že se snadno šíří, tak vám může trvat jenom pár měsíců, než vám v kontrolní skupině onemocní dostatečný počet lidí. Díky tomu budete moci svůj experiment brzy ukončit a vyhodnotit.

## Lepší technologie

## Odkazy
* [https://colab.research.google.com/drive/1YjOP0Q6EtLlLcN5\_8FTit4LLppoICO0v?usp=sharing](https://colab.research.google.com/drive/1YjOP0Q6EtLlLcN5_8FTit4LLppoICO0v?usp=sharing)

