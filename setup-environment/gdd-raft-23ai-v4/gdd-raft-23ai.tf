// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0
variable "tenancy_ocid" {
}

variable "region" {
}

variable "compartment_ocid" {
}

variable "ssh_public_key" {
}

# DBSystem specific
variable "db_name_suffix" {
  default = "workshop"
}

variable "db_system_shape" {
  default = "VM.Standard.E4.Flex"
}

variable "cpu_core_count" {
  default = "2"
}

variable "db_system_storage_volume_performance_mode" {
  default = "BALANCED"
}

variable "db_edition" {
  default = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"
}

variable "db_admin_password" {
  default = "WelcomePTS_2024#"
}

variable "db_disk_redundancy" {
  default = "NORMAL"
}

variable "n_character_set" {
  default = "AL16UTF16"
}

variable "character_set" {
  default = "AL32UTF8"
}

variable "db_workload" {
  default = "OLTP"
}

variable "data_storage_size_in_gb" {
  default = "256"
}

variable "license_model" {
  default = "BRING_YOUR_OWN_LICENSE"
}

variable "flex_instance_image_ocid" {
  type = map(string)
  default = {
    af-johannesburg-1 =	"ocid1.image.oc1.af-johannesburg-1.aaaaaaaakjzgqrlxm5yw4trt32cdblwyr5jurlwkai6b45vz7eke4v7iidmq"
    ap-chuncheon-1 =	"ocid1.image.oc1.ap-chuncheon-1.aaaaaaaamu2xnlozrrifi3gaectmwcgxja73im475io5gwa55ycuuf4m2zsa"
    ap-hyderabad-1 =	"ocid1.image.oc1.ap-hyderabad-1.aaaaaaaayaf7qgujzf4ix2kzisx6wicssrjdc7tmer4ouvxeckzcqtijoekq"
    ap-melbourne-1 =	"ocid1.image.oc1.ap-melbourne-1.aaaaaaaajpd5jeoin43f5qwktg7aj7rnc4ff3kgbrrb5vfhxdpoam47qqe7q"
    ap-mumbai-1 =	"ocid1.image.oc1.ap-mumbai-1.aaaaaaaapvhedp2be5jdafz5bn76mfdwrndjvgx2mesiryv3i2fwcoinvcea"
    ap-osaka-1 =	"ocid1.image.oc1.ap-osaka-1.aaaaaaaaiualomw6ftgvw7xlhtoe662mkxv3lfo6nmuld56jiwnorhiau3yq"
    ap-seoul-1 =	"ocid1.image.oc1.ap-seoul-1.aaaaaaaay5mpd53q6j2sclx6x6ztiimsunfr5yhlnmk3vhlpohyb2ot2b3mq"
    ap-singapore-1 =	"ocid1.image.oc1.ap-singapore-1.aaaaaaaak5mye5iepmpopsmb2egd5tbnaarrjv5vrte5stfda7gntukm4haa"
    ap-sydney-1 =	"ocid1.image.oc1.ap-sydney-1.aaaaaaaalsozqnreh73h4kea32g57sso2u4rondfq2dc6fwcehtk3dtww5ua"
    ap-tokyo-1 =	"ocid1.image.oc1.ap-tokyo-1.aaaaaaaapbn2teoahdxlzgkxopuh6sj7lzgey4ws6sqaxgviwm67bkvzd3nq"
    ca-montreal-1 =	"ocid1.image.oc1.ca-montreal-1.aaaaaaaautkl32mizexschisg7ypeniuiu4ge6skwz4sjmcfglzvbz5wcv7q"
    ca-toronto-1 =	"ocid1.image.oc1.ca-toronto-1.aaaaaaaaugig7clqwblhsuuzcyf3mg6pb5nbsytgdorv3pef76qbuds6idmq"
    eu-amsterdam-1 =	"ocid1.image.oc1.eu-amsterdam-1.aaaaaaaazn7dw66iq3srkmcnnrmyxhn5m4co6tyhf2z3tbmamqal67syv57q"
    eu-frankfurt-1 =	"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa6ghfnijiukpf2m323eskeveskzw7l6vpt3iddti5paalgobr3mva"
    eu-madrid-1 =	"ocid1.image.oc1.eu-madrid-1.aaaaaaaai6mf5gnubk4zi7ihb75d3pzso6xtfo6mxw77mv75mbxpqvzcre2q"
    eu-marseille-1 =	"ocid1.image.oc1.eu-marseille-1.aaaaaaaatn3ogwpsutq7jkb3tsy5ypbu3fccocajwbux5mm7k5lvs4ie6gqa"
    eu-milan-1 =	"ocid1.image.oc1.eu-milan-1.aaaaaaaasegmh6aq4v25cszp2litc7ve6fenmc67ixpky7q2e3465znqboaq"
    eu-paris-1 =	"ocid1.image.oc1.eu-paris-1.aaaaaaaa4j54thvol6koluhfcodk63m2ce7uh2ar2xlwuvpb6njj3no4ovoa"
    eu-stockholm-1 =	"ocid1.image.oc1.eu-stockholm-1.aaaaaaaaknopuzgvbp2erx65zohpceafweinur3xr4klisge5ido7tfj65rq"
    eu-zurich-1 =	"ocid1.image.oc1.eu-zurich-1.aaaaaaaaugyczmm73rne55xhszmclw777jc4yqgih5dsydxdnxckvruz4rdq"
    il-jerusalem-1 =	"ocid1.image.oc1.il-jerusalem-1.aaaaaaaabw6rsladamk5qlsfacajtig6bqb2ha36buz7aisriuuoe6cipd2q"
    me-abudhabi-1 =	"ocid1.image.oc1.me-abudhabi-1.aaaaaaaa6h4ts2laydqw4qh7dwnk72siqtgzn3bg4ygbp2tzdj7t6bcv6eta"
    me-dubai-1 =	"ocid1.image.oc1.me-dubai-1.aaaaaaaatbi7meyn6gm4twtwllgv5i4gudazis4ernt2oha4eg3cv5bzoblq"
    me-jeddah-1 =	"ocid1.image.oc1.me-jeddah-1.aaaaaaaakmikhre6afiymichfusscq4h5wg2u2wbvxnjv56u4kenw7zvgjfq"
    mx-monterrey-1 =	"ocid1.image.oc1.mx-monterrey-1.aaaaaaaafkbku7kd7u3llp4cycjkaeiulc63t5rcea3c3uxphby25opqjorq"
    mx-queretaro-1 =	"ocid1.image.oc1.mx-queretaro-1.aaaaaaaa2ocv72bgzyoiwyhs7wu5ev46g7udvnvsghtxputjsedt45zt45hq"
    sa-bogota-1 =	"ocid1.image.oc1.sa-bogota-1.aaaaaaaaantfzzgaz2iqqpyqgimchjj7hbnccr56svhg63ums72ckctquzaq"
    sa-santiago-1 =	"ocid1.image.oc1.sa-santiago-1.aaaaaaaa4gjzszsfn3guuzexl2pjvffpvv3wqgalpvgyscerr2parvidfh2a"
    sa-saopaulo-1 =	"ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaur562gcaxf3cmx4vge6uqi4d6pllzm6jeaew6vzh7oyzbgyix4eq"
    sa-valparaiso-1 =	"ocid1.image.oc1.sa-valparaiso-1.aaaaaaaaoe6zz5hhymbotidgsgxpetzt7sujf4dtia657mta72vhnuerlqsa"
    sa-vinhedo-1 =	"ocid1.image.oc1.sa-vinhedo-1.aaaaaaaapkpcdenpj35fbtfjgtjwcqwaja5rog7uhfhxsvgna76usknmdn6a"
    uk-cardiff-1 =	"ocid1.image.oc1.uk-cardiff-1.aaaaaaaacuj7kcmdoxoalishphxkzc2tn6ycfpt4vunb7372vbmhhlcp2pwq"
    uk-london-1 =	"ocid1.image.oc1.uk-london-1.aaaaaaaadbqqe6slrzawmvf2vm4ua6ylprgegawybejai6jy2byis2ndkb7q"
    us-ashburn-1 =	"ocid1.image.oc1.iad.aaaaaaaa6uqjfy73o5jvx47jvuwhpczh4euram4nxy37744agjoymonbhtrq"
    us-chicago-1 =	"ocid1.image.oc1.us-chicago-1.aaaaaaaacijndwugvlys623ghjl4pzbjadur5btewbu37ribxkr47onirj6a"
    us-phoenix-1 =	"ocid1.image.oc1.phx.aaaaaaaagclqhxdyexq2o3lijdnztuyiowngahf5ud7pus5k72e45r7fkifa"
    us-sanjose-1 =	"ocid1.image.oc1.us-sanjose-1.aaaaaaaaoy3dg6f2w5edbvow2i7yymcyxlswnut5xf5ffad7us2eft6kp7oq"
  }
}

