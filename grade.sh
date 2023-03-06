CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'
if [[-e ListExamples.java]]
then
    echo 'List Example found'
else 
    echo 'File not found'
fi

# cp TestListExamples.java student-submission
cp student-submission/ListExamples.java ./
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples

