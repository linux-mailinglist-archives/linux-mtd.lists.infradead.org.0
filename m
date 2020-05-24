Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D351E01C0
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7r5MxGuQCi3J2Yt1CsfA0heiVci25GAGX6ig2CSCxu0=; b=bQ+waXXtA3bRDu
	Qj3tRL97g1t1rK8kFgLalVW6O7dx7Kt2fA9wBUJ2ZcMK73xviDEvxWmWBCSJY0N9Tj7Q/kuvj2gIf
	k1Wfh8ozJL2E7Px/sy0CFZqYf5G76D+3IpuFsZHbUBUcI/nGaamwXVf6bRLxtCgGUJeOTkCEwNZ64
	xH3HXCNXebhV/FtYz9mRgkxHoWiVKXuSQB28I5NMNaNlQiYCLKZUQqh+YBQYZvQJCHiN52A8WIBNi
	QXWWQdoQiJHLubkTaxq6PpU2kw/loWwzd+3wK6wdPs4I1b0+RGr9QyQbvtBSxx6Bekg2ZXaOG7L5V
	8XX/q2Ya84tipYJuC/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcvzD-0006Gp-7v; Sun, 24 May 2020 19:08:39 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvvQ-00011H-94
 for linux-mtd@bombadil.infradead.org; Sun, 24 May 2020 19:04:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ERmiu2vLqaRiqhJOyczxEJ8HEAPkP1m3yud+jrrUOGM=; b=Rp5GBuepkuecg1qwcMt0kD7ouI
 LpOTeacoKezd1LFm6jDOdZ8NXyw49xYn2T5kqR/nc4ztDLFlwhBw/xcVa6uXU3GP/Ox6qDuWHRSti
 /h8Eik0ZaqAdw2zuRqr+K2MPhfWUVvEQ7OdqNGfwL10NrDDI8RLTh+C0vS0K5zEIOJxCgLGSSxxiS
 rU88rlXn+pObjg5Z8euMgSCLWtFtIvbUwO+Oq9v3+4vmyKSxN1W/a1i8VR6CvjTSIZbgpnvvCXq95
 b20b52ZQVhQwRr5Q/gd0zUsIxLMPXgjfcQ3y2rv8lu96AlN91VWW5HZYe8PZ6qrwaN7UY1qWwMPaY
 vAlo86Hg==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvvN-0001TF-Fj
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:04:43 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 06C83240005;
 Sun, 24 May 2020 19:04:14 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 53/62] mtd: rawnand: sunxi: Fix the probe error path
Date: Sun, 24 May 2020 21:04:14 +0200
Message-Id: <20200524190414.5388-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-54-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 1ccc8f4a960d51ef05ac2095adf612d312fc0894
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-05-19 at 13:00:26 UTC, Miquel Raynal wrote:
> nand_release() is supposed be called after MTD device registration.
> Here, only nand_scan() happened, so use nand_cleanup() instead.
> 
> Fixes: 1fef62c1423b ("mtd: nand: add sunxi NAND flash controller support")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: stable@vger.kernel.org

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
