#!/usr/bin/env python3
"""
Module: 11-schools_by_topic
Function: schools_by_topic
"""


def schools_by_topic(mongo_collection, topic):
    """
    Returns a list of school documents that have a specific topic

    Args:
        mongo_collection: pymongo collection object
        topic (str): the topic to search for

    Returns:
        List of matching documents
    """
    return list(mongo_collection.find({"topics": topic}))
