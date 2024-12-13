CC = gcc
CFLAGS = -fopenmp -lm
TARGET_DIR = exe
SOURCES1 = mandelbrot.c
SOURCES2 = mandelbrot_omp.c
OBJECTS1 = $(SOURCES1:.c=.o)
OBJECTS2 = $(SOURCES2:.c=.o)
TARGET1 = $(TARGET_DIR)/mandelbrot
TARGET2 = $(TARGET_DIR)/mandelbrot_omp

all: $(TARGET_DIR) $(TARGET1) $(TARGET2)

$(TARGET_DIR):
	mkdir -p $(TARGET_DIR)

$(TARGET1): $(OBJECTS1)
	$(CC) $(CFLAGS) -o $@ $^
	rm -f $(OBJECTS1)

$(TARGET2): $(OBJECTS2)
	$(CC) $(CFLAGS) -o $@ $^
	rm -f $(OBJECTS2)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@



clean:
	rm -rf $(TARGET_DIR)

.PHONY: all clean