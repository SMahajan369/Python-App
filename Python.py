from fastapi import Depends, FastAPI
import os

app = FastAPI()

@app.get("/")
def Hello_World():
     return "Hello, World!"
