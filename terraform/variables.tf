variable "region"{
    default="us-east-1"
    type=string
}
var.region

variable "count"{
    default=3
    type=number
}

var.count

variable "conditioncheck"{
    default=true
    type=bool
}

target = var.conditioncheck ? "linux" : "windows"


variable "availabilityzones"{
    default=["us-east-1","us-east2","us-east-3"]
    type=list(string)
     description="Availability zone in AWS"
}

variable "port"{
    default=[8080,9090,999,443]
    type=list(number)
     description="Port"
}

var.availabilityzones[0]

variable "tag"{
   type=map(string)
   default = {
      vm_onwer = "sakshi"
      vm_email_id = "abc@123"
}
     
}

var.tag["vm_onwer"]
var.tag["vm_email_id"]


variable "db_config"{
   type=object({
     serverhost =  string
     serverport = number
     serverurl =  string
   })
   default = {
      serverhost   = "mysql"
      serverport = 3306
      serverurl = "mysql.com"
     
}
     
}

var.db_config.serverhost
var.db_config.serverport
var.db_config.serverurl

variable "db_config"{
   type=tuple([ string, number, string, bool])
   default = ["ram",9,"tira" , true ]
  
     
}
var.db_config[0]
var.db_config[1]
var.db_config[2]


variable "db_config"{
   type=any
   default = 
  
     
}

variable "ami"{
    default="ami-0082bhdjdkdn"
    
}

variable "instance_type"{
    default="t2.micro"
    
}
