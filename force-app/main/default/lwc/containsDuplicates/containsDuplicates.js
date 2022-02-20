/**
 * Example solutions for LeetCode problem 217: contains duplicates
 */

function containsDuplicate(nums) {
  for (let i = 0; i < nums.length; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      if (nums[i] === nums[j]) {
        return true;
      }
    }
  }
  return false;
}

function containsDuplicates(nums) {
  const dupes = new Set();
  for (let i = 0; i < nums.length; i++) {
    if (dupes.has(nums[i])) {
      return true;
    }
    dupes.add(nums[i]);
  }
  return false;
}
