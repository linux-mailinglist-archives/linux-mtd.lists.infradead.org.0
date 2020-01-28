Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACBA14BE8B
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Jan 2020 18:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLFLzi/RPprL6ZgADRyszpt1MSii6WVASdOp9c6u8pI=; b=rKhjhM91hvZSXa
	fpeqijlIHcqzd18cMRmY8JUtMtc7W93swOjTgCyah3ReRxbVBmSD75XwUSPbgifvOTOcyFT6eH+aA
	ytQ+QvKimfiJTQWrR8kbPWwjFdit/yFdXFJdvh9FyQqfswIfHuHFuCdN+BEPiW++r69R3L9LodPmV
	p7ArLKgvKAbuCQzTT/ab9cyJO28/cREnkpPhyO7al5iGAYdeUIVDdpa05CInxnd0dk7n6sAmUvyja
	r2IKIva/HG9a9KVpezSLvTUy4dcyDFuPPMtZX5MbN+sJh4zQs+gFbmy+dT+nIXsiKAq6Abtilxluw
	GJPHFYHdpRmjnUVm4JFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUfD-0001Wx-J8; Tue, 28 Jan 2020 17:28:35 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUeD-0000iY-G7
 for linux-mtd@lists.infradead.org; Tue, 28 Jan 2020 17:27:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id D6E2318126667;
 Tue, 28 Jan 2020 18:27:30 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id BTI5aYZsdMH7; Tue, 28 Jan 2020 18:27:28 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id uJxJBxM-Fxbb; Tue, 28 Jan 2020 18:27:28 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 3/8] mtd-utils: Fix various TOCTOU issues
Date: Tue, 28 Jan 2020 18:27:10 +0100
Message-Id: <20200128172715.19545-4-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
References: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_092733_819052_8CD4F0FD 
X-CRM114-Status: GOOD (  11.57  )
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

This patch restructures various code parts that follow the pattern
of "stat(x, &sb) ... makes_sense(&sb) ... open(x)".

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 jffsX-utils/mkfs.jffs2.c |  4 +---
 lib/libmtd_legacy.c      | 31 ++++++++++++++++++++-----------
 misc-utils/ftl_check.c   | 14 ++++++++------
 misc-utils/ftl_format.c  | 14 ++++++++------
 4 files changed, 37 insertions(+), 26 deletions(-)

diff --git a/jffsX-utils/mkfs.jffs2.c b/jffsX-utils/mkfs.jffs2.c
index f46cc22..9cc5eaf 100644
--- a/jffsX-utils/mkfs.jffs2.c
+++ b/jffsX-utils/mkfs.jffs2.c
@@ -1772,9 +1772,7 @@ int main(int argc, char **argv)
 		}
 		out_fd = 1;
 	}
-	if (lstat(rootdir, &sb)) {
-		sys_errmsg_die("%s", rootdir);
-	}
+
 	if (chdir(rootdir))
 		sys_errmsg_die("%s", rootdir);
 
diff --git a/lib/libmtd_legacy.c b/lib/libmtd_legacy.c
index 2b7f65f..4eb4a70 100644
--- a/lib/libmtd_legacy.c
+++ b/lib/libmtd_legacy.c
@@ -221,18 +221,21 @@ int legacy_get_mtd_oobavail(const char *node)
 	struct nand_ecclayout_user usrlay;
 	int fd, ret;
 
-	if (stat(node, &st))
+	fd = open(node, O_RDONLY);
+	if (fd == -1)
 		return sys_errmsg("cannot open \"%s\"", node);
 
+	if (fstat(fd, &st)) {
+		ret = sys_errmsg("cannot open \"%s\"", node);
+		goto out_close;
+	}
+
 	if (!S_ISCHR(st.st_mode)) {
 		errno = EINVAL;
-		return errmsg("\"%s\" is not a character device", node);
+		ret = errmsg("\"%s\" is not a character device", node);
+		goto out_close;
 	}
 
