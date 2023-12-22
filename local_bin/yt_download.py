from pytube import YouTube
import sys


def progress_function(stream, chunk, bytes_remaining):
    filesize = stream.filesize
    current = ((filesize - bytes_remaining)/filesize)
    percent = ('{0:.1f}').format(current*100)
    progress = int(50*current)
    status = '█' * progress + '-' * (50 - progress)
    sys.stdout.write(' ↳ |{bar}| {percent}%\r'.format(bar=status, percent=percent))
    sys.stdout.flush()

def dowload_yt_video(link, name):
  yt = YouTube(link, on_progress_callback=progress_function)
  yt.streams.filter(progressive=True, file_extension='mp4').order_by('resolution').desc().first().download(filename=name)

if __name__ == '__main__':
    link = input("enter youtube video url: ")
    name = input("enter name: ")
    dowload_yt_video(link, name)  
    print()


