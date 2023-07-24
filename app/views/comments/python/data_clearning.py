import numpy as np
import pandas as pd
employee = pd.read_csv('/Users/tamilcrea/Desktop/Test.csv');
print(employee)


employee.drop_duplicates(subset="Name", keep="first", inplace= True)
print(employee)



missing = employee.isnull()
print(missing)


print(employee)
employee.isnull


employee = employee.dropna(axis=0)
print(employee)


del employee['Sr.No']



employee['Project'] = employee['Project'].str.replace('mobile', 'Mobile')



employee.columns=['EmployeeName', 'Address', 'Mobile', 'Domain', 'E-mailid']
print(employee)


