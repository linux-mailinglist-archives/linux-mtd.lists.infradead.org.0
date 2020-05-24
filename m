Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F36C1E01D2
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbYwlZr12feCqVeLi8MEn77r7URTv1+lj/74D6EbhMk=; b=Gwnedfm0fkRFAF
	wHkmETu0cRqWziaaQF9o2O9FY917xJ0i92Sku0jQ6eaJfAY66PmKezuQqkCLFiXW/e4O6wBIMTf9k
	Dp88rjtywVZtWayXe7NL4PYnK7zm8U9+yF8JOiHcASWQP3QshfVbqWeCN8g5BYOmtBoDLh4IFReYh
	QI9B/vd7LhK4Cad1E/ui9wY4i7zYyK2j7Z6MoZvfPBU9z22Zr0e6SAkBnv9aTCVywsIC0SxLhYlAH
	9rCFkmfS4I6qbYbvRq5u5TF/a21WZiedoOaC9KGay3hFnVFjWsqFQbQVcx7p8QA731Rechu52u2fJ
	Q/mt43WLauzpNz2hJDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcw2g-0003Zr-F3; Sun, 24 May 2020 19:12:14 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvwT-00049i-Jk
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:05:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6F5C5240006;
 Sun, 24 May 2020 19:05:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 37/62] mtd: rawnand: oxnas: Unregister all devices on
 error
Date: Sun, 24 May 2020 21:05:46 +0200
Message-Id: <20200524190546.21261-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-38-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: f60eac5b68d6a4eff2053cca2d68264226cce941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_120549_803829_20151B58 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, 2020-05-19 at 13:00:10 UTC, Miquel Raynal wrote:
> On error, the oxnas probe path just frees the device which failed and
> aborts the probe, leaving unreleased resources.
> 
> Fix this situation by calling mtd_device_unregister()/nand_cleanup()
> on these.
> 
> Fixes: 668592492409 ("mtd: nand: Add OX820 NAND Support")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
