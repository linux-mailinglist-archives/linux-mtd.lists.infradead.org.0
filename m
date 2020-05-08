Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCD21CA833
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 12:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTuRy8RoEmxYoFEWqBZcDfKYMR+yZOLZxh3qHVjbFaY=; b=NsZwC/9Y0z61oW
	V/wIddSJ1n1MF1/B40WP4+5DD48KhvQUzUuiQFmis0ok0CuIjhFL1EQEVmwDZxSdpplG/V5spbkva
	n6HZeWjwVlX0tpVM+ee1ptPocUG9gliiFO4fSf3DSi2uG8XQZBKwsDOlclJS74fNWCGTKgEasYh6e
	PLXeyG01qHoHvmMVChF6e3HMcTp8pb+vXAjZ6lAkxcIj1QiY3udvWSNTJDSS50Fik18YVjCmbtc87
	9lAkFXjQa7UKxenNrVX0rmdrOpSVHquXTtqPriFTGFRjniGo/+K2BwVWfMm7KHmspL1mJyCG7TMTH
	pyFIR+aE35I09aKOTGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX06l-0004JE-5X; Fri, 08 May 2020 10:19:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX06d-0004IX-NZ; Fri, 08 May 2020 10:19:49 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 2E11320006;
 Fri,  8 May 2020 10:19:41 +0000 (UTC)
Date: Fri, 8 May 2020 12:19:40 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 2/4] mtd: rawnand: cs553x: Stop using
 chip->legacy.IO_ADDR_{R,W}
Message-ID: <20200508121940.4597f0e8@xps13>
In-Reply-To: <20200501090650.1138200-3-boris.brezillon@collabora.com>
References: <20200501090650.1138200-1-boris.brezillon@collabora.com>
 <20200501090650.1138200-3-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_031947_901313_BAC0630B 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.183.200 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-geode@lists.infradead.org,
 linux-mtd@lists.infradead.org, Andres Salomon <dilinger@queued.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri,  1 May
2020 11:06:48 +0200:

> Now that we have our own controller struct we can keep the MMIO pointer
> in there and use instead of using the chip->legacy.IO_ADDR_{R,W} fields.

                  it

(don't send a v2 just for this)


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
