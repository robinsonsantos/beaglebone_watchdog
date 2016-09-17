#!/usr/bin/env python
# -*- coding: utf-8 -*-


class Watchdog(object):
    
    KEEP_ALIVE = '\n'
    DEVICE = '/dev/watchdog'
    # STOP = 'V' in bleaglebone black not works
    
    def __init__(self):
        pass
    
    def notify(self, device, msg):
        '''
        /dev/watchdog is opened and will reboot unless the watchdog is pinged
        within a certain time.
        
        :param device str: path of watchdog special device
        :param msg str: string to send
        '''         
        with open(device, 'w+') as file:
            file.write(msg)
            file.flush()
    
def main():  
    Watchdog().notify(Watchdog.DEVICE,
                      Watchdog.KEEP_ALIVE)
    
if __name__ == '__main__':
    main()
