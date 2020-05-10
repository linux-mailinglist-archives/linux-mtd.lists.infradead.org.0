Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D871CCD6F
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBujKXyBKPJXpU9VrYM6gGgNLzSaUutHD3TN2BHygMA=; b=oJG6mvlgGdRnkh
	fruc1ib/ijW88f6Np/IeUZm2TG/o4pgY9jiSP+H8PEjN+/itu3kscAIhRtkvvKXqkYJsOb6Rdpwn2
	uZrwG4z0OioF+jQ4A/QMoZZBlowyAp8zBZhTPPOpbGuPUvJDka/X1vgPupwCW8AhQWGjO/HKc+C9i
	bDl3fQrR0sRKNax7S9ki0sEXnfKJ/iJ3uDAFigWXfEgwL3Km2VwtmNHaeSgxNWedR81EV1yN8eaI5
	XVovcf19Adze9rxZmUKkTHevlHe6b+wZ2ijp6WngMhVJrTqHtBGWLARFvdgc3gDmJQtjdK0PL/mnL
	RC7v91h0GILEQMKHRypQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXsCA-0006by-EK; Sun, 10 May 2020 20:05:06 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsAd-0005Ku-53
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:03:32 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CAE2FC0004;
 Sun, 10 May 2020 20:03:28 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH v5 05/13] mtd: rawnand: Rename the use_bufpoi variables
Date: Sun, 10 May 2020 22:03:28 +0200
Message-Id: <20200510200328.346-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-6-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 39385c06b37d97ca5ba4076e19e119d3c01088ae
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_130331_419610_FC3DC26A 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

On Thu, 2020-05-07 at 10:52:33 UTC, Miquel Raynal wrote:
> Both in nand_do_read_ops() and nand_do_write_ops() there is a boolean
> called use_bufpoi which is set to true in case of unaligned request or
> when there is a need for a DMA-able buffer. It basically means "use a
> bounce buffer".
> 
> Depending on the value of use_bufpoi, the bufpoi variable is always
> used and will either point to the original buffer or to the nand_chip
> structure "internal data buffer" (this buffer is allocated with
> kmalloc() on purpose so that it will be DMA-compliant).
> 
> In all cases bufpoi is used so the boolean name is misleading. Rename
> use_bufpoi to be use_bouce_buf to be more accurate.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
