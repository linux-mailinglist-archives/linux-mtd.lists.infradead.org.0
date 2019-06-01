Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ED231A81
	for <lists+linux-mtd@lfdr.de>; Sat,  1 Jun 2019 10:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T10JClK3ubIPhScMKWiUO2R2ANGmOibQrCQH3jm6p1g=; b=WCFManzRNCXIp/
	VQYojYxZv2YrK939tX+0Uj7fLwOjGZ8DgDJ2+RJ+b+NU8BLMVjNRqcU2xpoqTiEmQq06xky+U9RQU
	TGA8TtwouyErj4CKWa/Vgf1XCDietWxGT6/l5hY9Fz/ZQ/X+QGnmFnU51GPD1xSfdsiBrvhhBBP20
	USqbmewIKITJI456QfQGf3hb/xZHnJ0Ij2PmGKrnh+TjOc4RYx7YaNH9IB/AEXb0ySXRF/vh6Arvu
	c5qDoRIUH0HU2dhZ4l7VNxGLX3QyTHphvCWTwLXF/7irHsNGt/vXlkIXdp7CPWsZcZSFrpZXwcNFq
	GKtaiEIr9d89f0KBMX8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzAT-0005eh-DT; Sat, 01 Jun 2019 08:15:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWzAJ-0005Za-BL
 for linux-mtd@lists.infradead.org; Sat, 01 Jun 2019 08:15:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B5E7D273101;
 Sat,  1 Jun 2019 09:14:57 +0100 (BST)
Date: Sat, 1 Jun 2019 10:14:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Zhuohao Lee <zhuohao@chromium.org>
Subject: Re: [PATCH v4 2/2] mtd: spi-nor: enable the debugfs for the
 partname and partid
Message-ID: <20190601101454.596a2c65@collabora.com>
In-Reply-To: <20190530152101.176431-2-zhuohao@chromium.org>
References: <20190530152101.176431-1-zhuohao@chromium.org>
 <20190530152101.176431-2-zhuohao@chromium.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_011459_526187_CB161D6D 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: drinkcat@chromium.org, bbrezillon@kernel.org, richard@nod.at,
 briannorris@chromium.org, marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 23:21:01 +0800
Zhuohao Lee <zhuohao@chromium.org> wrote:

> This patch adds spi_nor_debugfs_init() for the debugfs initialization.
> With this patch, we can read the partname and partid through the
> debugfs.
> 
> The output of new debugfs nodes on my device are:
> cat /sys/kernel/debug/mtd/mtd0/partid
> spi-nor:ef6017
> cat /sys/kernel/debug/mtd/mtd0/partname
> w25q64dw
> 
> Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 13 +++++++++++++
>  include/linux/mtd/spi-nor.h   |  1 +
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 6e13bbd1aaa5..c7e57e9a48e5 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -3935,6 +3935,17 @@ static void spi_nor_resume(struct mtd_info *mtd)
>  		dev_err(dev, "resume() failed\n");
>  }
>  
> +static void spi_nor_debugfs_init(struct spi_nor *nor,
> +		const struct flash_info *info)
> +{
> +	struct mtd_info *mtd = &nor->mtd;
> +
> +	mtd->dbg.partname = info->name;
> +	if (!mtd->dbg.partid)
> +		mtd->dbg.partid = devm_kasprintf(nor->dev, GFP_KERNEL, "spi-nor:%*phN",
> +						 info->id_len, info->id);

nitpick:

		mtd->dbg.partid = devm_kasprintf(nor->dev, GFP_KERNEL,
						 "spi-nor:%*phN",
						 info->id_len, info->id);

to make checkpatch happy.

> +}
> +
>  void spi_nor_restore(struct spi_nor *nor)
>  {
>  	/* restore the addressing mode */
> @@ -4036,6 +4047,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	mtd->_read = spi_nor_read;
>  	mtd->_resume = spi_nor_resume;
>  
> +	spi_nor_debugfs_init(nor, info);
> +
>  	/* NOR protection support for STmicro/Micron chips and similar */
>  	if (JEDEC_MFR(info) == SNOR_MFR_ST ||
>  	    JEDEC_MFR(info) == SNOR_MFR_MICRON ||
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index fa2d89e38e40..4ad8b9117659 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -386,6 +386,7 @@ struct spi_nor {
>  	u32			flags;
>  	u8			cmd_buf[SPI_NOR_MAX_CMD_SIZE];
>  	struct spi_nor_erase_map	erase_map;
> +	char			*id_string;

You never use that field, you can get rid of it.

>  
>  	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
>  	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
