# main.py

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class HelloRequest(BaseModel):
    name: str

@app.get("/hello")
def read_hello(name: str = "World"):
    return {"message": f"Hello, {name}!"}

@app.post("/hello")
def create_hello(request: HelloRequest):
    return {"message": f"Hello, {request.name}!"}
