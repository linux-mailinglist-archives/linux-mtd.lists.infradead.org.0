Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4859C441
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 16:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mZfZca7SoTemEUAiAn4NzTSoNDmFr/2zRd7xKyaCFNw=; b=B9QStHjY1Q/HYo
	sWwYWoXbOa4LaIm+9MrbgKHn8SR0ho+8DbTyAjirmfmnAlB2OcD1jJcajedEPCHdfVxiwMy0gXwwO
	IC7T6ZocqYKQgAv8NXtWYPqKj6FENop7F8usxZXEmYzkCHn4SwcsI+7SnZdTuoT1OufnTAlU/hAP+
	3yb0w5VU9KcNlcx1hjrxzcBITGIxjWqaxGhSC1441n+OyyBa2Lq/BNP+mF0Qp3Y8miNwKB+FVn8/o
	UXjnzw+W2B2qIl8EpogxebtPhw359HzXtleAg7NFSgiioOH2gzg4dHX+lid2kbN9yTwkYuUwZUxBp
	W1ptb94UZCMqXnDRXAfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1t5z-0001Xv-PQ; Sun, 25 Aug 2019 14:02:15 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1t5q-0001WG-Ah
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 14:02:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6C0CC6083139;
 Sun, 25 Aug 2019 16:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tqJfLNQv7xsv; Sun, 25 Aug 2019 16:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2B6FB608311C;
 Sun, 25 Aug 2019 16:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id h9v8sJCiOh-s; Sun, 25 Aug 2019 16:01:51 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 05E1B6089354;
 Sun, 25 Aug 2019 16:01:50 +0200 (CEST)
Date: Sun, 25 Aug 2019 16:01:50 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1811413787.73825.1566741710952.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UBIFS/JFFS2 fixes for 5.3-rc6
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Index: 1z3uoU3loWp1K/Oo/z0waK5U/6Z3kw==
Thread-Topic: UBIFS/JFFS2 fixes for 5.3-rc6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_070206_519956_3D05F699 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus,

The following changes since commit d1abaeb3be7b5fa6d7a1fbbd2e14e3310005c4c1:

  Linux 5.3-rc5 (2019-08-18 14:31:08 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/for-linus-5.3-rc6

for you to fetch changes up to 0af83abbd4a6e36a4b209d8c57c26143e40eeec1:

  ubifs: Limit the number of pages in shrink_liability (2019-08-22 17:25:33 +0200)

----------------------------------------------------------------
This pull request contains the following fixes for UBIFS and JFFS2:

UBIFS:

- Don't block too long in writeback_inodes_sb()
- Fix for a possible overrun of the log head
- Fix double unlock in orphan_delete()

JFFS2:

- Remove C++ style from UAPI header and unbreak picky toolchains

----------------------------------------------------------------
Liu Song (1):
      ubifs: Limit the number of pages in shrink_liability

Masahiro Yamada (1):
      jffs2: Remove C++ style comments from uapi header

Richard Weinberger (2):
      ubifs: Fix double unlock around orphan_delete()
      ubifs: Correctly initialize c->min_log_bytes

 fs/ubifs/budget.c          | 2 +-
 fs/ubifs/orphan.c          | 2 --
 fs/ubifs/super.c           | 4 ++++
 include/uapi/linux/jffs2.h | 5 -----
 4 files changed, 5 insertions(+), 8 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
