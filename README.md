# Custom Journey Reporting Dashboard (SFMC Project)

![Dashboard Hero](Screenshots/dashboard.png)

*Custom reporting dashboard built in Salesforce Marketing Cloud using simulated Data Views, SQL Query Activities, and CloudPages.*

---

## Project Overview  
This project demonstrates how to build a custom reporting dashboard in Salesforce Marketing Cloud (SFMC) using SQL Query Activities, simulated Data Views, and a CloudPage.  
Because SFMC Data Views cannot be exported directly, all datasets were simulated using CSV files that mirror real SFMC structures.

The dashboard surfaces:
- Email-level engagement metrics  
- Journey-level aggregated metrics  
- Discount claim counts and claim rate attribution  
- Data transformed using SQL Query Activities  

---

## Scenario  
This is a campaign journey that includes **three promotional emails** sent over two weeks. Each email includes a **“Claim Now”** CTA linking to a CloudPage where customers can claim a discount code.

When clicked, the CloudPage writes a record to **ClaimedDiscountDE**, including the **EmailID** of the triggered email.

The marketer requested a custom report that provides:
- Standard email engagement metrics (Sent, Opens, Clicks)  
- Discount claim counts and claim rate per email  
- Journey-level totals for the entire 3-email campaign  

---

## Data Architecture

### Simulated Data Views  
These CSVs replicate SFMC Data Views:

| Simulated File | SFMC Data View | Description |
|----------------|----------------|-------------|
| `Sent_DV.csv` | `_Sent` | Email sends |
| `Open_DV.csv` | `_Open` | Email opens |
| `Click_DV.csv` | `_Click` | Email clicks |
| `Job_DV.csv` | `_Job` | Job metadata |
| `Journey_DV.csv` | `_Journey` | Simulated journey metadata |
| `Journey_Activity.csv` | `_JourneyActivity` | Simulated activity metadata |

---

### Custom Data Extensions  

| Data Extension | Description |
|----------------|-------------|
| **JourneyDE** | Simulated journey entry audience |
| **ClaimedDiscountDE** | Stores discount claims with EmailID attribution |

---

## Data Extensions (Screenshots)

### Job_DV  
![Job_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Job_DV.png)

### Sent_DV  
![Sent_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Sent_DV.png)

### Open_DV  
![Open_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Open_DV.png)

### Click_DV  
![Click_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Click_DV.png)

### JourneyDE  
![JourneyDE](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/JourneyDE.png)

### Journey_DV  
![Journey_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Journey_DV.png)

### Journey_Activity  
![Journey_Activity](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/Journey_Activity.png)

### ClaimedDiscountDE  
![ClaimedDiscountDE](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Screenshots/ClaimedDiscountDE.png)

---

## SQL Query Activities

### Email-Level Engagement Query  
```sql
-- Paste your SQL here
