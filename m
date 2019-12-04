Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 231071128B7
	for <lists+linux-mtd@lfdr.de>; Wed,  4 Dec 2019 10:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvheVn1J08D4vCSzg+2AnTioFq8vqVz4SrtV7+8luBE=; b=YDC3pokm/T2Ffi
	hDDBXdGPOfUmcpwYiNdiXx4MluMIuMWcJxxlvhXorMGjreSQVhmraY5tFSYSTqYw6CMyx0HJhO3dc
	0rjUzaRcdNikCKHESU8b4zRaMa8qfCm5va2XvULDrI/isHtanUEoJsDT0jMBlayhqRVcNWBxIyqTP
	OGKyVU4nIpkhIywt3ou1Lrl7APaa/Evjj+BagauG1pl9M3mF6yomA7FcuxBFZeIE+EIvncbO2Dvl8
	1SBOB/pniY1wLQv25wxkz/k88oFlvL3b6zbpvWApe7t2HLrG1p7m5xKbRQ//x1aelIKovxEh9Z2b2
	4JRmKfIGsQBZGo+RIfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRQi-0007g7-Un; Wed, 04 Dec 2019 09:58:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRQa-0007fm-L8
 for linux-mtd@lists.infradead.org; Wed, 04 Dec 2019 09:58:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB49wK8p016153;
 Wed, 4 Dec 2019 03:58:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575453500;
 bh=v67KsIUur8Si5EL8ny/4lycyDOZ3RJik9UeRRMeK4ag=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=djwt+pGOC4J8JY7tgMOZTV9H/i/nPiVLgguqp+eiic/FbY49aq+L3Vr717ZLrKZl/
 TqrfTWDkmKUw9fq2IigN9mcUjl8dXUN+JK+FWUzDpNYk8wXbmQUpu8O3Eu9kxEukaH
 m5azC/MqMNh13JcHseLDtPbFCPJpSUF0UI6Kze7I=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB49wKxa121196
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 4 Dec 2019 03:58:20 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 4 Dec
 2019 03:58:19 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 4 Dec 2019 03:58:19 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB49wF0x112228;
 Wed, 4 Dec 2019 03:58:16 -0600
Subject: Re: [PATCH v5 4/4] mtd: Add driver for concatenating devices
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Tudor Ambarus <Tudor.Ambarus@microchip.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191127105522.31445-1-miquel.raynal@bootlin.com>
 <20191127105522.31445-5-miquel.raynal@bootlin.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <690065a2-619d-3f97-30c6-5dea76896d78@ti.com>
