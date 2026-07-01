# Perancangan, Simulasi, dan Analisis Kestabilan Sistem Ratio Control dan Cascade Control pada Continuous Stirred Tank Reactor (CSTR)

<p align="center"><img alt="Forks" src="https://img.shields.io/github/forks/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-16 h-auto inline-block" /> <img alt="Stars" src="https://img.shields.io/github/stars/eidolon1302/PPENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-16 h-auto inline-block" /> <img alt="Issues" src="https://img.shields.io/github/issues/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-16 h-auto inline-block" /> <img alt="Last Commit" src="https://img.shields.io/github/last-commit/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-16 h-auto inline-block" /> <img alt="Watchers" src="https://img.shields.io/github/watchers/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-16 h-auto inline-block" /> <img alt="GitHub" src="https://img.shields.io/badge/GitHub-100000?style=flat&logo=github&logoColor=white" class="w-16 h-auto inline-block" /> <img src="https://img.shields.io/badge/MATLAB-0076A8?style=flat&logo=MathWorks&logoColor=white" class="w-16 h-auto inline-block" alt="MATLAB"> <img alt="Repo Size" src="https://img.shields.io/github/repo-size/eidolon1302/PPENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-24 h-auto inline-block" /> <img alt="Open Issues" src="https://img.shields.io/github/issues-raw/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3?style=flat" class="w-24 h-auto inline-block" /></p>
<p align="center">Mata Kuliah : Pengendalian Proses<br>Dosen Pengampu : Dr. Bambang L. Widjiantoro, S.T., M.T.</p>
<p align="center">Contributor :<br>Lulu Salsabila 5009221045<br>Dewa Gede 500922xxx<br>Nada Fijri Nabila 5009231038<br>Fara Naila Eka Putri 5009231040<br>Rico Fitranda 5009231098</p>

<p align="center">Departemen Teknik Fisika</p>

![Cover](https://github.com/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3/blob/main/p%26id/cascade_control.png)
![Cover](https://github.com/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3/blob/main/p%26id/ratio_control.png)

<p align="center"><em>P&ID CSTR cascade control & ratio control.</em></p>



## Outline of this documentation

This documentation site includes:

- **P&ID Design**
- **Introduction**
- **Introduction to This Project**  
- **Simulation Code (Ratio Control & Cascade Control Program)**
- **References** - References used in this project

# Introduction

Pada tugas ini kami memilih Continuous Stirred Tank Reactor (CSTR) sebagai studi kasus karena merupakan salah satu reaktor yang paling banyak digunakan dalam industri proses. Agar reaksi berlangsung secara optimal, diperlukan sistem pengendalian yang mampu menjaga kondisi operasi tetap stabil. Oleh karena itu, kami menerapkan dua strategi pengendalian yang berbeda, yaitu Ratio Control untuk mempertahankan rasio laju alir dua reaktan sesuai kebutuhan reaksi, dan Cascade Control untuk mengendalikan temperatur reaktor melalui pengaturan aliran media pendingin. Kedua metode tersebut kemudian disimulasikan dan dianalisis kestabilan serta performansinya.

# Introduction to This Project

This documentation site includes:

- **Getting Started Guide** - Quick setup and basic usage
- **Introduction to This Project**  
- **P&ID Design**
- **Contributor**
- **References** - References used in this project

# Simulation Code

## How to Use The Code

**Project Structure**

```
PENGENDALIAN-PROSES-KEOMPOK3/
├── Code/                  ← Code matlab Ratio dan Cascade Control
│   ├── cascade_control_kelompok3.m     ← Code matlab CSTR Cascade Control          
│   └── ratio_control_kelompok3.mlx      ← Code matlab CSTR Ratio Control
├── Results/
│   └── Cascade_Control_MatlabResult/
│       ├── hasil_cascade_control.png         ← Preview hasil code cascade control 
│   └── Ratio_Control_MatlabResult/
│       ├── CSTR Ratio Control Result.png     ← Preview hasil code ratio control
├── p&id/
│   ├── cascade_control.png            
│   └── p&id cascade.pdf          ← Dokumen P&ID
│   └── p&id ratio control.pdf    ← Dokumen P&ID
│   └── ratio_control.png        
│
└── LICENSE
│
└── LICENSE        ← Root scripts (concurrently)
```

**Run The Code**

```bash
To run tests locally, follow these steps:

1. Clone or download this repository

```bash
git clone https://github.com/eidolon1302/PENGENDALIAN-PROSES.git

or download the zip file
```

2. Navigate to the project folder:

```bash
cd PENGENDALIAN-PROSES-KELOMPOK3
```

3. Open MATLAB.

4. Set the current folder in MATLAB to the project directory.

5. Open the main script (cascade_control_kelompok3.m & ratio_control_kelompok3.mlx) and click **Run**, or execute:

## Hasil Cascade Control

![Simulation Result](https://github.com/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3/blob/main/Results/Cascade_Control_MatlabResult/hasil_cascade_control.png)

## Hasil Ratio Control**

![Simulation Result](https://github.com/eidolon1302/PENGENDALIAN-PROSES-KELOMPOK3/blob/main/Results/Ratio_Control_MatlabResult/CSTR%20Ratio%20Control%20Result.png)

## References

## Contributor

![Terima Kasih](https://media1.tenor.com/m/akxGNa8FGBoAAAAd/terima-kasih-sampai-ketemu-lagi.gif)

## License
This project is licensed under the MIT License.
