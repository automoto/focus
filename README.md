## Focus

A simple script for helping you focus. Its a flexible bash script you can turn into an executable and use to minimize distractions and maximize focus for time blocks. Its made to be really flexible and customizable to whatever you want it to do using bash commands.

### How It Works

The script takes in two arguments, the first argument is a number for how many minutes you want to focus and the second argument is a number for how many minutes you want a break. The script will continue execute until you kill it.

Here is an example that would achieve a pomodoro style time block:
`focus 25 5`

I generally use the following pattern for how I structure the script:

Focus time start
1. Notify
2. Remove distractions
3. Wait for time block to be over

Focus time end
1. Notify
2. Pause distraction removal
3. Wait for time block to be over

### How To Use

Simply modify the contents of the `focus.sh` script with what you want your "focus" script to do. See the examples directory for inspiration.

Whenever your ready to run it, you can run it like so: `./focus.sh 30 5`

To install it to your OS and make the command available everywhere to run, simply copy the focus.sh script to your `/usr/local/bin`. You can also just run `make install` and it will do this for you.

_note: you may need to `chmod +x focus.sh` to make it executable_

Then whenever your ready for focused work, you can simply run the `focus` command and pass in the time you amount of minutes you want to focus as the first argument and the time you want to rest as the second argument. 

For a one hour time block with a 5 minute break it would work like so:

`focus 60 5`

Eventually you can add an alias to your `.bashrc` for common time blocks and create shorthand bash commands. I have the following aliases setup:
```
alias focus30="focus 30 3"
alias focus60="focus 60 6"
alias focus90="focus 90 9"
```

So I can simply type `focus30` or `focus60` and it starts my focused time block.

### Working Examples

Currently we have examples that work for Mac OSX (`focus-osx-slack.sh`) that:
1. Sends a native OSX notification that a time block started
2. Kills slack for the specified duration (you might want to add some automation to update your slack status)
3. Re-opens slack and brings it in focus it during a break period. 

I also added a different example that plays a spotify playlist using the `spotify-tui` client in case your interested in playing a specific playlist during focused work. 

### Contributing

Please fork and use the scripts in this repo as you see fit. If you have helpful examples others could use please add it to our `examples` directory, comment it well and submit a pull-request.
