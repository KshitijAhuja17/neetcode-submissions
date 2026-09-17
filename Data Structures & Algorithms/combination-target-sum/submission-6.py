class Solution:
    def combinationSum(self, nums: List[int], target: int) -> List[List[int]]:
        res = []
        subset = []

        def dfs(i, cursum):

            if cursum == target:
                res.append(subset.copy())
                return
            if cursum > target or i >= len(nums):
                return
            
            subset.append(nums[i])
            dfs(i, cursum + nums[i])

            subset.pop()
            dfs(i+1, cursum)
            
        
        dfs(0, 0)
        return res