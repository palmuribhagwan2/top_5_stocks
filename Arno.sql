use arn;
select * from Stocks_Amazon;
select * from Stocks_Apple;
select * from Stocks_Google;
select * from Stocks_Microsoft;
select * from Stocks_Netflix;
select * from Stocks_Tesla;
## 1) Print highest opening and lowest closing value of each month for Google.
Select month(str_to_date(Date,'%y-%m-%d')) as dateformat from Stocks_Google;
Select month(str_to_date(Date,'%y-%m-%d')) as dateformat ,max(open),min(close) from Stocks_Google group by dateformat;

## 2) Find Standard deviation of volume for year of Netflix
select  year(str_to_date(Date,'%y-%m-%d')) as DateFormat, stddev(Volume) from stocks_netflix group by DateFormat;

## 3) Find the difference between the opening values of Amazon and Apple.
select (stocks_amazon.open-stocks_apple.open) as diff from stocks_amazon join stocks_apple on stocks_amazon.Date=stocks_apple.Date

## 4) Find the largest daily return for Amazon (Daily return is calculated by substracting the opening price and closing price)
select Date,(Open-Close) as diff  from stocks_amazon;

## 5) Print the company name with the highest opening value for each day
 select Date, max(Open) from stocks_amazon group by Date;
 select Date, max(Open) from stocks_apple group by Date;
 select Date, max(Open) from stocks_google group by Date;
 select Date, max(Open) from stocks_microsoft group by Date;
 select Date, max(Open) from stocks_netflix group by Date;
 select Date, max(Open) from stocks_tesla group by Date;





