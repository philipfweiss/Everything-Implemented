import heapq

def sort_tickers(tickers):
    ## Count how many time each ticker appears by storing indices O(n)
    hash = {}
    for idx, ticker in enumerate(tickers):
        if ticker not in hash:
            hash[ticker] = [idx]
        else:
            hash[ticker].append(idx)

    ## Push tickers from the hash into the heap O(n log n)
    ## Second value in tuple specifies order in heap. The second part of
    ## the sum orders by index. Probably a more elegant way to do this with
    ## a less kludgy heap library.
    h = []
    for key, value in hash.items():
        heapq.heappush(h, (-(len(value) + (.9/(value[0] + 1))), key))

    ## Pop every item off of the heap, put into answer array O(n log n)
    ans = []
    while len(h) > 0:
        print len(h)
        top = heapq.heappop(h)[1]
        ans.append((top, len(hash[top])))

    return ans


print sort_tickers(["BLOM", "GOOG", "BLOM", "GOOG", "MSFT", "APPL"])