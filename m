Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7365314BE87
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Jan 2020 18:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mjk7hUp3RlUi2BEyK2+aen6R/4xdwfzEkk8PwbAIlU=; b=eUYS96Ip2WJ2L4
	OKAq2kmvPbnkG6Ha08yFaNeov4cmCquyk04ZSRYeYDXKmY+DGCSfl5oLE7iqbx66rBjFOIXrILAKM
	qIJYKfZRePS98OiSnIEH+ciYN9Zr1d4xSnjR1jic2lRq1GDYBEogZ7M5s2YKbPLRew6VN5SwaSBvM
	Edz+fZ1zulIVwMY4Gldb0BZX7ABsUDb4CXehgy2qLKABAwzBpNaRzEt13t0uko8zm8ubC2C0qu0EN
	X8Bdqn7JU0L/OdU/X9iF0CUSjv2gyUF7GyNuW4iQwttleujXSx1UfuzcT4f+GXQ3199QDjWnVsIoT
	1JyM11FS/ZgJIDCBxlfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUew-0001G2-IR; Tue, 28 Jan 2020 17:28:18 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUeD-0000iX-BC
 for linux-mtd@lists.infradead.org; Tue, 28 Jan 2020 17:27:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 668DB18128212;
 Tue, 28 Jan 2020 18:27:30 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id W8RfKt_Qz_g7; Tue, 28 Jan 2020 18:27:29 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id d3fCJrHMpqwm; Tue, 28 Jan 2020 18:27:28 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 5/8] mtd-utils: Fix wrong argument to sizeof in nanddump
Date: Tue, 28 Jan 2020 18:27:12 +0100
Message-Id: <20200128172715.19545-6-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
References: <20200128172715.19545-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_092733_535234_D1AE3E21 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

Some temporary buffers are allocated with "sizeof(pointer) * count" as
size argument, which cannot possibly be correct.

Assuming what was meant was "sizeof(pointer[0]) * count" makes sense
in the context of how the buffers are used, but is actually pretty
pointless, since the buffers are unsigend char.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 nand-utils/nanddump.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/nand-utils/nanddump.c b/nand-utils/nanddump.c
index 62699e0..d7fc320 100644
--- a/nand-utils/nanddump.c
+++ b/nand-utils/nanddump.c
@@ -362,8 +362,8 @@ int main(int argc, char * const argv[])
 		return errmsg("mtd_get_dev_info failed");
 
 	/* Allocate buffers */
-	oobbuf = xmalloc(sizeof(oobbuf) * mtd.oob_size);
-	readbuf = xmalloc(sizeof(readbuf) * mtd.min_io_size);
+	oobbuf = xmalloc(mtd.oob_size);
+	readbuf = xmalloc(mtd.min_io_size);
 
 	if (noecc)  {
 		if (ioctl(fd, MTDFILEMODE, MTD_FILE_MODE_RAW) != 0) {
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
