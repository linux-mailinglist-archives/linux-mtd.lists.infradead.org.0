Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443841360D1
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QkEVQdNBGwkiaqmhSAHxemWLUp/qWOetA9e8LoBJxM=; b=lQScx0gMfykZbt
	aAZeZBnWG0j5BcZ96Hd7uB+Vr4zjARxaatunm0YUSBnlk0cVWXzO1BER35JRN22lloee7w9upw3Nj
	cVUtLAM1Npcg1+5L+gejXNcVbGks06DW2KXZyBn9f/dqMLQ9AxNeUZEuJBeRwpEoYnpYBHtaKKil4
	jCmi6gAykdtIUEh/IV1AG52T5sc4FbUNf7pivHXu9oftORPoYztGRby1JQ9vZRsBN10SSYomjtRqm
	moOWoZupyRsC20aOYHdq0A091DCPmHCgoEWR1ysEOT4DTy6+s7O9meM4Dm22Jd9p+2TN9BNsD2Hfs
	JwUFTeDkmvHBM0FrfBYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdGa-0006r6-Sc; Thu, 09 Jan 2020 19:14:48 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdGQ-0006qS-4m
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:14:39 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C32EF240003;
 Thu,  9 Jan 2020 19:14:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Tudor.Ambarus@microchip.com, john.garry@huawei.com, vigneshr@ti.com,
 richard@nod.at, miquel.raynal@bootlin.com
Subject: Re: [PATCH v2] mtd: spi-nor: Fix the writing of the Status Register
 on micron flashes
Date: Thu,  9 Jan 2020 20:14:23 +0100
Message-Id: <20200109191423.10589-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191203144948.15137-1-tudor.ambarus@microchip.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 82de6a6fb67e16a30ec2f586b1f6976c2d7b4b62
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111438_318375_536ED5E5 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-12-03 at 14:50:01 UTC,  wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Micron flashes do not support 16 bit writes on the Status Register.
> According to micron datasheets, when using the Write Status Register
> (01h) command, the chip select should be driven LOW and held LOW until
> the eighth bit of the last data byte has been latched in, after which
> it must be driven HIGH. If CS is not driven HIGH, the command is not
> executed, flag status register error bits are not set, and the write enable
> latch remains set to 1. This fixes the lock operations on micron flashes.
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Fixes: 39d1e3340c73 ("mtd: spi-nor: Fix clearing of QE bit on lock()/unlock()")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Tested-by: John Garry <john.garry@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
