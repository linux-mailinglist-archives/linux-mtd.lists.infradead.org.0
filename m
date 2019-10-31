Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5415EAE8E
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 12:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzka2RDydq7vt0TvLtnE0nqAagEjWoRfSTyASe0gWEk=; b=mnED+3dNpf0FSB
	xA7Qb1apZ3uyWxQMUTmvpRDW32sbRqtpDuKlA2o67F+UOAhjYDpjnJPdxhehvs+/A7i7pIuSL+FfJ
	g3TTq8PoWJdZVW56w0iBmZbtr9Ld95I4HNVYXXnQD1pyJW3y/KUpowJpmqCsFZZAS18otocimh0x4
	fN8aKssOgx8dfOwUq2L3AcMa5nnOlhEb3eQ9+/qQ8ezUZCPbXtpNq3RUMxk26Gtsfu1oLCkG7SRrj
	ymspas3+2YJNT/vCvwr0jmF1zRh6p9QpuAx10IOdrV5vwZqb0TISNyr0v9tK3mrAj8teR4HSUHUmq
	E41WXTGxqxlzxIWIAwmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8RA-0005QO-TK; Thu, 31 Oct 2019 11:16:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8Qx-0005Pd-Mb
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 11:16:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 43D6028F256;
 Thu, 31 Oct 2019 11:16:06 +0000 (GMT)
Date: Thu, 31 Oct 2019 12:16:03 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v3 18/32] mtd: spi-nor: Constify data to write to the
 Status Register
Message-ID: <20191031121603.295ee60f@collabora.com>
In-Reply-To: <20191029111615.3706-19-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-19-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_041607_877350_6C89786E 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 11:17:17 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Constify the data to write to the Status Register.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 5fb4d953b5c7..274786e1988f 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -865,7 +865,7 @@ static int spi_nor_write_sr(struct spi_nor *nor, u8 val)
>   * second byte will be written to the configuration register.
>   * Return negative if error occurred.
>   */
> -static int spi_nor_write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
> +static int spi_nor_write_sr_cr(struct spi_nor *nor, const u8 *sr_cr)
>  {
>  	int ret;
>  
> @@ -912,7 +912,7 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
>  	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
>  }
>  
> -static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
> +static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
>  {
>  	int ret;
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
