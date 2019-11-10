Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE16F69C9
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7+9ZxyZpXtste/cSYQAC6koQkJCLTGiW61nmJsB3rM=; b=MN1IjP3Fh0rHiv
	9h+wUQhzk3YdZBqNugkqQryTy7eQNDTFv50myy5h/7J9NU6NukEnb4F5Hoq7sSlpoQJ7opQvpDnxe
	ZL6T7Vcc6yTFV9Me+vroo2P5WFaX07KsIy1UHyUInoD9i+EYgoe0U45HsRdpbhQG2DF5ChPTDOZtn
	8bofuzLRInG28uCnQQfYBZ39kau6972oXuMRziWIC+R14RRAJZrxahRUUbNCNyyZbSfp+zHn1+y7A
	qrf16ya2DH9A41tgjCHBGfX51N6mphTd8hq+LVzRB2Np7UQyWPYTOhVZ9rXR+wvuURXNVF6PcjSoh
	yzB5m8qAptQgeas5d5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpFs-0001hh-D0; Sun, 10 Nov 2019 15:35:56 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCJ-0005cy-Co
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 6D41C18109A07;
 Sun, 10 Nov 2019 16:32:13 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id SDHmexJn5vrE; Sun, 10 Nov 2019 16:32:12 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id I_ZJrCC4-4Ql; Sun, 10 Nov 2019 16:32:11 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 13/15] mtd_debug: cleanup error handling in flash_to_file
Date: Sun, 10 Nov 2019 16:30:57 +0100
Message-Id: <20191110153059.28878-14-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073215_588000_89287DE9 
X-CRM114-Status: GOOD (  12.22  )
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

The existing code had multiple error handling labels and did things
like checking if a buffer is not NULL before freeing it.

This patch collapses all of this into a single label. We can do this,
because the standard guarantees us that it is safe to call free() with
a NULL pointer.

This also has the side effect of removing the possibility of using the
wrong error label and accidentally leaking something.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 misc-utils/mtd_debug.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/misc-utils/mtd_debug.c b/misc-utils/mtd_debug.c
index d65ad36..c0b7109 100644
--- a/misc-utils/mtd_debug.c
+++ b/misc-utils/mtd_debug.c
@@ -112,12 +112,12 @@ static int flash_to_file(int fd, off_t offset, size_t len, const char *filename)
 
 	if (offset != lseek(fd, offset, SEEK_SET)) {
 		perror("lseek()");
-		goto err0;
+		return 1;
 	}
 	outfd = creat(filename, 0666);
 	if (outfd < 0) {
 		perror("creat()");
-		goto err1;
+		return 1;
 	}
 
 retry:
@@ -130,7 +130,7 @@ retry:
 			goto retry;
 		}
 		perror("malloc()");
-		goto err0;
+		goto fail;
 	}
 	do {
 		if (n <= size)
@@ -139,7 +139,7 @@ retry:
 		if (err < 0) {
 			fprintf(stderr, "%s: read, size %#x, n %#x\n", __func__, size, n);
 			perror("read()");
-			goto err2;
+			goto fail;
 		}
 		if (err < size) {
 			fprintf(stderr, "%s: short read, requested %#x, read %#x\n", __func__, size, err);
@@ -148,11 +148,11 @@ retry:
 		if (err < 0) {
 			fprintf(stderr, "%s: write, size %#x, n %#x\n", __func__, size, n);
 			perror("write()");
-			goto err2;
+			goto fail;
 		}
 		if (err != size) {
 			fprintf(stderr, "Couldn't copy entire buffer to %s. (%d/%d bytes copied)\n", filename, err, size);
-			goto err2;
+			goto fail;
 		}
 		n -= size;
 	} while (n > 0);
@@ -162,13 +162,9 @@ retry:
 	close(outfd);
 	printf("Copied %zu bytes from address 0x%.8llx in flash to %s\n", len, (unsigned long long)offset, filename);
 	return 0;
-
-err2:
+fail:
 	close(outfd);
-err1:
-	if (buf != NULL)
-		free(buf);
-err0:
+	free(buf);
 	return 1;
 }
 
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
