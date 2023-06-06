Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"

echo "Save timestamp in output.txt";
date > output.txt;

echo "Copy 1 line in output.txt and paste it in output2.txt";
tail -n 1 ./output.txt > output2.txt;

echo "Concatenate 2 files: output.txt and output2.txt into output3.txt";
cat output.txt output2.txt > output3.txt

echo "In the next examples, errors are generated since normal users are denied access to system
directories. Redirect errors to a file while viewing normal command output on the terminal."
find /etc -name passwd 2> /tmp/errors

echo "Save process output and error messages to separate files.";

find /etc -name passwd > /tmp/output 2> /tmp/errors;

echo "Ignore and discard error messages.";

find /etc -name passwd > /tmp/output 2> /dev/null;

echo "Store output and generated errors together.";

find /etc -name passwd &> /tmp/save-both

echo "Append output and generated errors to an existing file."

find /etc -name passwd >> /tmp/save-both 2>&1

# echo "This example will redirect the output of the ls command to the file and will pass it to less to be
# displayed on the terminal a screen at a time."

# ls -l | tee /tmp/saved-output | less

echo "If tee is used at the end of a pipeline, then the final output of a command can be saved and
output to the terminal at the same time."
ls -t | head -n 10 | tee /tmp/ten-last-changed-files

echo "To view process information, use the ps command. The default is to show only processes in the
current shell. Add the a option to view all processes with a terminal. To view the user associated
with a process, include the u option. The first column shows the username:"
ps au

echo "To view the user associated with a file or directory, use the ls -l command."
ls -l /tmp

echo "remove and write permission for group and other on output.txt file"
chmod go-rw output.txt

echo "add execute permission for everyone on output.txt file"
chmod go-rw output.txt
