Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFE4F69C7
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PX53a0pCDGcQ4CA4ezb0WK9iY2wnbh7yy6OVPIEFjWk=; b=XiEmT9N4U9XY/x
	5f2qP4XRlOfpsJsRVZuZR1NT9bVVymbrU25azjakRhiA2asmEP3EhJLndNrZtn3aWDUTdBXWqVebo
	+ViJ4nogM6ebUBdfZUGH3JJ0q/1OmZV/I6RGnuk75w9wfyUTvmAJa/YIoPIARI/Hy96QCPTADwW4l
	288fLJLG+cFDB/K9BGH6CD6ZiG+oPL6p2ccZbOmU9oLeUm9cClLyN+ZraMvUj5Z0SD4Eox4TPO1UC
	CgAarYREOW/IhKc9DXJZtrcxZQqDHN9Rv1rhJK4AxLnqO7rtMGlxxw1rGo0oI/Ljy7qMj/0DLvNn2
	lmWtOPQ+KoWbVFFYJa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpFS-0001Gk-Pi; Sun, 10 Nov 2019 15:35:30 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCK-0005dh-8x
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id E6303181099E2;
 Sun, 10 Nov 2019 16:32:13 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 1JsohI8_tJWa; Sun, 10 Nov 2019 16:32:13 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 61gVcWmPQQEx; Sun, 10 Nov 2019 16:32:12 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 14/15] jittertest: fix error check for open system call
Date: Sun, 10 Nov 2019 16:30:58 +0100
Message-Id: <20191110153059.28878-15-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073216_477542_C7CFC1FD 
X-CRM114-Status: GOOD (  10.48  )
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

The value 0 is a valid file descriptor. The existing error handling
would not only treat that as an error, but subsequently leak the
file descriptor in the error handling path.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 tests/jittertest/JitterTest.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/jittertest/JitterTest.c b/tests/jittertest/JitterTest.c
index e109995..797035b 100644
--- a/tests/jittertest/JitterTest.c
+++ b/tests/jittertest/JitterTest.c
@@ -462,14 +462,14 @@ static void doGrabKProfile(int jitterusec, char *fileName)
 
     (void)jitterusec;
 
-    if((fdSnapshot = open(fileName, O_WRONLY | O_CREAT, S_IRWXU)) <= 0)
+    if((fdSnapshot = open(fileName, O_WRONLY | O_CREAT, S_IRWXU)) < 0)
     {
         fprintf(stderr, "Could not open file %s.\n", fileName);
         perror("Error:");
         return;
     }
 
-    if((fdProfile = open("/proc/profile", O_RDWR)) <= 0)
+    if((fdProfile = open("/proc/profile", O_RDWR)) < 0)
     {
         fprintf(stderr, "Could not open file /proc/profile. Make sure you booted with profile=2\n");
         close(fdSnapshot);
@@ -509,7 +509,7 @@ static void clearProfileBuf(void){
   char readBuf[10];
 
 
-  if((fdProfile = open("/proc/profile", O_RDWR)) <= 0)
+  if((fdProfile = open("/proc/profile", O_RDWR)) < 0)
     {
       fprintf(stderr, "Could not open file /proc/profile. Make sure you booted with profile=2\n");
       return;
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