provider "oci" {
#  version = "4.70.0"
  tenancy_ocid     = var.tenancy_ocid
  #user_ocid        = var.user_ocid
  #fingerprint      = var.fingerprint
  #private_key_path = var.private_key_path
  region           = var.region
}

data "oci_identity_availability_domain" "ad" {
  compartment_id = var.tenancy_ocid
  ad_number      = 1
}

# Get DB node list
data "oci_database_db_nodes" "db_nodes" {
  compartment_id = var.compartment_ocid
  db_system_id   = oci_database_db_system.shard1_db.id
}

# Get DB node details
data "oci_database_db_node" "db_node_details" {
  db_node_id = data.oci_database_db_nodes.db_nodes.db_nodes[0]["id"]
}

# Gets the OCID of the first (default) vNIC
#data "oci_core_vnic" "db_node_vnic" {
#    vnic_id = data.oci_database_db_node.db_node_details.vnic_id
#}

data "oci_database_db_homes" "db_homes" {
  compartment_id = var.compartment_ocid
  db_system_id   = oci_database_db_system.shard1_db.id
}

data "oci_database_databases" "databases" {
  compartment_id = var.compartment_ocid
  db_home_id     = data.oci_database_db_homes.db_homes.db_homes[0].db_home_id
}

data "oci_database_db_versions" "shard1_db_versions_by_db_system_id" {
  compartment_id = var.compartment_ocid
  db_system_id   = oci_database_db_system.shard1_db.id
}

