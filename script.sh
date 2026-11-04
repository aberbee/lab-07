#!bin/bash

for i in {1..4}; do
  test_dir = "./Testcase${i}"
  if [ (diff -u "${test_dir}/Version${i}.1.txt" "${test_dir}/Version${i}.2.txt") != 0 ]; then
    mkdir "./Testcase${i}Diff"
    diff -u "${test_dir}/Version${i}.1.txt" "${test_dir}/Version${i}.2.txt" > "./Testcase${i}Diff/Version${i}Diff.txt"
  fi
done

