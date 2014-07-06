REGISTER bin/jar/pigsty.jar;
DEFINE MOMENT com.sabre.research.pig.pigsty.MOMENT;

a = LOAD 'data/moment' AS (v:double);
g = GROUP a ALL;
b = FOREACH g GENERATE 
        5 AS order: int,
        a;
c = FOREACH b GENERATE
        MOMENT(a,5) AS moment;
ILLUSTRATE c;
DUMP c;
