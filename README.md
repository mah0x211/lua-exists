# lua-exists

check whether the specified path exists or not.


## Installation

```
luarocks install exists
```

## type, err = exists( pathname )

`exists` function returns a file type if specified pathname is exists.

**Parameters**

- `pathname:string`: pathname string.

**Returns**

- `type:string`: one of the following; `'file'`, `'directory'`, `'symlink'`, `'character_device'`, `'block_device'`, `'socket'`, `'fifo'`, or `nil` if pathname is not exists.
- `err:error`: `error` object on failure.

**Example**

```lua
local exists = require('exists')
print(exists('/')) -- 'directory'
```
