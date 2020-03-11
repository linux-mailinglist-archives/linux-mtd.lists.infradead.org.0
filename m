Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643B1822C6
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 20:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Vfm20592C99y8Wjqyu+0ECKOrZTkRI/kkKmdd0vbUg=; b=BYQFv9aqrvaQKs
	1lVSiweEwhe205+dNVINcb0H+omKwS2ZjMVInTfjqm632hoUOF78zxOA51r1rPhCKhiyMOcGCWqkN
	zX8hO6uudT29Lrj8XgtJ6r1IgDdSK3HVDD9EuaJn9WVE6RUPbzTmZ/rh0dF1vhhqRC6w7Z86NyH+F
	92BO8hLjRQ0IypeHLyyCpS0vR8CpSIifGpZujXc/BLI5GRNpzaBSDcC9ntsPZogMxXlFHJMJAEyR7
	tSwCOcq4ZCVRAvvjYVXxwLK1G3Y9m1SHTrEhZ2FGP4AvNR2ThTlbOkiBwNrRRCsmFlc76UBpDji/Y
	Ngba0oLMyJ2hNwClplpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC7LY-0004uF-I6; Wed, 11 Mar 2020 19:48:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC7LP-0004tb-4K
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 19:48:44 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F6A020691;
 Wed, 11 Mar 2020 19:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583956122;
 bh=NTCCQBA/qngUM9vruihaGQpLvV8cowQXBnlryjh7duc=;
 h=Date:From:To:Cc:Subject:From;
 b=v/jab1Mtz7GdBG9uHSDV6k2H9A5ugStqAz7qXsT5oSvLW0R8a6a71HOmgfCea5clU
 G66Us11UI+4tNO3Dj0FH7tIcAgD6G5vzcw6dOTDobm5SYL6M1oFXxg7KIYICRZtMGR
 9CaWX6LC7nIdux3wMMCMyiTs0f5kOJR5zRFuyh0M=
Date: Wed, 11 Mar 2020 12:48:39 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] fscrypt fix for v5.6-rc6
Message-ID: <20200311194839.GB41227@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_124843_191843_005100AB 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Theodore Ts'o <tytso@mit.edu>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git tags/fscrypt-for-linus

for you to fetch changes up to 2b4eae95c7361e0a147b838715c8baa1380a428f:

  fscrypt: don't evict dirty inodes after removing key (2020-03-07 18:43:07 -0800)

----------------------------------------------------------------

Fix a bug where if userspace is writing to encrypted files while the
FS_IOC_REMOVE_ENCRYPTION_KEY ioctl (introduced in v5.4) is running,
dirty inodes could be evicted, causing writes could be lost or the
filesystem to hang due to a use-after-free.  This was encountered during
real-world use, not just theoretical.

Tested with the existing fscrypt xfstests, and with a new xfstest I
wrote to reproduce this bug.  This fix does expose an existing bug with
'-o lazytime' that Ted is working on fixing, but this fscrypt fix is
more critical and is needed anyway regardless of the lazytime fix.

----------------------------------------------------------------
Eric Biggers (1):
      fscrypt: don't evict dirty inodes after removing key

 fs/crypto/keysetup.c | 9 +++++++++
 1 file changed, 9 insertions(+)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
