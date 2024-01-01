HAZESOFT-T3
-----------
This repository contains a simple shell script that creates compressed tar archives of directories for backup purposes. It accepts the path to the directory as an argument during the runtime of the script.

Usage
------

1. Clone the repository:
```bash
git clone https://github.com/your-username/HAZESOFT-T3.git
```
2. Get inside the repository:
```bash
cd HAZESOFT-T3
```
3. Make the script executable:
```bash
sudo chmod +x backup.sh
```
4. Run the script with the path of the directory to back up as an argument:
```bash
./backup.sh /path/to/directory
```
The script will create a compressed tar archive of the specified directory, save it with a timestamped name in the backup directory within the repository, and print a message indicating whether the backup was successful or not.

  Example:

```
./backup.sh /path/to/mydata
Output:
Backup successful! Archive saved as backup/backup_mydata_2024|01|01_12:00:00.tar.gz
```
