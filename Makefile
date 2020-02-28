#BY KAUZARC
#COMPUTER SCIENCE STUDENT

#A MODIFIER EN FONCTION DU BESOIN

#Compilateur
CC= g++

#Deux dossier doivent etre present dans le meme dossier que le Makefile
#Un dossier contenant les sources
SRC_PATH= src
#Un dossier qui servira a stocker les fichier entre la compilation et le link
BUILD_PATH= build

#Nom des dossier des sources et des header
SRC_FOLDER= src
HEADER_FOLDER = header

#Entree de l'aplication
MAIN= main

#Les extension des fichiers
SRC_EXT= cpp
BUILD_EXT= o

#Differentes option de compilation
#et option de link pour les librairies
CXXFLAGS= -Wall
LIB=
LDFLAGS=
DSO=

#Le nom de l'executable
EXEC= app

#NE PAS MODIFIER LA SUITE !
SRC:= $(wildcard $(SRC_PATH)/$(SRC_FOLDER)/*.$(SRC_EXT))
OBJ:= $(SRC:$(SRC_PATH)/$(SRC_FOLDER)/%.$(SRC_EXT)=$(BUILD_PATH)/%.$(BUILD_EXT))
OBJ:= $(OBJ) $(BUILD_PATH)/$(MAIN).$(BUILD_EXT)

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o  $@ $(DSO) $^ $(LIB)

$(BUILD_PATH)/%.$(BUILD_EXT): $(SRC_PATH)/$(SRC_FOLDER)/%.$(SRC_EXT)
	$(CC) -c $(LDFLAGS) $^ $(CXXFLAGS) -o $@

$(BUILD_PATH)/%.$(BUILD_EXT): $(SRC_PATH)/%.$(SRC_EXT)
	$(CC) -c $(LDFLAGS) $^ $(CXXFLAGS) -o $@

clean:
	rm $(BUILD_PATH)/*.$(BUILD_EXT)
	rm $(EXEC)