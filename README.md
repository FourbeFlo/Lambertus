# HTR for Paul's exegesis projet
 
This repository contains data from the project on Paul's exegesis.

![characters badge](badges/characters.svg) ![regions badge](badges/regions.svg) ![lines badge](badges/lines.svg) ![files badge](badges/files.svg)

# Data

The data can be found at './data/**/*xml'. They are in ALTO format and follow SegmOnto segmentation standards (https://segmonto.github.io). All data is produced using the eScriptorium interface and is catalogued on HTR-United (https://htr-united.github.io). The ALTO files are corrected manually: the segmentation and transcription from the HTR are currently being checked.

## Transcription guidelines

We follow the transcription of S. Gabay et al. Additional characters had to be treated:

- The pilcrow was transcribed by  ¶
- The Greek alphabet is transcribed with accents, \_but\_ ligatures and abbreviations are not currently transcribed.
- There are some words in Hebrew also transcribed. 

| Sign           | Transcription | image                                                                                                                                     | Reference                                                                |
|----------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| Pilcrow        | ¶             | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/piedDeMouche_1.jpg" alt="Pillcrow" width="85" height="47">              | [e-rara](https://doi.org/10.3931/e-rara-6338), p.11                      |    
|Greek alphabet  |               | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/greek_alphabet.jpg" alt="Greek alphabet" width="196" height="41">       | [e-rara](https://doi.org/10.3931/e-rara-6338), p.283                     |
|Hebrew alphabet |               | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/ps_90_fee98_default.jpg" alt="Hebrew alphabet" width="271" height="43">!| [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6), p.42|
|shaped semicolon|               |préciser l'élément                                                                                                                         |citer la bonne page de cremma                                             |             

## Segmentation   
Using the SegmOnto segmentation standards,certain elements are considered to be faulty when the xml file is checked, but these errors have no consequences for the experiment.
These include lettering that has been defined solely as [GraphicZone] without assigning lines. 
|identifier             |Concerned data                                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------|
|Lambertus-Danaeus_1-Tim| [4_6c6d2_default.xml](data/Daneau_1-Tim/4_6c6d2_default.xml)                                                                  |
|	Bucer_Eph_b           | [204_89ed9_default.xml](data/Bucer_Eph_b/204_89ed9_default.xml); [90_fee98_default.xml](data/Bucer_Eph_b/90_fee98_default.xml)|


## HTR
The basis HTR model is provided by the model developped with [Gallicorpora](https://github.com/Gallicorpora/Segmentation-and-HTR-Models). 
The htr model is fine tunned for latin printed 16th centuary commentaries on my data and the [data](https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16) produced by M. Jeannot-Tirole.
last update of the htr model 24.01.24.

## Licence 
The transcriptions are [CC-BY](https://creativecommons.org/licenses/by/4.0), and the images follow the rules of various digital libraries:
- e-rara: https://www.e-rara.ch/wiki/termsOfUse?lang=en
- MDZ : https://www.digitale-sammlungen.de/de/datenschutzerklaerung
  
## Citation
Floriane Goy, _Data for roman 16 th c. Latin print_,  university of Geneve 2023
 
