Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40418F69B4
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQeNRDdyBFoCzVFw1CCPrsVjtGFtpgPIjAGUr3CEds8=; b=bjJ+aulss3K6uL
	MXbnMzyh7REKreW81qcsecoM+9KgtfYLLfXhb/g0s1GgrmyLGnZrysVJ7LZrTbZsC+vT83D2z7gZJ
	fHE/vKReSQmeu6E/atGPZ1Ctc882JWNOigKAiXLPf6I8EWV8rKQU1gSzIMVDrCJ1Ykfx3Np52uHGj
	eJyXLAjOUcikSQgmFzpyLaF58KOXM4Hr8u+P8redNQ/gxV0jWGotH/2gU6m/4w21lsmOA3BYqguHo
	Z0RrnHEfGRblXF/l91AX5atxsAAMwIq6cBE3YLT0vZU6LBm37l2xp5u8dW8a722kOONpLXVy7Duwc
	fJowS005Obo1UsLR874g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpCc-0005ag-8b; Sun, 10 Nov 2019 15:32:34 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCB-0005U8-NL
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 002A318109A04;
 Sun, 10 Nov 2019 16:32:05 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 2Ru61wYheJBX; Sun, 10 Nov 2019 16:32:05 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QChRCREvVjYt; Sun, 10 Nov 2019 16:32:05 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 01/15] mkfs.ubifs: close file descriptor in add_file error path
Date: Sun, 10 Nov 2019 16:30:45 +0100
Message-Id: <20191110153059.28878-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073207_953965_A801C54B 
X-CRM114-Status: UNSURE (   9.90  )
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
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
index 72ae1b4..bf1290f 100644
--- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
+++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
@@ -1873,8 +1873,10 @@ static int add_file(const char *path_name, struct stat *st, ino_t inum,
 			dn->compr_size = 0;
 		} else {
 			ret = encrypt_data_node(fctx, block_no, dn, out_len);
-			if (ret < 0)
+			if (ret < 0) {
+				close(fd);
 				return ret;
+			}
 			out_len = ret;
 		}
 
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
