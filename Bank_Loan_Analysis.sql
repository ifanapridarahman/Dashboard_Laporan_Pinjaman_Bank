CREATE DATABASE bank_loan
SELECT * FROM bank_loan;
DESCRIBE bank_loan

-- KEY INDEX PERFORMANCE

-- 1. Total Aplikasi Pinjaman
SELECT COUNT(id) AS Total_Aplikasi_Pinjaman FROM bank_loan;

-- Mengubah Tipe Data 
SET SQL_SAFE_UPDATES = 0;
UPDATE bank_loan 
SET issue_date = STR_TO_DATE(issue_date, '%d-%m-%Y');

ALTER TABLE bank_loan
MODIFY COLUMN issue_date DATE;

-- 1.1. Aplikasi Pinjaman MTD (Mont-to_Date)
SELECT COUNT(id) AS Total_Aplikasi_Pinjaman_MTD 
FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

-- 1.2. Aplikasi Pinjaman PMTD (Previous Month-to-Date)
SELECT COUNT(id) AS Total_Aplikasi_Pinjaman_PMTD
FROM bank_loan
WHERE MONTH(issue_date)= 11 AND YEAR(issue_date)=2021

-- 2. Total Dana yang Dicairkan
SELECT * FROM bank_loan;
SELECT SUM(loan_amount) AS Total_Dana_Cair FROM bank_loan

-- 2.1. Total Dana yang Dicairkan MTD 
SELECT SUM(loan_amount) AS Total_Dana_Cair_MTD FROM bank_loan
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021

-- 2.2. Total Dana yang Dicairkan PMTD
SELECT SUM(loan_amount) AS Total_Dana_Cair_PMTD FROM bank_loan
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021

-- 3. Total Jumlah Dana yang Diterima
SELECT SUM(total_payment) AS Jumlah_Dana_Diterima FROM bank_loan

-- 3.1 Total Jumlah Dana yang Diterima MTD
SELECT SUM(total_payment) AS Jumlah_Dana_Diterima_MTD FROM bank_loan
WHERE MONTH(issue_date)=12

-- 3.2 Total Jumlah Dana yang Diterima PMTD
SELECT SUM(total_payment) AS Jumlah_Dana_Diterima_PMTD FROM bank_loan
WHERE MONTH(issue_date)=11

-- 4. Rata-rata Suku Bunga
SELECT AVG(int_rate)*100 AS Rerata_Suku_Bunga FROM bank_loan

-- 4.1 Rata-rata Suku Bunga MTD
SELECT AVG(int_rate)*100 AS Rerata_Suku_Bunga_MTD FROM bank_loan
WHERE MONTH(issue_date)=12

-- 4.2 Rata-rata Suku Bunga PMTD
SELECT AVG(int_rate)*100 AS Rerata_Suku_Bunga_PMTD FROM bank_loan
WHERE MONTH(issue_date)=11

-- 5. Rata-Rata DTI (Debt-to Income)
SELECT AVG(dti)*100 AS Rerata_DTI FROM bank_loan

-- 5.1 Rata-Rata DTI MTD
SELECT AVG(dti)*100 AS Rerata_DTI_MTD FROM bank_loan
WHERE MONTH(issue_date)=12

-- 5.2 Rata-Rata DTI PMTD
SELECT AVG(dti)*100 AS Rerata_DTI_PMTD FROM bank_loan
WHERE MONTH(issue_date)=11

-- GOOD LOAN ISSUED
-- 1. Persentase Pinjaman yang Baik
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Persentase_Pinjaman_Baik
FROM bank_loan

-- 2. Aplikasi Pinjaman yang Baik
SELECT COUNT(id) AS Aplikasi_Pinjaman_Baik FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status='Current'

-- 3. Total Dana yang Dicairkan untuk Pinjaman yang Baik
SELECT SUM(loan_amount) AS DanaCair_Pinjam_Baik FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status='Current'

-- 4. Total Jumlah yang Diterima dari Pinjaman Baik
SELECT SUM(Total_Payment) AS DanaDiterima_Pinjam_Baik FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status='Current'

-- BAD LOAN ISSUED
-- 1. Persentase Pinjaman yang Buruk
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Persentase_Pinjaman_Buruk
FROM bank_loan

-- 2. Aplikasi Pinjaman yang Buruk
SELECT COUNT(id) AS Aplikasi_Pinjaman_Buruk FROM bank_loan
WHERE loan_status = 'Charged Off'

-- 3. Total Dana yang Dicairkan untuk Pinjaman yang Buruk
SELECT SUM(loan_amount) AS DanaCair_Pinjam_Buruk FROM bank_loan
WHERE loan_status = 'Charged Off'

-- 4. Total Jumlah yang Diterima dari Pinjaman Buruk
SELECT SUM(Total_Payment) AS DanaDiterima_Pinjam_Buruk FROM bank_loan
WHERE loan_status = 'Charged Off'

-- LOAN STATUS
SELECT
	loan_status,
    COUNT(id) AS Status_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Dicairkan,
	SUM(total_payment) AS Total_Jumlah_Diterima,
    AVG(int_rate*100) AS Rerata_Bunga,
    AVG(dti*100) AS DTI
FROM bank_loan
GROUP BY
	loan_status

-- LOAN STATUS MTD
SELECT
	loan_status,
    SUM(total_payment) AS Total_Jumlah_Diterima_MTD,
    SUM(loan_amount) AS Total_Dana_Dicairkan_MTD
FROM bank_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

-- BANK LOAN REPORT | OVERVIEW
-- 1. Berdasarkan Bulan
SELECT
	MONTH(issue_date) AS Bulan_ke,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY MONTH(issue_date)
ORDER BY MONTH(issue_date)

-- 2. Berdasarkan Lokasi
SELECT
	address_state AS Lokasi,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY address_state
ORDER BY address_state

-- 3. Berdasarkan Jangka Waktu Pinjaman
SELECT 
	term AS Jangka_Waktu_Pinjaman,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY term
ORDER BY term

-- 4. Berdasarkan Lama Bekerja
SELECT 
	emp_length AS Lama_Bekerja,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY emp_length
ORDER BY emp_length

-- 5. Berdasarkan Tujuan
SELECT
	purpose AS Tujuan,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY purpose
ORDER BY purpose

-- 5.1 Berdasarkan Tujuan dengan Grade A
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose


-- 6. Berdasarkan Kepemilikan Rumah
SELECT
	home_ownership AS Kepemilikan_Rumah,
    COUNT(id) AS Total_Aplikasi_Pinjaman,
    SUM(loan_amount) AS Total_Dana_Cair,
    SUM(total_payment) AS Total_Jumlah_Dana_Diterima
FROM bank_loan
GROUP BY home_ownership
ORDER BY home_ownership

