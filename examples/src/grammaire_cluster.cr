macro define_method(method_name, content)
  def {{method_name}}
    {{content}}
  end
end

define_method osv(o, s, v), "#{o} #{s} #{v}"
define_method sov(s, o, v), "#{s} #{o} #{v}"
define_method vos(v, o, s), "#{v} #{o} #{s}"

def grammaire_clustre(*args)
  o1, s1, v1, s2, o2, v2,
  v3, o3, s3, s4, o4, v4 = args

  a = osv(o1, s1, v1)
  b = sov(s2, o2, v2)
  c = vos(v3, o3, s3)
  d = sov(s4, o4, v4)

  puts %Q("#{a}, #{b}. #{c}, #{d}")
end

grammaire_clustre(ARGV[0],  ARGV[1],  ARGV[2],
                  ARGV[3],  ARGV[4],  ARGV[5],
                  ARGV[6],  ARGV[7],  ARGV[8],
                  ARGV[9], ARGV[10], ARGV[11])
