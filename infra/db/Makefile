DB_USER=postgres
DB_PASS=postgres
DB_HOST=localhost

apply:
	@echo "Applying database schemas..."
	psql -U $(DB_USER) -h $(DB_HOST) -f 001_create_user_schema.sql
	psql -U $(DB_USER) -h $(DB_HOST) -f 002_create_transaction_schema.sql
	psql -U $(DB_USER) -h $(DB_HOST) -f 003_create_budget_schema.sql
	psql -U $(DB_USER) -h $(DB_HOST) -f 004_create_report_schema.sql
	@echo "✅ Database setup completed!"

clean:
	@echo "Dropping all databases..."
	dropdb -U $(DB_USER) user_service
	dropdb -U $(DB_USER) transaction_service
	dropdb -U $(DB_USER) budget_service
	dropdb -U $(DB_USER) report_service
	@echo "✅ All databases dropped!"