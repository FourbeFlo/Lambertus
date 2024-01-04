# HTR for Paul's exegesis projet
 
This repository contains data from the project on Paul's exegesis.

![characters badge](badges/characters.svg) ![regions badge](badges/regions.svg) ![lines badge](badges/lines.svg) ![files badge](badges/files.svg)

# Data

The data can be found at './data/**/*xml'. They are in ALTO format and follow SegmOnto segmentation standards (https://segmonto.github.io). All data is produced using the eScriptorium interface and is catalogued on HTR-United (https://htr-united.github.io). The ALTO files are corrected manually: the segmentation and transcription from the HTR are currently being checked.

## Transcription guidelines

We follow the transcription of S. Gabay et al. Additional characters had to be treated:

- The pilcrow was transcribed by  ¶
- The greek alphabet was transcribed by the rune "ᚠ" for preventing any confusion with another sign.

| Sign         | Transcription | image                                    | Reference                                            |
|--------------|---------------|------------------------------------------|------------------------------------------------------|
| Pilcrow      | ¶             | ![](images/piedDeMouche.jpg | width=100) | [e-rara](https://doi.org/10.3931/e-rara-6338), p. 11 |
|Greek alphabet| ᚠ             |                                          |                                                      |             

## Segmentation 
Using the SegmOnto segmentation standards,certain elements are considered to be faulty when the xml file is checked, but these errors have no consequences for the experiment.
These include lettering that has been defined solely as [GraphicZone] without assigning lines. 
|identifier             |Concerned data|
|-----------------------|------------------------------------------------------------|
|Lambertus-Danaeus_1-Tim| 4_6c6d2_default.xml                                                           |
|                       |                                                            |
|	Bucer_Eph_b             |204_89ed9_default.xml ; 90_fee98_default.xml                |




## Licence 
The transcriptions are [CC-BY](https://creativecommons.org/licenses/by/4.0), and the images follow the rules of various digital libraries:
- e-rara: https://www.e-rara.ch/wiki/termsOfUse?lang=en
  
## Citation
Floriane Goy, _Data for roman 16 th c. Latin print_,  university of Geneve 2023
 
