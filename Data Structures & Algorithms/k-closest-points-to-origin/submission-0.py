class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        
        heap = []


        for i in points:
            dist = i[0]**2 + i[1]**2
            if len(heap) < k:
                heapq.heappush(heap, (-dist, (i[0], i[1])))
            elif -heap[0][0] > dist:
                heapq.heappop(heap)
                heapq.heappush(heap, (-dist, (i[0], i[1])))
        
        res = []
        for item in heap:
            x = item[1][0]
            y = item[1][1]
            res.append([x,y])
        
        return res