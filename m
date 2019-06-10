Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110203BB78
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Jun 2019 19:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBWoyccKdXuimbAf+USGvLED1NJlLVmS4eSoScsnlAQ=; b=EajVwbbweVOpZn
	fmxFa3QHQE/L/vzoPWYBFDa58E/fA35whsbnb6Bha22yyy9AXATCFbroxJ3ED/Xchlyn4EsPTvUt/
	68hiZMqqLLFSHlUnFsFIdLlfGdtP4UrZLkXuYjsxkJINplyD8XKkOdBQDstNnSN1gmnTMgMT3LtpX
	GRMFvLBYwc6Sym23CIVH9QiQT4OiA42ZH4P0CLBd9zHrt/FC30Y5VdaKOTDg+VWixfoKZTFROoeTc
	EAmHW97DnRdWWoPBc1GVkHCaxr1YgyYKBj99JLooFZk3LIJk9MeH9afAnKbK2pMVOMYIGbbuUb4os
	5TC34bTDCiIxlhI+jthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOYB-0000Rd-0q; Mon, 10 Jun 2019 17:57:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOXr-0000Qc-Va
 for linux-mtd@lists.infradead.org; Mon, 10 Jun 2019 17:57:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id p24so7289024lfo.6
 for <linux-mtd@lists.infradead.org>; Mon, 10 Jun 2019 10:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w7LNYq90LegYhl8JEKETZX2CInF9InU6p6H+XwzSLUQ=;
 b=RUH4yRcThZVn7Zyjif6ZYAxUy6j0clDjIXRWK0jKAO5EuHE8j66eMBFGw8dl9zh804
 dk9HKmyGmlj9ucRM+1ifzEfbhD/QvO6eUL3HJlCXqedRmFXz9Ak3VvVtA1UiSpI9bfqP
 raIRFrtBOIvWpgn3l0dhUeK+JQvBaok7qegy8RA2qDKH41TrfyIlUJ/4neVB3x1boS72
 nxmfY75bdJh3l8Mxn+I9xoORqYGSUEzQuVYxwAPnzecByBmFCAEWjZpdF8Ea/NR/4tx3
 C2X0/+Ku3DJ1eDh77TQLXGW4zANil+AuXmI3qz3pCc2/3/l7TKhRVYvKRgtpi4dp+X8e
 jJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=w7LNYq90LegYhl8JEKETZX2CInF9InU6p6H+XwzSLUQ=;
 b=sim47GypmnhLaeiH2JXwzg58bMEOHJCpD8THqjf1h69/49ANLo0ZphGY+IR7gl+HNt
 TywjocczAQ8YxaZVf8YolRRt8kYZGey1hZdMAbNwRrJh8BjLk6kw2pNOw9VKLi/f7AIn
 yUt//Ijq009jX/PV5e9OadOHnsgxMQkiAZymQTs9jQzGeoPShWWGaGHBgCscs2kSIHP+
 CWHhko551xhItrg36T2f3t+DQ5mfzxC6WAExb3sxzwDqzJ0+COmv5yhxylBhETgpPX79
 mxeGeNgbJAHsF6gqzYkqeCGQ13O0tyGaTbshkuShGo+M+CNzn6GumAzU6FYn2xyfbhvn
 4TZQ==
X-Gm-Message-State: APjAAAUKbnoxz26XAnHOyhQyW01KTXWU3vuScmsDbm6LzCt2SD0rKgEO
 PVJUHrROfu8+1hURmQiTLhiptA==
X-Google-Smtp-Source: APXvYqxgkqrqz+o4/aFAG4qef4L+/pAS2eHlqHU22llnCUuR5c3nRAfgYkKwP2HJYew5iQHb0XW4ZA==
X-Received: by 2002:ac2:47fa:: with SMTP id b26mr1037662lfp.82.1560189441079; 
 Mon, 10 Jun 2019 10:57:21 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.86.166])
 by smtp.gmail.com with ESMTPSA id h18sm2114160lfc.40.2019.06.10.10.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 10:57:20 -0700 (PDT)
Subject: Re: [PATCH v5 3/5] mtd: Add support for HyperBus memory devices
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190609103227.24875-1-vigneshr@ti.com>
 <20190609103227.24875-4-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <58e9608d-35ff-0436-6075-b2e4ed4b8594@cogentembedded.com>
