#include <stdio.h>
#include <stdlib.h>

int trap(int* height, const int heightSize) {
    int left = 0, right = heightSize - 1;
    int leftMax = 0, rightMax = 0;
    int water = 0;
    
    while (left < right) {
        if (height[left] < height[right]) {
            leftMax = height[left] > leftMax ? height[left] : leftMax;
            water += leftMax - height[left];
            left++;
        } else {
            rightMax = height[right] > rightMax ? height[right] : rightMax;
            water += rightMax - height[right];
            right--;
        }
    }
    
    return water;
}

const int main(void) {
    
    static int height[] = {0,1,0,2,1,0,1,3,2,1,2,1};
    const int heightSize = sizeof(height) / sizeof(height[0]);

    printf("%d\n", trap(height, heightSize));
 
    return 0;

}

