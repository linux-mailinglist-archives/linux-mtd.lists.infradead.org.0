Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18350D4F30
	for <lists+linux-mtd@lfdr.de>; Sat, 12 Oct 2019 12:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68QNmT17/CONEs2ya0bAWy0fqpmp9pAydSLyC7JKFjw=; b=boYkLVOofL9M+b
	LHu8ydjFqYgEZ4Q7vcWFMHMCN9MGhGpm9WsC6F5y51lX/bnID5XtewwhKtNSPEez9LaSLrHDV/w0Y
	7v/d6SiByv2ePJVF2t/Y1a4FZwFN5prqu+vovfVQv77wROFwc25USZpdQKfuRnT6JmICMUMmOZza6
	U8jgz/dHBYOb6eTrO56PTOB4+7Rjc8sd5i3kjRQKxMNft/yYJV4A8siPfu94aZykWvA7NALXyXVFI
	TLU0gwt+cjTd5Gtdl46Wk7sGnryTJdo35qvcCCGxt/Fb1s2KRA8gHu7MfNexdsuFwT8GtJt/xD/zD
	tBVw1O8ECJ6knEkxXUZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJF6t-0003uq-BI; Sat, 12 Oct 2019 10:58:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJF6R-0003of-Kk; Sat, 12 Oct 2019 10:58:29 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 98FEB28D210;
 Sat, 12 Oct 2019 11:58:19 +0100 (BST)
Date: Sat, 12 Oct 2019 12:58:15 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 16/40] mtd: Fix typo in mtd_ooblayout_set_databytes()
 description
Message-ID: <20191012125815.1ae2f029@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-17-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_035827_810208_6D21AD1B 
X-CRM114-Status: GOOD (  16.31  )
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:16 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Fix a probable copy/paste error: the function works like
> mtd_ooblayout_set_bytes(), not *_get_bytes().
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/mtdcore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> index 408615f29e57..12f78ba8c4e9 100644
> --- a/drivers/mtd/mtdcore.c
> +++ b/drivers/mtd/mtdcore.c
> @@ -1547,7 +1547,7 @@ EXPORT_SYMBOL_GPL(mtd_ooblayout_get_databytes);
>   * @start: first ECC byte to set
>   * @nbytes: number of ECC bytes to set
>   *
> - * Works like mtd_ooblayout_get_bytes(), except it acts on free bytes.
> + * Works like mtd_ooblayout_set_bytes(), except it acts on free bytes.
>   *
>   * Returns zero on success, a negative error code otherwise.
>   */


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
