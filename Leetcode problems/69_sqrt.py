class Solution:
    def mySqrt(self, x: int) -> int:
        if x == 0:
            return 0
        
        if (x == 1) or (x == 2):
            return 1

        # faz um loop de 1 até x
        for num in range(1,x):
            if num * num == x:
                return num
            elif num * num > x:
                return num - 1 