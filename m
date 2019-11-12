Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C033FF91D6
	for <lists+linux-mtd@lfdr.de>; Tue, 12 Nov 2019 15:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cR09dKktgz54Z63Oyz8MWnjOwyFtpv0y3ZX1/fzsxas=; b=gNW+A1Xt23Gdf6
	mGIit3w7kZxgIqOK+88zqW8EkK9rR41XCLm6uS+VGdxTRJ3K5mvK7BQt8qPdxU9nhLlqedb25uz0+
	0uqOCjcdd5qBxyl/Td1ZTHb9WiSy2H2iaXrH8MlkYJ0VDQCDuUuuxOPO+p/Ek/AAaSf2ZnBozLGL2
	ieurdNeLb5erxokUMR7OsfBoAapavzF1g889RW5hfYodHqp/EZlW8GgAnl44T9V6bQLoHYnwBaFGz
	DUWvFVTCAsIfA6umdn/oQTauefdedGuCUcH0t4VCJOIq6iZsINUIJCGT9+ZctxiC2cPb3K2vF+HeG
	loCoYY1M3dLwKQ3H0G1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX17-0004QU-V4; Tue, 12 Nov 2019 14:19:37 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX0z-0004Oh-Tr
 for linux-mtd@lists.infradead.org; Tue, 12 Nov 2019 14:19:31 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E62A424000F;
 Tue, 12 Nov 2019 14:19:15 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Angelo Dureghello <angelo.dureghello@timesys.com>, vigneshr@ti.com,
 richard@nod.at, miquel.raynal@bootlin.com
Subject: Re: [PATCH] mtd: devices: fix mchp23k256 read and write
Date: Tue, 12 Nov 2019 15:19:13 +0100
Message-Id: <20191112141913.21413-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030113957.1625342-1-angelo.dureghello@timesys.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: f3ede16510057e8fc178483e14b9c1aac6622cda
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_061930_094462_0D7C8901 
X-CRM114-Status: UNSURE (   6.91  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2019-10-30 at 11:39:57 UTC, Angelo Dureghello wrote:
> Due to the use of sizeof(), command size set for the spi transfer
> was wrong. Driver was sending and receiving always 1 byte less
> and especially on write, it was hanging.
> 
> echo -n -e "\\x1\\x2\\x3\\x4" > /dev/mtd1
> 
> And read part too now works as expected.
> 
> hexdump -C -n16 /dev/mtd1
> 00000000  01 02 03 04 ab f3 ad c2  ab e3 f4 36 dd 38 04 15
> 00000010
> 
> Signed-off-by: Angelo Dureghello <angelo.dureghello@timesys.com>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
