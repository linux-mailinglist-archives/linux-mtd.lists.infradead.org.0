Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E91324B1C
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 11:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z+hZEwuzBIuzfpntSIJ4Xfix+se6Kl0bqJEI0ilT+s=; b=agP3xKdltekOH4
	xqzuWmF+3C6vQLCotmu5hW8XM6yWWWNHKabpya4S6KKxFDAi/jYbkC+cnjCKwttw45RYU8KMwAbvC
	b9Voi6ECpFjaS/0DJObMAAWHKAIWLZ1KvH8PGI9WEhmbgj3MVUvJoemVPn1MfwjdHDSwKz9RhhYn4
	9yozOCyMtXg/RadcutmUII45B9gNJfnp/jwsmuhji3nSC14hMxmnOpd5i4mC3NTLODYhOtmNYBUJ1
	3DL+fq1vILbVb72F7eS9njSoFnxsm7t+48pCqS6556mFDQ/ItkcJ+a//mZ9qc5Wvr44xKwTuFXX3B
	HM2w54wYKZlNUTCu7OvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0hV-000892-D7; Tue, 21 May 2019 09:04:49 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0hN-00088Z-49
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 09:04:43 +0000
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 0AC50240009;
 Tue, 21 May 2019 09:04:29 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2] mtd: rawnand: initialize ntargets with maxchips
Date: Tue, 21 May 2019 11:04:17 +0200
Message-Id: <20190521090417.7883-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521084335.15026-1-s.hauer@pengutronix.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: fcd69b6fedcad3681f636edcc130ee1a6159a890
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_020441_315194_AE773C44 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <bbrezillon@kernel.org>, kernel@pengutronix.de,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-05-21 at 08:43:35 UTC, Sascha Hauer wrote:
> memorg->ntargets is initialized with '1'. It should be initialized with
> the maxchips argument from nand_scan() instead. Otherwise multi chip
> support errors out on the secondary chip selects when trying to call
> nand_reset() on them:
> 
> WARNING: CPU: 0 PID: 1 at drivers/mtd/nand/raw/internals.h:114
> nand_reset_op+0x194/0x1c4
> 
> With this memorg->ntargets is initialized with the maximum number of
> chip selects supported by the driver. After having detected the number
> of actually connected chips memory->ntargets is updated with that
> number.
> 
> Fixes: 32813e288414 ("mtd: rawnand: Get rid of chip->numchips")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
