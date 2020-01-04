Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F57613017C
	for <lists+linux-mtd@lfdr.de>; Sat,  4 Jan 2020 09:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuVQZ1pkEepnOXeVU95Cre6DM7gdF+jWyN5g76FlLuY=; b=K9B6g+zXKfutqe
	L+/+VWvbygbK0C41It3N1esfLViN27wuW9U8iAPx8s89z3Tp2HjNOvf4h43hAI9wXlNJS7yqFbM4Q
	/JRTHDsQVVXl6zSGB4Hgm1jDQPiwxkKv06QgPf7fdNLPF9ahQSMybcULLKAjgLTS+uFt1HBKQpSU3
	QDMjXueTEzgqQhtsKq94jAIzLDVKX/u5Fieskt6p5d9M535rn3teoHPC8RG+eysnbVekWKsdW+yc4
	8zW1hXxayxtZpgAjNUd5WAZ5Y3cfowp1KideEgBkeN1M0EHgDHoN/7YtyKHy5cZoEh/En+GKnnDy8
	PkiGGAeBxQhlQFqpgTNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inf5J-0006oM-Hb; Sat, 04 Jan 2020 08:47:01 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inf58-0006nP-QX
 for linux-mtd@lists.infradead.org; Sat, 04 Jan 2020 08:46:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1578127600;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=UWVRejdunrkDKbpqDDbnRO05NzpDbjt3y5Cqwl1kzWw=;
 b=BmvDIAQ4JIorBKPVI3sNMJhXkoKtUgUvC4dEoLvPp9ZVu3UnvjZKfcXbIo0+EGJHJI
 K+fnk2PQw+7PWr5FUdb7ijeIQ+whptft+HROJ5NSnO2vYZ9hO9XrB+Z+IA5TYO7gHNRi
 0HjuhfzuRZPCoBS54jdbswuZ4bac8VxYCUOgjNWYEfo5OUKvccYdvd0XVNDF6raH+ugp
 wu1jQlyTCqi/Yy96ZgacMMgrnML321cCVnuAGi9eOMt9r23656ZjX4ahZRo+QGuN6c9a
 xlxqua6UG54cLMQvhWn37xxGqI+8VvrZagIBW/eM9Rh/mcoH1CqY14s4N2Lj/J7yEdE4
 g/Ww==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDVCVXAYOHw=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id a09dafw048kPPIu
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sat, 4 Jan 2020 09:46:25 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] mtd: onenand: omap2: Pass correct flags for
 prep_dma_memcpy
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200104073453.16077-1-peter.ujfalusi@ti.com>
Date: Sat, 4 Jan 2020 09:46:23 +0100
Message-Id: <9EB362B8-EA81-445C-9FD7-29ABB890100C@goldelico.com>
References: <20200104073453.16077-1-peter.ujfalusi@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_004651_445081_E45D6F56 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kyungmin.park@samsung.com, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


> Am 04.01.2020 um 08:34 schrieb Peter Ujfalusi <peter.ujfalusi@ti.com>:
> 
> The commit converting the driver to DMAengine was missing the flags for
> the memcpy prepare call.
> It went unnoticed since the omap-dma drive was ignoring them.

s/drive/driver/

> 
> Fixes: 3ed6a4d1de2c5 (" mtd: onenand: omap2: Convert to use dmaengine for memcp")
> Reported-by: Aaro Koskinen <aaro.koskinen@iki.fi>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> Aaro reported [1] a failure on omap2-onenand pointing to
> 4689d35c765c696bdf0535486a990038b242a26b. It looks like the root cause is the
> conversion of omap2-onenand to DMAengine which missed the flags.
> 
> Basically the client is waiting for a callback without asking for it. This
> certainly causes timeout.
> 
> I have not tested the patch, but it should fix the issue.

makes the gta04a5one.dts work again.

Tested-by: H. Nikolaus Schaller <hns@goldelico.com>

BR and thanks!
Nikolaus

> 
> [1] https://lore.kernel.org/lkml/20200103081726.GD15023@darkstar.musicnaut.iki.fi/
> 
> drivers/mtd/nand/onenand/omap2.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/onenand/omap2.c b/drivers/mtd/nand/onenand/omap2.c
> index edf94ee54ec7..71a632b815aa 100644
> --- a/drivers/mtd/nand/onenand/omap2.c
> +++ b/drivers/mtd/nand/onenand/omap2.c
> @@ -328,7 +328,8 @@ static inline int omap2_onenand_dma_transfer(struct omap2_onenand *c,
> 	struct dma_async_tx_descriptor *tx;
> 	dma_cookie_t cookie;
> 
> -	tx = dmaengine_prep_dma_memcpy(c->dma_chan, dst, src, count, 0);
> +	tx = dmaengine_prep_dma_memcpy(c->dma_chan, dst, src, count,
> +				       DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
> 	if (!tx) {
> 		dev_err(&c->pdev->dev, "Failed to prepare DMA memcpy\n");
> 		return -EIO;
> -- 
> Peter
> 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
