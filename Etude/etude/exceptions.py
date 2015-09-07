"""
to be logged, an exception mus'rn be caught in the same function where it was
raised (at least one level)

if it goes through different functions, will it be printed as many times ??
"""


class EmptyAgentException(Exception):
    pass


class TestError(Exception):
    pass


class ExternalErro(Exception):
    pass
