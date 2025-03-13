import sys
import os
# Add the project root to the Python path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Adjust this import depending on your file structure:
from app.app import app  # or from app import app if using __init__.py in the "app" folder

import pytest

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_index(client):
    response = client.get('/')
    assert response.status_code == 200