data "oci_database_db_system_shapes" "shard1_db_system_shapes" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid

  filter {
    name   = "shape"
    values = [var.db_system_shape]
  }
}

data "oci_database_db_systems" "db_systems" {
  compartment_id = var.compartment_ocid

  filter {
    name   = "id"
    values = [oci_database_db_system.shard1_db.id]
  }
}

resource "oci_core_vcn" "vcn" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "primaryvcn"
  dns_label      = "primaryvcn"
}

resource "oci_core_subnet" "subnet" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  cidr_block          = "10.0.0.0/24"
  display_name        = "subnet1"
  dns_label           = "subnet1"
  security_list_ids   = [oci_core_security_list.ExampleSecurityList.id]
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_vcn.vcn.id
  route_table_id      = oci_core_route_table.route_table.id
  dhcp_options_id     = oci_core_vcn.vcn.default_dhcp_options_id
}

resource "oci_core_internet_gateway" "internet_gateway" {
  compartment_id = var.compartment_ocid
  display_name   = "TFIGDBSystem"
  vcn_id         = oci_core_vcn.vcn.id
}

resource "oci_core_route_table" "route_table" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "TFRouteTableDBSystem"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
  }
}

resource "oci_core_security_list" "ExampleSecurityList" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "TFSecurityList"

  // allow outbound tcp traffic on all ports
  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
  }

  // allow inbound ssh traffic from a specific port
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 1521
      max = 1521
    }
  }
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 1522
      max = 1522
    }
  }
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 6200
      max = 6200
    }
  }
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 8081
      max = 8081
    }
  }
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 443
      max = 443
    }
  }
  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"

    tcp_options {
      min = 22
      max = 22
    }
  }
}

resource "oci_database_db_system" "shard1_db" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  database_edition    = var.db_edition
  db_home {
    database {
      admin_password = var.db_admin_password
      db_name        = "sdb1"
      db_unique_name = "sdb1_${var.db_name_suffix}"
      character_set  = var.character_set
      ncharacter_set = var.n_character_set
      db_workload    = var.db_workload
      pdb_name       = "shard1"
      db_backup_config {
        auto_backup_enabled = false
      }
    }
    db_version   = "23.5.0.24.07"
    display_name = "sdb1"
  }
  db_system_options {
    storage_management = "LVM"
  }
  disk_redundancy         = var.db_disk_redundancy
  shape                   = var.db_system_shape
  cpu_core_count          = var.cpu_core_count
  storage_volume_performance_mode = var.db_system_storage_volume_performance_mode
  subnet_id               = oci_core_subnet.subnet.id
  ssh_public_keys         = [var.ssh_public_key]
  display_name            = "shardhost1"
  hostname                = "shardhost1"
  data_storage_size_in_gb = var.data_storage_size_in_gb
  license_model           = var.license_model
  node_count              = "1"
  private_ip              = "10.0.0.11"
}

