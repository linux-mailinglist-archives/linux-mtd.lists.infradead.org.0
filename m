Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012791360D8
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiLwBRaSzNjQYYm+M/N2rXpoV425xq1+vxpX/SJmUtE=; b=bymx5cC5KPD71n
	GlmL1k2HaurZr6JYRQSBp8JH1DxTtChG1ANzNxpxhAk/X0tFHjijnNtVe0Lc/KkZEBfauRo7CAROJ
	FswubbpEJdBWf/pkI6HaC3RZmLQt5dfeWqGBYYCsSVGC4UP63msZ6JBMqLvzJ/RjWvUhKwPrinSrD
	Dvi8KveQ5q8AiTIB9yDcCOePKfCaMZEz000h4SXtEPPTcLoicy2i0zrIaKAW2vM2WA/wASMnm2NhS
	SkquatUE1/AnpU0Bz3M6bl8x7LBOJwqHLm7abkLMfbJjP7GbRJ5nLJQHSG42Ks2obt+l+3JmJDBNS
	1XCj5SpUOQ2DX9iPKm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdHY-0000U8-GU; Thu, 09 Jan 2020 19:15:48 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdGp-0007F9-NX
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:15:05 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 777C320008;
 Thu,  9 Jan 2020 19:14:58 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>,
 kyungmin.park@samsung.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mtd: nand: checkpatch.pl cleanup - fix errors and checks
Date: Thu,  9 Jan 2020 20:14:56 +0100
Message-Id: <20200109191456.10838-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200102171008.GA15268@user-ThinkPad-X230>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 44f45994f438b4f4e0ba977b173980268983c60f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111503_970480_F2953FE2 
X-CRM114-Status: UNSURE (   4.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2020-01-02 at 17:10:08 UTC, Amir Mahdi Ghorbanian wrote:
> Correct mispelling, spacing, and coding style flaws caught by
> checkpatch.pl script.
> 
> Signed-off-by: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
