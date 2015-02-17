#UnsafeMemory Shell Script to test harness

echo "Compiling all *.java files"
javac *.java
echo "Compilation Completed"

echo "Testing Synchronized"
java UnsafeMemory Synchronized 8 1000000 127 5 6 3 0 3 5 5 1 4 8 1 3 1 2 1 5 1 2 15 1 3 1 5 1 6 5 8 1 5

echo "Testing Unsynchronized"
java UnsafeMemory Unsynchronized 8 1000000 127 5 6 3 0 3 5 5 1 4 8 1 3 1 2 1 5 1 2 15 1 3 1 5 1 6 5 8 1 5

echo "Testing GetNSet"
java UnsafeMemory GetNSet 8 1000000 127 5 6 3 0 3 5 5 1 4 8 1 3 1 2 1 5 1 2 15 1 3 1 5 1 6 5 8 1 5

echo "Testing BetterSafe"
java UnsafeMemory BetterSafe 8 1000000 127 5 6 3 0 3 5 5 1 4 8 1 3 1 2 1 5 1 2 15 1 3 1 5 1 6 5 8 1 5

echo "Testing BetterSorry"
java UnsafeMemory BetterSorry 8 1000000 127 5 6 3 0 3 5 5 1 4 8 1 3 1 2 1 5 1 2 15 1 3 1 5 1 6 5 8 1 5

echo "Removing *.class files"
rm *.class