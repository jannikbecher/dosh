# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
radio1 = Usrp.create(ip: "10.0.0.50", model: "N123", assigned: '- free -', status: "down")
radio2 = Usrp.create(ip: "10.0.0.51", model: "N234", assigned: '- free -', status: "down")
radio3 = Usrp.create(ip: "10.0.0.52", model: "B300", assigned: '- free -', status: "down")
radio4 = Usrp.create(ip: "10.0.0.53", model: "N867", assigned: '- free -', status: "down")


n1 = Node.create(nodename: 'Node_1', ip: "10.0.1.5:2376", containers: "5", cpu: "0 / 1", memory: "0 B / 1.021 GiB", docker_version: "1.11.2", status: "down")
n2 = Node.create(nodename: 'Node_2', ip: "10.0.1.8:2376", containers: "3", cpu: "0 / 1", memory: "0 B / 1.021 GiB", docker_version: "1.11.2", status: "down")
n3 = Node.create(nodename: 'Node_3', ip: "10.0.1.35:2376", containers: "10", cpu: "0 / 2", memory: "0 B / 4.021 GiB", docker_version: "1.11.2", status: "down")
n4 = Node.create(nodename: 'Node_4', ip: "10.0.1.124:2376", containers: "40", cpu: "0 / 4", memory: "0 B / 8.021 GiB", docker_version: "1.11.2", status: "down")
