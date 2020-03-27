BEGIN
for v_loopcounter in 1..50 loop
insert into temp_table(num_col)
values (v_loopcounter);
end loop;
end;
