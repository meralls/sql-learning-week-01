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
select customer_id,first_name,last_name from customer;

#tüm sütunlari getirmek isteyince ise;
select * from customer;

#customer tablosundan first_name ve email sütunlarini getir.
select first_name,email from customer;

#DİSTİNCT ayni değerleri tekrar göstermemedir. 
select distinct amount from payment;

#payment tablosunda kaç farkl customer_id olduğunu listele.
select count(distinct customer_id) from payment;

#AS sütun ismi değiştirme 
select COUNT(*)
from payment;

SELECT COUNT(*) AS toplam_ödeme
from payment;

#payment tablosunda amount+5 hesapla adi da yeni amount olsun.
select amount,amount+5  as 'yeni_amount' from payment;

#aritmetik işlemler 
select amount+2 from payment;
select amount-1 from payment;
select amount*2 from payment;
select amount/2 from payment;

#where sadece şu sarti sağlayanlari getir.
select* from payment 
where amount>5;
#| Operatör | Anlam      |
#| -------- | ---------- |
#| =        | eşittir    |
#| >        | büyüktür   |
#| <        | küçüktür   |
#| >=       | büyük eşit |
#| <=       | küçük eşit |
#| !=       | eşit değil |

#between aralik belirtir. 
select * from payment 
where amount between 2 and 6;

#order by siralama yapar.
#büyüktün küçüğe siralama için DESC kullanilir.
select * from payment
order by amount desc;
#küçükten büyüğe siralama için ASC kullanilir.
select* from payment 
order by amount ASC;

#count() sayma işlemi 
select count(*) from payment;
#filtreli yani şartli yapmak istersek;
select count(*) from payment 
where amount>5;

#group by = verileri gruplara ayir. 
select customer_id,COUNT(*) from payment 
group by customer_id;
select customer_id, count(*) as ödeme_sayisi from payment
group by customer_id;

select customer_id ,sum(amount) as toplam_para from payment 
group by customer_id;

select customer_id, avg(amount) as ortalama from payment 
group by customer_id;

select customer_id ,max(amount) as en_yuksek from payment
group by customer_id ;

select customer_id,count(*) as ödeme_sayisi,sum(amount) as toplam_para,avg(amount) as ortalama from payment 
group by customer_id ;

select amount as eski_amount ,(amount+amount*0.50 ) as yeni_amount from payment ;
select * from film
where special_features='trailers'and rental_duration>4
order by film_id;


select count(film_id),count(distinct film_id) from film 
where rental_duration>4 and special_features='trailers';

select* from payment 
where amount>3.99 and customer_id=1 
order by customer_id;

select * from langauge
WHERE name='english' or name ='italian';


select * from payment 
where amount not in (0.00);
select* from payment
where customer_id=5 and amount>5;

select*from customer 
where store_id=1 and active=1 ;

select * from film
where rental_duration>5 and replacement_cost<20;

select * from payment 
where customer_id=1 or customer_id=2 ;

select* from payment 
where store_id=1 or active=0;

select* from payment
where rating='pg'or rating='r'

