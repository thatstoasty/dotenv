from dotenv import load_dotenv
import os


fn main() raises:
    load_dotenv()
    print(os.getenv('HELLO'))