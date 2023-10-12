"""
Sample tests
"""
from django.test import SimpleTestCase

from app import calc


class CaltTests(SimpleTestCase):
    """Test the calc module."""

    def test_add_numbers(self):
        """Test adding numbers together."""
        res = calc.add(5, 6)

        self.assertEqual(res, 11)

    def test_subtruct_numbers(self):
        """Test subtructing numbers."""
        res  = calc.subtruct(10, 15)

        self.assertEqual(res, 5)