#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
sys.path.append('/usr/bin')

#from watchdog import Watchdog

import unittest


class TestWatchdog(unittest.TestCase):
    
    def setUp(self):
        #self._watchdog = Watchdog()
        pass
    
    def test_there_a_device(self):
        self.assertIsInstance(open("/dev/watchdog", "r"), file)
        
    
if __name__ == '__main__':
    unittest.main()
