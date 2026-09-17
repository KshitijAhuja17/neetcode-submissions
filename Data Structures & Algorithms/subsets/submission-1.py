class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        
        res = []

        def backtracking(idx, curr):
            res.append(list(curr))

            for i in range(idx, len(nums)):
                curr.append(nums[i])
                backtracking(i+1, curr)
                curr.pop()
        
        backtracking(0, [])
        return res