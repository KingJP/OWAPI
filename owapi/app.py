"""
Main OWAPI App.
"""
import json
import logging

from asphalt.core import ContainerComponent

import kyokai
from kyokai.asphalt import KyoukaiComponent
from kyokai.context import HTTPRequestContext

# Fuck your logging config.

logging.basicConfig(filename='/dev/null', level=logging.INFO)

formatter = logging.Formatter('%(asctime)s - [%(levelname)s] %(name)s -> %(message)s')
root = logging.getLogger()

consoleHandler = logging.StreamHandler()
consoleHandler.setFormatter(formatter)
root.addHandler(consoleHandler)

logger = logging.getLogger("OWAPI")


class APIComponent(ContainerComponent):
    """
    Container for other components. I think.
    """

    async def start(self, ctx):
        self.add_component('kyoukai', KyoukaiComponent, ip="127.0.0.1", port=4444,
                           app="app:app", template_renderer=None)
        await super().start(ctx)

        logger.info("Started OWAPI server.")


app = kyokai.Kyokai("owapi")

