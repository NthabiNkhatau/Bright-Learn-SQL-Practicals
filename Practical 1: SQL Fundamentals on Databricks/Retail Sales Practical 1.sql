---Q1. Displaying all columns
select * 
from `workspace`.`default`.`retail_sales`;

---Q2.  Displaying specific coloumns only
select `Transaction ID`, Date, `Customer ID`
from `workspace`.`default`.`retail_sales`;

---Q3. Selecting Distinct Product Categories
select Distinct `Product Category`
from `workspace`.`default`.`retail_sales`;

---Q4. Selecting Disticnct Gender
select Distinct Gender
from `workspace`.`default`.`retail_sales`;

---Q4. Selecting Disticnct Gender
select Distinct Gender
from `workspace`.`default`.`retail_sales`;

---Q5. All transactions where Age is above 40
select * 
from `workspace`.`default`.`retail_sales`
Where Age >40;

---Q6. Transactions where price per unit is between 100 and 500 
select * 
from `workspace`.`default`.`retail_sales`
Where `Price per Unit` between 100 and 500;

---Q7. all transactions where the Product Category is either 'Beauty' or'Electronics'
select * 
from `workspace`.`default`.`retail_sales`
Where `Product Category` = 'Beauty' or `Product Category` = 'Electronics';

---Q8. all transactions where the Product Category is not 'Clothing'.
select * 
from `workspace`.`default`.`retail_sales`
Where  `Product Category` != 'Clothing';

---Q9. all transactions where the Quantity is greater than or equal to 3.
select * 
from `workspace`.`default`.`retail_sales`
Where  Quantity >= 3;

---Q10. Counting the total number of transactions - Two possible ways with same result.
select Count (*) AS Total_Transactions
from `workspace`.`default`.`retail_sales`;

select Count (`Transaction ID`) AS Total_Transactions
from `workspace`.`default`.`retail_sales`;

--Q11. Finding the average Age of customers.
select AVG (Age) AS Average_Age
from `workspace`.`default`.`retail_sales`;

--Q12. Calculating the total quantity of products sold.
Select Sum(Quantity) As Total_Quantity
from `workspace`.`default`.`retail_sales`;

----Q12. Calculating the total quantity of products sold.
Select Sum(Quantity) As Total_Quantity
from `workspace`.`default`.`retail_sales`;

----Q13. Maximum Total Amount spent in a single transaction..
Select Max(`Total Amount`) As Max_Total_Amount
from `workspace`.`default`.`retail_sales`;

 ---Q14. Minimum Price per Unit in the dataset.
 Select Min(`Price per Unit`) As Min_Price_per_Unit
from `workspace`.`default`.`retail_sales`;

---Q15.  number of transactions per Product Category.
Select `Product Category`, Count(`Transaction ID`) As Transaction_Count
from `workspace`.`default`.`retail_sales`
Group by `Product Category`;

---Q16. Total revenue (Total Amount) per gender..
Select Gender, Sum(`Total Amount`) As Total_Revenue
from `workspace`.`default`.`retail_sales`
Group by Gender;

---Q17. the average Price per Unit per product category.
Select `Product Category`, AVG(`Price per Unit`) As Average_Price
from `workspace`.`default`.`retail_sales`
Group by `Product Category`;

---Q18. the total revenue by product category where total revenue is greater than10,000.
Select `Product Category`, Sum(`Total Amount`) As Total_Revenue
from `workspace`.`default`.`retail_sales`
Group by `Product Category`
Having `Total_Revenue`>10000;

---Q19. the average quantity per product category where the average is more than 2..
Select `Product Category`, AVG(`Quantity`) As Average_Quantity
from `workspace`.`default`.`retail_sales`
Group by `Product Category`
Having `Average_Quantity`>2;

---Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000,otherwise 'Low'
Select `Transaction ID`,`Total Amount`,
Case When
     `Total Amount`>1000 Then 'High'
      Else 'Low'
End As Spending_Level
from `workspace`.`default`.`retail_sales`;

---Q21.  Two possible ways to Display a new column called Age_Group that labels customers as:
• 'Youth' if Age < 30
• 'Adult' if Age is between 30 and 59
• 'Senior' if Age >= 60

Select `Customer ID`, Age,
Case When Age < 30 Then 'Youth'
     When Age Between 30 and 59 Then 'Adult'
     When Age >=60 Then 'Senior'
End As Age_Group
from `workspace`.`default`.`retail_sales`;

Select `Customer ID`, Age,
Case When Age < 30 Then 'Youth'
     When Age Between 30 and 59 Then 'Adult'
     Else 'Senior'
End As Age_Group
from `workspace`.`default`.`retail_sales`;
