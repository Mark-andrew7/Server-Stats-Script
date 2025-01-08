This project provides a comprehensive bash script to gather and display system statistics. The script includes CPU usage, memory usage, disk usage, top processes by CPU and memory, and additional system information like OS version, uptime, load averages, logged-in users, and failed login attempts.
Features:

    -Display CPU usage.
    -Show memory usage (total, used, free, and percentage used).
    -Summarize disk usage.
    -List the top 5 processes by CPU usage.
    -List the top 5 processes by memory usage.
    -Provide additional information:
        OS version.
        System uptime.
        Load averages.
        Logged-in users.
        Recent failed login attempts.

Requirements:

    -Bash shell.
    -Commands used in the script:
        top
        free
        df
        ps
        uname
        uptime
        who
        grep
        awk
        bc
        tail

    Note: Access to /var/log/auth.log may require root privileges to view failed login attempts.

How to Run:

    Clone the repository:

git clone https://github.com/your-username/Server-Stats-Script.git
cd Server-Stats-Script

Make the script executable:

chmod +x server_stats.sh

Run the script:

./server_stats.sh

Optional: Run the script as root to include failed login attempts:

sudo ./server_stats.sh


Contributing

If you'd like to contribute, feel free to fork the repository and submit a pull request.

Project page URL:
    https://roadmap.sh/projects/server-stats