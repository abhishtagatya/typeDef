# typeDef

A Terminal Wiki for file types and extensions
> "Know more about the files on your computers!"

Example :

```bash
$ typedef README.md
"Markdown Documentation(.md)"
"John Gruber"
"Developer Files"
"An MD file is a text file created using one of several possible dialects of the Markdown language..."
```

It will get all the information about the file (name, developer, type, description)

## Need It? Install It!

**Requirements**
- [jq](https://stedolan.github.io/jq/) JSON Processor
- [lynx](https://launchpad.net/ubuntu/xenial/+package/xdg-utils) Terminal Browser

```bash
$ sudo apt install jq && sudo apt install lynx
```

**Install the Script**

```bash
$ wget https://raw.githubusercontent.com/abhishtagatya/typeDef/master/typedef
$ sudo install -Dm 755 typedef /usr/bin/typedef
```

## Time to check it out!

typeDef has a couple of options to retrieve data from 'extension.json', so make sure you are connected to the Internet for better user experience

**Info not enough? Go to web!**

```bash
$ typedef --web filename.json
```

This will redirect you to https://fileinfo.com via Lynx browser for full information of the file type. 

**Want a reliable source? Links!**

```bash
$ typedef --link filename.jpg
```

This will give you the link to https://fileinfo.com according to your file type.

**Want new feature? Update It!**

```bash
$ typedef --update
```

This will update your typedef script and install it to '/usr/bin/typedef'

**Stuck? Show Help!**

```bash
$ typedef --help
```

More features are going to be added to make the program better for use!

## Contributions

**Access our 'extension.json'**

We rely on you, the users to become a part of our team to build a complete library of file types to make it usable for every file in existent.

If you want to add some new file types to add, please do it in the following format :

```
"[ext]" : {
  "header" : "[File Name](.ext)",
  "developer" : "[Developer]",
  "category" : "[File Category]",
  "description" : "[Description]"
}
```

And of course, feel free to use access our 'extension.json' because it will be updated frequently

`https://raw.githubusercontent.com/abhishtagatya/typeDef/master/extension.json`

## Knowledge Sources

We decided to get information of files using https://fileinfo.com because of their vast library of file types and descriptions.

We decided to put little bits of that information into the 'extension.json' because there hasn't been a complete library of file extensions in JSON that is publicly usable (but I could be wrong completely).

## Authors
- Abhishta Gatya - Initial Work

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/abhishtagatya/typeDef/blob/master/LICENSE) file for details
