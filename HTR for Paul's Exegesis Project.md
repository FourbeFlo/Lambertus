# HTR for Paul's Exegesis Project

This repository contains data from the project on Paul's exegesis.

![characters badge](badges/characters.svg) ![regions badge](badges/regions.svg) ![lines badge](badges/lines.svg) ![files badge](badges/files.svg)

## Data

The data can be found at `./data/**/*xml` in ALTO format and follow [SegmOnto segmentation standards](https://segmonto.github.io). All data is produced using the eScriptorium interface and cataloged on [HTR-United](https://htr-united.github.io). The ALTO files have undergone manual correction, and the segmentation and transcription from the HTR are currently under review.

## Project Overview

This project focuses on the transcription and segmentation of 16th-century commentaries on the Pauline epistles. The data consists of various texts from notable authors, segmented and transcribed for further analysis. 

## Content Overview

| **Identifier**          | **Segmentation** | **Transcription** | **Pages**  | **Author**           | **Commentary**                                    | **Printer**        | **Date** | **Place**   | **Link**                                                            | **Institution**                        | **Call Number**                |
|-------------------------|------------------|-------------------|-----------|----------------------|--------------------------------------------------|--------------------|----------|------------|--------------------------------------------------------------------|----------------------------------------|---------------------------------|
| T_M_Daneau_1_Tim_C1      | gold             | gold              | 513 (64*) | Lambert Daneau        | priorem Epistolam ad Timotheum                    | Eustathius Vignon  | 1577     | Genève     | [e-rara](https://doi.org/10.3931/e-rara-6338)                      | Bibliothèque de Genève                 | BGE Cti 1753 BGE S 22877        |
| T_M_Daneau_1_Tim_C2      | gold             | gold              | 513 (54*) | Lambert Daneau        | priorem Epistolam ad Timotheum                    | Eustathius Vignon  | 1577     | Genève     | [e-rara](https://doi.org/10.3931/e-rara-6338)                      | Bibliothèque de Genève                 | BGE Cti 1753 BGE S 22877        |
| Daneau_1-Tim             | gold             | gold              | 513 (12)  | Lambert Daneau        | priorem Epistolam ad Timotheum                    | Eustathius Vignon  | 1577     | Genève     | [e-rara](https://doi.org/10.3931/e-rara-6338)                      | Bibliothèque de Genève                 | BGE Cti 1753 BGE S 22877        |
| Bucer_Eph_b              | gold             | gold              | 224 (12)  | Martin Brucer         | Epistolam ad Ephesios                             | Anonymus            | 1527     | Strasbourg | [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6) | München Bayerische Staatsbibliothek    | Polem. 408 Beibd.2              |
| Megander_Eph             | gold             | gold              | 282 (11)  | Kaspar Megander       | Epistolam ad Ephesios                             | Henricus Petrus     | 1534     | Basel      | [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00036972-0) | München Bayerische Staatsbibliothek    | Exeg. 700 m                    |
| Aretius_1-Tim            | gold             | gold              | 450 (11)  | Benedictus Aretius    | in Epistolas ad Timotheum, Titum, Philemonem      | Jean Le Preux       | 1580     | Morges     | [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb10313792-3) | München Bayerische Staatsbibliothek    | Exeg. 53 Beibd.1                |

> *Pages marked with an asterisk (*) are used for the topic-modelling experiment.*

### File Nomenclature

- **Exegesis Files**: `exegete_name_of_epistle_abbreviation_of_Vulgate_[optional_suffix]`  
  Example: `Brucer_Eph_b`
- **Topic-Modeling Files**: Files used for topic modeling are classified by chapter unit and preceded by `T_M_`. They end with `C` followed by the chapter number.  
  Example: `T_M_Daneau_1_Tim_C1`

### Corpora

1. **OCR Corpus**: Gold data for training the model can be found [here](corpus/corpus_ocr.csv).
2. **Work in Progress Corpus**: Contains texts in progress or pending integration. More information can be found [here](corpus/corpus_working_progress.csv).

## Transcription Guidelines

We follow the transcription standards of S. Gabay et al., with special attention to characters such as:

| **Sign**               | **Transcription** | **Image**                                                                                                               | **Reference**                                                                 |
|------------------------|-------------------|-------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| Pilcrow                | ¶                 |  <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/piedDeMouche_1.jpg" alt="Pillcrow" width="85" height="47">  | [e-rara, p.11](https://doi.org/10.3931/e-rara-6338)                           |
| Greek alphabet         | πρώτην πιςτιν      | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/greek_alphabet.jpg" alt="Greek alphabet" width="196" height="41"> | [e-rara, p.283](https://doi.org/10.3931/e-rara-6338)                          |
| Hebrew alphabet        | חרל               | <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/ps_90_fee98_default.jpg" alt="Hebrew alphabet" width="154" height="24"> | [MDZ, p.42](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6)     |
| Semicolon (shaped)     | q́;                |  <img src="https://github.com/FourbeFlo/Lambertus/blob/main/images/semi-colon%20shapped.png" alt="semi-colon" width="27" height="48"> | citer la bonne page de cremma p.7                                             |

## Segmentation

Using SegmOnto segmentation standards, the following elements have been flagged as faulty (but are non-critical):

| **Identifier**            | **DropCapitalZone Issues**                                                                                  | **GraphicZone Issues**                                                                                                                         |
|---------------------------|-------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| Aretius_1-Tim              | [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)                                                         | [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)                                                                                             |
| Bucer_Eph_b                |                                                                                                             | [90_fee98_default.xml](data/Bucer_Eph_b/90_fee98_default.xml), [204_89ed9_default.xml](data/Bucer_Eph_b/204_89ed9_default.xml)                  |
| Lambertus-Danaeus_1-Tim    |                                                                                                             | [4_6c6d2_default.xml](data/Daneau_1-Tim/4_6c6d2_default.xml)                                                                                    |
| T_M_Daneau_1_Tim_C1        | [2012887.xml](data/T_M_Daneau_1_Tim_C1/2012887.xml)                                                         | [2012913.xml](data/T_M_Daneau_1_Tim_C1/2012913.xml), [2012885.xml](data/T_M_Daneau_1_Tim_C1/2012885.xml)                                         |

## HTR Model

The HTR model used is based on the model developed by [Gallicorpora](https://github.com/Gallicorpora/Segmentation-and-HTR-Models). It has been fine-tuned for 16th-century Latin printed commentaries. 

- **Model Lambertus_01**: Initial model (20.01.24), lacks data on italic and Greek characters.
- **Model Lambertus_02**: Updated model (03.02.24), includes italic characters and Greek symbols.
- **Model Lambertus_03**: Latest model (30.04.24), includes additional training data for improved accuracy.

> Note: As of 22.02.24, the model struggles with Greek characters, requiring manual correction.

## Fine-Tuned OCR Models

The OCR models have been fine-tuned based on two datasets of 16th-century printed texts:

1. **General Character Recognition**:  
   The first dataset consists of French texts and is particularly useful for recognizing italic characters, which are abundant in the training files.  
   More details: [FONDUE-FR-PRINT-16](https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16).

2. **Latin Text Specialization**:  
   The second dataset is tailored to Latin texts, featuring similar abbreviation systems as those found in our corpus.  
   More details: [FONDUE-LA-PRINT-16](https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16/tree/main). Our data is also included in this dataset.

### Model Versions:

Model files and relevant details are stored `models/`.

- **[First Model](models/Lambertus_01_best.mlmodel) (20.01.24)**:  
  Trained without sufficient data on italic characters and no Greek data.

- **[Second Model](models/Lambertus_02_best.mlmodel) (03.02.24)**:  
  Trained with additional data, including italic characters and some Greek characters.

- **[Third Model](models/Lambertus_03_best.mlmodel) (30.04.24)**:  
  Trained with additional data and available in the latest release.

> **Note (22.02.24)**: Greek character recognition remains the model's weak point and requires manual correction for optimal results.

## License

The transcriptions are licensed under [CC-BY](https://creativecommons.org/licenses/by/4.0), while the images follow the usage rules of various digital libraries:

- [e-rara Terms of Use](https://www.e-rara.ch/wiki/termsOfUse?lang=en)
- [MDZ Privacy Policy](https://www.digitale-sammlungen.de/de/datenschutzerklaerung)

## Citation

### Data Citation

Floriane Goy, _Data for Roman 16th-Century Latin Print_, University of Geneva, 2023.

### Repository Citation

- Version `1.0`: Floriane Goy, _OCR Data and Segmentation of 16th Century Latin Printed Text (16th Century Exegesis of Paul Project)_, Version `1.0`, University of Geneva, 2023. Available at: [GitHub Repository](https://github.com/FourbeFlo/Lambertus).

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

### Project Citation

Ueli Zahnd, Stefan Krauter, Matteo Colombo, Floriane Goy, Benjamin Manig, Noemi Schürmann, _16th Century Exegesis of Paul_, University of Geneva and University of Zurich, 2023.

```bibtex
@misc{Goy_exegesisofPaul_2023,
  author={Ueli Zahnd, Stefan Krauter, Matteo Colombo, Floriane Goy, Benjamin Manig, Noemi Schürmann},
  title={16th Century Exegesis of Paul},
  address={Geneva; Zürich},
  publisher={University of Geneva; University of Zürich},
  year={2023},
  url={https://www.theologie.uzh.ch/de/faecher/neues-testament/Professur-f%C3%BCr-neutestamentliche-Wissenschaft/16th_century_exegesis_of_paul.html},
  note={Grant number SNFS: 207696},
}
```

## Additional Project Resources

- **Reformation Readings of Paul**: [RRP](https://rrp.zahnd.be/) – A database of 16th-century printed commentaries on Paul.
- **Zurich's Project**: [Exegesis of Paul](https://www.theologie.uzh.ch/de/faecher/neues-testament/Professur-f%C3%BCr-neutestamentliche-Wissenschaft/16th_century_exegesis_of_paul.html).
- **Geneva's Project**: [L'exégèse des épîtres pauliniennes](https://www.unige.ch/ihr/fr/accueil/exegese-paulinienne/).

