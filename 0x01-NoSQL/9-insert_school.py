#!/usr/bin/env python3
"""
Module: 9-insert_school
Function: insert_school
"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document into a MongoDB collection

    Args:
        mongo_collection: pymongo collection object
        **kwargs: key-value pairs representing the document fields

    Returns:
        The ObjectId of the newly inserted document
    """
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
