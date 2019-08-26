Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4E39CFB9
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi+wtGppmzCDzdCdokSUSwrEIjvBl1i/Zymm1OLXaNw=; b=hsH3XO4OFLjRSW
	tCQ2SMXKi1f8G7Y9Pk1cSN0RcycqE0jLwAfl66DEExBagWfcfjLNbTH/vwbvloHzeMEbUCocZp/AV
	9lLAdscD1mXqWAYSrs10rpaKUDD8ZzqciNxuEA6Y819Prw/m46vj5oMhlk7vJexqu/snCZPbeGKM4
	mRqd590grYtCvYk9LaE40j+rvNRmyaZllQbxU8MU1fO+c8fgGETUfVg6P0ptW0yBlHvei9f7OxKnO
	W3ifqw4sIBkxYvbbg42DW/wWeA5sjkRRwWVpB7pZvsqQL6APSW3tWZ0jzKDA8vHOzbKNDcI+RNnZA
	81TSthUVZmjtPGDMCr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2EIA-00061e-8j; Mon, 26 Aug 2019 12:40:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2EI2-0005Pz-LT
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:40:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A42F628BB08;
 Mon, 26 Aug 2019 13:40:04 +0100 (BST)
Date: Mon, 26 Aug 2019 14:40:02 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [RESEND PATCH v3 14/20] mtd: spi_nor: Add a ->setup() method
Message-ID: <20190826144002.479494be@collabora.com>
In-Reply-To: <20190826120821.16351-15-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-15-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_054006_847128_576080EE 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 12:08:58 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> nor->params.setup() configures the SPI NOR memory. Useful for SPI NOR
> flashes that have peculiarities to the SPI NOR standard, e.g.
> different opcodes, specific address calculation, page size, etc.
> Right now the only user will be the S3AN chips, but other
> manufacturers can implement it if needed.
> 
> Move spi_nor_setup() related code in order to avoid a forward
> declaration to spi_nor_default_setup().
> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Nitpick: R-bs should normally be placed after your SoB.

> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
