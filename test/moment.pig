REGISTER bin/jar/pigsty.jar;
DEFINE MOMENT com.sabre.research.pig.pigsty.MOMENT;
DEFINE DoubleMoment com.sabre.research.pig.pigsty.DoubleMoment;

a = LOAD 'sample' AS (v:double);
g = GROUP a ALL;
b = FOREACH g GENERATE MOMENT(a.v,2) AS moment; 
DUMP b;
