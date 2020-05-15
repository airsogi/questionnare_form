.PHONY: reset
reset:
	@echo ">> bin/rails db:migrate:reset"
	@bin/rails db:migrate:reset RAILS_ENV=development 1>/dev/null
	@echo ">> bin/rails db:seed_fu"
	@bin/rails db:seed_fu --trace # 1>/dev/null
