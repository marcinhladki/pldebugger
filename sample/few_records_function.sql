create or replace function few_records()
    returns varchar[]
    language plpgsql
as
$$
declare
    r2  varchar[];
    res varchar[];
begin
    select array_agg(gs::date::varchar)
    into r2
    from generate_series('1963-03-14'::date, now(), '1 week'::interval) gs;

    res = r2[1:10];

    return res;
end;
$$;