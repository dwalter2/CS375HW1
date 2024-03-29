Q=program1
FLAGS=g++ -Wall -Wextra -std=c++14 -g -DDEBUG

all: $(Q)
	./$(Q) -m MarketPrices.txt -p PriceList.txt

$(Q): $(Q).o
	$(FLAGS) -o $(Q) $(Q).o
$(Q).o: $(Q).cpp
	$(FLAGS) -c $(Q).cpp

run: all
	./$(Q) -m MarketPrices.txt -p PriceList.txt

clean: all
	rm -rf $(Q) *.o
