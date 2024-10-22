# HTR for Paul's Exegesis Project

This repository contains data for the project on Paul's exegesis.

![Characters Badge](badges/characters.svg) ![Regions Badge](badges/regions.svg) ![Lines Badge](badges/lines.svg) ![Files Badge](badges/files.svg)

---

## Data

The data can be found in the `./data/**/*xml` directory, formatted in ALTO and following the SegmOnto segmentation standards ([SegmOnto](https://segmonto.github.io)). All data is generated using the eScriptorium interface and catalogued in [HTR-United](https://htr-united.github.io). The ALTO files are manually corrected, and segmentation and transcription are currently being checked.

---

## Content Overview

| Identifier           | Segmentation  | Transcription  | Pages     | Author              | Commentary                                           | Printer            | Date  | Place       | Digital Book Link                                             | Holding Institution                  | Call Number                    |
|----------------------|---------------|----------------|-----------|---------------------|-----------------------------------------------------|--------------------|--------|--------------|----------------------------------------------------------------|---------------------------------------|--------------------------------|
| T_M_Daneau_1_Tim_C1  | gold          | gold           | 513 (64*) | Lambert Daneau       | Priorem Epistolam ad Timotheum                       | Eustathius Vignon  | 1577   | Genève       | [Link](https://doi.org/10.3931/e-rara-6338)                   | Bibliothèque de Genève               | BGE Cti 1753 BGE S 22877       |
| T_M_Daneau_1_Tim_C2  | gold          | gold           | 513 (54*) | Lambert Daneau       | Priorem Epistolam ad Timotheum                       | Eustathius Vignon  | 1577   | Genève       | [Link](https://doi.org/10.3931/e-rara-6338)                   | Bibliothèque de Genève               | BGE Cti 1753 BGE S 22877       |
| Daneau_1-Tim         | gold          | gold           | 513 (12)  | Lambert Daneau       | Priorem Epistolam ad Timotheum                       | Eustathius Vignon  | 1577   | Genève       | [Link](https://doi.org/10.3931/e-rara-6338)                   | Bibliothèque de Genève               | BGE Cti 1753 BGE S 22877       |
| Bucer_Eph_b          | gold          | gold           | 224 (12)  | Martin Brucer        | Epistolam ad Ephesios                                | Anonymus           | 1527   | Strasbourg   | [Link](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6) | München Bayerische Staatsbibliothek  | Polem. 408 Beibd.2             |
| Megander_Eph         | gold          | gold           | 282 (11)  | Kaspar Megander      | Epistolam ad Ephesios                                | Henricus Petrus    | 1534   | Basel        | [Link](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00036972-0) | München Bayerische Staatsbibliothek  | Exeg. 700 m                    |
| Aretius_1-Tim        | gold          | gold           | 450 (11)  | Benedictus Aretius   | In Epistolas ad Timotheum ad Titum et ad Philemonem  | Jean Le Preux      | 1580   | Morges       | [Link](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb10313792-3) | München Bayerische Staatsbibliothek  | Exeg. 53 Beibd.1               |

**Note**: Pages marked with an asterisk (*) are used for the topic-modeling experiment.

---

## File Naming Conventions

- **Standard format**: `exegete_name_abbreviated_epistle_name_optional_distinction_letter`
  - Example: `Brucer_Eph_b`
  
- **Topic-modeling files**: Files classified by chapter units are prefixed with `T_M_` and followed by `C` and the chapter number.
  - Example: `T_M_Daneau_1_Tim_C1`

---

## Corpus Overview

1. **OCR Corpus**: Contains gold data for training the model, details available in the [corpus CSV file](corpus/corpus_ocr.csv).
2. **Work-in-Progress Corpus**: Contains texts that are either pending integration or currently being processed, see [corpus_working_progress CSV file](corpus/corpus_working_progress.csv).

---

## Transcription Guidelines

- **Pilcrow (¶)** is transcribed directly as `¶`.
- **Greek alphabet** is transcribed with accents. However, ligatures and abbreviations are not fully consistent across the corpus. Special attention has been given to Greek transcriptions in the dataset [Topic_modl_Daneau_1_Tim](data/Topic_modl_Daneau_1_Tim).
- **Hebrew words** are also transcribed.

| Sign               | Transcription   | Image                                                                                                                                 | Reference                                                                        |
|--------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| Pilcrow (¶)        | ¶               | ![Pilcrow](https://github.com/FourbeFlo/Lambertus/blob/main/images/piedDeMouche_1.jpg)                                                | [e-rara](https://doi.org/10.3931/e-rara-6338), p. 11                             |
| Greek Alphabet     | πρώτην πίστην   | ![Greek alphabet](https://github.com/FourbeFlo/Lambertus/blob/main/images/greek_alphabet.jpg)                                          | [e-rara](https://doi.org/10.3931/e-rara-6338), p. 283                            |
| Hebrew Alphabet    | חרל             | ![Hebrew alphabet](https://github.com/FourbeFlo/Lambertus/blob/main/images/ps_90_fee98_default.jpg)                                    | [MDZ](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6), p. 42       |
| Shaped Semicolon   | q́;             | ![Shaped semicolon](https://github.com/FourbeFlo/Lambertus/blob/main/images/semi-colon%20shapped.png)                                  | Page reference needed                                                            |

---

## Segmentation Details

Using SegmOnto standards, certain segmentation errors, such as lettering defined as [GraphicZone] without line assignment, do not affect the experiment.

| Identifier              | DropCapitalZone Issues                                                                         | GraphicZone Issues                                                                                                                  |
|-------------------------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| Aretius_1-Tim           | [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)                                             | [page_00469.xml](data/Aretius_1-Tim/page_00469.xml)                                                                                 |
| Bucer_Eph_b             |                                                                                                | [90_fee98_default.xml](data/Bucer_Eph_b/90_fee98_default.xml); [204_89ed9_default.xml](data/Bucer_Eph_b/204_89ed9_default.xml)      |
| Daneau_1-Tim            |                                                                                                | [4_6c6d2_default.xml](data/Daneau_1-Tim/4_6c6d2_default.xml)                                                                       |
| T_M_Daneau_1_Tim_C1     | [2012887.xml](data/T_M_Daneau_1_Tim_C1/2012887.xml)                                             | [2012908.xml](data/T_M_Daneau_1_Tim_C1/2012908.xml); [2012913.xml](data/T_M_Daneau_1_Tim_C1/2012913.xml)                           |
| T_M_Daneau_1_Tim_C2     | [2012950.xml](data/T_M_Daneau_1_Tim_C2/2012950.xml); [2013003.xml](data/T_M_Daneau_1_Tim_C2/2013003.xml) | [2013003.xml](data/T_M_Daneau_1_Tim_C2/2013003.xml)                                                                                |
| Index_Lambert           | [2012909.xml](data/index_Lambert/2012909.xml)                                                   | [2012909.xml](data/index_Lambert/2012909.xml); [2012910.xml](data/index_Lambert/2012910.xml)                                       |

---

## HTR Models

The baseline HTR model was developed using data from [Gallicorpora](https://github.com/Gallicorpora/Segmentation-and-HTR-Models), and fine-tuned with 16th-century Latin print data from this project and [M. Jeannot-Tirole's work](https://gallica.bnf.fr).

Model files and relevant details are stored under `models/`.

---

### Conclusion
This project documents and enhances Paul’s exegesis texts, providing structured data, transcription guidelines, and an overview of progress across texts and chapters.

