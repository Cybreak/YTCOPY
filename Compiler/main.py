from pytube import YouTube, exceptions
import sys



end = False

def download(url):
    global end
    try: 
        yt = YouTube(url)
        stream = yt.streams.get_by_itag(22)
        output = stream.download(".")
        return(output)
    except exceptions.RegexMatchError:
        print("Invalid URL")
        end = True
    except exceptions.AgeRestrictedError:
        print("Video is Age Restricted")
        end = True
    except:
        print("Unknown Error, Please inform Cybreak on discord")
        end = True

print("Attemping Download...")
out = download(sys.argv[1])
if end is False:
    print(f"Downloaded to {out}")
