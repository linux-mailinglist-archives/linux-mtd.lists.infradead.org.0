Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606351E023C
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FysHCsaWRvHYndxTAYss4dvaPiz5kUhRUq+D1Ebk/4=; b=AJ4IO49ZXRbQTH
	cFJqFwZDud+gOj6OJ9KGa1lrfCt+NIoJ1jjZ7w7lksQu0er6f51ATYmNsKx4ZTJv8LbsInTjhL6ba
	gS3en9JyLmeCWJlsCCBEX2/vDBcu32+mduTldekkj7zx3J99M2+AINw2tbGLVUPr6JuaUxhp1lo8/
	Y6U4WHnCthchYTb6/fil5mHVebQv9ARkRGM19Ahfzv5FB6dPgWB60bLni6QeCNN03wDllMyzLBumB
	cWMAGzvxAVJpPsYJgpYIhOeB/tfQHZ68cKgchRILvjP/to6FzOCi9D7DzAoAP7nQTJSfVj88p9G7R
	yYKWc1MGIYpErNZ7Amyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwE2-0001ra-Ij; Sun, 24 May 2020 19:23:58 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcw0U-0007io-B4
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:10:00 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A022020005;
 Sun, 24 May 2020 19:09:54 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH v5 2/8] lib/bch: Allow easy bit swapping
Date: Sun, 24 May 2020 21:09:53 +0200
Message-Id: <20200524190953.11935-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519074549.23673-3-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 1759279ad138cb0a903224a89f4bf40f69c417e8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_120958_529201_586989BC 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-05-19 at 07:45:43 UTC, Miquel Raynal wrote:
> It seems that several hardware ECC engine use a swapped representation
> of bytes compared to software. This might having to do with how the
> ECC engine is wired to the NAND controller or the order the bits are
> passed to the hardware BCH logic.
> 
> This means that when the software BCH engine is working in conjunction
> with data generated with hardware, sometimes we might need to swap the
> bits inside bytes, eg:
> 
>     0x0A = b0000_1010 -> b0101_0000 = 0x50
> 
> Make it possible by adding a boolean to the BCH initialization routine.
> 
> Regarding the implementation itself, this is a rather simple approach
> that can probably be enhanced in the future by preparing the
> ->a_{mod,pow}_tab tables with the swapping in mind.
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
