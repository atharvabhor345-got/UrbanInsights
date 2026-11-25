.PHONY: java dsa assembly coa-demo assembly-demo clean
java:
	cd java-backend && mvn clean package
assembly:
	mkdir -p bin
	nasm -f win64 assembly/severity.asm -o bin/severity.o
	g++ -std=c++17 assembly/severity_runner.cpp bin/severity.o -o bin/severity_runner.exe
coa-demo:
	mkdir -p bin
	nasm -f win64 assembly/coa_demo.asm -o bin/coa_demo.o
	g++ -std=c++17 -Wall -Wextra assembly/coa_demo_runner.cpp bin/coa_demo.o -o bin/coa_demo.exe
assembly-demo:
	mkdir -p bin
	nasm -f win64 assembly/urban_insights_demo.asm -o bin/urban_insights_demo.o
	g++ -std=c++17 -Wall -Wextra assembly/urban_insights_demo.cpp bin/urban_insights_demo.o -o bin/urban_insights_demo.exe

dsa:
	@echo "DSA source files are in dsa/ and remain C++. Compile the required practical with g++."
clean:
	rm -rf java-backend/target bin/severity.o bin/severity_runner.exe bin/coa_demo.o bin/coa_demo.exe bin/urban_insights_demo.o bin/urban_insights_demo.exe
