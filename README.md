# Transportation Fill Rate Analytics

End-to-end data analytics project simulating Amazon Middle Mile transportation operations. Built to demonstrate SQL analysis, data visualization, and business intelligence skills relevant to transportation analyst roles.

---

## Scenario

A fictional fulfillment network spanning 5 routes out of Phoenix and Tempe, AZ is experiencing a fill rate drop on a key lane. As the analyst, the goal is to investigate the root cause using SQL, quantify the impact, identify the underperforming carrier, and deliver a stakeholder-ready summary with recommendations.

---

## Tools & Technologies

- **MySQL** — data storage, querying, and analysis
- **Excel** — pivot tables, charts, and quick-turn reporting
- **Tableau** — interactive dashboard for stakeholder presentation

---

## Dataset

Simulated dataset covering 90 days of Middle Mile operations:

- 900 shipments across 5 routes
- 5 third-party carriers
- Fields include forecasted volume, actual volume, on-time departure, carrier pickups, and missed pickups

| Table | Description |
|---|---|
| `routes` | Origin/destination lanes and expected transit times |
| `carriers` | Third-party carrier names and regions |
| `shipments` | Daily shipment records with forecasted vs. actual volume |
| `carrier_pickups` | Carrier-level pickup records including missed pickups |

---

## Project Structure

```
transportation-analytics/
├── sql/
│   ├── amazon_transportation_mysql.sql   # Full database setup script
│   ├── task1_baseline_fillrate.sql
│   ├── task2_weekly_trend.sql
│   ├── task3_volume_vs_carrier.sql
│   ├── task4_carrier_breakdown.sql
├── data/
│   │── weekly_fillrate.csv
│   └── carrier_performance.csv
├── visualizations/
│   ├── fillrate_trend.png
│   └── carrier_comparison.png
└── README.md
```

---

## Analysis

### Task 1 — Baseline Fill Rate
Calculated the overall average weekly fill rate for the Phoenix → LA route across all 13 weeks as a performance benchmark.

### Task 2 — Weekly Trend
Broke fill rate down week by week to identify the anomaly. Week [X] showed a significant drop of [X]% below the baseline.

### Task 3 — Volume vs. Carrier Problem
Investigated whether the drop was caused by a demand spike (actual volume exceeding forecast) or a carrier reliability issue (missed pickups). Found [insert finding].

### Task 4 — Carrier Breakdown
Isolated missed pickups by carrier during the problem week. Found that [carrier name] was responsible for [X]% of all missed pickups on the affected route.

### Task 5 — Findings & Recommendation
[Fill in after completing SQL tasks]

---

## Key Findings

> *To be updated after completing SQL analysis*

- Fill rate dropped [X]% during week [X] on the Phoenix → LA route
- Actual volume exceeded forecast by [X]%, indicating a demand spike
- Carrier [name] missed [X] of [X] scheduled pickups during the affected week
- **Recommendation:** [Your recommendation here]

---

## Dashboard

> Tableau dashboard screenshot coming soon

---

## How to Run

1. Open MySQL Workbench
2. Run `sql/amazon_transportation_mysql.sql` to set up the database
3. Execute individual query files in the `sql/` folder in order
4. Open `data/` CSVs in Excel for pivot table analysis
5. Connect Tableau to MySQL or the CSV exports to explore the dashboard

---

## About

Built by [Jesus Ayala](https://linkedin.com/in/jesus-ayala11) as a portfolio project demonstrating data analytics skills for transportation and supply chain analyst roles.
