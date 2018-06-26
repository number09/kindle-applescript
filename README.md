# kindle-applescript

エディタ等他のアプリを使用中に、Kindle for Macのページ移動をするスクリプト

## Arguments

| args | description               |
| ---- | ------------------------- |
| n    | next page(right arrow)    |
| p    | previous page(left arrow) |

## Setting Example(Karabiner-Elements)

```JSON
{
    "description": "volume upでKindleページ送り（次ページ）",
    "manipulators": [
        {
            "from": {
                "consumer_key_code": "volume_increment"
            },
            "to": [
                {
                    "shell_command": "osascript ~/<directory>/kindle-applescript/kindlecontrol.scpt n"
                }
            ],
            "type": "basic"
        }
    ]
},
{
    "description": "volume donwでKindleページ送り（前ページ）",
    "manipulators": [
        {
            "from": {
                "consumer_key_code": "volume_decrement"
            },
            "to": [
                {
                    "shell_command": "osascript ~/<directory>/kindle-applescript/kindlecontrol.scpt p"
                }
            ],
            "type": "basic"
        }
    ]
}


```
