# Windows Server

Disk usage:

```
fsutil volume diskfree E:
```

Recursive delete:

```
powershell -Command "Remove-Item 'E:\*' -Recurse -Force"
```
