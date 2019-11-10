Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7597CF69C4
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:35:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7EuqHc4GVfuk7+6mYZYZ2dn/rvkg/m1IgtC/JBMxLQ=; b=Mv16YEhjeCq07L
	wNWSZdx6qwENt/NKOmqbE8dUFN4VRdYiCZI4QmzJ3zjLYZgR4NMWzStYQ4NcftGvLQ+xy5uF+MN5k
	SZa7i8e30qLsDZFZVIAxfp/OCR08dFoQLyU/mSigeJUfarYQmL5p6ikUOrLv2+lL0sqoxsUZIrV41
	DE5lsGsH3seLtw39CfGiu3oSj8zmyIr6XsGKnz6FCYbIsYPBXBzddrRXELvaA9DPaZ2NTF/Z+mgbf
	eHuJjC9x0BOiqmWZKhG8rjjBuzfk3xbcPKAqL9RcRyDZ0VXMJTHFmTAMdyOADWLsQvf2Ye9OGelkM
	YaT+8KdWOd5tDeZArhRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpEs-0007zS-AT; Sun, 10 Nov 2019 15:34:54 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCH-0005bL-TH
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id EF111181099FD;
 Sun, 10 Nov 2019 16:32:11 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eGfoecp39gAS; Sun, 10 Nov 2019 16:32:10 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IKniJjxrQC6g; Sun, 10 Nov 2019 16:32:08 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 10/15] ftl_format: don't leak temporary buffers
Date: Sun, 10 Nov 2019 16:30:54 +0100
Message-Id: <20191110153059.28878-11-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073214_127127_B04CF906 
X-CRM114-Status: UNSURE (   7.99  )
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
 misc-utils/ftl_format.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/misc-utils/ftl_format.c b/misc-utils/ftl_format.c
index 649984b..bf3c8f2 100644
--- a/misc-utils/ftl_format.c
+++ b/misc-utils/ftl_format.c
@@ -191,6 +191,7 @@ static int format_partition(int fd, int quiet, int interrogate,
 				fflush(stdout);
 			}
 			perror("block erase failed");
+			free(bam);
 			return -1;
 		}
 		erase.start += erase.length;
@@ -246,6 +247,9 @@ static int format_partition(int fd, int quiet, int interrogate,
 			break;
 		}
 	}
+
+	free(bam);
+
 	if (i < le16_to_cpu(hdr.NumEraseUnits))
 		return -1;
 	else
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
