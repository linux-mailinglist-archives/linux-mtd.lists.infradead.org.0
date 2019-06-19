Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFCA4BA6E
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 15:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PATg6Opcpgp/aGJkjC9Ry/Le4NToaqdNenkIJTFNKZ4=; b=ROTRsuCG82bbCC
	gQqOUb1j/Qr1nA5klHJtkqMGTqyVeDuOfZtxSwWpe/rznyBbtIhodKs02wNSebFZroY5cyDszfMK2
	DCnN+WsOVvqwqHQz3BXoiI7WJAWc0oOM29IrpBH0Tb3SPYb/BjM1wg1nammgqCcTeDFXIa/YSIQeQ
	Yxein8RvuomQMAi8ZW77nHzJfTprdH/0EFNn3ehiPiC4kY7LxyqdlNW5iQiN/Q2JgM9UHmAlMpck7
	kR+y5sFQZpApIOc0FC61U24Twm+yMvVKNI7UhPzrkNvuZIVM48EnuCf1zW/82zkjLrLEQ5oo+manA
	X2KS7cEMj8JxJUlHJHpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdauv-0005uc-E6; Wed, 19 Jun 2019 13:46:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaum-0005u5-Sk
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 13:46:18 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5CA0C260D87;
 Wed, 19 Jun 2019 14:46:14 +0100 (BST)
Date: Wed, 19 Jun 2019 15:46:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH] mtd: spinand: fix error read return value
Message-ID: <20190619154611.3bfc007b@collabora.com>
In-Reply-To: <1560950005-8868-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1560950005-8868-1-git-send-email-liaoweixiong@allwinnertech.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_064617_057003_1C297B29 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Chuanhong Guo <gch981213@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Peter Pan <peterpandong@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi liaoweixiong,

On Wed, 19 Jun 2019 21:13:24 +0800
liaoweixiong <liaoweixiong@allwinnertech.com> wrote:

> In function spinand_mtd_read, if the last page to read occurs bitflip,
> this function will return error value because veriable ret not equal to 0.

Actually, that's exactly what the MTD core expects (see [1]), so you're
the one introducing a regression here.

Regards,

Boris

> 
> Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
> ---
>  drivers/mtd/nand/spi/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index 556bfdb..6b9388d 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -511,12 +511,12 @@ static int spinand_mtd_read(struct mtd_info *mtd, loff_t from,
>  		if (ret == -EBADMSG) {
>  			ecc_failed = true;
>  			mtd->ecc_stats.failed++;
> -			ret = 0;
>  		} else {
>  			mtd->ecc_stats.corrected += ret;
>  			max_bitflips = max_t(unsigned int, max_bitflips, ret);
>  		}
>  
> +		ret = 0;
>  		ops->retlen += iter.req.datalen;
>  		ops->oobretlen += iter.req.ooblen;
>  	}

[1]https://elixir.bootlin.com/linux/latest/source/drivers/mtd/mtdcore.c#L1209

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
