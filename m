Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BA2191C78
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 23:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjMSU15/j9ERm7buAYX4bK0ciuRcYmSWxPYu34OkSeM=; b=uJvvh4UGScQjui
	KX4pQzNdMBekRrW8pNGGQ3qbrnVyJdsldCijKU+eJmLUtGVBYbSX+LK3Nvi+a2JIvsPuToygAKM3f
	59nn3hHvUoSYv5i6us/Pw90LUv/1lfdGXlZpvIlb0pibFNtGwsi246o4522H2t8E+2pW4CZr2xRbl
	kGiDoT7XfjawVlpdO3QtLEZN60vUXnW7NlnKtzQWwfK9rxmCQynCmRk6PXJ/BAkIV1yz3cJoZGZD2
	9dD3wUj175zZeprfM9dyJd2/AxELKXenLwWIEo+3F5a28+4YMb5sznvR9nSu5v9Zj9Pe88TT9U6m+
	+IxRhQQFh2/blovi6V4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrgA-0005yN-6P; Tue, 24 Mar 2020 22:05:46 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrg2-0005xb-I5
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 22:05:40 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id C461E20004;
 Tue, 24 Mar 2020 22:05:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaoming Ni <nixiaoming@huawei.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com
Subject: Re: [PATCH] mtd:Fix issue where write_cached_data() fails but write()
 still returns success
Date: Tue, 24 Mar 2020 23:05:33 +0100
Message-Id: <20200324220533.15273-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1584674111-101462-1-git-send-email-nixiaoming@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 4e4a9a828af29785fad12ecc11583769e1282024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_150538_732981_368A7070 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: zhangweimin12@huawei.com, linux-mtd@lists.infradead.org, wangle6@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2020-03-20 at 03:15:11 UTC, Xiaoming Ni wrote:
> mtdblock_flush()
> 	-->write_cached_data()
> 		--->erase_write()
> 		     mtdblock: erase of region [0x40000, 0x20000] on "xxx" failed
> 
> Because mtdblock_flush() always returns 0,
> even if write_cached_data() fails and data is not written to the device,
> syscall_write() still returns success
> 
> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
