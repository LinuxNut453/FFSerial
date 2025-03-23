FFSerial
FFSerial is a simple, cross-platform tool that converts media files one by one from a designated input folder to avoid overloading your system. Perfect for high-quality video conversion!

Features
✅ Works on Windows, Linux, and macOS
✅ Serial conversion (one file at a time, avoiding system overload)
✅ Supports multiple formats (MP4, MP3, AVI, etc.)
✅ Automatic FFmpeg & wget installation (if missing)
✅ Easy to use— just drop files in the In folder!

Installation:
Download or clone this repository:

git clone https://github.com/YOUR-USERNAME/FFSerial.git
cd FFSerial

Run the setup script:

chmod +x setup_ffmpeg.sh

sudo ./setup_ffmpeg.sh

This will install FFmpeg and wget (if needed) and create the required folders.

Windows users will need to manually complete the FFmpeg setup when prompted.

Usage:
Place media files in the FFSerial/In folder.

Run the script:

chmod +x run_ffmpeg.sh

./run_ffmpeg.sh

Select your desired output format (e.g., MP4, MP3).

Converted files will appear in the FFSerial/Out folder.

License
This project is open-source. You are free to use, modify, and distribute it.

The majority of the code was written by ChatGPT.
