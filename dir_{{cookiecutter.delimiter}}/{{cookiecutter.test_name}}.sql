CREATE PROCEDURE [{{cookiecutter.test_schema_name}}].[{{cookiecutter.test_name}}]
AS
BEGIN
	--ASSEMBLE
	/*Do you need to fake tables and insert rows?*/

	--ACT
	SELECT 
	/*Relevant Column List Here*/
	INTO [{{cookiecutter.test_schema_name}}].ACTUAL
	FROM [SomeObject];

	--ASSERT
	CREATE TABLE [{{cookiecutter.test_schema_name}}].EXPECTED (
		/*Relevant Column Definitions Here*/
	);
	INSERT INTO [{{cookiecutter.test_schema_name}}].EXPECTED (
		/*Relevant Column List Here*/
	) VALUES (
		/*Relevant Values Here*/
	);

	EXECUTE [tSQLt].AssertEqualsTable @Expected = '[{{cookiecutter.test_schema_name}}].EXPECTED', @Actual = '[{{cookiecutter.test_schema_name}}].ACTUAL';

END

