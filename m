Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0A41CEC4F
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 07:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYgvjXOlbJdLJAx2GBr13XLICEWU167/qdJ0Eci7hwk=; b=kYar1PKPKcGwUr
	iVXrXH8gDFbiFbMFilGj0FWDVJRBw1sX4aau9puDTssLK7wDJEexLvViZ5D15eCC8MQkhiWjOjXB2
	4sA3UVfCFj952d6u0enaY2CarOpOWykOHEvpzeMVzI02k3soUQVDYrzL5VSg/7bpOpynf6eZVptJE
	6bAEzRy1LPsQScHecJmbJm2TMi8VxoMAX2IkdTW7Xq4OnMQsZcHwrI0AAP6RZSwCEp69vIYcaHu3h
	QeHtWhq+NNPp53hK8MlZBQ6ySP6s5qknX3YmYWSdWJSw/fvf3H83GySNeftbrOzPkE1CA9+s+oW2k
	T1VGa2JWrR+Xm4ZsyoFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYNDN-0005nM-U8; Tue, 12 May 2020 05:12:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNDD-0005mR-5O
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 05:12:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id 145so5781114pfw.13
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 22:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IgYWxqMT2aT/3oBzidXNFPjLxbPY7RBlmolfX9MDZo8=;
 b=eOBubqyoj37TZGg56SQ7jq5gEHYHVKDsVBHWH1Ochh6gw9HNQaOKnH6shUpSwzvYK6
 6sMvzR4vccCzgoHRkRVAaOJrCn9Q+wAJycl4DthKVtrKt1DkOjsbfFEIWa7zqqFmymjz
 tnwupt+hSx3UAmfqMAgGTt5Q3vCfrr3mh4nN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IgYWxqMT2aT/3oBzidXNFPjLxbPY7RBlmolfX9MDZo8=;
 b=ksCer1XODOmFusq/V2XLnQCiRvdjXHN+inlyuBe1nqPAyUWShJLG+88V2P8VPvcSvW
 0YQLcAKkwhOAiYPHn8JGxH2v4n53nBZ0AnTUZzHOlGCsoOdQTUZ2kglq/wJDTV0aZFkW
 uEwqjzHpfhaUhXDg5ChXkvQbqgIS5gDWd0/DfvmMv7uqx2RKWO/5cKHS3Zg2c5GfT7TC
 F8/ApxkHTHen/lR2+YDZBH7qvC4VqP87G0ch+J1/kQMKfkyiBJYRdVNcmALopSw3dWq2
 r94lAJwL1OunddBzyD/7YWRVYCTenQF7lnOu+MfoGgqNzLOEvnRTSZmBB+XgQojGqntF
 s8Vg==
X-Gm-Message-State: AGi0PuYj2s6eXvDYuYeOZkJtvNckcO14rV3MB9CPurq8cAoZfLtLLMaO
 8NBaTD/G8sOP61sxiIsLUxgXTQ==
X-Google-Smtp-Source: APiQypKSz1j5DGUojmFyAnwKukItoi78fiM1Xh6qiNGLwWQgbg14NyeocaFBI23D9dkKTtRo7fEecQ==
X-Received: by 2002:aa7:8c47:: with SMTP id e7mr11404917pfd.98.1589260331603; 
 Mon, 11 May 2020 22:12:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f6sm10821364pfn.189.2020.05.11.22.12.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 22:12:10 -0700 (PDT)
Date: Mon, 11 May 2020 22:12:09 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v8 10/11] mtd: Support kmsg dumper based on pstore/blk
Message-ID: <202005112211.F67D1EFB42@keescook>
References: <20200511233229.27745-1-keescook@chromium.org>
 <20200511233229.27745-11-keescook@chromium.org>
 <4c432f43-971a-a61e-645e-ad8bfdf1302e@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c432f43-971a-a61e-645e-ad8bfdf1302e@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_221215_238470_4B89516A 