-	fd = open(node, O_RDONLY);
-	if (fd == -1)
-		return sys_errmsg("cannot open \"%s\"", node);
-
 	ret = ioctl(fd, ECCGETLAYOUT, &usrlay);
 	if (ret < 0) {
 		if (errno == EOPNOTSUPP)
@@ -273,15 +276,24 @@ int legacy_get_dev_info(const char *node, struct mtd_dev_info *mtd)
 	loff_t offs = 0;
 	struct proc_parse_info pi;
 
-	if (stat(node, &st)) {
+	fd = open(node, O_RDONLY);
+	if (fd == -1) {
 		sys_errmsg("cannot open \"%s\"", node);
 		if (errno == ENOENT)
 			normsg("MTD subsystem is old and does not support "
 			       "sysfs, so MTD character device nodes have "
 			       "to exist");
+		return -1;
+	}
+
+	if (fstat(fd, &st)) {
+		sys_errmsg("cannot stat \"%s\"", node);
+		close(fd);
+		return -1;
 	}
 
 	if (!S_ISCHR(st.st_mode)) {
+		close(fd);
 		errno = EINVAL;
 		return errmsg("\"%s\" is not a character device", node);
 	}
@@ -291,6 +303,7 @@ int legacy_get_dev_info(const char *node, struct mtd_dev_info *mtd)
 	mtd->minor = minor(st.st_rdev);
 
 	if (mtd->major != MTD_DEV_MAJOR) {
+		close(fd);
 		errno = EINVAL;
 		return errmsg("\"%s\" has major number %d, MTD devices have "
 			      "major %d", node, mtd->major, MTD_DEV_MAJOR);
@@ -298,10 +311,6 @@ int legacy_get_dev_info(const char *node, struct mtd_dev_info *mtd)
 
 	mtd->mtd_num = mtd->minor / 2;
 
-	fd = open(node, O_RDONLY);
-	if (fd == -1)
-		return sys_errmsg("cannot open \"%s\"", node);
-
 	if (ioctl(fd, MEMGETINFO, &ui)) {
 		sys_errmsg("MEMGETINFO ioctl request failed");
 		goto out_close;
diff --git a/misc-utils/ftl_check.c b/misc-utils/ftl_check.c
index 5a04155..5b2dae5 100644
--- a/misc-utils/ftl_check.c
+++ b/misc-utils/ftl_check.c
@@ -206,18 +206,20 @@ int main(int argc, char *argv[])
 		exit(errflg > 0 ? 0 : EXIT_FAILURE);
 	}
 
-	if (stat(argv[optind], &buf) != 0) {
+	fd = open(argv[optind], O_RDONLY);
+	if (fd == -1) {
+		perror("open failed");
+		exit(EXIT_FAILURE);
+	}
+	if (fstat(fd, &buf) != 0) {
 		perror("status check failed");
+		close(fd);
 		exit(EXIT_FAILURE);
 	}
 	if (!(buf.st_mode & S_IFCHR)) {
 		fprintf(stderr, "%s is not a character special device\n",
 				argv[optind]);
-		exit(EXIT_FAILURE);
-	}
-	fd = open(argv[optind], O_RDONLY);
-	if (fd == -1) {
-		perror("open failed");
+		close(fd);
 		exit(EXIT_FAILURE);
 	}
 
diff --git a/misc-utils/ftl_format.c b/misc-utils/ftl_format.c
index bf3c8f2..34d436c 100644
--- a/misc-utils/ftl_format.c
+++ b/misc-utils/ftl_format.c
@@ -312,18 +312,20 @@ int main(int argc, char *argv[])
 		exit(errflg > 0 ? EXIT_SUCCESS : EXIT_FAILURE);
 	}
 
-	if (stat(argv[optind], &buf) != 0) {
+	fd = open(argv[optind], O_RDWR);
+	if (fd == -1) {
+		perror("open failed");
+		exit(EXIT_FAILURE);
+	}
+	if (fstat(fd, &buf) != 0) {
 		perror("status check failed");
+		close(fd);
 		exit(EXIT_FAILURE);
 	}
 	if (!(buf.st_mode & S_IFCHR)) {
 		fprintf(stderr, "%s is not a character special device\n",
 				argv[optind]);
-		exit(EXIT_FAILURE);
-	}
-	fd = open(argv[optind], O_RDWR);
-	if (fd == -1) {
-		perror("open failed");
+		close(fd);
 		exit(EXIT_FAILURE);
 	}
 
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
