BIN = libtlog.so
VPATH = src
CFLAGS += -O2 \
					-Wall \
					-Wstrict-prototypes \
					-fno-omit-frame-pointer \
					-Wstrict-aliasing -funwind-tables \
					-Wmissing-prototypes \
					-Wshadow \
					-Wextra \
					-Wno-unused-parameter \
					-Wno-implicit-fallthrough

$(BIN): tlog.o
	$(CC) -shared -o $@ $^

tlog.o: tlog.c tlog.h

clean:
	$(RM) *.o $(BIN)
