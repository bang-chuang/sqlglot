SUM(1)
SUM(CASE WHEN x > 1 THEN 1 ELSE 0 END) / y
1
1.0
1E2
1E+2
1E-2
1.1E10
1.12e-10
-11.023E7 * 3
(1 * 2) / (3 - 5)
((TRUE))
''
''''
'x'
'\x'
"x"
""
x
x % 1
x < 1
x <= 1
x > 1
x >= 1
x <> 1
x = y OR x > 1
x & 1
x | 1
x ^ 1
~x
x << 1
x >> 1
x >> 1 | 1 & 1 ^ 1
x || y
1 - -1
dec.x + y
a.filter
a.b.c
a.b.c.d
a.b.c.d.e
a.b.c.d.e[0]
a.b.c.d.e[0].f
a[0][0].b.c[1].d.e.f[1][1]
a[0].b[1]
a[0].b.c['d']
x IN (-1, 1)
x IN ('a', 'a''a')
x BETWEEN -1 AND 1
NOT x IS NULL
x IS TRUE
x IS FALSE
CURRENT_DATE
CURRENT_DATE('UTC')
CURRENT_DATE AT TIME ZONE 'UTC'
ARRAY()
ARRAY(1, 2)
ARRAY_CONTAINS(x, 1)
CONCAT_WS('-', 'a', 'b')
CONCAT_WS('-', 'a', 'b', 'c')
POSEXPLODE("x") AS ("a", "b")
POSEXPLODE("x") AS ("a", "b", "c")
STR_POSITION(x, 'a')
STR_POSITION(x, 'a', 3)
SPLIT(SPLIT(referrer, 'utm_source=')[OFFSET(1)], "&")[OFFSET(0)]
x[ORDINAL(1)][SAFE_OFFSET(2)]
x LIKE SUBSTR('abc', 1, 1)
x LIKE y
x LIKE a.y
x LIKE '%y%'
x ILIKE '%y%'
x LIKE '%y%' ESCAPE '\'
x ILIKE '%y%' ESCAPE '\'
1 AS escape
INTERVAL '1' day
INTERVAL '1' month
INTERVAL '1 day'
INTERVAL 2 months
INTERVAL 1 + 3 days
TIMESTAMP_DIFF(CURRENT_TIMESTAMP(), 1, DAY)
DATETIME_DIFF(CURRENT_DATE(), 1, DAY)
QUANTILE(x, 0.5)
REGEXP_REPLACE('new york', '(\w)(\w*)', x -> UPPER(x[1]) || LOWER(x[2]))
REGEXP_LIKE('new york', '.')
REGEXP_SPLIT('new york', '.')
SPLIT('new york', '.')
REPLACE(1)
DATE(x) = DATE(y)
TIMESTAMP(DATE(x))
TIMESTAMP_TRUNC(COALESCE(time_field, CURRENT_TIMESTAMP()), DAY)
COUNT(DISTINCT CASE WHEN DATE_TRUNC(DATE(time_field), isoweek) = DATE_TRUNC(DATE(time_field2), isoweek) THEN report_id ELSE NULL END)
x[y - 1]
CASE WHEN SUM(x) > 3 THEN 1 END OVER(PARTITION BY x)
SUM(ROW() OVER(PARTITION BY x))
(ROW() OVER())
CASE WHEN (x > 1) THEN 1 ELSE 0 END
CASE (1) WHEN 1 THEN 1 ELSE 0 END
CASE 1 WHEN 1 THEN 1 ELSE 0 END
x AT TIME ZONE 'UTC'
CAST('2025-11-20 00:00:00+00' AS TIMESTAMP) AT TIME ZONE 'Africa/Cairo'
SET x = 1
SET -v
ADD JAR s3://bucket
ADD JARS s3://bucket, c
ADD FILE s3://file
ADD FILES s3://file, s3://a
ADD ARCHIVE s3://file
ADD ARCHIVES s3://file, s3://a
BEGIN IMMEDIATE TRANSACTION
COMMIT
USE db
NOT 1
NOT NOT 1
SELECT * FROM test
SELECT *, 1 FROM test
SELECT * FROM a.b
SELECT * FROM a.b.c
SELECT 1
SELECT 1 FROM test
SELECT * FROM a, b, (SELECT 1) AS c
SELECT a FROM test
SELECT 1 AS filter
SELECT SUM(x) AS filter
SELECT 1 AS range FROM test
SELECT 1 AS count FROM test
SELECT 1 AS comment FROM test
SELECT 1 AS numeric FROM test
SELECT 1 AS number FROM test
SELECT t.count
SELECT DISTINCT x FROM test
SELECT DISTINCT x, y FROM test
SELECT DISTINCT TIMESTAMP_TRUNC(time_field, MONTH) AS time_value FROM "table"
SELECT TIMESTAMP(DATE_TRUNC(DATE(time_field), MONTH)) AS time_value FROM "table"
SELECT GREATEST((3 + 1), LEAST(3, 4))
SELECT TRANSFORM(a, b -> b) AS x
SELECT AGGREGATE(a, (a, b) -> a + b) AS x
SELECT SUM(DISTINCT x)
SELECT SUM(x IGNORE NULLS) AS x
SELECT ARRAY_AGG(DISTINCT x IGNORE NULLS ORDER BY a, b DESC LIMIT 10) AS x
SELECT ARRAY_AGG(STRUCT(x, x AS y) ORDER BY z DESC) AS x
SELECT X((a, b) -> a + b, z -> z) AS x
SELECT X(a -> "a" + ("z" - 1))
SELECT EXISTS(ARRAY(2, 3), x -> x % 2 = 0)
SELECT test.* FROM test
SELECT a AS b FROM test
SELECT "a"."b" FROM "a"
SELECT "a".b FROM a
SELECT a.b FROM "a"
SELECT a.b FROM a
SELECT '"hi' AS x FROM x
SELECT 1 AS "|sum" FROM x
SELECT '\"hi' AS x FROM x
SELECT 1 AS b FROM test
SELECT 1 AS "b" FROM test
SELECT 1 + 1 FROM test
SELECT 1 - 1 FROM test
SELECT 1 * 1 FROM test
SELECT 1 % 1 FROM test
SELECT 1 / 1 FROM test
SELECT 1 < 2 FROM test
SELECT 1 <= 2 FROM test
SELECT 1 > 2 FROM test
SELECT 1 >= 2 FROM test
SELECT 1 <> 2 FROM test
SELECT JSON_EXTRACT(x, '$.name')
SELECT JSON_EXTRACT_SCALAR(x, '$.name')
SELECT x LIKE '%x%' FROM test
SELECT * FROM test LIMIT 100
SELECT * FROM test LIMIT 100 OFFSET 200
SELECT (1 > 2) AS x FROM test
SELECT NOT (1 > 2) FROM test
SELECT 1 + 2 AS x FROM test
SELECT a, b, 1 < 1 FROM test
SELECT a FROM test WHERE NOT FALSE
SELECT a FROM test WHERE a = 1
SELECT a FROM test WHERE a = 1 AND b = 2
SELECT a FROM test WHERE a IN (SELECT b FROM z)
SELECT a FROM test WHERE (a > 1)
SELECT a FROM test WHERE a > (SELECT 1 FROM x GROUP BY y)
SELECT a FROM test WHERE EXISTS(SELECT 1)
SELECT a FROM test WHERE EXISTS(SELECT * FROM x UNION SELECT * FROM Y) OR TRUE
SELECT a FROM test WHERE TRUE OR NOT EXISTS(SELECT * FROM x)
SELECT a AS any, b AS some, c AS all, d AS exists FROM test WHERE a = ANY (SELECT 1)
SELECT a FROM test WHERE a > ALL (SELECT 1)
SELECT a FROM test ORDER BY a
SELECT a FROM test ORDER BY a, b
SELECT x FROM tests ORDER BY a DESC, b DESC, c
SELECT a, b FROM test GROUP BY 1
SELECT a, b FROM test GROUP BY a
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2 ORDER BY a
SELECT a, b FROM test WHERE a = 1 GROUP BY CASE 1 WHEN 1 THEN 1 END
SELECT CASE WHEN a < b THEN 1 WHEN a < c THEN 2 ELSE 3 END FROM test
SELECT CASE 1 WHEN 1 THEN 1 ELSE 2 END
SELECT CASE 1 WHEN 1 THEN MAP('a', 'b') ELSE MAP('b', 'c') END['a']
SELECT CASE 1 + 2 WHEN 1 THEN 1 ELSE 2 END
SELECT CASE TEST(1) + x[0] WHEN 1 THEN 1 ELSE 2 END
SELECT CASE x[0] WHEN 1 THEN 1 ELSE 2 END
SELECT CASE a.b WHEN 1 THEN 1 ELSE 2 END
SELECT CASE CASE x > 1 WHEN TRUE THEN 1 END WHEN 1 THEN 1 ELSE 2 END
SELECT a FROM (SELECT a FROM test) AS x
SELECT a FROM (SELECT a FROM (SELECT a FROM test) AS y) AS x
SELECT a FROM test WHERE a IN (1, 2, 3) OR b BETWEEN 1 AND 4
SELECT a FROM test TABLESAMPLE(BUCKET 1 OUT OF 5)
SELECT a FROM test TABLESAMPLE(BUCKET 1 OUT OF 5 ON x)
SELECT a FROM test TABLESAMPLE(BUCKET 1 OUT OF 5 ON RAND())
SELECT a FROM test TABLESAMPLE(0.1 PERCENT)
SELECT a FROM test TABLESAMPLE(100)
SELECT a FROM test TABLESAMPLE(100 ROWS)
SELECT ABS(a) FROM test
SELECT AVG(a) FROM test
SELECT CEIL(a) FROM test
SELECT COUNT(a) FROM test
SELECT COUNT(1) FROM test
SELECT COUNT(*) FROM test
SELECT COUNT(DISTINCT a) FROM test
SELECT EXP(a) FROM test
SELECT FLOOR(a) FROM test
SELECT FIRST(a) FROM test
SELECT GREATEST(a, b, c) FROM test
SELECT LAST(a) FROM test
SELECT LN(a) FROM test
SELECT LOG10(a) FROM test
SELECT MAX(a) FROM test
SELECT MIN(a) FROM test
SELECT POW(a, 2) FROM test
SELECT QUANTILE(a, 0.95) FROM test
SELECT ROUND(a) FROM test
SELECT ROUND(a, 2) FROM test
SELECT SUM(a) FROM test
SELECT SQRT(a) FROM test
SELECT STDDEV(a) FROM test
SELECT STDDEV_POP(a) FROM test
SELECT STDDEV_SAMP(a) FROM test
SELECT VARIANCE(a) FROM test
SELECT VARIANCE_POP(a) FROM test
SELECT VARIANCE_SAMP(a) FROM test
SELECT CAST(a AS INT) FROM test
SELECT CAST(a AS VARCHAR) FROM test
SELECT CAST(a < 1 AS INT) FROM test
SELECT CAST(a IS NULL AS INT) FROM test
SELECT COUNT(CAST(1 < 2 AS INT)) FROM test
SELECT COUNT(CASE WHEN CAST(1 < 2 AS BOOLEAN) THEN 1 END) FROM test
SELECT CAST(a AS DECIMAL) FROM test
SELECT CAST(a AS DECIMAL(1)) FROM test
SELECT CAST(a AS DECIMAL(1, 2)) FROM test
SELECT CAST(a AS MAP<INT, INT>) FROM test
SELECT CAST(a AS TIMESTAMP) FROM test
SELECT CAST(a AS DATE) FROM test
SELECT CAST(a AS ARRAY<INT>) FROM test
SELECT TRY_CAST(a AS INT) FROM test
SELECT COALESCE(a, b, c) FROM test
SELECT 1 FROM a JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN b AS c ON a.x = b.x
SELECT 1 FROM a INNER JOIN b ON a.x = b.x
SELECT 1 FROM a LEFT JOIN b ON a.x = b.x
SELECT 1 FROM a RIGHT JOIN b ON a.x = b.x
SELECT 1 FROM a CROSS JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN b USING (x)
SELECT 1 FROM a JOIN b USING (x, y, z)
SELECT 1 FROM a JOIN (SELECT a FROM c) AS b ON a.x = b.x AND a.x < 2
SELECT 1 FROM a UNION SELECT 2 FROM b
SELECT 1 FROM a UNION ALL SELECT 2 FROM b
SELECT 1 FROM a JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT INNER JOIN b ON a.foo = b.bar
SELECT 1 FROM a LEFT OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a FULL JOIN b ON a.foo = b.bar
SELECT 1 UNION ALL SELECT 2
SELECT 1 EXCEPT SELECT 2
SELECT 1 EXCEPT DISTINCT SELECT 2
SELECT 1 INTERSECT SELECT 2
SELECT 1 INTERSECT DISTINCT SELECT 2
SELECT 1 AS delete, 2 AS alter
SELECT * FROM ((SELECT 1))
SELECT * FROM (SELECT 1) AS x
SELECT * FROM (SELECT 1 UNION SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2)
SELECT * FROM ((SELECT 1) AS a UNION ALL (SELECT 2) AS b)
SELECT * FROM ((SELECT 1) AS a(b))
SELECT * FROM x AS y(a, b)
SELECT * EXCEPT (a, b)
SELECT * REPLACE (a AS b, b AS C)
SELECT * EXCEPT (a, b) REPLACE (a AS b, b AS C)
SELECT a.* EXCEPT (a, b), b.* REPLACE (a AS b, b AS C)
SELECT zoo, animals FROM (VALUES ('oakland', ARRAY('a', 'b')), ('sf', ARRAY('b', 'c'))) AS t(zoo, animals)
WITH a AS (SELECT 1) SELECT 1 UNION ALL SELECT 2
WITH a AS (SELECT 1) SELECT 1 UNION SELECT 2
WITH a AS (SELECT 1) SELECT 1 INTERSECT SELECT 2
WITH a AS (SELECT 1) SELECT 1 EXCEPT SELECT 2
WITH a AS (SELECT 1) SELECT 1 EXCEPT DISTINCT SELECT 2
(SELECT 1) UNION (SELECT 2)
(SELECT 1) UNION SELECT 2
SELECT 1 UNION (SELECT 2)
(SELECT 1 UNION SELECT 2) UNION (SELECT 2 UNION ALL SELECT 3)
VALUES (1) UNION SELECT * FROM x
WITH a AS (SELECT 1) SELECT a.* FROM a
WITH a AS (SELECT 1), b AS (SELECT 2) SELECT a.*, b.* FROM a CROSS JOIN b
WITH a AS (WITH b AS (SELECT 1 AS x) SELECT b.x FROM b) SELECT a.x FROM a
WITH RECURSIVE T(n) AS (VALUES (1) UNION ALL SELECT n + 1 FROM t WHERE n < 100) SELECT SUM(n) FROM t
WITH RECURSIVE T(n, m) AS (VALUES (1, 2) UNION ALL SELECT n + 1, n + 2 FROM t) SELECT SUM(n) FROM t
WITH baz AS (SELECT 1 AS col) UPDATE bar SET cid = baz.col1 FROM baz
SELECT * FROM (WITH y AS (SELECT 1 AS z) SELECT z FROM y) AS x
SELECT RANK() OVER() FROM x
SELECT RANK() OVER() AS y FROM x
SELECT RANK() OVER(PARTITION BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b) FROM x
SELECT RANK() OVER(ORDER BY a) FROM x
SELECT RANK() OVER(ORDER BY a, b) FROM x
SELECT RANK() OVER(PARTITION BY a ORDER BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b ORDER BY a, b DESC) FROM x
SELECT SUM(x) OVER(PARTITION BY a) AS y FROM x
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND INTERVAL '2' DAYS FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ORDER BY b RANGE BETWEEN INTERVAL '1' DAY PRECEDING AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND PRECEDING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 AND 3)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 FOLLOWING AND 3)
SELECT SUM(x) OVER(PARTITION BY a RANGE BETWEEN 1 FOLLOWING AND UNBOUNDED FOLLOWING)
SELECT LISTAGG(x) WITHIN GROUP (ORDER BY x) AS y
SELECT LISTAGG(x) WITHIN GROUP (ORDER BY x DESC)
SELECT SUM(x) FILTER(WHERE x > 1)
SELECT SUM(x) FILTER(WHERE x > 1) OVER(ORDER BY y)
SELECT COUNT(DISTINCT a) OVER(PARTITION BY c ORDER BY d ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)
SELECT a['1'], b[0], x.c[0], "x".d['1'] FROM x
SELECT ARRAY(1, 2, 3) FROM x
SELECT ARRAY(ARRAY(1), ARRAY(2)) FROM x
SELECT MAP[ARRAY(1), ARRAY(2)] FROM x
SELECT MAP(ARRAY(1), ARRAY(2)) FROM x
SELECT MAX(ARRAY(1, 2, 3)) FROM x
SELECT ARRAY(ARRAY(0))[0][0] FROM x
SELECT MAP[ARRAY('x'), ARRAY(0)]['x'] FROM x
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score, name
SELECT student, score FROM tests LATERAL VIEW OUTER EXPLODE(scores) t AS score, name
SELECT tf.* FROM (SELECT 0) AS t LATERAL VIEW STACK(1, 2) tf
SELECT tf.* FROM (SELECT 0) AS t LATERAL VIEW STACK(1, 2) tf AS col0, col1, col2
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (score)
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (a, b)
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) WITH ORDINALITY AS t (a, b)
SELECT student, score FROM tests CROSS JOIN UNNEST(x.scores) AS t (score)
SELECT student, score FROM tests CROSS JOIN UNNEST(ARRAY(x.scores)) AS t (score)
CREATE TABLE a.b AS SELECT 1
CREATE TABLE a.b AS SELECT a FROM a.c
CREATE TABLE IF NOT EXISTS x AS SELECT a FROM d
CREATE TEMPORARY TABLE x AS SELECT a FROM d
CREATE TEMPORARY TABLE IF NOT EXISTS x AS SELECT a FROM d
CREATE VIEW x AS SELECT a FROM b
CREATE VIEW IF NOT EXISTS x AS SELECT a FROM b
CREATE OR REPLACE VIEW x AS SELECT *
CREATE OR REPLACE TEMPORARY VIEW x AS SELECT *
CREATE TEMPORARY VIEW x AS SELECT a FROM d
CREATE TEMPORARY VIEW IF NOT EXISTS x AS SELECT a FROM d
CREATE TEMPORARY VIEW x AS WITH y AS (SELECT 1) SELECT * FROM y
CREATE TABLE z (a INT, b VARCHAR, c VARCHAR(100), d DECIMAL(5, 3))
CREATE TABLE z (a ARRAY<TEXT>, b MAP<TEXT, DOUBLE>, c DECIMAL(5, 3))
CREATE TABLE z (a INT, b VARCHAR COMMENT 'z', c VARCHAR(100) COMMENT 'z', d DECIMAL(5, 3))
CREATE TABLE z (a INT(11) DEFAULT NULL COMMENT '客户id')
CREATE TABLE z (a INT(11) NOT NULL DEFAULT 1)
CREATE TABLE z (a INT(11) NOT NULL COLLATE utf8_bin AUTO_INCREMENT)
CREATE TABLE z (a INT, PRIMARY KEY(a))
CREATE TABLE z (a INT) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin COMMENT='x'
CREATE TABLE z (a INT DEFAULT NULL, PRIMARY KEY(a)) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin COMMENT='x'
CREATE TABLE z WITH (format = 'parquet') AS SELECT 1
CREATE TABLE z WITH (format = 'ORC', x = '2') AS SELECT 1
CREATE TABLE z (z INT) WITH (partitioned_by = (x INT, y INT))
CREATE TABLE z (z INT) WITH (partitioned_by = (x INT)) AS SELECT 1
CREATE TABLE z AS (WITH cte AS (SELECT 1) SELECT * FROM cte)
CREATE TABLE z AS ((WITH cte AS (SELECT 1) SELECT * FROM cte))
CREATE TEMPORARY FUNCTION f
CREATE TEMPORARY FUNCTION f AS 'g'
CREATE FUNCTION f
CREATE FUNCTION f AS 'g'
CACHE TABLE x
CACHE LAZY TABLE x
CACHE LAZY TABLE x OPTIONS('storageLevel' = 'value')
CACHE LAZY TABLE x OPTIONS('storageLevel' = 'value') AS SELECT 1
CACHE LAZY TABLE x OPTIONS('storageLevel' = 'value') AS WITH a AS (SELECT 1) SELECT a.* FROM a
CACHE LAZY TABLE x AS WITH a AS (SELECT 1) SELECT a.* FROM a
CACHE TABLE x AS WITH a AS (SELECT 1) SELECT a.* FROM a
UNCACHE TABLE x
UNCACHE TABLE IF EXISTS x
INSERT OVERWRITE TABLE a.b PARTITION(ds) SELECT x FROM y
INSERT OVERWRITE TABLE a.b PARTITION(ds='YYYY-MM-DD') SELECT x FROM y
INSERT OVERWRITE TABLE a.b PARTITION(ds, hour) SELECT x FROM y
INSERT OVERWRITE TABLE a.b PARTITION(ds='YYYY-MM-DD', hour='hh') SELECT x FROM y
ALTER TYPE electronic_mail RENAME TO email
ANALYZE a.y
DELETE FROM x WHERE y > 1
DELETE FROM y
DROP TABLE a
DROP TABLE a.b
DROP TABLE IF EXISTS a
DROP TABLE IF EXISTS a.b
DROP VIEW a
DROP VIEW a.b
DROP VIEW IF EXISTS a
DROP VIEW IF EXISTS a.b
SHOW TABLES
EXPLAIN SELECT * FROM x
INSERT INTO x SELECT * FROM y
INSERT INTO x WITH y AS (SELECT 1) SELECT * FROM y
INSERT INTO x.z IF EXISTS SELECT * FROM y
INSERT INTO x VALUES (1, 'a', 2.0)
INSERT INTO x VALUES (1, 'a', 2.0), (1, 'a', 3.0), (X(), y[1], z.x)
INSERT INTO y (a, b, c) SELECT a, b, c FROM x
INSERT OVERWRITE TABLE x IF EXISTS SELECT * FROM y
INSERT OVERWRITE TABLE a.b IF EXISTS SELECT * FROM y
SELECT 1 FROM PARQUET_SCAN('/x/y/*') AS y
UPDATE tbl_name SET foo = 123
UPDATE tbl_name SET foo = 123, bar = 345
UPDATE db.tbl_name SET foo = 123 WHERE tbl_name.bar = 234
UPDATE db.tbl_name SET foo = 123, foo_1 = 234 WHERE tbl_name.bar = 234
TRUNCATE TABLE x
OPTIMIZE TABLE y
WITH a AS (SELECT 1) INSERT INTO b SELECT * FROM a
WITH a AS (SELECT * FROM b) UPDATE a SET col = 1
WITH a AS (SELECT * FROM b) CREATE TABLE b AS SELECT * FROM a
WITH a AS (SELECT * FROM b) DELETE FROM a
WITH a AS (SELECT * FROM b) CACHE TABLE a
SELECT ? AS ? FROM x WHERE b BETWEEN ? AND ? GROUP BY ?, 1 LIMIT ?
WITH a AS ((SELECT b.foo AS foo, b.bar AS bar FROM b) UNION ALL (SELECT c.foo AS foo, c.bar AS bar FROM c)) SELECT * FROM a
WITH a AS ((SELECT 1 AS b) UNION ALL (SELECT 1 AS b)) SELECT * FROM a
SELECT (WITH x AS (SELECT 1 AS y) SELECT * FROM x) AS z
