#include <iostream>
#include <stack>

/*
Initializes the stack for the quicksort function.
*/
void quickSortWR(int arr[], int n) {
    std::stack<std::pair<int, int>> stack;
    stack.push({0, n - 1});

    /* 
    Sets the values in the stack to the left and the right until it is empty
    */
    while (!stack.empty()) {
        int left = stack.top().first;
        int right = stack.top().second;
        stack.pop();

        /*
        If the array is has no elements or the left, is larger that the right then the stack is already sorted so the loop can be skipped
        */
        if (left >= right) continue;

        /*
        A pivot is set as the last value in the right array. 
        The pivot is compaired with all the values and values smaller than it are placed to the left of it.
        If the value compaired to the pivot is larger nothing is swapped.
        */
        int pivot = arr[right];
        int partitionIndex = left;
        for (int i = left; i < right; ++i) {
            if (arr[i] < pivot) {
                std::swap(arr[i], arr[partitionIndex]);
                partitionIndex++;
            }
        }
        //Pivot is swapped to its correct location so all values are smaller on the left and larger on the right
        std::swap(arr[partitionIndex], arr[right]);

        //Stacks are pushed with the left being the values smaller then the pivot and the right being larger than the pivot
        stack.push({left, partitionIndex - 1});
        stack.push({partitionIndex + 1, right});
    }
}


// Driver code with example array
int main() {
    int arr[] = {1, 7, 2, 1, 8, 6, 5, 3, 7, 9, 4};
    int n = sizeof(arr) / sizeof(arr[0]);

    quickSortWR(arr, n);

    std::cout << "Sorted array: ";
    for (int i = 0; i < n; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
    
    return 0;
}

