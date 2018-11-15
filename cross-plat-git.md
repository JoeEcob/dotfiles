https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_formatting_and_whitespace

## Windows
Convert LF endings into CRLF when you check out code.
```
core.autocrlf=true
```

## Linux
Convert CRLF to LF on commit but not the other way around.
```
core.autocrlf=input
```

This setup should leave you with CRLF endings in Windows checkouts, but LF endings on Mac and Linux systems and in the repository.


###### SHOULD NEVER BE USED
This will set CRLF in the repository. `core.autocrlf=false`

---

## .gitattributes
https://stackoverflow.com/a/10855862
```
# Auto detect text files and perform LF normalization
*        text=auto

*.cs     text diff=csharp
*.java   text diff=java
*.html   text diff=html
*.css    text
*.js     text
*.sql    text

*.csproj text merge=union
*.sln    text merge=union eol=crlf

*.docx   diff=astextplain
*.DOCX   diff=astextplain

# absolute paths are ok, as are globs
/**/postinst* text eol=lf

# paths that don't start with / are treated relative to the .gitattributes folder
relative/path/*.txt text eol=lf
```
