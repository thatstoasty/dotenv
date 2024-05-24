import os
import pathlib


fn load_dotenv() raises -> None:
    var cwd = pathlib.cwd()
    var dotenv_path = cwd.joinpath('.env')
    if not dotenv_path.exists():
        return
    
    var file: String = ""
    with open(dotenv_path, "r") as f:
        file = f.read()
    
    var lines = file.split("\n")
    for line in lines:
        var stripped_line = line[].strip()
        if not stripped_line.startswith('#'):
            var kv = stripped_line.split('=')
            _ = os.setenv(kv[0], kv[1], False)
