Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8A8181629
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 11:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTgBhAFlzCJpTgQTZoKMHVPAX812tRloG1EGp3130ME=; b=FxODniKLJv5cg/
	xppLzLyHmYb8wm4nws/6uahGKnKYcor9Ci+95WKgJX4Vyuzjwd2MKL8GCKio2s0aAyA7kphJ+qPaH
	N9pPbXM6EK3IaK0+i2zRZiY0a1XH3XUMH1jLqzudGYGAKxf/4s1IPwc4TmFJm53MnNZBRj7YQNSZp
	E2ng20V6OAhUyxfymH7PbVxSCMndfKRQ1+QY4gI8Uz8wOjbQ1Hq2IAw0F4XbM/mzZdFNK0KSNdac5
	Pt4XVbE37wnM2uZaftyJ/9N+OYrpQix8IyAfns9wMfwopse6RDugN/CRk7qA5AQzTNbStEx6qQmeL
	5ONGsTtossmiRzwaC/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBywy-0008H7-U2; Wed, 11 Mar 2020 10:50:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBywr-0008GX-Gr
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 10:50:50 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 58288295F37;
 Wed, 11 Mar 2020 10:50:47 +0000 (GMT)
Date: Wed, 11 Mar 2020 11:50:44 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH v6 2/6] mtd: spinand: micron: Describe the SPI NAND
 device MT29F2G01ABAGD
Message-ID: <20200311115044.694eab39@collabora.com>
In-Reply-To: <20200309115230.7207-3-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
 <20200309115230.7207-3-sshivamurthy@micron.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035049_687438_C33178A8 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon,  9 Mar 2020 12:52:26 +0100
shiva.linuxworks@gmail.com wrote:

> From: Shivamurthy Shastri <sshivamurthy@micron.com>
> 
> Add the SPI NAND device MT29F2G01ABAGD series number, size and voltage
> details as a comment.
> 
> Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/spi/micron.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
> index c028d0d7e236..e4aeafc56f4e 100644
> --- a/drivers/mtd/nand/spi/micron.c
> +++ b/drivers/mtd/nand/spi/micron.c
> @@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct spinand_device *spinand,
>  }
>  
>  static const struct spinand_info micron_spinand_table[] = {
> +	/* M79A 2Gb 3.3V */
>  	SPINAND_INFO("MT29F2G01ABAGD", 0x24,
>  		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
>  		     NAND_ECCREQ(8, 512),


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