Date: Mon, 10 Jun 2019 20:57:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190609103227.24875-4-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_105724_167387_5CBD91AC 
X-CRM114-Status: GOOD (  31.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 06/09/2019 01:32 PM, Vignesh Raghavendra wrote:

> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
> Bus interface between a host system master and one or more slave
> interfaces. HyperBus is used to connect microprocessor, microcontroller,
> or ASIC devices with random access NOR flash memory (called HyperFlash)
> or self refresh DRAM (called HyperRAM).
> 
> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
> signal and either Single-ended clock(3.0V parts) or Differential clock
> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
> At bus level, it follows a separate protocol described in HyperBus
> specification[1].
> 
> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
> its equivalent to x16 parallel NOR flash wrt bits per clock cycle. But
> HyperBus operates at >166MHz frequencies.
> HyperRAM provides direct random read/write access to flash memory
> array.
> 
> But, HyperBus memory controllers seem to abstract implementation details
> and expose a simple MMIO interface to access connected flash.
> 
> Add support for registering HyperFlash devices with MTD framework. MTD
> maps framework along with CFI chip support framework are used to support
> communicating with flash.
> 
> Framework is modelled along the lines of spi-nor framework. HyperBus
> memory controller (HBMC) drivers calls hyperbus_register_device() to
> register a single HyperFlash device. HyperFlash core parses MMIO access
> information from DT, sets up the map_info struct, probes CFI flash and
> registers it with MTD framework.
> 
> Some HBMC masters need calibration/training sequence[3] to be carried
> out, in order for DLL inside the controller to lock, by reading a known
> string/pattern. This is done by repeatedly reading CFI Query
> Identification String. Calibration needs to be done before trying to detect
> flash as part of CFI flash probe.
> 
> HyperRAM is not supported at the moment.
> 
> HyperBus specification can be found at[1]
> HyperFlash datasheet can be found at[2]
> 
> [1] https://www.cypress.com/file/213356/download
> [2] https://www.cypress.com/file/213346/download
> [3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
>     Table 12-5741. HyperFlash Access Sequence
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
[...]
> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
> new file mode 100644
> index 000000000000..df1f75e10b1a
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
> @@ -0,0 +1,191 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> +// Author: Vignesh Raghavendra <vigneshr@ti.com>
> +
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mtd/hyperbus.h>
> +#include <linux/mtd/map.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mtd/cfi.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/types.h>
> +
> +#define HYPERBUS_CALIB_COUNT 25

   Mhm, I think I've already protested about this being #define'd here...

[...]
> +int hyperbus_register_device(struct hyperbus_device *hbdev)
> +{
> +	const struct hyperbus_ops *ops;
> +	struct hyperbus_ctlr *ctlr;
> +	struct device_node *np;
> +	struct map_info *map;
> +	struct resource res;
> +	struct device *dev;
> +	int ret;
> +
> +	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
> +		pr_err("hyperbus: please fill all the necessary fields!\n");
> +		return -EINVAL;
> +	}
> +
> +	np = hbdev->np;
> +	ctlr = hbdev->ctlr;
> +	if (!of_device_is_compatible(np, "cypress,hyperflash"))
> +		return -ENODEV;
> +
> +	hbdev->memtype = HYPERFLASH;
> +
> +	if (of_address_to_resource(np, 0, &res))
> +		return -EINVAL;

   Why not just propagate the error upstream (yeah, I've noticed that
it only can be -EINVAL)?

[...]
> diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
> new file mode 100644
> index 000000000000..ee2eefd822c9
> --- /dev/null
> +++ b/include/linux/mtd/hyperbus.h
> @@ -0,0 +1,91 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + *
> + * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +#ifndef __LINUX_MTD_HYPERBUS_H__
> +#define __LINUX_MTD_HYPERBUS_H__
> +
> +#include <linux/mtd/map.h>
> +
> +enum hyperbus_memtype {
> +	HYPERFLASH,
> +	HYPERRAM,
> +};
> +
> +/**
> + * struct hyperbus_device - struct representing HyperBus slave device
> + * @map: map_info struct for accessing MMIO HyperBus flash memory
> + * @np:	pointer to HyperBus slave device node
          ^
   Space needed here, not tab.

> + * @mtd: pointer to MTD struct
> + * @ctlr: pointer to HyperBus controller struct
> + * @memtype: type of memory device: HyperFlash or HyperRAM
> + * @registered: flag to indicate whether device is registered with MTD core
> + */
> +
> +struct hyperbus_device {
> +	struct map_info map;
> +	struct device_node *np;
> +	struct mtd_info *mtd;
> +	struct hyperbus_ctlr *ctlr;
> +	enum hyperbus_memtype memtype;
> +	bool registered;
> +};
> +
> +/**
> + * struct hyperbus_ops - struct representing custom HyperBus operations
> + * @read16: read 16 bit of data, usually from register/ID-CFI space
> + * @write16: write 16 bit of data, usually to register/ID-CFI space

   Usually? How to differ the register/memory transfers if both are possible?

> + * @copy_from: copy data from flash memory
> + * @copy_to: copy data to flash memory
> + * @calibrate: calibrate HyperBus controller
> + */
> +
> +struct hyperbus_ops {
> +	u16 (*read16)(struct hyperbus_device *hbdev, unsigned long addr);
> +	void (*write16)(struct hyperbus_device *hbdev,
> +			unsigned long addr, u16 val);
> +	void (*copy_from)(struct hyperbus_device *hbdev, void *to,
> +			  unsigned long from, ssize_t len);
> +	void (*copy_to)(struct hyperbus_device *dev, unsigned long to,
> +			const void *from, ssize_t len);
> +	int (*calibrate)(struct hyperbus_device *dev);
> +};
> +
> +/**
> + * struct hyperbus_ctlr - struct representing HyperBus controller
> + * @calibrated: flag to indicate ctlr calibration sequence is complete
> + * @ops: HyperBus controller ops

   What about @dev?

> + */
> +struct hyperbus_ctlr {
> +	struct device *dev;
> +	bool calibrated;
> +
> +	const struct hyperbus_ops *ops;
> +};
[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
