Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D62A14612B
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Jan 2020 05:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7WAwT1Roh31oSOTC96L30fitsduP/zSbnzFryCy5Ok=; b=GGOJsYgeFLLjU4
	5gxB5dvz8Ckasg3hZTs+/KAVnCbB0hKSCUmGiOk92V46Bm8lP4ntqsO+ae4NrfvPtAoiKmsib1OQd
	aXyBhMOOH6Ubx9Dha1CV6JbpxPG90MhVDElsZv7nG00OR/0myMInL+SsjvbLq0Bx3KCKp5ilbB5OL
	D6drkbaL7BAK9uwKSDlAx2zdi0kWiU1KOWKF5OomgPoNbI8ZfGm2aQ7EOFSTjCOYbbfyChZYm/l5/
	qw1jrFUzIC9RaY74u+OpTwQ76jjMZuoOb5CVKHHA3nQnNjmlwuJ7k8EoIY4pfHEMhxkkpIZHKiYaL
	7I7PFwJo4tNH0tcBlBgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuU2V-0001BE-OX; Thu, 23 Jan 2020 04:24:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuU2M-0001Ac-Nn
 for linux-mtd@lists.infradead.org; Thu, 23 Jan 2020 04:24:12 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00N4NkAx124300;
 Wed, 22 Jan 2020 22:23:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579753426;
 bh=PAIatr9x7pXdyPfuUMV0gvvyQBiahoXgOeeVvuGNxrU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vEX7Zp6E82L2UWMCymVA4Qc1CD+/H2suB/NrkZDjz25oCAI+N4dvd9HGER1y5Zp/S
 M6iF1XKyFPZJtpFRh2xapvwUsYLssaL1zMz73c4AZYR6ZzAievifIFCBlFtR/KY2sL
 xYAgQhx+/XcDPDCQqMFlS887JanZTfp99CK6FcwY=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00N4NkUS038544
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 22:23:46 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 22:23:45 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 22:23:45 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00N4NePl095997;
 Wed, 22 Jan 2020 22:23:41 -0600
Subject: Re: [PATCH v1 11/11] mtd: new support oops logger based on pstore/blk
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>, Kees Cook
 <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>, Colin Cross
 <ccross@android.com>, Tony Luck <tony.luck@intel.com>, Jonathan Corbet
 <corbet@lwn.net>, Miquel Raynal <miquel.raynal@bootlin.com>, Richard
 Weinberger <richard@nod.at>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, "David S. Miller" <davem@davemloft.net>, Rob
 Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com>
 <1579482233-2672-12-git-send-email-liaoweixiong@allwinnertech.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <de3659ad-10bc-f14c-169d-d004c8726316@ti.com>
Date: Thu, 23 Jan 2020 09:54:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1579482233-2672-12-git-send-email-liaoweixiong@allwinnertech.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_202410_902201_7FBB2EDE 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

