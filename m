Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA44B9D001
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 15:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGpQ0fpWMlAjF3qmkng2T3hAhUCUqV9uaZTltiLcuSM=; b=XJ+XYmV/BfzcjE
	Lcuj8IgYtNuHyZkfCGCDmbzrRwPTYjiv1H+78ifTfLoqn9DFjH3peASO8rZQnUlMoDkwO3CszlPG/
	Ud56jPqhBXak5dTaGletEWuqZ9eg4fdKyJ3dmA51q9IXy14agDnDK+rFSTMjKQ/8z2pv4ulVBxJmD
	28APCObdDXCLInOON0FS2kuxRAw0p83hPnKEHf9tQ9QF7J32UrH3ToacHG2S5RdrkhnRWKQ/uzncm
	XXm50IMz/a4yv3d42Y2Axn+Ei0BgllIUobzqgF4seDyrpcZNMvadQ7AP3GHIOP29LoQ4dcTjEsnlZ
	bk604texi/FeQ/MpUCZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Eek-0006GP-0d; Mon, 26 Aug 2019 13:03:34 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2EbZ-0001Ot-AH
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 13:00:20 +0000
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 46808100006;
 Mon, 26 Aug 2019 13:00:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: Re: [PATCH] mtd: onenand_base: Fix a memory leak bug
Date: Mon, 26 Aug 2019 15:00:11 +0200
Message-Id: <20190826130011.15239-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1566143569-2109-1-git-send-email-wenwen@cs.uga.edu>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: d83aef09aaa50bdafbb32981859128299abf32eb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_060018_233728_E488E8FF 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 open list <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "open list:ONENAND FLASH DRIVER" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 2019-08-18 at 15:52:49 UTC, Wenwen Wang wrote:
> In onenand_scan(), if CONFIG_MTD_ONENAND_VERIFY_WRITE is defined,
> 'this->verify_buf' is allocated through kzalloc(). However, it is not
> deallocated in the following execution, if the allocation for
> 'this->oob_buf' fails, leading to a memory leak bug. To fix this issue,
> free 'this->verify_buf' before returning the error.
> 
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
