Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ECC1B84AE
	for <lists+linux-mtd@lfdr.de>; Sat, 25 Apr 2020 10:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/japy/G2/pahAmPVt3oiF/6SUtnUDmULvuXKlRqk7Y=; b=oj+m18WYoRqRkI
	Z4IJ+zgHjCdqMiETF3RQN6GNUJrkkMdD79LvS/627GkQ2/pBlLiK/6+v5cNa0BoO23cNpg0s2TMP/
	Dl/x1sIXl/TtyJYbRW5egYs4IromObPMypqbEp6gO7OYYji9CE0ZUUsjDt2I7Y0ZFahO/KDrimuu5
	94sep9rNqGN8K9bhvriHiKmuQquZ+Z3i45ANDURTegRC2Wq6pEZ812hoIIeEG/7qudOinKG5OE6eQ
	CGk59WwcHSNgCzbpICqXeZcwUmAFFxtwx22GH6PxRTEkM9EY7TnGC319i33qBfZk+KmZN6wzyHhSj
	B2sKoOm1IFF1bCI1bRzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSGFi-0000v3-0F; Sat, 25 Apr 2020 08:33:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSGFY-0000uE-3x
 for linux-mtd@lists.infradead.org; Sat, 25 Apr 2020 08:33:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C62672A2E93;
 Sat, 25 Apr 2020 09:33:22 +0100 (BST)
Date: Sat, 25 Apr 2020 10:33:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 01/10] mtd: rawnand: Translate obscure bitfields into
 readable macros
Message-ID: <20200425103320.4b409216@collabora.com>
In-Reply-To: <20200424173631.14311-2-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
 <20200424173631.14311-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_013324_290004_ABB482F6 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 19:36:22 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

>  /*
>   * This option could be defined by controller drivers to protect against
>   * kmap'ed, vmalloc'ed highmem buffers being passed from upper layers
>   */
> -#define NAND_USE_BOUNCE_BUFFER	0x00100000
> +#define NAND_USE_BOUNCE_BUFFER	BIT(22)

					^BIT(20)

>  
>  /*
>   * In case your controller is implementing ->legacy.cmd_ctrl() and is relying
> @@ -207,20 +207,20 @@ enum nand_ecc_algo {
>   * If your controller already takes care of this delay, you don't need to set
>   * this flag.
>   */
> -#define NAND_WAIT_TCCS		0x00200000
> +#define NAND_WAIT_TCCS		BIT(21)
>  
>  /*
>   * Whether the NAND chip is a boot medium. Drivers might use this information
>   * to select ECC algorithms supported by the boot ROM or similar restrictions.
>   */
> -#define NAND_IS_BOOT_MEDIUM	0x00400000
> +#define NAND_IS_BOOT_MEDIUM	BIT(20)

				^ BIT(22)

The rest looks good, feel fre to add

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

once those 2 mistakes are fixed.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
