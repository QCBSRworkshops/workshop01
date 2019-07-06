# [QCBS R Workshop series](https://wiki.qcbs.ca/r)

This series of 10 workshops walks participants through the steps required to use R for a wide array of statistical analyses relevant to research in biology and ecology. These open-access workshops were created by members of the QCBS both for members of the QCBS and the larger community.

The content of this workshop has been peer-reviewed by several QCBS members. If you would like to suggest modifications, please contact the current series coordinators, listed [here](https://wiki.qcbs.ca/r).

# [Série d'ateliers R du CSBQ](https://wiki.qcbs.ca/r)

Cette série de 10 ateliers guide les participants à travers les étapes requises afin de maîtriser le logiciel R pour une grande variété d’analyses statistiques pertinentes en recherche en biologie et en écologie. Ces ateliers en libre accès ont été créés par des membres du CSBQ à la fois pour les membres du CSBQ et pour la grande communauté d’utilisateurs de R.

Le contenu de cet atelier a été révisé par plusieurs membres du CSBQ. Si vous souhaitez y apporter des modifications, veuillez SVP contacter les coordonnateurs actuels de la série, listés [ici](https://wiki.qcbs.ca/r).

# Workshop 1: Introduction to R

[![Build Status](https://travis-ci.org/QCBSRworkshops/workshop01.svg?branch=dev)](https://travis-ci.org/QCBSRworkshops/workshop01)

In this introductory R Workshop you will learn what R open-source statistical software is, why you should absolutely start using it, and all the first steps to help you get started in R. We will show you how R can act as a calculator, teach you about the various types of objects in R, show you how to use functions and load packages, and find all the resources you need to get help. If any of this sounds obscure, don’t worry! By the end of this workshop you’ll know what all these words mean!

# Atelier 1: Introduction à R

[![Build Status](https://travis-ci.org/QCBSRworkshops/workshop01.svg?branch=dev)](https://travis-ci.org/QCBSRworkshops/workshop01)

Dans cet atelier d’introduction à R, vous apprendrez ce qu’est le logiciel d’analyse statistique R, vous verrez plusieurs raisons pourquoi vous devriez absolument l’utiliser (!), et vous ferez vos premiers pas dans ce logiciel. Vous verrez comment R peut être utilisé comme une calculatrice, vous apprendrez ce qu’est un « objet » dans R, et vous utiliserez des fonctions simples. De plus, vous apprendrez comment télécharger de nouvelles fonctions et comment trouver des ressources d’aide pour utiliser R. Si tout ceci vous semble étrange, ne vous inquiétez pas! À la fin de cet atelier, vous comprendrez tous ces concepts.


# Links

#### [English](https://qcbsrworkshops.github.io/workshop01/workshop02-en/workshop01-en.html)

#### [Français](https://qcbsrworkshops.github.io/workshop01//workshop02-fr/workshop01-fr.html)

# Developers

1. Set the working directory set to this folder.
2. then use:

``` r
install.packages("remotes")
remotes::install_github("QCBSRworkshops/qcbsRworkshops")
library("qcbsRworkshops")
build_workshops()
```
