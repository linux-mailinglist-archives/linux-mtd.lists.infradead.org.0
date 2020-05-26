Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE851BAD58
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 20:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWTKXprAg1NBoGRq4wfTXi6CCdpIo8HMztd+/jRxQcQ=; b=uhtMIPh2UR46bi
	6O/MA5B76tyHbPhFHsEkw8cZ+qV7jQyxVSD61gww5smFBsQ1OmGNYgbhbE3NvhaOO1D4g9ApVkTv9
	LVUXbMBL5i+NzzxA8Qofz2i6Z+oF9wC6WdYO6d959porVryOZQthQDHWWwd5KDkzlWF+Tdg4J5Ec8
	KRs8MohkOKY+gMXfpzckfP3K83VU5LQ0VnFcBLwimEG0odZvo6hDTKBI9C96jAnGnS/JulPNTK6OM
	McVD4uy3h1nObeBjmCqPOGRsRkJUuDF4cxrbK6c7Az6sQRkcubAEknxWdJFnAIdn0M4WpjBAX+DLJ
	uijjC4v+urYK4sgqwa8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8xX-0000Oy-El; Mon, 27 Apr 2020 18:58:27 +0000
Received: from gateway30.websitewelcome.com ([192.185.151.58])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8xK-0000Nr-Nh
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 18:58:16 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 7201E115CEC
 for <linux-mtd@lists.infradead.org>;
 Mon, 27 Apr 2020 13:58:06 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id T8xCjA7VAEfyqT8xCj07d9; Mon, 27 Apr 2020 13:58:06 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RzfMdFPhf7q/zyx+Rmk6dI0yIoKjxCN+NpRpWfhaeHQ=; b=Y4Qr+iAwLN+7yQ96ZNqapVo6W
 e9mVZErjxJaiCXC6baXIdV3whVzvEIlkU/uuOfbBHVzYGDOnJvvoeq0SAuMzukg1UXwGIkPnpoZar
 ik6Sj0jGtmzzbI9BfcAlNlL+3vzShYVYgAY2vTyePDq0fFTtB7rBS30GSp853POIttI7+BysnDaox
 aKl21I2snLLtqbXA69pCdjvv3Cui60NlIiSYjjbBlZCcp8oKxl5wlVqJ1qP6ZFOql3wO8txKq6oB0
 t8Krm8rZzWzcEllhBL7+5UzSSK3eTJe0WlVPQQN7nNQB6BlcHeItLaPwd+xmydescHLNiUZudiObJ
 e9YSY7mCA==;
Received: from [201.162.241.110] (port=9503 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jT8xB-000Zkw-VZ; Mon, 27 Apr 2020 13:58:06 -0500
Date: Mon, 27 Apr 2020 14:02:22 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] mtd: lpddr: Fix bad logic in print_drs_error
Message-ID: <68edaa1aa3c8b4ddecad2f093404c4693d1e2a17.1588013366.git.gustavo@embeddedor.com>
References: <cover.1588013366.git.gustavo@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588013366.git.gustavo@embeddedor.com>
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
X-Exim-ID: 1jT8xB-000Zkw-VZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.241.110]:9503
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 17
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_115814_866016_0E31EA2D 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.151.58 listed in list.dnswl.org]
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
