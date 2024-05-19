# HTR for Paul's exegesis projet
 
This repository contains data from the project on Paul's exegesis.

![characters badge](badges/characters.svg) ![regions badge](badges/regions.svg) ![lines badge](badges/lines.svg) ![files badge](badges/files.svg)

# Data

The data can be found at './data/**/*xml'. They are in ALTO format and follow SegmOnto segmentation standards (https://segmonto.github.io). All data is produced using the eScriptorium interface and is catalogued on HTR-United (https://htr-united.github.io). The ALTO files are corrected manually: the segmentation and transcription from the HTR are currently being checked.

# Content

Identifier           |  Segmentation  |  Transcription  |  Pages     |  Author              |  Commentary                                           |  Printer            |  Date  |  Place       |  Link digital book                                             |  Holding institution                  |  Call number
---------------------|----------------|-----------------|------------|----------------------|-------------------------------------------------------|---------------------|--------|--------------|----------------------------------------------------------------|---------------------------------------|--------------------------
T_M_Daneau_1_Tim_C1  |  gold          |  gold           |  513(64*)  |  Lambert Daneau      |  priorem Epistolam ad Timotheum                       |  Eustathius Vignon  |  1577  |  Genève      |  https://doi.org/10.3931/e-rara-6338                           |  Bibliothèque de Genève               |  BGE Cti 1753 BGE S 22877
T_M_Daneau_1_Tim_C2  |  gold          |  gold           |  513(54*)  |  Lambert Daneau      |  priorem Epistolam ad Timotheum                       |  Eustathius Vignon  |  1577  |  Genève      |  https://doi.org/10.3931/e-rara-6338                           |  Bibliothèque de Genève               |  BGE Cti 1753 BGE S 22877
Daneau_1-Tim         |  gold          |  gold           |  513(12)   |  Lambert Daneau      |  priorem Epistolam ad Timotheum                       |  Eustathius Vignon  |  1577  |  Genève      |  https://doi.org/10.3931/e-rara-6338                           |  Bibliothèque de Genève               |  BGE Cti 1753 BGE S 22877
Bucer_Eph_b          |  gold          |  gold           |  224 (12)  |  Martin Brucer       |  Epistolam ad Ephesios                                |  Anonymus           |  1527  |  Strasbourg  |  https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6  |  München Bayerische Staatsbibliothek  |  Polem. 408 Beibd.2
Megander_Eph         |  gold          |  gold           |  282 (11)  |  Kaspar Megander     |  Epistolam ad Ephesios                                |  Henricus Petrus    |  1534  |  Basel       |  https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00036972-0  |  München Bayerische Staatsbibliothek  |  Exeg. 700 m
Aretius_1-Tim        |  gold          |  gold           |  450(11)   |  Benedictus Aretius  |  in Epistolas ad Timotheum ad Titum et ad Philemonem  |  Jean Le preux      |  1580  |  Morges      |  https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb10313792-3  |  München Bayerische Staatsbibliothek  |  Exeg. 53 Beibd.1

The pages have been chosen at random, with the exception of those marked with an asterisk (*), which are used for the topic-modelling experiment. 

### files' nomenclature
- name of the exegete_name of the commented epistle abbreviated according to the Vulgate_a letter in alphabetical order if an additional distinction is required
  ex: Brucer_Eph_b
- files used for Topic-Modeling are classified by chapter unit. They are preceded by the letters T_M_ and ended by C and the number of the chapter in question.
  ex: T_M_Daneau_1_Tim_C1 

### corpus
The are two corpora in the repository : 
1. the ocr corpus containing gold data for training the model see above and in this [csv file](corpus/corpus_ocr.csv)
2. the working progress corpus indicating the texts that will be integrated into the work later or are currently being processed. For this corpus see [corpus_working_progress](corpus/corpus_working_progress.csv)

## Transcription guidelines

We follow the transcription of S. Gabay et al. Additional characters had to be treated:

- The pilcrow was transcribed by  ¶
- The Greek alphabet is transcribed with accents, \_but\_ ligatures and abbreviations are not perfectly transcribed across the whole corpus. However, particular care has been taken with the Greek transcriptions concerning the data of  [Topic_modl_Daneau_1_Tim](data/Topic_modl_Daneau_1_Tim). 
- There are some words in Hebrew also transcribed. 

| Sign           | Transcription | image                                                                                                                                     | Reference                                                                |
|----------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| Pilcrow        | ¶             | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/piedDeMouche_1.jpg" alt="Pillcrow" width="85" height="47">              | [e-rara](https://doi.org/10.3931/e-rara-6338), p.11                      |    
|Greek alphabet  | πρώτην πιςτιν | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/greek_alphabet.jpg" alt="Greek alphabet" width="196" height="41">       | [e-rara](https://doi.org/10.3931/e-rara-6338), p.283                     |
|Hebrew alphabet | חרל           | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/ps_90_fee98_default.jpg" alt="Hebrew alphabet" width="154" height="24"> | [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6), p.42|
|shaped semicolon| q́;            | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/semi-colon%20shapped.png" alt="semi-colon" width="27" height="48">       |citer la bonne page de cremma p.7                                        |             

## Segmentation   
Using the SegmOnto segmentation standards,certain elements are considered to be faulty when the xml file is checked, but these errors have no consequences for the experiment.
These include lettering that has been defined solely as [GraphicZone] without assigning lines. 
Identifier               |  DropCapitalZone issues                                                                                    |  GraphicZone issues
-------------------------|------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Aretius_1-Tim            |  [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)                                                       |  [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)
Bucer_Eph_b              |                                                                                                            |  [90_fee98_default.xml](data/Bucer_Eph_b/90_fee98_default.xml); [204_89ed9_default.xml](data/Bucer_Eph_b/204_89ed9_default.xml)
Lambertus-Danaeus_1-Tim  |                                                                                                            |  [4_6c6d2_default.xml](data/Daneau_1-Tim/4_6c6d2_default.xml)
T_M_Daneau_1_Tim_C1      |  [2012887.xml](data/T_M_Daneau_1_Tim_C1/2012887.xml)                                                       |  [2012913.xml](data/T_M_Daneau_1_Tim_C1/2012913.xml); [2012885.xml](data/T_M_Daneau_1_Tim_C1/2012885.xml); [2012908.xml](data/T_M_Daneau_1_Tim_C1/2012908.xml); [2012913.xml](data/T_M_Daneau_1_Tim_C1/2012913.xml)|
T_M_Daneau_1_Tim_C2      |  [2012950.xml](data/T_M_Daneau_1_Tim_C2/2012950.xml); [2013003.xml](data/T_M_Daneau_1_Tim_C2/2013003.xml)  |  [2012950.xml](data/T_M_Daneau_1_Tim_C2/2012950.xml);  [2013003.xml](data/T_M_Daneau_1_Tim_C2/2013003.xml)
Index_Lambert            |  [2012909.xml](data/index_Lambert/2012909.xml)                                                             |  [2012909.xml](data/index_Lambert/2012909.xml);  [2012910.xml](data/index_Lambert/2012910.xml)

## HTR
The basis HTR model is provided by the model developped with [Gallicorpora](https://github.com/Gallicorpora/Segmentation-and-HTR-Models). 
The htr model is fine tunned for latin printed 16th centuary commentaries on my data and the [data](https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16) produced by M. Jeannot-Tirole.
last update of the htr model 24.01.24.

## Fine tuned OCR Models
OCR models are finetuned on the basis of two datasets of 16th century printed texts. The first is used for general character recognition and is made up of data from French text. It is particularly useful for recognising italic characters, of which there are many in the training files. For further details see [FONDUE-FR-PRINT-16](https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16). The second allows the specialisation of the model for Latin texts, and is made up of Latin documents which thus encounter the same abbreviation systems as those in our corpus. For futher details see [FONDUE-LA-PRINT-16](https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16/tree/main). our data is also included in this second data set.

- [fist model](models/Lambertus_01_best.mlmodel) (20.01.24) : trained without without sufficient data on italic characters and no greek datas. 
- [second model](models/Lambertus_02_best.mlmodel) (03.02.24) : traind with the addition of italic caracters and some greek caracters.
- [third model](models/Lambertus_03_best.mlmodel)(04.30.24): trained with additionnal data, you find it in the release

for now (22.02.24 )reading Greek characters is the model's weak point. These have to be corrected manually for an optimal result. 

## Licence 
The transcriptions are [CC-BY](https://creativecommons.org/licenses/by/4.0), and the images follow the rules of various digital libraries:
- e-rara: https://www.e-rara.ch/wiki/termsOfUse?lang=en
- MDZ : https://www.digitale-sammlungen.de/de/datenschutzerklaerung
  
## Citation
Floriane Goy, _Data for roman 16 th c. Latin print_,  university of Geneve 2023


## citation : Repository

- Version `1.0`: Floriane Goy,  OCR data and segmentation of 16th century Latin printed text (16th century exegesis of paul project)_, version `1.0`, Genève, université de Genève, 2023, https://github.com/FourbeFlo/Lambertus.

```bibtex
@misc{Goy_Lambertus_exegesisofPaul_2023,
  author={Floriane Goy},
  title={OCR data and segmentation of 16th century Latin printed text},
  version={1.0},
  address={Genève},
  publisher={université de Genève},
  year={2023},
  url={https://github.com/FourbeFlo/Lambertus},
}
```

## Citation : Projet

Ueli Zahnd, Stefan Krauter, MAtteo Colombo, Floriane Goy, Benjamin Manig, Noemi Schürmann,  _16th Century Exegesis of Paul_, Geneva ; Zürich, university of Geneva and Zürich, 2023.

```bibtex
@misc{Goy_exegesisofPaul_2023,
  author={Ueli Zahnd, Stefan Krauter, MAtteo Colombo, Floriane Goy, Benjamin Manig, Noemi Schürmann},
  title={16th Century Exegesis of Paul},
  address={Geneva; Zürich},
  publisher={univesity of Geneva; university of Zürich},
  year={2023},
  url={https://www.theologie.uzh.ch/de/faecher/neues-testament/Professur-f%C3%BCr-neutestamentliche-Wissenschaft/16th_century_exegesis_of_paul.html},
  note={Grant number SNFS : 207696},
}
```
## On the project

-  Reformation Readings of Paul : [RRP](https://rrp.zahnd.be/) : database for the 16th century printed commentaries on Paul.
-  in Zürich [exegesis of Paul](https://www.theologie.uzh.ch/de/faecher/neues-testament/Professur-f%C3%BCr-neutestamentliche-Wissenschaft/16th_century_exegesis_of_paul.html) and Geneva [l'exégèse des épîtres pauliniennes](https://www.unige.ch/ihr/fr/accueil/exegese-paulinienne/)

 
