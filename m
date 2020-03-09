Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B64C17E221
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 15:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EB1J1Ds2tnpa/FkdUVyGvBGLpDXVjuUmRG+dKu5Vq2s=; b=qQBU69zD34Lzc4
	pjZIcKK9Zp0EjFM6mx5Eb7PgTTWpFNGp6/+QCdO73UuHo67gqFeHCPygOkzn6eU8VsTLielrLHZ8z
	4hC8+LoRFdZhODHJASq2zkKQNC1v932SR2SLOk/ldqblEWRgmOHc8OE1Xfy4aIWvvIaf1ixbiNxCe
	SCo26NVsqa98/bCaF37+2DadENZHYWxQwOl+q3gAD4OSUkZe5qCl8CSfqj/4zeggkxE0tloK3faNi
	XojJJ/yJwrU4jxkCTOnjLPg08POMGEPuZj3+3DCKOjPdBR3wU6CnNRjzUCDxZ5Ti2S2xBoNFOdRiK
	HJJWG+io7PodPIfIE83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ0g-0003sI-FG; Mon, 09 Mar 2020 14:03:58 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ0Y-0003rO-Gn
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 14:03:52 +0000
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain
 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 921251C000C;
 Mon,  9 Mar 2020 14:03:41 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexey Korolev <akorolev@infradead.org>
Subject: Re: [PATCH] mtd: lpddr: Fix a double free in probe()
Date: Mon,  9 Mar 2020 15:03:41 +0100
Message-Id: <20200309140341.22314-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228092554.o57igp3nqhyvf66t@kili.mountain>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 315d2e0cdfe0e15585d2244c6986008c78cc330d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_070350_699113_AF24B23A 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 David Woodhouse <David.Woodhouse@intel.com>,
 Richard Weinberger <richard@nod.at>, kernel-janitors@vger.kernel.org,
 linux-mtd@lists.infradead.org, Steve Winslow <swinslow@gmail.com>,
 Allison Randal <allison@lohutok.net>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2020-02-28 at 09:25:54 UTC, Dan Carpenter wrote:
> This function is only called from lpddr_probe().  We free "lpddr" both
> here and in the caller, so it's a double free.  The best place to free
> "lpddr" is in lpddr_probe() so let's delete this one.
> 
> Fixes: 8dc004395d5e ("[MTD] LPDDR qinfo probing.")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
