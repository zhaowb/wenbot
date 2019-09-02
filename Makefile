# see https://packaging.python.org/tutorials/packaging-projects/
#

develop:
	python3 setup.py develop

build-dist:
	rm -rf build/ dist/ *.egg-info/
	python3 setup.py sdist bdist_wheel

publish-test:
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*

publish:
	python3 -m twine upload dist/*