X-CRM114-Status: GOOD (  33.43  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

[resend to proper CC list...]

On Tue, May 12, 2020 at 11:12:42AM +0800, WeiXiong Liao wrote:
> hi Kees Cook,
> 
> The off parameter on mtdpsore_block*() does not align to block size,
> which makes some bugs. For example, a block contains 4 dmesg zones
> and it's expected to erase this block when user remove all files on
> these zones. However it work failed since it get wrongly zonenum from
> misaligned off.

Ah, okay. I haven't touched any of this logic. Did something change in
pstore/blk or /zone that I broke? Regardless, can you send a regular
patch for what you have below and I'll fold it into the mtdpstore
commit.

Thanks!

-Kees

> On 2020/5/12 AM 7:32, Kees Cook wrote:
> > From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
> > 
> > This introduces mtdpstore, which is similar to mtdoops but more
> > powerful. It uses pstore/blk, and aims to store panic and oops logs to
> > a flash partition, where pstore can later read back and present as files
> > in the mounted pstore filesystem.
> > 
> > To make mtdpstore work, the "blkdev" of pstore/blk should be set
> > as MTD device name or MTD device number. For more details, see
> > Documentation/admin-guide/pstore-blk.rst
> > 
> > This solves a number of issues:
> > - Work duplication: both of pstore and mtdoops do the same job storing
> >   panic/oops log. They have very similar logic, registering to kmsg
> >   dumper and storing logs to several chunks one by one.
> > - Layer violations: drivers should provides methods instead of polices.
> >   MTD should provide read/write/erase operations, and allow a higher
> >   level drivers to provide the chunk management, kmsg dump
> >   configuration, etc.
> > - Missing features: pstore provides many additional features, including
> >   presenting the logs as files, logging dump time and count, and
> >   supporting other frontends like pmsg, console, etc.
> > 
> > Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
> > Link: https://lore.kernel.org/r/1585126506-18635-12-git-send-email-liaoweixiong@allwinnertech.com
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  Documentation/admin-guide/pstore-blk.rst |   9 +-
> >  drivers/mtd/Kconfig                      |  10 +
> >  drivers/mtd/Makefile                     |   1 +
> >  drivers/mtd/mtdpstore.c                  | 563 +++++++++++++++++++++++
> >  4 files changed, 581 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/mtd/mtdpstore.c
> > 
> > diff --git a/Documentation/admin-guide/pstore-blk.rst b/Documentation/admin-guide/pstore-blk.rst
> > index d45341e55e82..296d5027787a 100644
> > --- a/Documentation/admin-guide/pstore-blk.rst
> > +++ b/Documentation/admin-guide/pstore-blk.rst
> > @@ -43,9 +43,9 @@ blkdev
> >  ~~~~~~
> >  
> >  The block device to use. Most of the time, it is a partition of block device.
> > -It's required for pstore/blk.
> > +It's required for pstore/blk. It is also used for MTD device.
> >  
> > -It accepts the following variants:
> > +It accepts the following variants for block device:
> >  
> >  1. <hex_major><hex_minor> device number in hexadecimal represents itself; no
> >     leading 0x, for example b302.
> > @@ -64,6 +64,11 @@ It accepts the following variants:
> >     partition with a known unique id.
> >  #. <major>:<minor> major and minor number of the device separated by a colon.
> >  
> > +It accepts the following variants for MTD device:
> > +
> > +1. <device name> MTD device name. "pstore" is recommended.
> > +#. <device number> MTD device number.
> > +
> >  kmsg_size
> >  ~~~~~~~~~
> >  
> > diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
> > index 42d401ea60ee..6ddab796216d 100644
> > --- a/drivers/mtd/Kconfig
> > +++ b/drivers/mtd/Kconfig
> > @@ -170,6 +170,16 @@ config MTD_OOPS
> >  	  buffer in a flash partition where it can be read back at some
> >  	  later point.
> >  
> > +config MTD_PSTORE
> > +	tristate "Log panic/oops to an MTD buffer based on pstore"
> > +	depends on PSTORE_BLK
> > +	help
> > +	  This enables panic and oops messages to be logged to a circular
> > +	  buffer in a flash partition where it can be read back as files after
> > +	  mounting pstore filesystem.
> > +
> > +	  If unsure, say N.
> > +
> >  config MTD_SWAP
> >  	tristate "Swap on MTD device support"
> >  	depends on MTD && SWAP
> > diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
> > index 56cc60ccc477..593d0593a038 100644
> > --- a/drivers/mtd/Makefile
> > +++ b/drivers/mtd/Makefile
> > @@ -20,6 +20,7 @@ obj-$(CONFIG_RFD_FTL)		+= rfd_ftl.o
> >  obj-$(CONFIG_SSFDC)		+= ssfdc.o
> >  obj-$(CONFIG_SM_FTL)		+= sm_ftl.o
> >  obj-$(CONFIG_MTD_OOPS)		+= mtdoops.o
> > +obj-$(CONFIG_MTD_PSTORE)	+= mtdpstore.o
> >  obj-$(CONFIG_MTD_SWAP)		+= mtdswap.o
> >  
> >  nftl-objs		:= nftlcore.o nftlmount.o
> > diff --git a/drivers/mtd/mtdpstore.c b/drivers/mtd/mtdpstore.c
> > new file mode 100644
> > index 000000000000..06084eff1004
> > --- /dev/null
> > +++ b/drivers/mtd/mtdpstore.c
> > @@ -0,0 +1,563 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#define dev_fmt(fmt) "mtdoops-pstore: " fmt
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/pstore_blk.h>
> > +#include <linux/mtd/mtd.h>
> > +#include <linux/bitops.h>
> > +
> > +static struct mtdpstore_context {
> > +	int index;
> > +	struct pstore_blk_config info;
> > +	struct pstore_device_info dev;
> > +	struct mtd_info *mtd;
> > +	unsigned long *rmmap;		/* removed bit map */
> > +	unsigned long *usedmap;		/* used bit map */
> > +	/*
> > +	 * used for panic write
> > +	 * As there are no block_isbad for panic case, we should keep this
> > +	 * status before panic to ensure panic_write not failed.
> > +	 */
> > +	unsigned long *badmap;		/* bad block bit map */
> > +} oops_cxt;
> > +
> > +static int mtdpstore_block_isbad(struct mtdpstore_context *cxt, loff_t off)
> > +{
> > +	int ret;
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 blknum = div_u64(off, mtd->erasesize);
> 
> -       u64 blknum = div_u64(off, mtd->erasesize);
> +       u64 blknum;
> +
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       blknum = div_u64(off, mtd->erasesize);
> 
> > +
> > +	if (test_bit(blknum, cxt->badmap))
> > +		return true;
> > +	ret = mtd_block_isbad(mtd, off);
> > +	if (ret < 0) {
> > +		dev_err(&mtd->dev, "mtd_block_isbad failed, aborting\n");
> > +		return ret;
> > +	} else if (ret > 0) {
> > +		set_bit(blknum, cxt->badmap);
> > +		return true;
> > +	}
> > +	return false;
> > +}
> > +
> > +static inline int mtdpstore_panic_block_isbad(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 blknum = div_u64(off, mtd->erasesize);
> > +
> 
> -       u64 blknum = div_u64(off, mtd->erasesize);
> +       u64 blknum;
> 
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       blknum = div_u64(off, mtd->erasesize);
> 
> > +	return test_bit(blknum, cxt->badmap);
> > +}
> > +
> > +static inline void mtdpstore_mark_used(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +
> > +	dev_dbg(&mtd->dev, "mark zone %llu used\n", zonenum);
> > +	set_bit(zonenum, cxt->usedmap);
> > +}
> > +
> > +static inline void mtdpstore_mark_unused(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +
> > +	dev_dbg(&mtd->dev, "mark zone %llu unused\n", zonenum);
> > +	clear_bit(zonenum, cxt->usedmap);
> > +}
> > +
> > +static inline void mtdpstore_block_mark_unused(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> > +
> 
> -       u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> -       u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> +       u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
> +       u64 zonenum;
> 
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       zonenum = div_u64(off, cxt->info.kmsg_size);
> 
> > +	while (zonecnt > 0) {
> > +		dev_dbg(&mtd->dev, "mark zone %llu unused\n", zonenum);
> > +		clear_bit(zonenum, cxt->usedmap);
> > +		zonenum++;
> > +		zonecnt--;
> > +	}
> > +}
> > +
> > +static inline int mtdpstore_is_used(struct mtdpstore_context *cxt, loff_t off)
> > +{
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +	u64 blknum = div_u64(off, cxt->mtd->erasesize);
> > +
> > +	if (test_bit(blknum, cxt->badmap))
> > +		return true;
> > +	return test_bit(zonenum, cxt->usedmap);
> > +}
> > +
> > +static int mtdpstore_block_is_used(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> > +
> 
> -       u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> -       u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> +       struct mtd_info *mtd = cxt->mtd;
> +       u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
> +       u64 zonenum;
> 
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       zonenum = div_u64(off, cxt->info.kmsg_size);
> 
> > +	while (zonecnt > 0) {
> > +		if (test_bit(zonenum, cxt->usedmap))
> > +			return true;
> > +		zonenum++;
> > +		zonecnt--;
> > +	}
> > +	return false;
> > +}
> > +
> > +static int mtdpstore_is_empty(struct mtdpstore_context *cxt, char *buf,
> > +		size_t size)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	size_t sz;
> > +	int i;
> > +
> > +	sz = min_t(uint32_t, size, mtd->writesize / 4);
> > +	for (i = 0; i < sz; i++) {
> > +		if (buf[i] != (char)0xFF)
> > +			return false;
> > +	}
> > +	return true;
> > +}
> > +
> > +static void mtdpstore_mark_removed(struct mtdpstore_context *cxt, loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +
> > +	dev_dbg(&mtd->dev, "mark zone %llu removed\n", zonenum);
> > +	set_bit(zonenum, cxt->rmmap);
> > +}
> > +
> > +static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> > +
> 
> -       u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> -       u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> +       struct mtd_info *mtd = cxt->mtd;
> +       u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
> +       u64 zonenum;
> 
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       zonenum = div_u64(off, cxt->info.kmsg_size);
> 
> > +	while (zonecnt > 0) {
> > +		clear_bit(zonenum, cxt->rmmap);
> > +		zonenum++;
> > +		zonecnt--;
> > +	}
> > +}
> > +
> > +static int mtdpstore_block_is_removed(struct mtdpstore_context *cxt,
> > +		loff_t off)
> > +{
> > +	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> > +	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> > +
> 
> -       u64 zonenum = div_u64(off, cxt->info.kmsg_size);
> -       u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
> +       struct mtd_info *mtd = cxt->mtd;
> +       u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
> +       u64 zonenum;
> 
> +       off = ALIGN_DOWN(off, mtd->erasesize);
> +       zonenum = div_u64(off, cxt->info.kmsg_size);
> 
> > +	while (zonecnt > 0) {
> > +		if (test_bit(zonenum, cxt->rmmap))
> > +			return true;
> > +		zonenum++;
> > +		zonecnt--;
> > +	}
> > +	return false;
> > +}
> > +
> > +static int mtdpstore_erase_do(struct mtdpstore_context *cxt, loff_t off)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	struct erase_info erase;
> > +	int ret;
> > +
> 
> 	 int ret;
> 
> +       off = ALIGN_DOWN(off, cxt->mtd->erasesize);
>         dev_dbg(&mtd->dev, "try to erase off 0x%llx\n", off);
> 
> > +	dev_dbg(&mtd->dev, "try to erase off 0x%llx\n", off);
> > +	erase.len = cxt->mtd->erasesize;
> > +	erase.addr = off;
> > +	ret = mtd_erase(cxt->mtd, &erase);
> > +	if (!ret)
> > +		mtdpstore_block_clear_removed(cxt, off);
> > +	else
> > +		dev_err(&mtd->dev, "erase of region [0x%llx, 0x%llx] on \"%s\" failed\n",
> > +		       (unsigned long long)erase.addr,
> > +		       (unsigned long long)erase.len, cxt->info.device);
> > +	return ret;
> > +}
> > +
> > +/*
> > + * called while removing file
> > + *
> > + * Avoiding over erasing, do erase block only when the whole block is unused.
> > + * If the block contains valid log, do erase lazily on flush_removed() when
> > + * unregister.
> > + */
> > +static ssize_t mtdpstore_erase(size_t size, loff_t off)
> > +{
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +
> > +	if (mtdpstore_block_isbad(cxt, off))
> > +		return -EIO;
> > +
> > +	mtdpstore_mark_unused(cxt, off);
> > +
> > +	/* If the block still has valid data, mtdpstore do erase lazily */
> > +	if (likely(mtdpstore_block_is_used(cxt, off))) {
> > +		mtdpstore_mark_removed(cxt, off);
> > +		return 0;
> > +	}
> > +
> > +	/* all zones are unused, erase it */
> > +	off = ALIGN_DOWN(off, cxt->mtd->erasesize);
> 
>         /* all zones are unused, erase it */
> -       off = ALIGN_DOWN(off, cxt->mtd->erasesize);
>         return mtdpstore_erase_do(cxt, off);
> 
> > +	return mtdpstore_erase_do(cxt, off);
> > +}
> > +
> > +/*
> > + * What is security for mtdpstore?
> > + * As there is no erase for panic case, we should ensure at least one zone
> > + * is writable. Otherwise, panic write will fail.
> > + * If zone is used, write operation will return -ENOMSG, which means that
> > + * pstore/blk will try one by one until gets an empty zone. So, it is not
> > + * needed to ensure the next zone is empty, but at least one.
> > + */
> > +static int mtdpstore_security(struct mtdpstore_context *cxt, loff_t off)
> > +{
> > +	int ret = 0, i;
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u32 zonenum = (u32)div_u64(off, cxt->info.kmsg_size);
> > +	u32 zonecnt = (u32)div_u64(cxt->mtd->size, cxt->info.kmsg_size);
> > +	u32 blkcnt = (u32)div_u64(cxt->mtd->size, cxt->mtd->erasesize);
> > +	u32 erasesize = cxt->mtd->erasesize;
> > +
> > +	for (i = 0; i < zonecnt; i++) {
> > +		u32 num = (zonenum + i) % zonecnt;
> > +
> > +		/* found empty zone */
> > +		if (!test_bit(num, cxt->usedmap))
> > +			return 0;
> > +	}
> > +
> > +	/* If there is no any empty zone, we have no way but to do erase */
> > +	off = ALIGN_DOWN(off, erasesize);
> > +	while (blkcnt--) {
> > +		div64_u64_rem(off + erasesize, cxt->mtd->size, (u64 *)&off);
> > +
> > +		if (mtdpstore_block_isbad(cxt, off))
> > +			continue;
> > +
> > +		ret = mtdpstore_erase_do(cxt, off);
> > +		if (!ret) {
> > +			mtdpstore_block_mark_unused(cxt, off);
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (ret)
> > +		dev_err(&mtd->dev, "all blocks bad!\n");
> > +	dev_dbg(&mtd->dev, "end security\n");
> > +	return ret;
> > +}
> > +
> > +static ssize_t mtdpstore_write(const char *buf, size_t size, loff_t off)
> > +{
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	size_t retlen;
> > +	int ret;
> > +
> > +	if (mtdpstore_block_isbad(cxt, off))
> > +		return -ENOMSG;
> > +
> > +	/* zone is used, please try next one */
> > +	if (mtdpstore_is_used(cxt, off))
> > +		return -ENOMSG;
> > +
> > +	dev_dbg(&mtd->dev, "try to write off 0x%llx size %zu\n", off, size);
> > +	ret = mtd_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
> > +	if (ret < 0 || retlen != size) {
> > +		dev_err(&mtd->dev, "write failure at %lld (%zu of %zu written), err %d\n",
> > +				off, retlen, size, ret);
> > +		return -EIO;
> > +	}
> > +	mtdpstore_mark_used(cxt, off);
> > +
> > +	mtdpstore_security(cxt, off);
> > +	return retlen;
> > +}
> > +
> > +static inline bool mtdpstore_is_io_error(int ret)
> > +{
> > +	return ret < 0 && !mtd_is_bitflip(ret) && !mtd_is_eccerr(ret);
> > +}
> > +
> > +/*
> > + * All zones will be read as pstore/blk will read zone one by one when do
> > + * recover.
> > + */
> > +static ssize_t mtdpstore_read(char *buf, size_t size, loff_t off)
> > +{
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	size_t retlen, done;
> > +	int ret;
> > +
> > +	if (mtdpstore_block_isbad(cxt, off))
> > +		return -ENOMSG;
> > +
> > +	dev_dbg(&mtd->dev, "try to read off 0x%llx size %zu\n", off, size);
> > +	for (done = 0, retlen = 0; done < size; done += retlen) {
> > +		retlen = 0;
> > +
> > +		ret = mtd_read(cxt->mtd, off + done, size - done, &retlen,
> > +				(u_char *)buf + done);
> > +		if (mtdpstore_is_io_error(ret)) {
> > +			dev_err(&mtd->dev, "read failure at %lld (%zu of %zu read), err %d\n",
> > +					off + done, retlen, size - done, ret);
> > +			/* the zone may be broken, try next one */
> > +			return -ENOMSG;
> > +		}
> > +
> > +		/*
> > +		 * ECC error. The impact on log data is so small. Maybe we can
> > +		 * still read it and try to understand. So mtdpstore just hands
> > +		 * over what it gets and user can judge whether the data is
> > +		 * valid or not.
> > +		 */
> > +		if (mtd_is_eccerr(ret)) {
> > +			dev_err(&mtd->dev, "ecc error at %lld (%zu of %zu read), err %d\n",
> > +					off + done, retlen, size - done, ret);
> > +			/* driver may not set retlen when ecc error */
> > +			retlen = retlen == 0 ? size - done : retlen;
> > +		}
> > +	}
> > +
> > +	if (mtdpstore_is_empty(cxt, buf, size))
> > +		mtdpstore_mark_unused(cxt, off);
> > +	else
> > +		mtdpstore_mark_used(cxt, off);
> > +
> > +	mtdpstore_security(cxt, off);
> > +	return retlen;
> > +}
> > +
> > +static ssize_t mtdpstore_panic_write(const char *buf, size_t size, loff_t off)
> > +{
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	size_t retlen;
> > +	int ret;
> > +
> > +	if (mtdpstore_panic_block_isbad(cxt, off))
> > +		return -ENOMSG;
> > +
> > +	/* zone is used, please try next one */
> > +	if (mtdpstore_is_used(cxt, off))
> > +		return -ENOMSG;
> > +
> > +	ret = mtd_panic_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
> > +	if (ret < 0 || size != retlen) {
> > +		dev_err(&mtd->dev, "panic write failure at %lld (%zu of %zu read), err %d\n",
> > +				off, retlen, size, ret);
> > +		return -EIO;
> > +	}
> > +	mtdpstore_mark_used(cxt, off);
> > +
> > +	return retlen;
> > +}
> > +
> > +static void mtdpstore_notify_add(struct mtd_info *mtd)
> > +{
> > +	int ret;
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +	struct pstore_blk_config *info = &cxt->info;
> > +	unsigned long longcnt;
> > +
> > +	if (!strcmp(mtd->name, info->device))
> > +		cxt->index = mtd->index;
> > +
> > +	if (mtd->index != cxt->index || cxt->index < 0)
> > +		return;
> > +
> > +	dev_dbg(&mtd->dev, "found matching MTD device %s\n", mtd->name);
> > +
> > +	if (mtd->size < info->kmsg_size * 2) {
> > +		dev_err(&mtd->dev, "MTD partition %d not big enough\n",
> > +				mtd->index);
> > +		return;
> > +	}
> > +	/*
> > +	 * kmsg_size must be aligned to 4096 Bytes, which is limited by
> > +	 * psblk. The default value of kmsg_size is 64KB. If kmsg_size
> > +	 * is larger than erasesize, some errors will occur since mtdpsotre
> > +	 * is designed on it.
> > +	 */
> > +	if (mtd->erasesize < info->kmsg_size) {
> > +		dev_err(&mtd->dev, "eraseblock size of MTD partition %d too small\n",
> > +				mtd->index);
> > +		return;
> > +	}
> > +	if (unlikely(info->kmsg_size % mtd->writesize)) {
> > +		dev_err(&mtd->dev, "record size %lu KB must align to write size %d KB\n",
> > +				info->kmsg_size / 1024,
> > +				mtd->writesize / 1024);
> > +		return;
> > +	}
> > +
> > +	longcnt = BITS_TO_LONGS(div_u64(mtd->size, info->kmsg_size));
> > +	cxt->rmmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> > +	cxt->usedmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> > +
> > +	longcnt = BITS_TO_LONGS(div_u64(mtd->size, mtd->erasesize));
> > +	cxt->badmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> > +
> > +	cxt->dev.total_size = mtd->size;
> > +	/* just support dmesg right now */
> > +	cxt->dev.flags = PSTORE_FLAGS_DMESG;
> > +	cxt->dev.read = mtdpstore_read;
> > +	cxt->dev.write = mtdpstore_write;
> > +	cxt->dev.erase = mtdpstore_erase;
> > +	cxt->dev.panic_write = mtdpstore_panic_write;
> > +
> > +	ret = register_pstore_device(&cxt->dev);
> > +	if (ret) {
> > +		dev_err(&mtd->dev, "mtd%d register to psblk failed\n",
> > +				mtd->index);
> > +		return;
> > +	}
> > +	cxt->mtd = mtd;
> > +	dev_info(&mtd->dev, "Attached to MTD device %d\n", mtd->index);
> > +}
> > +
> > +static int mtdpstore_flush_removed_do(struct mtdpstore_context *cxt,
> > +		loff_t off, size_t size)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	u_char *buf;
> > +	int ret;
> > +	size_t retlen;
> > +	struct erase_info erase;
> > +
> > +	buf = kmalloc(mtd->erasesize, GFP_KERNEL);
> > +	if (!buf)
> > +		return -ENOMEM;
> > +
> > +	/* 1st. read to cache */
> > +	ret = mtd_read(mtd, off, mtd->erasesize, &retlen, buf);
> > +	if (mtdpstore_is_io_error(ret))
> > +		goto free;
> > +
> > +	/* 2nd. erase block */
> > +	erase.len = mtd->erasesize;
> > +	erase.addr = off;
> > +	ret = mtd_erase(mtd, &erase);
> > +	if (ret)
> > +		goto free;
> > +
> > +	/* 3rd. write back */
> > +	while (size) {
> > +		unsigned int zonesize = cxt->info.kmsg_size;
> > +
> > +		/* there is valid data on block, write back */
> > +		if (mtdpstore_is_used(cxt, off)) {
> > +			ret = mtd_write(mtd, off, zonesize, &retlen, buf);
> > +			if (ret)
> > +				dev_err(&mtd->dev, "write failure at %lld (%zu of %u written), err %d\n",
> > +						off, retlen, zonesize, ret);
> > +		}
> > +
> > +		off += zonesize;
> > +		size -= min_t(unsigned int, zonesize, size);
> > +	}
> > +
> > +free:
> > +	kfree(buf);
> > +	return ret;
> > +}
> > +
> > +/*
> > + * What does mtdpstore_flush_removed() do?
> > + * When user remove any log file on pstore filesystem, mtdpstore should do
> > + * something to ensure log file removed. If the whole block is no longer used,
> > + * it's nice to erase the block. However if the block still contains valid log,
> > + * what mtdpstore can do is to erase and write the valid log back.
> > + */
> > +static int mtdpstore_flush_removed(struct mtdpstore_context *cxt)
> > +{
> > +	struct mtd_info *mtd = cxt->mtd;
> > +	int ret;
> > +	loff_t off;
> > +	u32 blkcnt = (u32)div_u64(mtd->size, mtd->erasesize);
> > +
> > +	for (off = 0; blkcnt > 0; blkcnt--, off += mtd->erasesize) {
> > +		ret = mtdpstore_block_isbad(cxt, off);
> > +		if (ret)
> > +			continue;
> > +
> > +		ret = mtdpstore_block_is_removed(cxt, off);
> > +		if (!ret)
> > +			continue;
> > +
> > +		ret = mtdpstore_flush_removed_do(cxt, off, mtd->erasesize);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static void mtdpstore_notify_remove(struct mtd_info *mtd)
> > +{
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +
> > +	if (mtd->index != cxt->index || cxt->index < 0)
> > +		return;
> > +
> > +	mtdpstore_flush_removed(cxt);
> > +
> > +	unregister_pstore_device(&cxt->dev);
> > +	kfree(cxt->badmap);
> > +	kfree(cxt->usedmap);
> > +	kfree(cxt->rmmap);
> > +	cxt->mtd = NULL;
> > +	cxt->index = -1;
> > +}
> > +
> > +static struct mtd_notifier mtdpstore_notifier = {
> > +	.add	= mtdpstore_notify_add,
> > +	.remove	= mtdpstore_notify_remove,
> > +};
> > +
> > +static int __init mtdpstore_init(void)
> > +{
> > +	int ret;
> > +	struct mtdpstore_context *cxt = &oops_cxt;
> > +	struct pstore_blk_config *info = &cxt->info;
> > +
> > +	ret = pstore_blk_get_config(info);
> > +	if (unlikely(ret))
> > +		return ret;
> > +
> > +	if (strlen(info->device) == 0) {
> > +		pr_err("mtd device must be supplied (device name is empty)\n");
> > +		return -EINVAL;
> > +	}
> > +	if (!info->kmsg_size) {
> > +		pr_err("no backend enabled (kmsg_size is 0)\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Setup the MTD device to use */
> > +	ret = kstrtoint((char *)info->device, 0, &cxt->index);
> > +	if (ret)
> > +		cxt->index = -1;
> > +
> > +	register_mtd_user(&mtdpstore_notifier);
> > +	return 0;
> > +}
> > +module_init(mtdpstore_init);
> > +
> > +static void __exit mtdpstore_exit(void)
> > +{
> > +	unregister_mtd_user(&mtdpstore_notifier);
> > +}
> > +module_exit(mtdpstore_exit);
> > +
> > +MODULE_LICENSE("GPL");
> > +MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
> > +MODULE_DESCRIPTION("MTD backend for pstore/blk");
> > 
> 
> -- 
> WeiXiong Liao

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
