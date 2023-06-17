G:
cd G:\my works new\CMD Batch Files\Youtube download

@echo off
set /p id=Playlist link : 


@echo Formats available
@echo 249          webm       audio only tiny   53k , opus @ 50k (48000Hz), 3.66MiB
@echo 250          webm       audio only tiny   71k , opus @ 70k (48000Hz), 4.68MiB
@echo 140          m4a        audio only tiny  130k , m4a_dash container, mp4a.40.2@128k (44100Hz), 9.31MiB
@echo 251          webm       audio only tiny  136k , opus @160k (48000Hz), 8.51MiB
@echo 278          webm       256x128    144p   80k , webm container, vp9, 30fps, video only, 4.91MiB
@echo 160          mp4        256x128    144p   99k , avc1.4d400c, 30fps, video only, 2.97MiB
@echo 242          webm       426x214    240p  170k , vp9, 30fps, video only, 8.61MiB
@echo 133          mp4        426x214    240p  218k , avc1.4d400d, 30fps, video only, 5.97MiB
@echo 243          webm       640x320    360p  362k , vp9, 30fps, video only, 16.32MiB
@echo 134          mp4        640x320    360p  428k , avc1.4d401e, 30fps, video only, 9.90MiB
@echo 244          webm       854x428    480p  672k , vp9, 30fps, video only, 27.48MiB
@echo 135          mp4        854x428    480p  714k , avc1.4d401f, 30fps, video only, 16.25MiB
@echo 136          mp4        1280x640   720p 1078k , avc1.4d401f, 30fps, video only, 25.30MiB
@echo 247          webm       1280x640   720p 1327k , vp9, 30fps, video only, 52.93MiB
@echo 248          webm       1920x960   1080p 2311k , vp9, 30fps, video only
@echo 137          mp4        1920x960   1080p 3854k , avc1.640028, 30fps, video only
@echo 271          webm       2560x1280  1440p 7146k , vp9, 30fps, video only
@echo 313          webm       3840x1920  2160p 15506k , vp9, 30fps, video only
@echo 18           mp4        640x320    360p  419k , avc1.42001E, mp4a.40.2@ 96k (44100Hz)
@echo 22           mp4        1280x640   720p  480k , avc1.64001F, mp4a.40.2@192k (44100Hz) (best)

set /p form= which format do you want : 
@echo OFF






@echo off

set /p strt= Start downloading from : 

set /p endi= Download upto : 

::set /p retr = How many retries for a download : 




youtube-dl -f %form% %id% --playlist-start %strt% --playlist-end %endi%