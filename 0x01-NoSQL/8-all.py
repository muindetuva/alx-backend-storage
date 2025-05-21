#!/usr/bin/env python3
"""
Module: 8-all
Function: list_all
"""


def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection

    Args:
        mongo_collection: pymongo collection object

    Returns:
        List of documents in the collection,
        or an empty list if no documents found
    """
    return list(mongo_collection.find())
