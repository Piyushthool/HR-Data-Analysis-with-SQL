# 🏢 HR Data Analysis – SQL Project

## 📌 Project Overview

This project is based on an **HR dataset** stored in a single table (`employees`) for analyzing employee-related information.
It provides insights into workforce demographics, salary structures, performance, attrition, and recruitment patterns.

The dataset and queries are designed to:

* Explore employee demographics and job roles.
* Analyze salaries, absences, and performance.
* Calculate attrition rates and employment status.
* Identify workforce distribution across departments, states, and managers.
* Practice SQL concepts such as grouping, filtering, case statements, and aggregate functions.

---

## 📂 Dataset (CSV Table)

The repository includes **employees.csv** which contains the following key attributes:

* **Employee Information**: Employee ID, Name, DOB, Gender, Marital Status, Age.
* **Job Details**: Department, Position, Manager Name, Date of Hire, Date of Termination, Employee Status.
* **Compensation**: Salary, Performance Score, Last Performance Review Date.
* **Other Attributes**: Recruitment Source, Absences, Termination Reason, State.

---

## ⚙️ Features Demonstrated

* **Employee Metrics**:

  * Total employees, active vs terminated employees.
  * Average salary and average age.
  * Average years of service in the company.
  * Attrition rate calculation.

* **Demographic Analysis**:

  * Distribution by gender, age groups, and marital status.
  * Workforce count per department, position, and state.
  * Manager-wise employee distribution.

* **Compensation Insights**:

  * Salary ranges and their frequencies.
  * Average salaries by department.
  * Salary distribution by gender.

* **Performance & Absences**:

  * Performance score distribution.
  * Average absences per performance score.
  * Total absences by department.

* **Attrition & Termination Analysis**:

  * Termination reasons and counts.
  * Termination trends by marital status.

* **Recruitment Insights**:

  * Employee count by recruitment source.

---

## 🚀 How to Use

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/hrdata.git
   cd hrdata
   ```

2. Import the **employees.csv** dataset into your database (MySQL, PostgreSQL, or SQLite).

3. Create a database named **`hrdata`** and load the dataset as a table named **`employees`**.

4. Run SQL queries to analyze HR data and generate insights.

---

## 🎯 Example Use Cases

* Calculate **attrition rates** and track employee turnover.
* Find **average salary** and compare across departments.
* Identify **age and salary ranges** of employees.
* Determine which departments have the **most absences**.
* Analyze **recruitment sources** and their effectiveness.
* Measure **performance scores vs absences** trends.

---

## 🛠️ Tools & Technologies

* **SQL (MySQL/PostgreSQL/SQLite compatible)**
* **CSV file** for structured data storage
* **GitHub** for project versioning

---

## 📌 Future Enhancements

* Add visual dashboards for HR analytics (using Tableau, Power BI, or Python libraries).
* Build predictive models for attrition and performance.
* Expand dataset with training, promotions, and benefits information.
* Automate HR reporting using SQL procedures or scripts.

---

## 👨‍💻 Author

Developed by **[Piyush Thool]** ✨
This project is created for **educational and analytical purposes**, focusing on SQL practice with HR datasets.


