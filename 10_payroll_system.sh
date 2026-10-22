#!/bin/bash
# Program 10: Payroll System

echo "======================"
echo "     PAYROLL SYSTEM"
echo "======================"

read -r -p "Enter Employee ID: " emp_id
read -r -p "Enter Employee Name: " emp_name
read -r -p "Enter Basic Salary: " basic

# Validate numeric salary input and require bc for decimal calculations.
if ! [[ "$basic" =~ ^[0-9]+([.][0-9]{1,2})?$ ]]; then
    echo "Invalid salary. Enter a non-negative number (up to 2 decimal places)."
    exit 1
fi

if ! command -v bc >/dev/null 2>&1; then
    echo "Error: 'bc' is required. Please ask your lab administrator to install it."
    exit 1
fi

da=$(echo "scale=2; $basic * 10 / 100" | bc)
hra=$(echo "scale=2; $basic * 20 / 100" | bc)
gross=$(echo "scale=2; $basic + $da + $hra" | bc)

pf=$(echo "scale=2; $basic * 12 / 100" | bc)
tax=$(echo "scale=2; $gross * 5 / 100" | bc)
net=$(echo "scale=2; $gross - $pf - $tax" | bc)

echo
echo "======================"
echo "     SALARY DETAILS"
echo "======================"

echo "Employee ID    : $emp_id"
echo "Employee Name  : $emp_name"
echo "Basic Salary   : $basic"
echo "DA (10%)       : $da"
echo "HRA (20%)      : $hra"
echo "Gross Salary   : $gross"
echo "PF (12%)       : $pf"
echo "Tax (5%)       : $tax"
echo "Net Salary     : $net"
echo "======================"
