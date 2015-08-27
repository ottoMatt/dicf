# -*- coding: utf-8 -*-

import logging
import logging
logging.basicConfig(filename='myapp.log',format='%(levelname)s:%(asctime)s :: %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')
logging.warning('is when this event was logged.')
logging.debug('This message should appear on the console')
logging.info('So should this')
logging.warning('And this, too')