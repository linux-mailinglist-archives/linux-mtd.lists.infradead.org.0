Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A7714BE85
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Jan 2020 18:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk40rXnDZGgc/1RehXEP0HqNjqMX7zDqdsQliNyOtTU=; b=Wmv0IHSX+BvoKK
	ack5uCbApO9MCbtRv1nuJpA3rA8e4+cv1xg+fMd+bOSk9pUIeoMuh03e2oNM8yjhIw1qnJSsDMSIH
	HySd6rkTLqY0AEdW84Unz0SDGdG7QFj++GqlAd5xeWf19aTrhkjZKDb3qyFRhSITq7eJfFWDTm21a
	24zsEe44HhOchftss2etiDQ+B1IwRMgv5lJm5hp8cPWxL6teUPT9cSy/rsTlTF33bqreJbBZCAzxR
	yAAk64YsosXMdIYRxxScV4bWyr9VG0m7D/JayODOp2JyTTE8TzFB8GfzTnFelZkMNBjoNYwjbSnhd
	L0/kWz2KGjE3NBPI9cww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUee-0000ux-Hg; Tue, 28 Jan 2020 17:28:00 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUeC-0000iU-PQ
 for linux-mtd@lists.infradead.org; Tue, 28 Jan 2020 17:27:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id C0C5C181522E8;
 Tue, 28 Jan 2020 18:27:29 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QPOVBHiT77DD; Tue, 28 Jan 2020 18:27:28 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wMM1xQd7laqf; Tue, 28 Jan 2020 18:27:26 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/8] mtd-utils: Fix printf format specifies with the wrong type
Date: Tue, 28 Jan 2020 18:27:08 +0100
Message-Id: <20200128172715.19545-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
References: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_092733_128603_E79C2A86 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 misc-utils/flashcp.c        | 8 ++++----
 tests/ubi-tests/io_paral.c  | 4 ++--
 tests/ubi-tests/io_read.c   | 2 +-
 tests/ubi-tests/io_update.c | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/misc-utils/flashcp.c b/misc-utils/flashcp.c
index b6ad2f9..1270422 100644
--- a/misc-utils/flashcp.c
+++ b/misc-utils/flashcp.c
@@ -337,12 +337,12 @@ int main (int argc,char *argv[])
 			if (result < 0)
 			{
 				log_printf (LOG_ERROR,
-						"While writing data to 0x%.8x-0x%.8x on %s: %m\n",
+						"While writing data to 0x%.8lx-0x%.8lx on %s: %m\n",
 						written,written + i,device);
 				exit (EXIT_FAILURE);
 			}
 			log_printf (LOG_ERROR,
-					"Short write count returned while writing to x%.8x-0x%.8x on %s: %d/%llu bytes written to flash\n",
+					"Short write count returned while writing to x%.8lx-0x%.8lx on %s: %lu/%llu bytes written to flash\n",
 					written,written + i,device,written + result,(unsigned long long)filestat.st_size);
 			exit (EXIT_FAILURE);
 		}
@@ -372,7 +372,7 @@ int main (int argc,char *argv[])
 		if (size < BUFSIZE) i = size;
 		if (flags & FLAG_VERBOSE)
 			log_printf (LOG_NORMAL,
-					"\rVerifying data: %dk/%lluk (%llu%%)",
+					"\rVerifying data: %luk/%lluk (%llu%%)",
 					KB (written + i),
 					KB ((unsigned long long)filestat.st_size),
 					PERCENTAGE (written + i,(unsigned long long)filestat.st_size));
@@ -387,7 +387,7 @@ int main (int argc,char *argv[])
 		if (memcmp (src,dest,i))
 		{
 			log_printf (LOG_ERROR,
-					"File does not seem to match flash data. First mismatch at 0x%.8x-0x%.8x\n",
+					"File does not seem to match flash data. First mismatch at 0x%.8lx-0x%.8lx\n",
 					written,written + i);
 			exit (EXIT_FAILURE);
 		}
diff --git a/tests/ubi-tests/io_paral.c b/tests/ubi-tests/io_paral.c
index 4040b3e..b0884fe 100644
--- a/tests/ubi-tests/io_paral.c
+++ b/tests/ubi-tests/io_paral.c
@@ -207,7 +207,7 @@ static void *write_thread(void *ptr)
 		ret = pwrite(fd, wbuf, dev_info.leb_size, offs);
 		if (ret != dev_info.leb_size) {
 			failed("pwrite");
-			errorm("cannot write %d bytes to offs %lld, wrote %d",
+			errorm("cannot write %d bytes to offs %ld, wrote %d",
 				dev_info.leb_size, offs, ret);
 			break;
 		}
@@ -216,7 +216,7 @@ static void *write_thread(void *ptr)
 		ret = pread(fd, rbuf, dev_info.leb_size, offs);
 		if (ret != dev_info.leb_size) {
 			failed("read");
-			errorm("failed to read %d bytes at offset %d "
+			errorm("failed to read %d bytes at offset %ld "
 			       "of volume %d", dev_info.leb_size, offs,
 			       vol_id);
 			break;
diff --git a/tests/ubi-tests/io_read.c b/tests/ubi-tests/io_read.c
index f944a86..a6cc8f5 100644
--- a/tests/ubi-tests/io_read.c
+++ b/tests/ubi-tests/io_read.c
@@ -233,7 +233,7 @@ static int test_read2(const struct ubi_vol_info *vol_info, int len)
 			continue;
 
 		if (test_read3(vol_info, len, offsets[i])) {
-			errorm("offset = %d", offsets[i]);
+			errorm("offset = %ld", offsets[i]);
 			return -1;
 		}
 	}
diff --git a/tests/ubi-tests/io_update.c b/tests/ubi-tests/io_update.c
index f48df1d..d093da5 100644
--- a/tests/ubi-tests/io_update.c
+++ b/tests/ubi-tests/io_update.c
@@ -189,11 +189,11 @@ static int test_update1(struct ubi_vol_info *vol_info, int leb_change)
 			ret = read(fd, buf1, test_len);
 		if (ret < 0) {
 			failed("read");
-			errorm("failed to read %d bytes", test_len);
+			errorm("failed to read %lld bytes", test_len);
 			goto close;
 		}
 		if (ret != test_len) {
-			errorm("failed to read %d bytes, read %d", test_len, ret);
+			errorm("failed to read %lld bytes, read %d", test_len, ret);
 			goto close;
 		}
 		if (memcmp(buf, buf1, test_len)) {
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
