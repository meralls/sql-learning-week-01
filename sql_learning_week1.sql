#payment tablosunda toplam kaç ödeme kaydi olduğunu bulma. 
Select count(*) as toplam_odeme
from payment;

#payment tablosunda kaç farkl ödeme miktar (amount) olduğunu bul.
select distinct amount from payment;
select count(distinct amount) from payment;

#her müşterinin kaç ödeme yaptiğini bul.(yani customer_id baznda kaç tane ödeme var?
SELECT 
    customer_id, COUNT(*) AS ödeme_sayisi
FROM
    payment
GROUP BY customer_id;#hepsini birden sayma,müşterilere göre ayir.
#select count(*) = toplam kaç ödeme var ? count+group by= her müşteri kaç ödeme yapmş?

#payment tablosunda her amount değerinden kaç tane olduğunu bul.
SELECT 
    customer_id,
    COUNT(*) AS odeme_sayisi
FROM payment
GROUP BY customer_id;