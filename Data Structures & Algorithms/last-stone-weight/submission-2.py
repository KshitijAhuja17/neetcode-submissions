class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        maxHeap = []
        for i in stones:
            heapq.heappush(maxHeap, -i)

        while len(maxHeap) > 1:
            s1 = heapq.heappop(maxHeap)
            s2 = heapq.heappop(maxHeap)

            heapq.heappush(maxHeap, (s1-s2))
        
        return -maxHeap[0]
        