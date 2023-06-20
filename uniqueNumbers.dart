void main() {
  List<int> nums = [1,1];

  if (nums.length == 0  || nums.length == 1) {
    print(nums.length);
    return;
  }
  else if (nums.length == 2) {
    print(nums);
    if (nums[0] == nums[1]) {
      print(nums.length-1);
    } else {
      print(nums.length);
    }
    
    return;
  }
  
  nums.sort();
  int count = 0;
  int i = 1;
  
  while (i < nums.length) {

    if (nums[i] == nums[i-1]) {

      int start = i-1;
      int end = i+1;

      for (int ind = i+1; ind < nums.length; ind++) {
        if (nums[ind] == nums[i]) end++;
        else break;
      }

      List<int> repeatedList = nums.sublist(start, end);
      print(repeatedList);
      i = end;
    } 
    else {
      i++;
      count++;
    }
    
  }
  if(i == nums.length) count++;
  print(count);
}