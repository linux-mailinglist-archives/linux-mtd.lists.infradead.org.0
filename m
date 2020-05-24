Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D121E01B4
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzvXNzFLr11VCEmKR5iU0FCPglnzKyKllzznmVmbevE=; b=WdxJt2DlY1bxBb
	e2pDALQvmZM6TruN4o3t0BV1OWXx5uf+20m5LF3Cr4Srz6lmPOHPIDFSlcRqSOqvSV8MLiTBclxR/
	53OP/1Q/KdDbWjGjeE3Ip/3tlg96TZCC1f7W8WKhPPLUFQg0xYnrGAqKniMQjHAtfzQC4csjHqh2G
	/7WwimfpkChEX3PtIAcGiQE1cLh3Ez5Nli1MeD3tVNKDTM3RNCDojVa+ippOZoFQm5fyTqziIe4fW
	ms9Tc96SHPa9QB413VaPH+Kl0CP/EptxgIdjzb/z4xYpMOKLsxo18jRkmxBqilQ+kkXVQLA6Mdg+g
	4uYk2UCCtnXDsfJBU+YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcvxJ-0004ZV-FV; Sun, 24 May 2020 19:06:41 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvup-0000Ui-SJ
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:04:09 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id D5EAB200005;
 Sun, 24 May 2020 19:04:05 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 55/62] mtd: rawnand: tango: Stop using nand_release()
Date: Sun, 24 May 2020 21:04:04 +0200
Message-Id: <20200524190404.5264-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-56-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 1ae6e0554c37c02b4120ac4fead75f34dd3c4df3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_120408_079170_0B3EA939 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-05-19 at 13:00:28 UTC, Miquel Raynal wrote:
> This helper is not very useful and very often people get confused:
> they use nand_release() instead of nand_cleanup().
> 
> Let's stop using nand_release() by calling mtd_device_unregister() and
> nand_cleanup() directly.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
