Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A1391958
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 21:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YaqENkRZinCRjTQzUeUfBAGF+IhvqbKhR99FPTRwGhk=; b=FpjzMcNm1XP9vq
	St8YLszvs2EWPKn6rxiCEG+z077Q8FfTritIYcGVfgVzTFOJkAOxt0Bg2mrXlCXG+OXxEaBWPbEN4
	kQXD8AMFP9zeoT+HVW9ofY/AlU4mWB+pENkAZSKLba3WeQF+Dab5GoXZgd1h3ZtpcEG89gu1T1NRR
	zgb2WnyE9f2m0n0gQz8mCx3QKbmY0O/wxpy7X6L0ox+1vJ7TuRTykG5meGmc10/4ZKKlueqLG3LJE
	qLAHaMyxjl6RqH9hIUzLxkBpL4FF9zRb89ew03GhSRUuJlhkJSccSlU+goI4KvLytD9Lu4cCSJOie
	zwuyAZn7/6nxDTxVYm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzR7M-0008AW-1u; Sun, 18 Aug 2019 19:45:32 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzR7A-0007zW-V2
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 19:45:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 37B0A608311C;
 Sun, 18 Aug 2019 21:45:15 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dT5efuPyFkei; Sun, 18 Aug 2019 21:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id EECFA6083139;
 Sun, 18 Aug 2019 21:45:14 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OG-AabBUKhyf; Sun, 18 Aug 2019 21:45:14 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id BBC7B608311C;
 Sun, 18 Aug 2019 21:45:14 +0200 (CEST)
Date: Sun, 18 Aug 2019 21:45:14 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <260502461.69486.1566157514722.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] MTD fixes for 5.3-rc5
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Index: 8u4Z8DksfERG1yND1iSr6SAwSY1F9g==
Thread-Topic: MTD fixes for 5.3-rc5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_124521_148808_59E2E897 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus,

The following changes since commit d45331b00ddb179e291766617259261c112db872:

  Linux 5.3-rc4 (2019-08-11 13:26:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/fixes-for-5.3-rc5

for you to fetch changes up to 834de5c1aa768eb3d233d6544ea7153826c4b206:

  mtd: spi-nor: Fix the disabling of write protection at init (2019-08-13 14:34:42 +0200)

----------------------------------------------------------------
This pull request contains a single fix for MTD:

- spi-nor: Fix to correctly set the WP pin

----------------------------------------------------------------
Tudor Ambarus (1):
      mtd: spi-nor: Fix the disabling of write protection at init

 drivers/mtd/spi-nor/spi-nor.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
