Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7097B5A44B
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 20:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL1GxBhI4yhszgnn2JdYIdJmiS6ReCzzpbRZzHRiCuY=; b=WPJV5VgMKC1Qww
	SW03ZHR2HuyFU6/TLLllyREHp1iDm/LNj2Mv/OEFjIPrh6LH4/SMxBeh0Vcd2lrzu6PZU6NK2yHmD
	mRLXdN4KUGr6ry2RYhtFQ7BRjjWMq6IyPswceNc08P6W/1+IUZr2lYYQ4FTHnzqzPybmbvqYYfcdM
	nq7XnbQSrxgiUGe4sCmg0h57ZtfllduJpDnLsCe5AaJQ3oV+DoX1CkxAfjtCSDDs8DzL8XrxcgmZs
	LJJIWM837g/rYQcMdWIZK25KB5py9MUv4pbd8Wn3ZJsdR+1D+zvbGBY4h99GrYiub6HD6nNDFx+fW
	4EY3ZzKnWXP+zZMWOcbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvm8-0004vf-R5; Fri, 28 Jun 2019 18:39:08 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvk4-0003By-Hq
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 18:37:03 +0000
X-Originating-IP: 81.185.164.234
Received: from localhost.localdomain (234.164.185.81.rev.sfr.net
 [81.185.164.234]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A6CFE1BF20B;
 Fri, 28 Jun 2019 18:36:41 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v2 14/27] mtd: nand: use kzalloc instead of kmalloc and
 memset
Date: Fri, 28 Jun 2019 20:36:33 +0200
Message-Id: <20190628183633.18797-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628024814.15527-1-huangfq.daxian@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 17c929e1334ee0647ce9f3aba1d6bc645c1e5206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113700_774013_CDDE58BB 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 02:48:13 UTC, Fuqian Huang wrote:
> Replace kmalloc followed by a memset with kzalloc.
> 
> There is a recommendation to use zeroing allocator
> rather than allocator followed by memset with 0 in
> ./scripts/coccinelle/api/alloc/zalloc-simple.cocci
> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
