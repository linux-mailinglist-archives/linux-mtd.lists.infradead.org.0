Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51501DBE5E
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 21:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aBbjkMd/fWeeyr8xWE/fuWmwswvx9UEn8mEc+SepMFM=; b=u5rg00nGRS0Dw4
	HbiyeXHPUqKDqBpwAI8N0FAqmUowBJVlCGASbJzCKH2qEzwJilNl42xg3qBWa9Ocj5h8uI9E/9l6k
	NdMsy9wEhmSltcECJfqK8nRFs2b3RM18brJq4/4ecpotrjQi2ZeoSdYpaZh3e2Bydjj18HvfCVHT2
	0683/RsUmxGi6ZEQSeom4Lh+4E8FIr4HkwvnKxYdsl/8V6AIuoEdOA/wJTQ4W6U4j+fCX98egf6gH
	o8zDwoL5UBvDndIy18BIGhipU0TeiofRbRNaY6HaLSyw5HQtmwfZHLp7/04zPiyMffAZrbm+V7rci
	F5ZaU1mV2rlltud1CQdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbUiv-0003H8-LK; Wed, 20 May 2020 19:49:53 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbUip-0003Ef-Vx
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 19:49:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3F1E3623A7CB;
 Wed, 20 May 2020 21:49:39 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FIdXJt4u6WJt; Wed, 20 May 2020 21:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id ED657623A7C5;
 Wed, 20 May 2020 21:49:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id q_X3_oYRrh_y; Wed, 20 May 2020 21:49:38 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D9BCF623A7CB;
 Wed, 20 May 2020 21:49:38 +0200 (CEST)
Date: Wed, 20 May 2020 21:49:38 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <294087931.249343.1590004178869.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UBI/UBIFS fixes for 5.7 final
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: IIwsIXTW2IYy/sC4AclDYRhuEBVl8Q==
Thread-Topic: UBI/UBIFS fixes for 5.7 final
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_124948_174046_683E866F 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

The following changes since commit c0cc271173b2e1c2d8d0ceaef14e4dfa79eefc0d:

  Merge tag 'modules-for-v5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/jeyu/linux (2020-04-09 12:52:34 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/for-linus-5.7-rc6

for you to fetch changes up to 0e7572cffe442290c347e779bf8bd4306bb0aa7c:

  ubi: Fix seq_file usage in detailed_erase_block_info debugfs file (2020-05-17 23:38:21 +0200)

----------------------------------------------------------------
This pull request contains the following bug fixes for UBI and UBIFS:

- Correctly set next cursor for detailed_erase_block_info debugfs file
- Don't use crypto_shash_descsize() for digest size in UBIFS
- Remove broken lazytime support from UBIFS

----------------------------------------------------------------
Christoph Hellwig (1):
      ubifs: remove broken lazytime support

Eric Biggers (1):
      ubifs: fix wrong use of crypto_shash_descsize()

Richard Weinberger (1):
      ubi: Fix seq_file usage in detailed_erase_block_info debugfs file

 drivers/mtd/ubi/debug.c | 12 ++----------
 fs/ubifs/auth.c         | 17 ++++-------------
 fs/ubifs/file.c         |  6 +-----
 fs/ubifs/replay.c       | 13 ++-----------
 4 files changed, 9 insertions(+), 39 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
