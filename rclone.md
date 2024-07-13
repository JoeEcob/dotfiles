# Rclone

```
--transfers 32
--checksum
```

## B2 Speed

Backblaze recommends that you do lots of transfers simultaneously for maximum speed. In tests from my SSD equipped laptop the optimum setting is about --transfers 32 though higher numbers may be used for a slight speed improvement. The optimum number for you may vary depending on your hardware, how big the files are, how much you want to load your computer, etc. The default of --transfers 4 is definitely too low for Backblaze B2 though.

Note that uploading big files (bigger than 200 MiB by default) will use a 96 MiB RAM buffer by default. There can be at most --transfers of these in use at any moment, so this sets the upper limit on the memory used.

https://rclone.org/b2/
