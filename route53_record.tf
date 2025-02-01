# Create an A record in the hosted zone
resource "aws_route53_record" "emagetech" {
  zone_id    = "Z06639414QTF8GXLZVRH"
  name       = "solomon.portfolio"
  type       = "A"
  ttl        = "300"
  records    = [aws_instance.ec2.public_ip]
  depends_on = [aws_instance.ec2]
}

### aws route53 list-resource-record-sets --hosted-zone-id Z06639414QTF8GXLZVRH --query "ResourceRecordSets" | jq
### aws route53 list-resource-record-sets --hosted-zone-id Z06639414QTF8GXLZVRH --query "ResourceRecordSets[?Type=='A']" | jq
### aws route53 list-resource-record-sets --hosted-zone-id Z06639414QTF8GXLZVRH --query "ResourceRecordSets[?Type=='A' || Type=='CNAME' || Type=='ALIAS'].{Name: Name, Type: Type, Value: ResourceRecords[*].Value}" | jq -r '.[] | "\(.Name) \(.Type) \(.Value[])"'

### Hide the Zone Id
### ZONE_ID=$(aws route53 list-hosted-zones --query "HostedZones[?Name=='emagetech.co.'].Id" --output text | sed 's|/hostedzone/||')
### aws route53 list-resource-record-sets --hosted-zone-id $ZONE_ID --query "ResourceRecordSets[?Type=='A' || Type=='CNAME' || Type=='ALIAS'].{Name: Name, Type: Type, Value: ResourceRecords[*].Value}" | jq -r '.[] | "\(.Name) \(.Type) \(.Value[])"'
