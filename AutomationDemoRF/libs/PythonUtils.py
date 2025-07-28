from robot.api.deco import keyword
from datetime import datetime

class PythonUtils:
    @keyword
    def generate_unique_email(self, base="user"):
        timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
        return f"{base}_{timestamp}@example.com"
