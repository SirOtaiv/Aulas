import pytest
from src.main import Figura

def test_calcular():
    res = Figura.CalculaArea(10)
    assert res == 100

def test_pegar():
    res = Figura.MostrarLado(10)
    assert res == 10