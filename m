Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4761BAE61
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOG5w8jHGL4t3Xdv79Z3Y25pm4tfHyCd9InnHIuv8as=; b=gbgUTnkDsVKFSs
	d2V5Cyj+TGKotfVeuReO8DpVBzJBwwnaWd9gUzcPIyV8hQKUYgtHEeOlj3jloiN5PS9NNVQEIRfaP
	JwntjLUoUIzXC/6SaLsDD0Yzu3D3TQZLgeDRN8NnGHu0vUgWhxQ6IluLVTtCjNRjBDVUC5jYtbvzy
	r0TmRsPK0N7nccTA+i+YyZTjY1Zl8t3YEBu/ad483LwbKTBkZZOYEcUptOfUsTPNhl0NxK52YBCgY
	Ez4yCkS80ddh6xS/z8X1U4V5xN+5lzRYD8c4q7roFGmKNGMfXbsEcV7h8Dy1DNQ7xdfTNbj/F05Nu
	PZOvtd0qZVRvKX7NBsCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9iL-0000aE-8f; Mon, 27 Apr 2020 19:46:49 +0000
Received: from gateway20.websitewelcome.com ([192.185.65.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9hu-0000PS-7y
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:46:24 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id 34F5F400C732C
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 13:28:51 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id T9hrjNKEjVQh0T9hrjVDaC; Mon, 27 Apr 2020 14:46:20 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2PhqAadEanGA6zu3GS0dpv53aeSLftBKlQlVVXlea+k=; b=gVoeX18XHnlGe6CLXThXRH9LZ
 aKlnSZSAL85rDI3H7sG2EkU+BG476MeXYVRILj1dM5eEci4Cj+82kYaxvwwGvZbmT6SXbBLYmHK9r
 ynot9tkadfyLT2v4IgFRnZRVcCRGXVT5NmmXa7/kaLlpuJrFYO4DFXpVVw6ZTmQ2ebDXXGUOVfgsp
 kpXstOcY0WWLGIWxT02+ujQAZCbYJ7XEc/2PgIKbPkTkYMUYCWq+EmjQS2OndBXdoq4WjL3AFGFMF
 wUE5UJ7ge6+FYBUYPM1w8V+rM39+DfgyXXoXDrLz7dyFPhkPssOW96105KNnNrNjIjFyopVj3vm9A
 Sgk1HzloQ==;
Received: from [201.162.241.110] (port=25072 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jT9hr-000yI5-F7; Mon, 27 Apr 2020 14:46:19 -0500
Date: Mon, 27 Apr 2020 14:50:37 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] mtd: lpddr: Fix bad logic in print_drs_error
Message-ID: <3fb0e29f5b601db8be2938a01d974b00c8788501.1588016644.git.gustavo@embeddedor.com>
References: <cover.1588016644.git.gustavo@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588016644.git.gustavo@embeddedor.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.241.110
X-Source-L: No
X-Exim-ID: 1jT9hr-000yI5-F7
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.241.110]:25072
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 29
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124622_383180_1EC22B80 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.65.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Update logic for broken test. Use a more common logging style.

It appears the logic in this function is broken for the
consecutive tests of

        if (prog_status & 0x3)
                ...
        else if (prog_status & 0x2)
                ...
        else (prog_status & 0x1)
                ...

Likely the first test should be

        if ((prog_status & 0x3) == 0x3)

Found by inspection of include files using printk.

Fixes: eb3db27507f7 ("[MTD] LPDDR PFOW definition")
Cc: stable@vger.kernel.org
Reported-by: Joe Perches <joe@perches.com>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
Changes in v2:
 - None.

 include/linux/mtd/pfow.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mtd/pfow.h b/include/linux/mtd/pfow.h
index 122f3439e1af..c65d7a3be3c6 100644
--- a/include/linux/mtd/pfow.h
+++ b/include/linux/mtd/pfow.h
@@ -128,7 +128,7 @@ static inline void print_drs_error(unsigned dsr)
 
 	if (!(dsr & DSR_AVAILABLE))
 		printk(KERN_NOTICE"DSR.15: (0) Device not Available\n");
-	if (prog_status & 0x03)
+	if ((prog_status & 0x03) == 0x03)
 		printk(KERN_NOTICE"DSR.9,8: (11) Attempt to program invalid "
 						"half with 41h command\n");
 	else if (prog_status & 0x02)
-- 
2.26.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
