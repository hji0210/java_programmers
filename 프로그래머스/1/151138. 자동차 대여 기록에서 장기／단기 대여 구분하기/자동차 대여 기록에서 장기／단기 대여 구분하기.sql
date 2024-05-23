 select history_id , car_id, to_char(start_date, 'RRRR-MM-DD') as start_date,
                            to_char(end_date, 'RRRR-MM-DD') as end_date, 
       case when (end_date - start_date + 1) >= 30 then '장기 대여'
            else '단기 대여'  end as "RENT_TYPE"
 from CAR_RENTAL_COMPANY_RENTAL_HISTORY
 where to_char(start_date, 'RRRR-MM') like '2022-09%'
 order by history_id desc;