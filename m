Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704D71B76FE
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 15:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrOsJguU5dAWBNoiNxvp5PCd3tM3OdQUSProV9+uadE=; b=nBACY9NTuFegVX
	c5IGIKQL/PbR3SVDDqmUh766wL2GGK5ixMgpxnOKYl+Iv2bdXM29s46DLGceVbF5KbhHYUr/fzVhE
	SGroOiTUptqUiGG3F6K7tsUTwF/kVyy/Gi3yPCB3f6DwyCkAZauIvfpx/Nf2ytwOAqLEssKhVjr7A
	y+uSRYMt+swEwiAKHD9ZmI34CvQVJKdnAqy1GwXR1BEhN7qbZTDuMRz7eM3BUERYA4ygCA/9KFzuu
	sCygUKPzXxHI57WXdFwnxAZVl0Bzq9sIrGBe7cGpDSYHSlZUJOL+MZ46BCqe/+BVScHNUBufEgmkh
	eoeyYG7KEUjT2IaxkIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyPR-0003vu-Sy; Fri, 24 Apr 2020 13:30:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyPL-0003uT-N5
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 13:30:21 +0000
X-Originating-IP: 42.109.208.177
Received: from localhost (unknown [42.109.208.177])
 (Authenticated sender: me@yadavpratyush.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9C78420007;
 Fri, 24 Apr 2020 13:30:09 +0000 (UTC)
Date: Fri, 24 Apr 2020 19:00:04 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [RFC PATCH 1/2] mtd: spi-nor: Add capability to disable flash
 quad mode
Message-ID: <20200424133004.r2oryuyocz7zmrgz@yadavpratyush.com>
References: <1587720044-49172-1-git-send-email-yangyicong@hisilicon.com>
 <1587720044-49172-2-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587720044-49172-2-git-send-email-yangyicong@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_063019_887531_6FB89C2F 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com,
 tudor.ambarus@microchip.com, richard@nod.at, john.garry@huawei.com,
 linuxarm@huawei.com, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 alexander.sverdlin@nokia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Yicong,

On 24/04/20 05:20PM, Yicong Yang wrote:
> Previous we didn't provide a way to disable the flash's quad mode.
> Which means we cannot do some cleanup works when to remove or
> poweroff the flash, like what set 4-byte address mode does in
> spi_nor_restore().
> 
> Add the capability to disable the flash quad mode, by introducing
> an enable flag in the flash parameters quad_enable() hooks and
> related functions.
> 
> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
> ---
>  drivers/mtd/spi-nor/core.c | 38 ++++++++++++++++++++++++++++----------
>  drivers/mtd/spi-nor/core.h |  8 ++++----
>  2 files changed, 32 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index cc68ea8..d0516e8 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -1910,12 +1910,13 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>   * spi_nor_sr1_bit6_quad_enable() - Set the Quad Enable BIT(6) in the Status

Nitpick: This should probably be changed to "Set/unset the Quad 
Enable...". Same in other places.

>   * Register 1.
>   * @nor:	pointer to a 'struct spi_nor'
> + * @enable:	true to enter quad mode. false to leave quad mode.
>   *
>   * Bit 6 of the Status Register 1 is the QE bit for Macronix like QSPI memories.
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
> +int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor, bool enable)
>  {
>  	int ret;
> 
> @@ -1923,10 +1924,14 @@ int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
>  	if (ret)
>  		return ret;
> 
> -	if (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)
> +	if ((enable && (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)) ||
> +	    ~(enable || (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)))

This condition will always evaluate to true.

Since (enable || (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)) is always a 
boolean, it will evaluate to 0 or 1. And ~0 is 0xFFFFFFFF and ~1 is 
0xFFFFFFFE, both of which evaluate to true.

IIUC, this condition is supposed to mean "If we want to enable and it is 
already enabled, do nothing. Or, if we want to disable and it is already 
disabled, do nothing." This might be what you were going for:

	if ((enable && (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)) ||
	    (!enable && !(nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)))

Same for other places this pattern appears.

>  		return 0;
> 
> -	nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
> +	if (enable)
> +		nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
> +	else
> +		nor->bouncebuf[0] &= ~SR1_QUAD_EN_BIT6;
> 
>  	return spi_nor_write_sr1_and_check(nor, nor->bouncebuf[0]);
>  }

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
