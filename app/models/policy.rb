class Policy
  def initialize(bucket)
    @bucket = bucket
  end
  
  def generate
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": [
            "s3:GetObject"
          ],
          "Effect": "Allow",
          "Resource": "arn:aws:s3:::#{@bucket}/*",
          "Principal": "*"
        },
        {
          "Action": [
            "s3:ListBucket"
          ],
          "Effect": "Allow",
          "Resource": "arn:aws:s3:::#{@bucket}",
          "Principal": "*"
        }
      ]
    }
  end
end