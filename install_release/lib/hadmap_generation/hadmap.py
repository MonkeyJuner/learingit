#! /usr/bin/python

class Header(object):
    def __init__(self):
        self.revMajor = ""
        self.revMinor = ""
        self.name = ""
        self.version = ""
        self.date = ""
        self.north = 0.0
        self.south = 0.0
        self.east = 0.0
        self.west = 0.0
        self.vendor = "Trunk"
        self.geoReference = ""

class Road(object):
    def __init__(self):
        self.id = ""
        self.junction = -1
        self.link = RoadLink()
        self.laneSections = []

class LaneSection(object):
    def __init__(self):
        self.boundaries = []
        self.lanes = []

class Lane(object):
    def __init__(self):
        self.id = 0
        self.uid = ''
        self.type = 'driving'
        self.turnType = 'noTurn'
        self.speedLimit = 0
        self.link = LaneLink()
        self.centerLine = []
        self.leftBorder = Border()
        self.rightBorder = Border()
        self.signalOverlapGroup = []
        self.objectOverlapGroup = []
        self.junctionOverlapGroup = []
        self.laneOverlapGroup = []

class RoadLink(object):
    def __init__(self):
        self.predecessors = []
        self.successors = []

class RoadTopo(object):
    def __init__(self):
        self.elementType = ''
        self.elementId = ''
        self.contactPoint = ''

class LaneLink(object):
    def __init__(self):
        self.predecessors = []
        self.successors = []

class LaneTopo(object):
    def __init__(self):
        self.id = ''

class CenterPoint(object):
    def __init__(self):
        self.id = ''
        self.heading = 0.0
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
        self.lenIntegral = 0.0

class BorderPoint(object):
    def __init__(self):
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0

class Border(object):
    def __init__(self):
        self.virtual = "FALSE"
        self.type = "solid"
        self.color = "white"
        self.pointSet = []

class Hadmap(object):
    def __init__(self):
        self.header = Header()
        self.roads = []
        self.junctions = []