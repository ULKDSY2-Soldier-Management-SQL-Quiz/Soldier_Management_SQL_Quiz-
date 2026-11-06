SOLDIER MANAGEMENT - POSTGRESQL

Student: Abdulrahman Suliman
Student number: 202510853
Personal values: P = 3, U = 6, M = 4
TEAM MEMBERS
1. Abdulrahman Suliman - 202510853
2. Asim mohamed adam - 202511198
3. abdalrhim ahmed elnor - 202513366
The assignment uses 202510853 for P, U, M and sample service numbers.
GitHub_Comment.txt contains a ready-to-copy team comment; it has not been posted.

RUN IN pgAdmin
1. Connect to your PostgreSQL server and open Query Tool for the postgres database.
2. Run setup_database.sql once, with auto-commit enabled, to create sms_202510853.
   Skip this step if the database already exists. Database creation requires permission.
3. Refresh the database list. Select sms_202510853 and open its Query Tool.
   Creating the database does not automatically switch your current connection.
4. Open sms_202510853.sql and run the whole file once in an empty public schema.
5. Read the query result sets and the two EXPLAIN plans. You can also run the
   SELECT queries individually afterward to inspect each result.
6. Record the actual EXPLAIN observations in the comments for D1.
   To compare before and after, keep the first plan from the initial execution.

OPTIONAL psql COMMANDS
psql -U postgres -d postgres -v ON_ERROR_STOP=1 -f setup_database.sql
psql -U postgres -d sms_202510853 -v ON_ERROR_STOP=1 -f sms_202510853.sql
Replace postgres after -U with your own login if needed.

FILES
setup_database.sql: creates the database; run separately, outside a transaction.
sms_202510853.sql: main assignment with tables, sample data, queries, index and view.
soldiers_seed.sql: separate copy of the replacement B2 data for reference.
ER_Diagram.html: table relationships; open in a browser.
Sample_Results.txt: checked row counts for the replacement dataset.

IMPORTANT RUNNING DETAILS
The main file already includes the seed data. Do not also run soldiers_seed.sql.
Do not rerun table creation and inserts on the populated database.
No DROP statements are included. Use a fresh database/schema for a full rerun.
The identity sequence is restarted at 34 after the explicit IDs 1 through 33.
All personal values are written directly in queries, so no session variables are needed.

POSTGRESQL ADAPTATION
The question paper originally specifies MySQL 8; this version uses PostgreSQL
as requested. Identity columns replace AUTO_INCREMENT. Database selection is
done through the connection rather than USE. current_database() and current_user
replace the MySQL session-information functions.
PostgreSQL EXPLAIN shows plan nodes rather than MySQL type and key columns.
Compare the scan method and any index name. A Seq Scan can remain after indexing
because a full scan can be cheaper for only 33 rows. Do not invent a plan change.

DATA AND VERIFICATION
The 30 seed soldiers and their assignments are fictional replacement data,
created because the teacher's original soldiers_seed.sql was not available.
The main file adds Abdulrahman Suliman and two fictional soldiers, giving 33 total.
The replacement data may produce different results from the teacher's original data.
Query logic and foreign keys were checked using SQLite after syntax adaptation.
A PostgreSQL server/client was not available here, so PostgreSQL execution and
EXPLAIN results have not been verified. Row counts refer to the supplied sample.
The Change Order question was not provided and remains unfilled.
