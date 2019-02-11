all:
	@echo 'no default'

example:
	@python example/example.py

publish:
	@rm -rf dist/
	@python setup.py sdist
	@twine upload dist/*

freeze:
	@pipreqs etherdelta/ --savepath requirements.txt

docs:
	@pydoc3 etherdelta > doc/README.md
