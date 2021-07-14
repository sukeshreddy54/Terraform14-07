resource "aws_route_table" "public-routing-table" {
    vpc_id = "${aws_vpc.myvpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.myvpcgw.id}"
    }

    tags = {
        Name = "public-routing-table"
    }
}

resource "aws_route_table" "private-routing-table" {
    vpc_id = "${aws_vpc.myvpc.id}"

    tags = {
        Name = "private-routing-table"
    }
}

resource "aws_route_table_association" "terraform-public" {
    count = 3
    subnet_id = "${element(aws_subnet.public-subnets.*.id, count.index)}"
    route_table_id = "${aws_route_table.public-routing-table.id}"
}

resource "aws_route_table_association" "terraform-private" {
    count = 3
    subnet_id = "${element(aws_subnet.private-subnets.*.id, count.index)}"
    route_table_id = "${aws_route_table.private-routing-table.id}"
}