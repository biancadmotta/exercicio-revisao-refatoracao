CC=g++
CFLAGS=-Wall
TARGET=main

BUILD_DIR = ./build
SRC_DIR = ./src
INCLUDE_DIR = ./include


${BUILD_DIR}/${TARGET}: ${BUILD_DIR}/Engenheiro.o ${BUILD_DIR}/Vendedor.o ${BUILD_DIR}/main.o
	${CC} ${CFLAGS} -o ${BUILD_DIR}/${TARGET} ${BUILD_DIR}/*.o

${BUILD_DIR}/Engenheiro.o: ${INCLUDE_DIR}/Empregado.hpp ${SRC_DIR}/Engenheiro.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Engenheiro.cpp -o ${BUILD_DIR}/Engenheiro.o

${BUILD_DIR}/Vendedor.o: ${INCLUDE_DIR}/Empregado.hpp ${SRC_DIR}/Vendedor.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Vendedor.cpp -o ${BUILD_DIR}/Vendedor.o

${BUILD_DIR}/main.o: ${INCLUDE_DIR}/Empregado.hpp ${SRC_DIR}/main.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/main.cpp -o ${BUILD_DIR}/main.o

executar: ${BUILD_DIR}/${TARGET}
	@./build/main

clean:
	rm -f ${BUILD_DIR}/* 