On 20/01/20 6:33 am, WeiXiong Liao wrote:
[...]
> +static inline int mtdpstore_panic_block_isbad(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	struct mtd_info *mtd = cxt->mtd;
> +	u64 blknum = div_u64(off, mtd->erasesize);
> +
> +	return test_bit(blknum, cxt->badmap);
> +}
> +
> +static inline void mtdpstore_mark_used(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +
> +	pr_debug("mark zone %llu used\n", zonenum);

Please replace pr_*() with dev_*() throughout the patch. Device pointer
should be available via struct mtd_info

Regards
Vignesh

> +	set_bit(zonenum, cxt->usedmap);
> +}
> +
> +static inline void mtdpstore_mark_unused(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +
> +	pr_debug("mark zone %llu unused\n", zonenum);
> +	clear_bit(zonenum, cxt->usedmap);
> +}
> +
> +static inline void mtdpstore_block_mark_unused(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
> +
> +	while (zonecnt > 0) {
> +		pr_debug("mark zone %llu unused\n", zonenum);
> +		clear_bit(zonenum, cxt->usedmap);
> +		zonenum++;
> +		zonecnt--;
> +	}
> +}
> +
> +static inline int mtdpstore_is_used(struct mtdpstore_context *cxt, loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +	u64 blknum = div_u64(off, cxt->mtd->erasesize);
> +
> +	if (test_bit(blknum, cxt->badmap))
> +		return true;
> +	return test_bit(zonenum, cxt->usedmap);
> +}
> +
> +static int mtdpstore_block_is_used(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
> +
> +	while (zonecnt > 0) {
> +		if (test_bit(zonenum, cxt->usedmap))
> +			return true;
> +		zonenum++;
> +		zonecnt--;
> +	}
> +	return false;
> +}
> +
> +static int mtdpstore_is_empty(struct mtdpstore_context *cxt, char *buf,
> +		size_t size)
> +{
> +	struct mtd_info *mtd = cxt->mtd;
> +	size_t sz;
> +	int i;
> +
> +	sz = min_t(uint32_t, size, mtd->writesize / 4);
> +	for (i = 0; i < sz; i++) {
> +		if (buf[i] != (char)0xFF)
> +			return false;
> +	}
> +	return true;
> +}
> +
> +static void mtdpstore_mark_removed(struct mtdpstore_context *cxt, loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +
> +	pr_debug("mark zone %llu removed\n", zonenum);
> +	set_bit(zonenum, cxt->rmmap);
> +}
> +
> +static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
> +
> +	while (zonecnt > 0) {
> +		clear_bit(zonenum, cxt->rmmap);
> +		zonenum++;
> +		zonecnt--;
> +	}
> +}
> +
> +static int mtdpstore_block_is_removed(struct mtdpstore_context *cxt,
> +		loff_t off)
> +{
> +	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
> +	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
> +
> +	while (zonecnt > 0) {
> +		if (test_bit(zonenum, cxt->rmmap))
> +			return true;
> +		zonenum++;
> +		zonecnt--;
> +	}
> +	return false;
> +}
> +
> +static int mtdpstore_erase_do(struct mtdpstore_context *cxt, loff_t off)
> +{
> +	struct erase_info erase;
> +	int ret;
> +
> +	pr_debug("try to erase off 0x%llx\n", off);
> +	erase.len = cxt->mtd->erasesize;
> +	erase.addr = off;
> +	ret = mtd_erase(cxt->mtd, &erase);
> +	if (!ret)
> +		mtdpstore_block_clear_removed(cxt, off);
> +	else
> +		pr_err("erase of region [0x%llx, 0x%llx] on \"%s\" failed\n",
> +		       (unsigned long long)erase.addr,
> +		       (unsigned long long)erase.len, cxt->bo_info.device);
> +	return ret;
> +}
> +
> +/*
> + * called while removing file
> + *
> + * Avoiding over erasing, do erase only when all zones are removed or unused.
> + * Ensure to remove when unregister by reading, erasing and wrtiing back.
> + */
> +static ssize_t mtdpstore_erase(size_t size, loff_t off)
> +{
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +
> +	if (mtdpstore_block_isbad(cxt, off))
> +		return -EIO;
> +
> +	mtdpstore_mark_unused(cxt, off);
> +
> +	if (likely(mtdpstore_block_is_used(cxt, off))) {
> +		mtdpstore_mark_removed(cxt, off);
> +		return 0;
> +	}
> +
> +	/* all zones are unused, erase it */
> +	off = ALIGN_DOWN(off, cxt->mtd->erasesize);
> +	return mtdpstore_erase_do(cxt, off);
> +}
> +
> +/*
> + * What is securety for mtdpstore?
> + * As there is no erase for panic case, we should ensure at least one zone
> + * is writable. Otherwise, panic write will be failed.
> + * If zone is used, write operation will return -ENEXT, which means that
> + * pstore/blk will try one by one until get a empty zone. So, it's no need
> + * to ensure next zone is empty, but at least one.
> + */
> +static int mtdpstore_security(struct mtdpstore_context *cxt, loff_t off)
> +{
> +	int ret = 0, i;
> +	u32 zonenum = (u32)div_u64(off, cxt->bo_info.dmesg_size);
> +	u32 zonecnt = (u32)div_u64(cxt->mtd->size, cxt->bo_info.dmesg_size);
> +	u32 blkcnt = (u32)div_u64(cxt->mtd->size, cxt->mtd->erasesize);
> +	u32 erasesize = cxt->mtd->erasesize;
> +
> +	for (i = 0; i < zonecnt; i++) {
> +		u32 num = (zonenum + i) % zonecnt;
> +
> +		/* found empty zone */
> +		if (!test_bit(num, cxt->usedmap))
> +			return 0;
> +	}
> +
> +	/* If there is no any empty zone, we have no way but to do erase */
> +	off = ALIGN_DOWN(off, erasesize);
> +	while (blkcnt--) {
> +		div64_u64_rem(off + erasesize, cxt->mtd->size, (u64 *)&off);
> +
> +		if (mtdpstore_block_isbad(cxt, off))
> +			continue;
> +
> +		ret = mtdpstore_erase_do(cxt, off);
> +		if (!ret) {
> +			mtdpstore_block_mark_unused(cxt, off);
> +			break;
> +		}
> +	}
> +
> +	if (ret)
> +		pr_err("all blocks bad!\n");
> +	pr_debug("end security\n");
> +	return ret;
> +}
> +
> +static ssize_t mtdpstore_write(const char *buf, size_t size, loff_t off)
> +{
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +	size_t retlen;
> +	int ret;
> +
> +	if (mtdpstore_block_isbad(cxt, off))
> +		return -ENEXT;
> +
> +	/* zone is used, please try next one */
> +	if (mtdpstore_is_used(cxt, off))
> +		return -ENEXT;
> +
> +	pr_debug("try to write off 0x%llx size %zu\n", off, size);
> +	ret = mtd_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
> +	if (ret < 0 || retlen != size) {
> +		pr_err("write failure at %lld (%zu of %zu written), err %d\n",
> +				off, retlen, size, ret);
> +		return -EIO;
> +	}
> +	mtdpstore_mark_used(cxt, off);
> +
> +	mtdpstore_security(cxt, off);
> +	return retlen;
> +}
> +
> +/*
> + * All zones will be read as pstore/blk will read zone one by one when do
> + * recover.
> + */
> +static ssize_t mtdpstore_read(char *buf, size_t size, loff_t off)
> +{
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +	size_t retlen;
> +	int ret;
> +
> +	if (mtdpstore_block_isbad(cxt, off))
> +		return -ENEXT;
> +
> +	pr_debug("try to read off 0x%llx size %zu\n", off, size);
> +	ret = mtd_read(cxt->mtd, off, size, &retlen, (u_char *)buf);
> +	if ((ret < 0 && !mtd_is_bitflip(ret)) || size != retlen)  {
> +		pr_err("read failure at %lld (%zu of %zu read), err %d\n",
> +				off, retlen, size, ret);
> +		return -EIO;
> +	}
> +
> +	if (mtdpstore_is_empty(cxt, buf, size))
> +		mtdpstore_mark_unused(cxt, off);
> +	else
> +		mtdpstore_mark_used(cxt, off);
> +
> +	mtdpstore_security(cxt, off);
> +	return retlen;
> +}
> +
> +static ssize_t mtdpstore_panic_write(const char *buf, size_t size, loff_t off)
> +{
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +	size_t retlen;
> +	int ret;
> +
> +	if (mtdpstore_panic_block_isbad(cxt, off))
> +		return -ENEXT;
> +
> +	/* zone is used, please try next one */
> +	if (mtdpstore_is_used(cxt, off))
> +		return -ENEXT;
> +
> +	ret = mtd_panic_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
> +	if (ret < 0 || size != retlen) {
> +		pr_err("panic write failure at %lld (%zu of %zu read), err %d\n",
> +				off, retlen, size, ret);
> +		return -EIO;
> +	}
> +	mtdpstore_mark_used(cxt, off);
> +
> +	return retlen;
> +}
> +
> +static void mtdpstore_notify_add(struct mtd_info *mtd)
> +{
> +	int ret;
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +	struct blkoops_info *info = &cxt->bo_info;
> +	unsigned long longcnt;
> +
> +	if (!strcmp(mtd->name, info->device))
> +		cxt->index = mtd->index;
> +
> +	if (mtd->index != cxt->index || cxt->index < 0)
> +		return;
> +
> +	pr_debug("found matching MTD device %s\n", mtd->name);
> +
> +	if (mtd->size < info->dmesg_size * 2) {
> +		pr_err("MTD partition %d not big enough\n", mtd->index);
> +		return;
> +	}
> +	if (mtd->erasesize < info->dmesg_size) {
> +		pr_err("eraseblock size of MTD partition %d too small\n",
> +				mtd->index);
> +		return;
> +	}
> +	if (unlikely(info->dmesg_size % mtd->writesize)) {
> +		pr_err("record size %lu KB must align to write size %d KB\n",
> +				info->dmesg_size / 1024,
> +				mtd->writesize / 1024);
> +		return;
> +	}
> +	if (unlikely(mtd->size > MTDPSTORE_MAX_MTD_SIZE)) {
> +		pr_err("mtd%d is too large (limit is %d MiB)\n",
> +				mtd->index,
> +				MTDPSTORE_MAX_MTD_SIZE / 1024 / 1024);
> +		return;
> +	}
> +
> +	longcnt = BITS_TO_LONGS(div_u64(mtd->size, info->dmesg_size));
> +	cxt->rmmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> +	cxt->usedmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> +
> +	longcnt = BITS_TO_LONGS(div_u64(mtd->size, mtd->erasesize));
> +	cxt->badmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
> +
> +	cxt->bo_dev.total_size = mtd->size;
> +	/* just support dmesg right now */
> +	cxt->bo_dev.flags = BLKOOPS_DEV_SUPPORT_DMESG;
> +	cxt->bo_dev.read = mtdpstore_read;
> +	cxt->bo_dev.write = mtdpstore_write;
> +	cxt->bo_dev.erase = mtdpstore_erase;
> +	cxt->bo_dev.panic_write = mtdpstore_panic_write;
> +
> +	ret = blkoops_register_device(&cxt->bo_dev);
> +	if (ret) {
> +		pr_err("mtd%d register to blkoops failed\n", mtd->index);
> +		return;
> +	}
> +	cxt->mtd = mtd;
> +	pr_info("Attached to MTD device %d\n", mtd->index);
> +}
> +
> +static int mtdpstore_flush_removed_do(struct mtdpstore_context *cxt,
> +		loff_t off, size_t size)
> +{
> +	struct mtd_info *mtd = cxt->mtd;
> +	u_char *buf;
> +	int ret;
> +	size_t retlen;
> +	struct erase_info erase;
> +
> +	buf = kmalloc(mtd->erasesize, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	/* 1st. read to cache */
> +	ret = mtd_read(mtd, off, mtd->erasesize, &retlen, buf);
> +	if (ret || retlen != mtd->erasesize)
> +		goto free;
> +
> +	/* 2nd. erase block */
> +	erase.len = mtd->erasesize;
> +	erase.addr = off;
> +	ret = mtd_erase(mtd, &erase);
> +	if (ret)
> +		goto free;
> +
> +	/* 3rd. write back */
> +	while (size) {
> +		unsigned int zonesize = cxt->bo_info.dmesg_size;
> +
> +		/* remove must clear used bit */
> +		if (mtdpstore_is_used(cxt, off))
> +			mtd_write(mtd, off, zonesize, &retlen, buf);
> +
> +		off += zonesize;
> +		size -= min_t(unsigned int, zonesize, size);
> +	}
> +
> +free:
> +	kfree(buf);
> +	return ret;
> +}
> +
> +static int mtdpstore_flush_removed(struct mtdpstore_context *cxt)
> +{
> +	struct mtd_info *mtd = cxt->mtd;
> +	int ret;
> +	loff_t off;
> +	u32 blkcnt = (u32)div_u64(mtd->size, mtd->erasesize);
> +
> +	for (off = 0; blkcnt > 0; blkcnt--, off += mtd->erasesize) {
> +		ret = mtdpstore_block_is_removed(cxt, off);
> +		if (!ret) {
> +			off += mtd->erasesize;
> +			continue;
> +		}
> +
> +		ret = mtdpstore_flush_removed_do(cxt, off, mtd->erasesize);
> +		if (ret)
> +			return ret;
> +	}
> +	return 0;
> +}
> +
> +static void mtdpstore_notify_remove(struct mtd_info *mtd)
> +{
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +
> +	if (mtd->index != cxt->index || cxt->index < 0)
> +		return;
> +
> +	mtdpstore_flush_removed(cxt);
> +
> +	blkoops_unregister_device(&cxt->bo_dev);
> +	kfree(cxt->badmap);
> +	kfree(cxt->usedmap);
> +	kfree(cxt->rmmap);
> +	cxt->mtd = NULL;
> +	cxt->index = -1;
> +}
> +
> +static struct mtd_notifier mtdpstore_notifier = {
> +	.add	= mtdpstore_notify_add,
> +	.remove	= mtdpstore_notify_remove,
> +};
> +
> +static int __init mtdpstore_init(void)
> +{
> +	int ret;
> +	struct mtdpstore_context *cxt = &oops_cxt;
> +	struct blkoops_info *info = &cxt->bo_info;
> +
> +	ret = blkoops_info(info);
> +	if (unlikely(ret))
> +		return ret;
> +
> +	if (strlen(info->device) == 0) {
> +		pr_err("mtd device must be supplied\n");
> +		return -EINVAL;
> +	}
> +	if (!info->dmesg_size) {
> +		pr_err("no recorder enabled\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Setup the MTD device to use */
> +	ret = kstrtoint((char *)info->device, 0, &cxt->index);
> +	if (ret)
> +		cxt->index = -1;
> +
> +	register_mtd_user(&mtdpstore_notifier);
> +	return 0;
> +}
> +module_init(mtdpstore_init);
> +
> +static void __exit mtdpstore_exit(void)
> +{
> +	unregister_mtd_user(&mtdpstore_notifier);
> +}
> +module_exit(mtdpstore_exit);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
> +MODULE_DESCRIPTION("MTD Oops/Panic console logger/driver");
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
