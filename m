Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E491BE38E
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehU/nJPSjMRQ/IkBfNmwuIUDNsRFCa+q5byly4oqxKk=; b=iE2yB8XVOd3w/h
	6kUzRAvX5GAUIuWjcH+v/CxpvtRchsfedCiWat+nI5wet3U/AXGIbXjn2P+WFdbuBBExgTorrIVEH
	sqAmO0iguCPg9MdSbQH3ZcHXDbAzErp73mDNOf4w1Qr+iL8SS8lSZLb9ep/FfRAO62tz9r6kfZFl+
	34eceM3r0UYO9NFSVNojFIWEsLurh/K8g1UUZnboC27k+qFrgEePYhGNMynhIJ3mJCzRXk67RQAo9
	PP9DYF1ghR8TU8mjbYhtsb3nnkwva4bb9R4v1VM+2ztwGb6kMkfpP24ioRB2xbytesZep8WRP6160
	A+AP0zPnPNg95YL/kgRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpOE-0006ER-Rx; Wed, 29 Apr 2020 16:16:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpO0-0006CC-2Z
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:16:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C44DD2A2284;
 Wed, 29 Apr 2020 17:16:34 +0100 (BST)
Date: Wed, 29 Apr 2020 18:16:32 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 11/11] mtd: rawnand: micron: Allow controllers to
 overload raw accessors
Message-ID: <20200429181632.5e412734@collabora.com>
In-Reply-To: <20200429155540.22048-12-miquel.raynal@bootlin.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-12-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_091636_243100_9F5CB94C 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 17:55:40 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Some controller drivers do not support executing regular
> nand_read/write_page_raw() helpers. For that, we created
> nand_monolithic_read/write_page_raw() alternatives. Let's now allow
> the driver to overload the ECC ->read/write_page_raw() hooks when
> these hooks are supported.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

I would have merged this patch in patch 10, but that's not a big deal.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_micron.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
> index 56654030ec7f..3f109ab31fa1 100644
> --- a/drivers/mtd/nand/raw/nand_micron.c
> +++ b/drivers/mtd/nand/raw/nand_micron.c
> @@ -508,8 +508,10 @@ static int micron_nand_init(struct nand_chip *chip)
>  			chip->ecc.read_page_raw = nand_read_page_raw_notsupp;
>  			chip->ecc.write_page_raw = nand_write_page_raw_notsupp;
>  		} else {
> -			chip->ecc.read_page_raw = nand_read_page_raw;
> -			chip->ecc.write_page_raw = nand_write_page_raw;
> +			if (!chip->ecc.read_page_raw)
> +				chip->ecc.read_page_raw = nand_read_page_raw;
> +			if (!chip->ecc.write_page_raw)
> +				chip->ecc.write_page_raw = nand_write_page_raw;
>  		}
>  	}
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
