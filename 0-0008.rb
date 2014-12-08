# Circumscribed Circle of a Triangle
require "matrix"

def calc(x1,y1,x2,y2,x3,y3)
	ra = Vector[x1,y1]
	rb = Vector[x2,y2]
	rc = Vector[x3,y3]
	va = (rb - ra)
	vb = (rc - rb)
	vc = (rb - rc)
	ss = 2 * ( a * b + b * c + c * a) - (a ** 2 + b ** 2 + c ** 2)
	rcc = (a * (b + c - a) * ra + b*(c + a - b) * rb + c * (a + b - c) * rc) / ss
    
    rr = a * b * c / ((a + b + c) * (-a + b + c) * (a + b - c))

    puts rcc[0], rcc[1], rr
end

# ARGF.gets

while line = ARGF.gets do
	puts calc(*line.split.map(&:to_f))
end