Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18944183B6C
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Mar 2020 22:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RF+s6OYJqmEesI/apqegLbERb4hssh4BmR1sduVgyM=; b=ipL/oZcnPja9Mz
	uEGUDu6L3li/bL8bUQLp4w9WWzuHuKZjif8TpfODQ+dsRiqEHoe2uGGapUW6e9fi7mW10OEKObb4J
	c26W2aRX7+2aT7UUBi16EGqCvG0jCPz15wQQCzdbVTmM2FOT+d30ajyef6736iMqSoU2VARmhUQnC
	/RBOr9VXIi9kW9cs5XtElnhl0Z3gvljAPeMYD+keTQyC89qMShuCnFNeGYn/V794PAqOybbZXLM54
	6Y/O1OzCVmCWJXCIR7spKCHTunnEN4YW6t3yflSytgGK5D60h2zkYuSZl7POF2H+R2YkPnhO/jE/r
	CPuenZDBEAbAwrpmyWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVTb-0006ky-HQ; Thu, 12 Mar 2020 21:34:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVSx-0006N2-Om
 for linux-mtd@bombadil.infradead.org; Thu, 12 Mar 2020 21:34:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=pd/FdESe04KjrnZFYBdn/iabXVBk/lI2TOowByevgiU=; b=dWo2ygHIVntK+zOYTD6Yydpj2S
 55KAglK/TalhRwcn6oXoCHmqli8DIq5Fe9wPG+ufakzvckbuP5yazfxsrFZzZuCsfHqK44Gjho77W
 y81wLYKPFSFrkG+Ib6joO3QHy5vQQpDznw9uC+PedoWJclSnG+ESsvjAu59BfsamaMZo9hUa1VhZo
 cMY4Ll5Cz3apVxcxIDmx/OiQkWfce39u1WT/0Mfsg8Wt03qOj14oZh+YlIb0uuZFAmuX8nITZM+0l
 45Hh/A/z3vmyouS17xQb07FNi8GGMeinXgHvwr2mXX8NcWQjK8bdbCXQO1FDyFmrWesPFAUmrDa69
 i2i/VCKw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVSt-00029Z-54
 for linux-mtd@lists.infradead.org; Thu, 12 Mar 2020 21:34:06 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5C2D2FF804;
 Thu, 12 Mar 2020 21:33:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: shiva.linuxworks@gmail.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 5/6] mtd: spinand: micron: Add M70A series Micron SPI
 NAND devices
Date: Thu, 12 Mar 2020 22:33:09 +0100
Message-Id: <20200312213309.7248-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200311175735.2007-6-sshivamurthy@micron.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a7e5daccc310c3b892ae5e598cadb7a9274c2547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_213403_342403_7C8CC07E 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 17:57:34 UTC, shiva.linuxworks@gmail.com wrote:
> From: Shivamurthy Shastri <sshivamurthy@micron.com>
> 
> Add device table for M70A series Micron SPI NAND devices.
> 
> Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
