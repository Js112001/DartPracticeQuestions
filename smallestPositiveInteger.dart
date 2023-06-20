void main() {
  int smallestMissing = 1;
  List<int> nums = [0,2,-1,1,5];
  int natural = 1;
  bool entered = false;
  nums.sort();

  for(var i = 0; i < nums.length; i++) {
    if (nums[i] < natural) {
      continue;
    } else {
      if(natural == nums[i]) {
        natural++;
      }
      else {
        smallestMissing = natural;
        entered = true;
        break;
      }
    }
  }

  if(!entered) {
    print(natural);
    return;
  }

  print(smallestMissing); 

}