Date: Wed, 4 Dec 2019 15:28:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191127105522.31445-5-miquel.raynal@bootlin.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015836_844108_B3719732 
X-CRM114-Status: GOOD (  26.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On 27/11/19 4:25 pm, Miquel Raynal wrote:
> Introduce a generic way to define concatenated MTD devices. This may
> be very useful in the case of ie. stacked SPI-NOR. Partitions to
> concatenate are described in an additional property of the partitions
> subnode:
> 
>         flash0 {
>                 partitions {
>                         compatible = "fixed-partitions";
>                         part-concat = <&flash0_part1>, <&flash1_part0>;
> 
> 			part0@0 {
> 				label = "part0_0";
> 				reg = <0x0 0x800000>;
> 			};
> 
> 			flash0_part1: part1@800000 {
> 				label = "part0_1";
> 				reg = <0x800000 0x800000>;
> 			};
>                 };
>         };

IIUC flash0 and flash1 are subnodes of a SPI master node?
And I believe flash0 node's compatible is "jedec,spi-nor"?


> 
>         flash1 {
>                 partitions {
>                         compatible = "fixed-partitions";
> 
> 			flash0_part1: part1@0 {

s/flash0_part1/flash1_part0?

> 				label = "part1_0";
> 				reg = <0x0 0x800000>;
> 			};
> 
> 			part0@800000 {
> 				label = "part1_1";
> 				reg = <0x800000 0x800000>;
> 			};
>                 };
>         };
> 

For my understanding, how many /dev/mtdX entries would this create?

Regards
Vignesh

> This is useful for boards where memory range has been extended with
> the use of multiple flash chips as memory banks of a single MTD
> device, with partitions spanning chip borders.
> 
> Suggested-by: Bernhard Frauendienst <kernel@nospam.obeliks.de>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/Kconfig           |   8 ++
>  drivers/mtd/Makefile          |   1 +
>  drivers/mtd/mtd_virt_concat.c | 240 ++++++++++++++++++++++++++++++++++
>  3 files changed, 249 insertions(+)
>  create mode 100644 drivers/mtd/mtd_virt_concat.c
> 
> diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
> index 79a8ff542883..3e1e55e7158f 100644
> --- a/drivers/mtd/Kconfig
> +++ b/drivers/mtd/Kconfig
> @@ -276,6 +276,14 @@ config MTD_PARTITIONED_MASTER
>  	  the parent of the partition device be the master device, rather than
>  	  what lies behind the master.
>  
> +config MTD_VIRT_CONCAT
> +	tristate "Virtual concatenated MTD devices"
> +	help
> +	  This driver allows creation of a virtual MTD device, which
> +	  concatenates multiple physical MTD devices into a single one.
> +	  This is useful to create partitions bigger than the underlying
> +	  physical chips by allowing cross-chip boundaries.
> +
>  source "drivers/mtd/chips/Kconfig"
>  
>  source "drivers/mtd/maps/Kconfig"
> diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
> index 58fc327a5276..c7ee13368a66 100644
> --- a/drivers/mtd/Makefile
> +++ b/drivers/mtd/Makefile
> @@ -27,6 +27,7 @@ obj-$(CONFIG_SSFDC)		+= ssfdc.o
>  obj-$(CONFIG_SM_FTL)		+= sm_ftl.o
>  obj-$(CONFIG_MTD_OOPS)		+= mtdoops.o
>  obj-$(CONFIG_MTD_SWAP)		+= mtdswap.o
> +obj-$(CONFIG_MTD_VIRT_CONCAT)	+= mtd_virt_concat.o
>  
>  nftl-objs		:= nftlcore.o nftlmount.o
>  inftl-objs		:= inftlcore.o inftlmount.o
> diff --git a/drivers/mtd/mtd_virt_concat.c b/drivers/mtd/mtd_virt_concat.c
> new file mode 100644
> index 000000000000..23c7170ac32f
> --- /dev/null
> +++ b/drivers/mtd/mtd_virt_concat.c
> @@ -0,0 +1,240 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Virtual concat MTD device driver
> + *
> + * Copyright (C) 2018 Bernhard Frauendienst
> + * Author: Bernhard Frauendienst <kernel@nospam.obeliks.de>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/device.h>
> +#include <linux/mtd/concat.h>
> +#include <linux/mtd/mtd.h>
> +#include "mtdcore.h"
> +#include <linux/mtd/partitions.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/slab.h>
> +
> +#define CONCAT_PROP "part-concat"
> +#define MIN_DEV_PER_CONCAT 2
> +
> +/**
> + * struct mtd_virt_concat - concatenation container
> + * @vmtd: Virtual mtd_concat device
> + * @count: Number of physical underlaying devices in @devices
> + * @devices: Array of the physical devices used
> + */
> +struct mtd_virt_concat {
> +	struct mtd_info	*vmtd;
> +	unsigned int count;
> +	struct mtd_info	**devices;
> +};
> +
> +/**
> + * struct mtd_virt_concat_node - components of a concatenation
> + * @head: List handle
> + * @count: Number of nodes
> + * @nodes: Pointer to the nodes (partitions) to concatenate
> + * @concat: Concatenation container
> + */
> +struct mtd_virt_concat_node {
> +	struct list_head head;
> +	unsigned int count;
> +	struct device_node **nodes;
> +	struct mtd_virt_concat *concat;
> +};
> +
> +static LIST_HEAD(concat_list);
> +
> +static void mtd_virt_concat_put_mtd_devices(struct mtd_virt_concat *concat)
> +{
> +	int i;
> +
> +	for (i = 0; i < concat->count; i++)
> +		put_mtd_device(concat->devices[i]);
> +}
> +
> +static int mtd_virt_concat_create_join(struct mtd_virt_concat_node *item)
> +{
> +	struct mtd_virt_concat *concat;
> +	struct mtd_info *mtd;
> +	ssize_t name_sz;
> +	char *name;
> +	int ret, i;
> +
> +	concat = kzalloc(sizeof(*concat), GFP_KERNEL);
> +	if (!concat)
> +		return -ENOMEM;
> +
> +	concat->devices = kcalloc(item->count,
> +				  sizeof(*concat->devices),
> +				  GFP_KERNEL);
> +	if (!concat->devices) {
> +		ret = -ENOMEM;
> +		goto free_concat;
> +	}
> +
> +	/* Aggregate the physical devices */
> +	for (i = 0; i < item->count; i++) {
> +		mtd = get_mtd_device_by_node(item->nodes[i]);
> +		if (IS_ERR(mtd)) {
> +			ret = PTR_ERR(mtd);
> +			goto put_mtd_devices;
> +		}
> +
> +		concat->devices[concat->count++] = mtd;
> +	}
> +
> +	/* Create the virtual device */
> +	name_sz = snprintf(NULL, 0, "%s-%s%s-concat",
> +			   concat->devices[0]->name,
> +			   concat->devices[1]->name,
> +			   concat->count > 2 ? "-+" : "");
> +	name = kmalloc(name_sz, GFP_KERNEL);
> +	if (!name) {
> +		ret = -ENOMEM;
> +		goto put_mtd_devices;
> +	}
> +
> +	sprintf(name, "%s-%s%s-concat",
> +		concat->devices[0]->name,
> +		concat->devices[1]->name,
> +		concat->count > 2 ? "-+" : "");
> +
> +	concat->vmtd = mtd_concat_create(concat->devices, concat->count, name);
> +	if (!concat->vmtd) {
> +		ret = -ENXIO;
> +		goto free_name;
> +	}
> +
> +	/* Arbitrary set the first device as parent */
> +	concat->vmtd->dev.parent = &concat->devices[0]->dev;
> +
> +	/* Register the platform device */
> +	ret = mtd_device_register(concat->vmtd, NULL, 0);
> +	if (ret)
> +		goto destroy_concat;
> +
> +	item->concat = concat;
> +
> +	return 0;
> +
> +destroy_concat:
> +	mtd_concat_destroy(concat->vmtd);
> +free_name:
> +	kfree(name);
> +put_mtd_devices:
> +	mtd_virt_concat_put_mtd_devices(concat);
> +free_concat:
> +	kfree(concat);
> +
> +	return ret;
> +}
> +
> +static void mtd_virt_concat_destroy_joins(void)
> +{
> +	struct mtd_virt_concat_node *item, *tmp;
> +
> +	list_for_each_entry_safe(item, tmp, &concat_list, head) {
> +		if (item->concat) {
> +			mtd_device_unregister(item->concat->vmtd);
> +			kfree(item->concat->vmtd->name);
> +			mtd_concat_destroy(item->concat->vmtd);
> +			mtd_virt_concat_put_mtd_devices(item->concat);
> +		}
> +	}
> +}
> +
> +static int mtd_virt_concat_create_item(struct device_node *parts,
> +				       unsigned int count)
> +{
> +	struct mtd_virt_concat_node *item;
> +	int i;
> +
> +	item = kzalloc(sizeof(*item), GFP_KERNEL);
> +	if (!item)
> +		return -ENOMEM;
> +
> +	item->count = count;
> +	item->nodes = kcalloc(count, sizeof(*item->nodes), GFP_KERNEL);
> +	if (!item->nodes) {
> +		kfree(item);
> +		return -ENOMEM;
> +	}
> +
> +	for (i = 0; i < count; i++)
> +		item->nodes[i] = of_parse_phandle(parts, CONCAT_PROP, i);
> +
> +	list_add_tail(&item->head, &concat_list);
> +
> +	return 0;
> +}
> +
> +static void mtd_virt_concat_destroy_items(void)
> +{
> +	struct mtd_virt_concat_node *item, *temp;
> +	int i;
> +
> +	list_for_each_entry_safe(item, temp, &concat_list, head) {
> +		for (i = 0; i < item->count; i++)
> +			of_node_put(item->nodes[i]);
> +
> +		kfree(item->nodes);
> +		kfree(item);
> +	}
> +}
> +
> +static int __init mtd_virt_concat_init(void)
> +{
> +	struct mtd_virt_concat_node *item;
> +	struct device_node *parts = NULL;
> +	int ret = 0, count;
> +
> +	/* List all the concatenations found in DT */
> +	do {
> +		parts = of_find_node_with_property(parts, CONCAT_PROP);
> +		if (!of_device_is_available(parts))
> +			continue;
> +
> +		count = of_count_phandle_with_args(parts, CONCAT_PROP, NULL);
> +		if (count < MIN_DEV_PER_CONCAT)
> +			continue;
> +
> +		ret = mtd_virt_concat_create_item(parts, count);
> +		if (ret) {
> +			of_node_put(parts);
> +			goto destroy_items;
> +		}
> +	} while (parts);
> +
> +	/* TODO: also parse the cmdline */
> +
> +	/* Create the concatenations */
> +	list_for_each_entry(item, &concat_list, head) {
> +		ret = mtd_virt_concat_create_join(item);
> +		if (ret)
> +			goto destroy_joins;
> +	}
> +
> +	return 0;
> +
> +destroy_joins:
> +	mtd_virt_concat_destroy_joins();
> +destroy_items:
> +	mtd_virt_concat_destroy_items();
> +
> +	return ret;
> +}
> +late_initcall(mtd_virt_concat_init);
> +
> +static void __exit mtd_virt_concat_exit(void)
> +{
> +	mtd_virt_concat_destroy_joins();
> +	mtd_virt_concat_destroy_items();
> +}
> +module_exit(mtd_virt_concat_exit);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_AUTHOR("Bernhard Frauendienst <kernel@nospam.obeliks.de>");
> +MODULE_DESCRIPTION("Virtual concat MTD device driver");
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
