# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
radio1 = Usrp.create(ip: "10.0.0.50", model: "N123", assigned: false)
radio2 = Usrp.create(ip: "10.0.0.51", model: "N234", assigned: false)
radio3 = Usrp.create(ip: "10.0.0.52", model: "B300", assigned: false)
radio4 = Usrp.create(ip: "10.0.0.53", model: "N867", assigned: false)



n1 = Node.create(nodename: 'Node_1', ip: "10.0.1.1", os: "Ubuntu 14.04", cert: "/certs/machine1.cert")
n2 = Node.create(nodename: 'Node_2', ip: "10.0.1.1", os: "Ubuntu 14.04", cert: "/certs/machine2.cert")
n3 = Node.create(nodename: 'Node_3', ip: "10.0.1.2", os: "Debian", cert: "/certs/machine3.cert")
n4 = Node.create(nodename: 'Node_4', ip: "10.0.1.3", os: "Open Suse", cert: "/certs/machine4.cert")
