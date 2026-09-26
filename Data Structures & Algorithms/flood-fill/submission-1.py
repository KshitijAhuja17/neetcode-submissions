class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, color: int) -> List[List[int]]:
        

        directions = [[0,1], [1,0], [-1,0], [0,-1]]
        ROWS, COLS = len(image), len(image[0])
        old = image[sr][sc]

        image[sr][sc] = color

        visit = set()
        q = deque()
        q.append((sr, sc))
        #visit.add((sr,sc))

        while q:
            r, c = q.popleft()
            for dr, dc in directions:
                nr, nc = r+dr, c+dc
                if nr >= 0 and nr < ROWS and nc >= 0 and nc < COLS and image[nr][nc] != color and image[nr][nc] == old:
                    q.append((nr, nc))
                    #visit.add((nr, nc))
                    image[nr][nc] = color
        
        return image
                


