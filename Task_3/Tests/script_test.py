import unittest
from .. import script 

class ScriptTest(unittest.TestCase):

    def test_Output(self):
        script.error_monitor()

        file = open("output.txt", 'r')
        expected = open("test_data.txt", 'r')
        assert expected.read()==file.read()
        file.close()
        expected.close()