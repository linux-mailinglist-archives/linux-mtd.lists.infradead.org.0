Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4AF8D2E8
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 14:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=irkkVtLl7QBibL9EoVlyocND3PZe41AVT++oiIcDoR8=; b=Td3q9O1kU/nzmS
	cWFM3LYNoG+48/dQZYK1TDGvjBXAX1PoS/84nu6o4wrtoviTao2wSUu+VZnXaY1DP6YqPYI5gFxNt
	lxt92dZhhGzM4fZAcjtb/ofdMS9sGuWMLZXVXQP6yvDp6uCuJtPy7U337a5yHgDfYm6JxNVex+raV
	YppOMtVxRFdVAQ3iv7UkYZsGt1DKL0+vECfx75B01BTINNd9tl6Z2SmEEw00nCt8bF1R8/c4L7IJn
	KmUhJ9HAnZarTZy/44ztFZAwDDa5ew/93hTi5KiR63av1mO+RlmoBMtATkcc1/hmkWxzHeYs1BSoP
	0ff1bPuCaCIqi3sYZfvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsGf-0003So-72; Wed, 14 Aug 2019 12:20:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsF6-0000qd-UE
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 12:19:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEp-0005k9-EW; Wed, 14 Aug 2019 14:18:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEm-00080y-Kp; Wed, 14 Aug 2019 14:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 00/11] Add quota support to UBIFS
Date: Wed, 14 Aug 2019 14:18:23 +0200
Message-Id: <20190814121834.13983-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_051905_048257_F8158E7C 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This series adds quota support to UBIFS.

This series follows a very simple approach to quota: Neither the quota
limits nor the quota usage are ever written to the medium. The quota
usage is reconstructed from the filesystem during mount time. The quota
limits must be set by the user each time after mount. This is probably
not very convenient for systems that are used interactively, but UBIFS
is targetted to embedded systems and here running a script after mount
shouldn't be a problem. This of course isn't the way quota was thought
to be, but I believe this is a good compromise for a feature that I predict
is only rarely used on UBIFS. The big upside of this approach is that
no on-disk format changes are required and thus we can't get any
broken/corrupt filesystems because of quota support. Reconstructing the
quota data each time during mount has an noticable but I think for many
cases acceptable time overhead. I mounted a ~56MiB rootfs with 1920 files
which takes around 0.7s longer when quota is enabled.

As UBIFS works on mtd there is no block_device involved. The quotactl
system call requires a path to a block device as argument. To overcome
this we add support for passing the mount point instead. quota uses
 get_super_exclusive_thawed(), get_super_thawed() and get_super() to
get hold of a super_block. All these functions require a block_device
which we do not have for UBIFS, so this code has to be refactored a bit.
I'm a bit outside of my comfort zone here, so please review carefully ;)

The UBIFS quota support itself is based on a series by Dongsheng Yang
posted here:
http://lists.infradead.org/pipermail/linux-mtd/2015-September/061812.html
This part hasn't changed much, except that the code for reading and writing
quota files has been dropped.

Sascha

Dongsheng Yang (1):
  ubifs: Add quota support

Sascha Hauer (10):
  quota: Make inode optional
  quota: Only module_put the format when existing
  fs: move __get_super() out of loop
  fs, quota: introduce wait_super_thawed() to wait until a superblock is
    thawed
  quota: Allow to pass quotactl a mountpoint
  ubifs: move checks and preparation into setflags()
  ubifs: Add support for FS_IOC_FS[SG]ETXATTR ioctls
  ubifs: do not ubifs_inode() on potentially NULL pointer
  ubifs: Add support for project id
  ubifs: export get_znode

 fs/quota/dquot.c       |   9 +-
 fs/quota/quota.c       |  79 ++++--
 fs/super.c             |  74 +++---
 fs/ubifs/Makefile      |   1 +
 fs/ubifs/dir.c         |  31 ++-
 fs/ubifs/file.c        |  43 +++
 fs/ubifs/ioctl.c       | 222 ++++++++++++++--
 fs/ubifs/journal.c     |   4 +-
 fs/ubifs/quota.c       | 590 +++++++++++++++++++++++++++++++++++++++++
 fs/ubifs/super.c       |  46 +++-
 fs/ubifs/tnc.c         |  34 +--
 fs/ubifs/ubifs-media.h |   6 +-
 fs/ubifs/ubifs.h       |  33 +++
 include/linux/fs.h     |   5 +-
 14 files changed, 1076 insertions(+), 101 deletions(-)
 create mode 100644 fs/ubifs/quota.c

-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
