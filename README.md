# The GLP-1 Ripple Effect: A Market Impact Analysis

## Overview
An equity research case study examining whether public equity markets 
correctly priced the downstream impact of FDA-approved GLP-1 obesity drugs 
(Wegovy, Mounjaro, Zepbound) on adjacent industries including food & 
beverage, diabetes devices, fast food, fitness, and surgical robotics.

## Central Question
Did the market under or over-react to GLP-1 approvals across adjacent 
sectors — and where do gaps between implied market impact and actual 
revenue data still exist today?

## Key Findings
- **LLY** outperformed the market by +275% — forward-looking pricing that 
  revenue growth is now beginning to justify
- **DXCM** was the clearest mispricing — stock down 28% while revenue grew 
  15%, a 43-point gap driven by fear rather than fundamentals
- **KHC** entered prolonged decline but revenue data suggests the market 
  may have overreacted to the GLP-1 threat
- **MCD and YUM** showed unexpected resilience, challenging the assumption 
  that GLP-1 drugs would uniformly depress fast food consumption
- **Market desensitisation** — each successive FDA approval triggered 
  diminishing market reactions, suggesting a learning curve in how markets 
  process iterative pharmaceutical breakthroughs

## Companies Tracked
| Sector | Tickers |
|---|---|
| GLP-1 Makers | LLY, NVO |
| Diabetes Devices | DXCM, PODD |
| Food & Beverage | KHC, NSRGY, PEP |
| Fast Food | MCD, YUM |
| Fitness | PLNT |
| Surgical Robotics | ISRG |
| Market Benchmark | SPY |

## Key Event Dates
| Event | Date |
|---|---|
| Wegovy FDA approved (obesity) | June 4, 2021 |
| Mounjaro FDA approved (diabetes) | May 13, 2022 |
| Zepbound FDA approved (obesity) | November 8, 2023 |

## Tools & Methods
- **Python / pandas** — data collection and analysis via yfinance
- **SQL / SQLite** — data structuring and querying
- **Matplotlib** — data visualisation
- **Jupyter Notebooks** — analysis environment

## Project Structure
glp1-market-impact-analysis/
│
├── data/
│   ├── raw/          # Source data from yfinance
│   └── processed/    # Cleaned and analysed outputs
├── notebooks/
│   ├── 01_data_collection.ipynb
│   ├── 02_sql_layer.ipynb
│   ├── 03_analysis.ipynb
│   └── 04_fundamental_analysis.ipynb
├── sql/              # Standalone SQL query files
├── visualizations/   # Charts and dashboards
├── report/           # Final written analysis
└── README.md

## Visualisations
Three core charts were produced:
- **Normalised performance chart** — all stocks rebased to 100 at Wegovy 
  approval, showing relative price trajectories over 5 years
- **Correlation chart** — measuring how closely each stock moved with LLY 
  post-approval
- **Event return heatmap** — 30, 60 and 90 day returns after each FDA 
  approval event for all companies

## Status
✅ Complete

## Author
Nicole Otero Meneses — Data Analytics Portfolio Project, 2026