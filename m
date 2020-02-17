Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4B1618C1
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 18:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVVMoKnyR06f2AkW+26YzRjZVYbWbyEsPEmXO0Yr7rg=; b=YY4FNQaqlTNubd
	WieJutfCTSNuMGV1m13Pv8E/9b0+M290hz9SjbmKrb1FEkZPs1yYAOFOfs7EHZGh/SHsiOJXJfvhk
	28hMlZJhz9YqcHcEgbzSM9FM57vq+OPXVKN3nFz8ojPP+Eh9Fyrjw/hBfP5iBjTeahZhfsrgaXxFT
	nD16Zqbb6caaNNDJOeJBvZjxbR1BniZhTvjE+SjzGyVZ96hypPdlLk5LR5AY9dfdG+39XcTwTcvIa
	0oTPAB8/NELmLbCcd6co6ogIEkaJ5WEEhl6GhlkReEgZXJ0WUapEhclV2m0r3cqASJMsB2Ju8GSFj
	PPVxTpKFv0izR7EHIAuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3k8d-0003cU-Ib; Mon, 17 Feb 2020 17:24:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3k8U-0003bo-13
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 17:24:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1D9BE2667C2;
 Mon, 17 Feb 2020 17:24:44 +0000 (GMT)
Date: Mon, 17 Feb 2020 18:24:38 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 3/3] mtd: spinand: Don not erase the block before
 writing a bad block marker
Message-ID: <20200217182438.76a25592@collabora.com>
In-Reply-To: <20200217155213.5594-4-frieder.schrempf@kontron.de>
References: <20200217155213.5594-1-frieder.schrempf@kontron.de>
 <20200217155213.5594-4-frieder.schrempf@kontron.de>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_092446_205160_947AEA3D 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 liaoweixiong <liaoweixiong@allwinnertech.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In the subject: s/Don not/Do not/

On Mon, 17 Feb 2020 15:54:12 +0000
Schrempf Frieder <frieder.schrempf@kontron.de> wrote:

> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Currently when marking a block, we use spinand_erase_op() to erase
> the block before writing the marker to the OOB area. Doing so without
> waiting for the operation to finish can lead to the marking failing
> silently and no bad block marker being written to the flash.
> 
> In fact we don't need to do an erase at all before writing the BBM.
> The ECC is disabled for the raw access to the OOB data and we don't

			  s/the raw access/raw accesses/

> need to work around any issues with chips reporting ECC errors as it
> is known to be the case for raw NAND.
> 
> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> Cc: stable@vger.kernel.org
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
> Changes in v2:
>  * Instead of waiting for the erase operation to finish, just don't
>    do an erase at all, as it is not needed.
>  * Update the commit message
> ---
>  drivers/mtd/nand/spi/core.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index a94287884453..8dda51bbdd11 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -613,7 +613,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
>  	};
>  	int ret;
>  
> -	/* Erase block before marking it bad. */
>  	ret = spinand_select_target(spinand, pos->target);
>  	if (ret)
>  		return ret;
> @@ -622,8 +621,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
>  	if (ret)
>  		return ret;
>  
> -	spinand_erase_op(spinand, pos);
> -
>  	return spinand_write_page(spinand, &req);
>  }
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
