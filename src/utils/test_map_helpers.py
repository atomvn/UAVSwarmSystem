import map_helpers

def test_create_waypoints():
    vertices = [(0, 0), (1, 0), (1, 1), (0, 1)]
    width = 20
    height = 10
    waypoints = map_helpers.generate_waypoints(vertices, width, height)


