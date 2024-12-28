CC=mpic++
RUN=mpirun
SORCE=src
BUILD=build
NP=2
EX=1

all: run

build: clean
	$(CC) $(SORCE)/mpi_$(EX).cpp -o $(BUILD)/$(EX).o

run: build
	$(RUN) --oversubscribe -np $(NP) ./$(BUILD)/$(EX).o

clean:
	rm -rf $(BUILD)/*