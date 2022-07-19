# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
  queries.map do |query|
    points.count { |point| inside?(point, query) }
  end
end

def distance(point_1, point_2)
  x_diff = (point_2[0] - point_1[0])**2
  y_diff = (point_2[1] - point_1[1])**2
  Math.sqrt(x_diff + y_diff)
end

def inside?(point, query)
  dist = distance(point, query[0..1])
  rad = query[-1]
  dist <= rad
end