resource "oci_database_db_system" "shard2_db" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  database_edition    = var.db_edition
  db_home {
    database {
      admin_password = var.db_admin_password
      db_name        = "sdb2"
      db_unique_name = "sdb2_${var.db_name_suffix}"
      character_set  = var.character_set
      ncharacter_set = var.n_character_set
      db_workload    = var.db_workload
      pdb_name       = "shard2"
      db_backup_config {
        auto_backup_enabled = false
      }
    }
    db_version   = "23.5.0.24.07"
    display_name = "sdb2"
  }
  db_system_options {
    storage_management = "LVM"
  }
  disk_redundancy         = var.db_disk_redundancy
  shape                   = var.db_system_shape
  cpu_core_count          = var.cpu_core_count
  storage_volume_performance_mode = var.db_system_storage_volume_performance_mode
  subnet_id               = oci_core_subnet.subnet.id
  ssh_public_keys         = [var.ssh_public_key]
  display_name            = "shardhost2"
  hostname                = "shardhost2"
  data_storage_size_in_gb = var.data_storage_size_in_gb
  license_model           = var.license_model
  node_count              = "1"
  private_ip              = "10.0.0.12"
}

resource "oci_database_db_system" "shard3_db" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  database_edition    = var.db_edition
  db_home {
    database {
      admin_password = var.db_admin_password
      db_name        = "sdb3"
      db_unique_name = "sdb3_${var.db_name_suffix}"
      character_set  = var.character_set
      ncharacter_set = var.n_character_set
      db_workload    = var.db_workload
      pdb_name       = "shard3"
      db_backup_config {
        auto_backup_enabled = false
      }
    }
    db_version   = "23.5.0.24.07"
    display_name = "sdb3"
  }
  db_system_options {
    storage_management = "LVM"
  }
  disk_redundancy         = var.db_disk_redundancy
  shape                   = var.db_system_shape
  cpu_core_count          = var.cpu_core_count
  storage_volume_performance_mode = var.db_system_storage_volume_performance_mode
  subnet_id               = oci_core_subnet.subnet.id
  ssh_public_keys         = [var.ssh_public_key]
  display_name            = "shardhost3"
  hostname                = "shardhost3"
  data_storage_size_in_gb = var.data_storage_size_in_gb
  license_model           = var.license_model
  node_count              = "1"
  private_ip              = "10.0.0.13"
}

resource "oci_database_db_system" "cata_db" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  database_edition    = var.db_edition
  db_home {
    database {
      admin_password = var.db_admin_password
      db_name        = "catalog"
      db_unique_name = "catalog_${var.db_name_suffix}"
      character_set  = var.character_set
      ncharacter_set = var.n_character_set
      db_workload    = var.db_workload
      pdb_name       = "catapdb"
      db_backup_config {
        auto_backup_enabled = false
      }
    }
    db_version   = "23.5.0.24.07"
    display_name = "catalog"
  }
  db_system_options {
    storage_management = "LVM"
  }
  disk_redundancy         = var.db_disk_redundancy
  shape                   = var.db_system_shape
  cpu_core_count          = var.cpu_core_count
  storage_volume_performance_mode = var.db_system_storage_volume_performance_mode
  subnet_id               = oci_core_subnet.subnet.id
  ssh_public_keys         = [var.ssh_public_key]
  display_name            = "catahost"
  hostname                = "catahost"
  data_storage_size_in_gb = var.data_storage_size_in_gb
  license_model           = var.license_model
  node_count              = "1"
  private_ip              = "10.0.0.10"
}

##
# Create Compute Instance
##
resource "oci_core_instance" "gsm_instance" {
  //count               = var.num_instances
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "gsmhost"
  shape               = "VM.Standard.E4.Flex"
  shape_config {
		memory_in_gbs = "32"
		ocpus = "2"
	}

  create_vnic_details {
    subnet_id = oci_core_subnet.subnet.id
    display_name     = "gsmhost"
    assign_public_ip = true
    hostname_label   = "gsmhost"
    private_ip       = "10.0.0.20"
  }

  source_details {
    source_type = "image"
    source_id   = var.flex_instance_image_ocid[var.region]

  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
    #user_data           = base64encode(file("cata-db.sh"))
  }
}

output "gsmhost_public_ip" {
  value = oci_core_instance.gsm_instance.public_ip
}