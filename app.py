# Arquivo python para testes
from numpy import amin
import streamlit as st

def hello_world() -> str:
    return "Hello, Docker!"

def main():
    st.write(hello_world())

if __name__ == "__main__":
    main()