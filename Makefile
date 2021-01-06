
TARGET=mapa area

all: $(TARGET)

clean:
	$(RM) $(TARGET)

test: $(TARGET)
	for N in `seq 1 10`; do \
		echo $RANDOM\# | cat localitzacio.csv registre-covid.csv - | ./mapa | ./area \
	done

