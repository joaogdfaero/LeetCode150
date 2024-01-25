class Solution:
    def climbStairs(self, n: int) -> int:
        # Explanation
        # https://www.youtube.com/watch?v=UUaMrNOvSqg

        if n == 1:
            return 1
        
        if n == 2:
            return 2

        if n == 3:
            return 3

        first_step = 1
        second_step = 2
        totalways = 0

        for i in range(3, n + 1):
            totalways = first_step + second_step
            first_step = second_step
            second_step = totalways
            print(f"i é {i}")
            print(f"totalways é {totalways}")

        return totalways
    
problem = Solution()
problem.climbStairs(5)