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
| **CustDE-CampaignAudience** | Simulated journey entry audience |
| **ClaimedDiscountDE** | Stores discount claims with EmailID attribution |

---

## Data Extensions (Screenshots)

### Job_DV  
![Job_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Job_DV.png)

<br><br><br>

### Sent_DV  
![Sent_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Sent_DV.png)

<br><br><br>

### Open_DV  
![Open_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Open_DV.png)

<br><br><br>

### Click_DV  
![Click_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Click_DV.png)

<br><br><br>

### CustDE-CampaignAudience  
![JourneyDE](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/CustDE-CampaignAudience.png)

<br><br><br>

### Journey_DV  
![Journey_DV](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/JourneyDV.png)

<br><br><br>

### Journey_Activity  
![Journey_Activity](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Journey_Activity.png)

<br><br><br>

### ClaimedDiscountDE  
![ClaimedDiscountDE](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/ClaimedDiscounts.png)

---

## SQL Query Activities

### Email-Level Engagement Query  Screenshots

**Total Sent Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-sent.sql)
![Total Sent](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/E-sent.png)

<br><br><br>

**Total Opens Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-opens.sql)
[Total Opens](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/E-opens.png)

<br><br><br>

**TotalClicks Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-clicks.sql)
[Total clicks](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/E-clicks.png)

<br><br><br> 

**Claimed Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-claimed.sql)
[Total Claimed](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/E-claimed.png)
<br><br><br>

**Rates Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-rates.sql)
[Rates](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Rates.png)
<br>

### Journey-Level Engagement Query  Screenshots

**Total Sent Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/j-sent.sql)
![Total Sent](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/j-sent.png)

<br><br><br>

**Total Opens Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/j-opens.sql)
[Total Opens](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/j-opens.png)

<br><br><br>

**TotalClicks Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/j-clicks.sql)
[Total clicks](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/j-clicks.png)

<br><br><br> 

**Claimed Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/e-claimed.sql)
[Total Claimed](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/j-claimed.png)
<br><br><br>

**Rates Query Screenshots**
![View SQL Query](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/SQL-Query-Activities/j-rates.sql)
[Rates](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/j-rates.png)


## Target Data Extensions (Reporting Output Tables)

These Data Extensions store the final reporting results generated by the SQL Query Activities.

---

### EmailEngagementReportingDE  
 
![View Records](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Data/j-rates.sql)

![Journey_Activity](https://raw.githubusercontent.com/WunmiBeks/CustomReporting/main/Images/Journey_Activity.png)
---

### JourneyRollupDE  

**View Records:**  
https://github.com/USERNAME/REPO/blob/BRANCH/Data/JourneyRollupDE.csv

![JourneyRollupDE](Screenshots/JourneyRollupDE.png)
