FFSerial is a simple, cross-platform tool that converts media files one by one from a designated input folder to avoid overloading your system. Perfect for high-quality video conversion!

Features:
✅ Works on Windows, Linux, and macOS
✅ Serial conversion (one file at a time, avoiding system overload)
✅ Supports multiple formats (MP4, MP3, AVI, etc.)
✅ Automatic FFmpeg & wget installation (if missing)
✅ Easy to use— just drop files in the In folder!

NOTE:
If linux returns something like 

Detected OS: Linux

Installing FFmpeg for Linux...

Reading package lists... Done

E: Could not get lock /var/lib/apt/lists/lock. It is held by process 8208 (apt-get)

N: Be aware that removing the lock file is not a solution and may break your system.

E: Unable to lock directory /var/lib/apt/lists/

Setup complete! On Windows, finish installing FFmpeg and restart your terminal.


that means an error occurred, and ffmpeg isn't installed. Run 

$ sudo apt install ffmpeg

If that works, after installation is finished, run $ ffmpeg --version

Installation:

Download or clone this repository:

git clone https://github.com/YOUR-USERNAME/FFSerial.git

cd FFSerial

Run the setup script:

chmod +x setup_ffmpeg.sh

./setup_ffmpeg.sh

This will install FFmpeg and wget (if needed) and create the required folders.

Windows users will need to manually complete the FFmpeg setup when prompted.

OR

Copy the code of setup_ffmpeg.sh and run_ffmpeg.sh, create a new document with notepad or text editor. Copy and paste the two scripts into two diffferent documents, and name them setup_ffmpeg.sh and run_ffmpeg.sh. Move to the folder you have stored them in, eg. $ cd /home/linuxnut453/. Then, give the scripts executable permission, ie. $ chmod +x setup_ffmpeg.sh run_ffmpeg.sh. Next, run setup: $./setup_ffmpeg.sh  Lastly, run the actual script: $ ./run_ffmpeg.sh

Usage:

Place media files in the FFSerial/In folder.

Run the script:

chmod +x run_ffmpeg.sh

./run_ffmpeg.sh

Select your desired output format (e.g., MP4, MP3).

Converted files will appear in the FFSerial/Out folder.

License:
This project is open-source. You are free to use, modify, and distribute it.

The majority of the code was written by ChatGPT.

If you have any issues or suggestions, please feel free to contact me at linuxnut453@gmail.com
