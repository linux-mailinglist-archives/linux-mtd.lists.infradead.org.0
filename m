Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6404F69B6
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Qofld87mUUvzRWXJTDNDIPzOhyytvYQN/Y69V55UOE=; b=ja9G3ei/CoxIIc
	hfn1+gi+zPMTj8M/+sPj3n/g9KUd9C6IGlzWnsO9kgjHfzOcFmi/mQ6qspcjNsKMjiSpIMPiYgM6t
	oxDygUb5z9cAFTsaED02qo0OVpZ/V44XLuN/kZFrls0ruF2ZjgukdlMQcrdc5fowIZYxbgiU7DPly
	nUfAIdgCLSyymn4bdiUKgRxMMMk4wksVHWhzo9bxA84HdEgNDa0FoG1cqo7XIjzpoTeL0jscV7R+P
	QgIAUfHvndBc4x2qP5HZJEtELQ/PHEp48FfAig3f8EsRz30kcQrhAMVLohsvW2RmsQ4l4/6MNF3OU
	i+c+9n/3C1P8AXX4W1uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpD1-00067e-Lg; Sun, 10 Nov 2019 15:32:59 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCC-0005UZ-2K
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 74FD5181099FA;
 Sun, 10 Nov 2019 16:32:06 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 2PtDXIEZicco; Sun, 10 Nov 2019 16:32:05 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GmVBJX_5WB_H; Sun, 10 Nov 2019 16:32:05 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 02/15] mkfs.ubifs: don't leak copied command line arguments
Date: Sun, 10 Nov 2019 16:30:46 +0100
Message-Id: <20191110153059.28878-3-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073208_278924_C65127EE 
X-CRM114-Status: GOOD (  10.16  )
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

For some command line flags, the argument string is copied. Simply
writing over the buffer leads to a resource leak if the same flag
is specified on the command line more than once.

This patch adds a free() call to the old buffer before overwriting
it with the new copy.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
index bf1290f..ea0afee 100644
--- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
+++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
@@ -580,6 +580,7 @@ static int get_options(int argc, char**argv)
 		switch (opt) {
 		case 'r':
 		case 'd':
+			free(root);
 			root_len = strlen(optarg);
 			root = xmalloc(root_len + 2);
 
@@ -726,6 +727,7 @@ static int get_options(int argc, char**argv)
 			do_create_inum_attr = 1;
 			break;
 		case 's':
+			free(context);
 			context_len = strlen(optarg);
 			context = (char *) xmalloc(context_len + 1);
 			if (!context)
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
