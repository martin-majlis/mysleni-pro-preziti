# Matice záměn

[Matice záměn](https://cs.wikipedia.org/wiki/Matice_z%C3%A1m%C4%9Bn) \(konfusní matice, matice záměn, [confussion matrix](https://en.wikipedia.org/wiki/Confusion_matrix)\) je tabulka, do které si můžeme zapsat, kolikrát se nám naše předpověď potvrdila.

Zjištění předpovědi je snadné, protože použijeme naší předpověď \(test\). Zjištění skutečného stavu je mnohem těžší. Buď se musí vědět předem, nebo se musí použít nějaký jiný postup \(jiný test nebo počkat\).

### Výsledek testů

Otestovali jsme 100 lidí a vyšlo nám, že 60 z nich je nemocných \(pozitivních\) a 40 je zdavých \(negativních\). Když se dozvíme skutečné výsledky, tak si tabulku můžeme vyplnit následujícím způsobem.

|  |  | Skutečnost | Skutečnost |  |
| :--- | :--- | :--- | :---: | :--- |
|  |  | Nemocný | Zdravý |  |
| Předpověď | Nemocný | TP=40 | FP=20 | 60 |
| Předpověď | Zdravý | FN=10 | TN=30 | 40 |
|  |  | P=50 | N=50 |  |

### Terminologie

Celá řada oborů potřebuje s čísly z takovéto tabulky pracovat. Naneštěstí pro nás různé obory používají různé termíny a ještě navíc mají do češtiny různé překlady.

#### Základní pojmy

* skutečně pozitivní \(**TP**, true positive\) - počet lidí, kteří jsou nemocní a test je označil jako nemocné - 40
* falešně pozitivní \(**FP**, false positive, chyba typu 1, false alarm, falešný alarm, planý poplach\) - počet lidí, kteří jsou zdraví ale test je označil jako nemocné - 20
* falešně negativní \(**FN**, false negative, chyba typu 2\) - počet lidí, kteří jsou nemocní ale test je označil jako zdravé - 10
* skutečně negativní \(**TN**, true negative\) - počet lidí, kteří jsou nemocní a test je označil jako nemocné - 30
* pozitivní \(**P**\) - počet lidí, kteří jsou nemocní - 50
* negativní \(**N**\) - počet lidí, kteří jsou zdraví - 50

#### Odvozené pojmny

* senzitivita \(sensitivity\), výtěžnost, pokrytí \(recall\), pravděpodobnost detekce \(**TPR**, true positive rate\) - podíl skutečně pozitivních \(**TP**\) k pozitivním \(**P**\); jaký podíl nemocných test skutečně odhalí; pravděpodobnost, že nemocný člověk bude detekován jako nemocný - `TP / P = 40 / 50 = 0.8`Test ma senzitivitu 80%.
* specificita \(specificity\), selektivita \(selectivity\), **TNR** \(true negative rate\) - podíl skutečně negativních \(**TN**\) k negativním \(**N**\); jaký podíl zdravých skutečně odhalí; pravděpodobnost, že zdravý člověk bude detekován jako zdravý - `TN / N = 30 / 50 = 0.6` Test má specificitu 60%.
* přesnost \(precision\), **PPV** \(positive predictive value\) - podíl skutečně pozitivních \(**TP**\) ke všem pozitivním podle testy \(**TP + FP**\); pravděpodobnost, že když test říká, že je člověk pozitivní, tak je ten člověk skutečně pozitivní - `TP / (TP + FP) = 40 / 60 = 0.66` Test má přesnost 66%.
* pravděpodobnost planého poplachy, fall-out \(**FPR**, false positive rate\) - podíl falešně pozitivních \(**FP**\) k negativním \(**N**\); - `FP / N = 20 / 50 = 0.4`; `1 - TNR = 1 - 0.6 = 0.4` Test má pravděpodobnost falešného poplachu 40%.
* pravděpodobnost neodhalení, miss rate \(**FNR**, false negative rate\) - podíl falešně negativních \(**FN**\) k negativním \(**P**\); pravděpodobnost, že člověk bude označen za zdravého, když je ve skutečnosti nemocný - `FN / P = 10 / 50 = 0.2`; `1 - TPR = 1 - 0.8 = 0.2` Test má pravděpodobnost neodhalení 20%.

### Příklady

Když už známe tabulku i základní pojmy, tak se můžeme podívat na to, jaké vlastnosti testů jsou dúležité v různých situacích. Je velmi nutné velmi dobře zvážit cenu za chybu typu 1 \(**FP**\) a cenu za chybu typu 2 \(**FN**\).

#### Odhalování rakoviny

Pokud uděláma při detekci rakoviny chybu typu 2 \(**FN**\) - neodhalíme nemocného člověka - tak takový člověk může zemřít. Proto to vypadá, že se vyplatí používat co nejdříve a co nejčastěji test s vysokou senzitivitou \(**TPR**\). Důsledek použití takového testu bude větší počet falešně pozitivních \(**FP**\), které bude nutné ověřit nějakým jiným testem.

I kdyby celkové finanční náklady při použití takovéto testovací strategie byly nižší, tak hrozí několik problémů:

1. vystrašení lidé - dostat informaci, že člověk trpí rakovinou a čekat na další vyšetření není příjemné
2. ztráta důvery - pokud podíl falešně pozitivních \(**FPR**\) bude příliš vysoký, tak k němu lidé ztratí důveru a nebudou mu věřit
3. příležitost pro šarlatány - léčit falešně pozitivní lidi \(**FP**\) je velmi výhodné. Je velká šance že po absolvování druhého testu budou negativní a šarlatán si bude moci započítat úspěšné vyléčení. To  vážně ohrozit všechny lidi, kteří jsou skutečně nemocní \(**TP**\).

#### Předpovídání počasí

Představme si zjednodušený příklad, kdy můžeme předvídat jenom jestli bude mrznout \(**P**, pozitivní\) nebo ne \(**N**, negativní\). Chyba typu 1 \(**FP**\) je, že předpovíme, že bude mrznout a ono bude teplo. Taková chyba naštve všechny lidi, kteří chteli jít na výlet a nešli nebo zbytečně nesli s sebou zimní oblečení. Chyba typu 2 \(**FN**\) je, že předpovíme, že nebude mrznout a mrznout začne. Taková chyba ohrozí všechny lidi, kteří si na výlet vyrazili na lehko.

#### Soudní proces

Na soudní proces se také můžeme dívat jako předpovídání \(test\) toho, jestli je člověk vinen \(**N**, negativní\) nebo nevinen \(**P**, pozitivní\). Chyba typu 1 \(FP\) je, že neodsoudíme člověka, který se provinil. Chyba typu 2 \(FN\) je, že odsoudíme člověka, který se neprovinil.

### Odkazy

* [Chyby typu 1 a 2](https://cs.wikipedia.org/wiki/Chyby_typu_I_a_II)
* [Sensitivita a Specificita](https://kardioblog.cz/zacatecnici-co-presne-znamena-senzitivita-a-specificita/)
* [Sensitivity and Specificity](https://en.wikipedia.org/wiki/Sensitivity_and_specificity) \(anglicky\)
* [ROC](https://en.wikipedia.org/wiki/Receiver_operating_characteristic) \(anglicky\) + 

### Realita

V realu je to trochu komplikovanější, protože musíme ještě vzít v úvahu, jak je daný jev pravděpodobný a použít [Bayesovskou statistiku](https://cs.wikipedia.org/wiki/Bayesovsk%C3%A1_statistika).



