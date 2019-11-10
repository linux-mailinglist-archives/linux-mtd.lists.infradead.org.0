Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3072CF69CA
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:36:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQDv5hevbgmTkh2nZA05BHhtd05Soc9fC76V+k501H4=; b=QRxVu6PblBgBtH
	4LjmpSwPT+T2KqmnXJ2WyewjdxKAH8H9URmHSTjh7mZ8lQlxSq3UWfJXjWJFgZs+RBNXs0XhQrnuo
	6ByELtpUw72JZhDcL6S/khwgYRtUEILvl7KsXawa8bp2iUKEfXzVRofmk9zU4ZCJJMx/1Hv+4r5EJ
	/fHXHfd9wxWO35NsSuBzpdOfOX53LxTb7s8MJH57V7tQM7E4lZI4LDq114QEiYJn4Q1ZDE4yNEMXs
	ix1MV+3D1zx0x9PV4Id9qaVYKCh7XwQCkEFeH2fot9LjrejLdqi53oODThvBkuSNLq+L7ngzHX3vj
	Jt8Tgy1sV79UXxa0LJbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpG2-0001vN-6l; Sun, 10 Nov 2019 15:36:06 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCJ-0005ds-Uw
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 3F8E4181099FB;
 Sun, 10 Nov 2019 16:32:14 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DGCzNkRLJGzN; Sun, 10 Nov 2019 16:32:13 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZI-nvo0Jk41B; Sun, 10 Nov 2019 16:32:13 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 15/15] fs-tests: don't leak temporary buffers
Date: Sun, 10 Nov 2019 16:30:59 +0100
Message-Id: <20191110153059.28878-16-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073216_453409_F5CA98ED 
X-CRM114-Status: UNSURE (   8.48  )
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 tests/fs-tests/simple/perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/fs-tests/simple/perf.c b/tests/fs-tests/simple/perf.c
index aee8226..224085f 100644
--- a/tests/fs-tests/simple/perf.c
+++ b/tests/fs-tests/simple/perf.c
@@ -151,6 +151,7 @@ static void perf(void)
 	printf("Write speed (KiB/s): %u\n", speed(actual_size, write_time));
 	printf("Read speed (KiB/s): %u\n", speed(actual_size, read_time));
 	printf("Test completed\n");
+	free(buf);
 }
 
 /* Title of this test */
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
