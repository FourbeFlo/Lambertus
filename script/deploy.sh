#!/bin/env bash
git clone https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16
git clone https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16
mkdir train_data
mv FONDUE-LA-PRINT-16/data train_data
mv FONDUE-FR-PRINT-16/data train_data
mv train_data ../..