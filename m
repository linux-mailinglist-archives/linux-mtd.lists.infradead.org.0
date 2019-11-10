Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0682F69C3
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxOHZ1cc+lmcUXxtYq0wowxWrGYsvNkj9fP9woA3iU8=; b=vCzJ5wUNUevfaq
	j6eTWRSzkvYkBNI3FhgkQDCklv3nR8nxTDpJOX5dsP6ELARRDWKtMnUFEJQL3xqvTjeCiaSqUAy3j
	MwhXAWMoGP3VafkFQHnu38cuevXJ+sib9g+AAPDlF4giDSlFbsnoPK+WlQUNT6UzilG8hAbw1Vu4b
	jP26M9zWpr5nZY7i4++T1QyHxKbLPJ/3EgzRSWYjKKx6R/VCrkdjuGL0ojh/mKMiFRnNA2tCN8olv
	SgX83xhB9EKrm9Hq2kAkr48qA586YlIB0vRPv8pG3idFZsgK9DiCqkzgRGn1KB8Y20LOWjXpGPB3v
	GK/PCgFKGe3cPqZXlFYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpEc-0007lS-7I; Sun, 10 Nov 2019 15:34:38 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCH-0005as-Sx
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 9C4E1181099F2;
 Sun, 10 Nov 2019 16:32:11 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id u9r0wOvY7VkU; Sun, 10 Nov 2019 16:32:08 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2Srm7ANuNBCw; Sun, 10 Nov 2019 16:32:08 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 09/15] ftl_check: don't leak temporary buffers
Date: Sun, 10 Nov 2019 16:30:53 +0100
Message-Id: <20191110153059.28878-10-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073214_119737_F8AC03AE 
X-CRM114-Status: UNSURE (   9.56  )
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
 misc-utils/ftl_check.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/misc-utils/ftl_check.c b/misc-utils/ftl_check.c
index e854922..5a04155 100644
--- a/misc-utils/ftl_check.c
+++ b/misc-utils/ftl_check.c
@@ -75,7 +75,7 @@ static void check_partition(int fd)
 	erase_unit_header_t hdr, hdr2;
 	off_t i;
 	u_int j, nbam, *bam;
-	int control, data, free, deleted;
+	int control, data, blk_free, deleted;
 
 	/* Get partition size, block size */
 	if (ioctl(fd, MEMGETINFO, &mtd) != 0) {
@@ -150,10 +150,10 @@ static void check_partition(int fd)
 				perror("read failed");
 				break;
 			}
-			free = deleted = control = data = 0;
+			blk_free = deleted = control = data = 0;
 			for (j = 0; j < nbam; j++) {
 				if (BLOCK_FREE(le32_to_cpu(bam[j])))
-					free++;
+					blk_free++;
 				else if (BLOCK_DELETED(le32_to_cpu(bam[j])))
 					deleted++;
 				else switch (BLOCK_TYPE(le32_to_cpu(bam[j]))) {
@@ -163,9 +163,11 @@ static void check_partition(int fd)
 				}
 			}
 			printf("  Block allocation: %d control, %d data, %d free,"
-					" %d deleted\n", control, data, free, deleted);
+					" %d deleted\n", control, data, blk_free, deleted);
 		}
 	}
+
+	free(bam);
 } /* format_partition */
 
 /* Show usage information */
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
