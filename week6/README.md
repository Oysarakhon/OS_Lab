# Week - 6 - 7
Oysarakhon Makhmudova;\
Student ID: 12230046;


# Usage

Use this git command to clone project:

```bash
git clone https://github.com/AditelJunior/OsLab.git
```

# Commands 


Save timestamp in output.txt
```bash
date > output.txt;
```

Copy 1 line in output.txt and paste it in output2.txt
```bash
tail -n 1 ./output.txt > output2.txt
```
Concatenate 2 files: output.txt and output2.txt into output3.txt
```bash
cat output.txt output2.txt > output3.txt
```

In the next examples, errors are generated since normal users are denied access to system
directories. Redirect errors to a file while viewing normal command output on the terminal.
```bash
find /etc -name passwd 2> /tmp/errors
```

Save process output and error messages to separate files.
```bash
find /etc -name passwd > /tmp/output 2> /tmp/errors
```
Ignore and discard error messages.
```bash
find /etc -name passwd > /tmp/output 2> /dev/null
```
Store output and generated errors together.
```bash
find /etc -name passwd &> /tmp/save-both
```

Append output and generated errors to an existing file.
```bash
find /etc -name passwd >> /tmp/save-both 2>&1
```
If tee is used at the end of a pipeline, then the final output of a command can be saved and output to the terminal at the same time.
```bash
ls -t | head -n 10 | tee /tmp/ten-last-changed-files
```

To view process information, use the ps command. The default is to show only processes in the
current shell. Add the a option to view all processes with a terminal. To view the user associated with a process, include the u option. The first column shows the username:
```bash
ps au
```
To view the user associated with a file or directory, use the ls -l command.
```bash
ls -l /tmp
```

Remove and write permission for group and other on output.txt file
```bash
chmod go-rw output.txt
```

Add execute permission for everyone on output.txt file
```bash
chmod go-rw output.txt
```


