Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B42BE18A
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Sep 2019 17:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=//UBrlRz9C17IdbJeUDjgWjN8tnXuyPblwRmcPr16bo=; b=og+
	RKbd46J32E1K3hbheVpgcnJiavpaP32Tm2cIHbaiQ8I2nUrUrqvlrCLVfZpcGtO03heD9MU1lI2lg
	RosOW3dofA16u1P8d0NYRvtjHx4pU/R2igWOZhUGiKH6xatGDzWqwow+Z7TpXSfa4sMJAi5Fo8sQ8
	ek3cVIf+gRl1uLzemxIwOFtCPAeOaoxT75gFtOYgMMjIpJjEexqrw8s61MuOkfU8X6m5AQJbHLdSe
	XVCHw3Ht2gHA3UXmq96gyrCY8LlDbJhBTwk6owiAOf6ARvgpXnOVqYEfuKcxmqCHKZ2WcDfkISHm/
	cptZu3ej6wH8QAuCg+U+w7/hJl/JaDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9Rx-0002Mk-Ro; Wed, 25 Sep 2019 15:43:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9Rg-0002M5-L2
 for linux-mtd@lists.infradead.org; Wed, 25 Sep 2019 15:43:13 +0000
Received: by mail-io1-xd41.google.com with SMTP id q10so13677iop.2
 for <linux-mtd@lists.infradead.org>; Wed, 25 Sep 2019 08:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1Q00ynemAKKJ/MaIBjRv27jDNOvaD0z4mVtJwg+Ggx4=;
 b=TlUx8bj8sNScMxlvR9cpJQiju169VCIBczghi/BIQ+/kbKio6pxKQEcXSjPJN/pHGm
 eeddNXnlbkXN83gF2jt35B3NCYLGkGbx3sbeJ30Xq5jQAQPG7+qKLfkiJ2YyfyQvbLXU
 PUAxdurKheZOADHpQBtais8IP0w0ZUxeZwVdlfX+QCit4HmKmYo9IHjA54GWN/LnqCpL
 o8LlJbQz0G1KbK0HwS5qrBWnwO7KdU26nIg/O9EJmC3D6u4zKWENPnhN5cZHh1FknKBf
 N3AKPTPdLC8bbPZL/bIg1OTzTltClqhwd+LMgwkr8BFeM4jP7jR5cSBxsBLK39Gb5a/h
 F3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1Q00ynemAKKJ/MaIBjRv27jDNOvaD0z4mVtJwg+Ggx4=;
 b=A/Ihe7lJicQE/ZOWexyzA/y5Ttzq/uJNrPFNUwjnv29dLhsI1fEZnEFVNDvg5Ih3oo
 NSw0sbYwgudgRsGIzE6iJWVGLPM04hou9qZMEgCTnx8Ez4Uv8KS98c/2HeZCKWzNHJgD
 TWMCJR4CZw2kzDfyLRNz7kvQ1ylOR1KuI6fwm8KWmFMt5ix9cDbSzTOhlt56VzsXRVb9
 98vaXkSH0WV8kMrIIkjUxDD0fr6V6n/pNJPXUOqF0aa4PPP1Yc9Ybiy3+D1QWLsltj8K
 BmE57LpurkzZXEu/RC66+JT3V3C3/Gs1YvMjSMxfobQ5wS00uO06/Oy4ISFNyt7ww+Cc
 TjbQ==
X-Gm-Message-State: APjAAAUxICVNmKuWToJQwmu2GIbtRJUk94NKdEx5sC4sj1uetMXuomtd
 3mdxCMUzQ9WyQ10lUEqeW00=
X-Google-Smtp-Source: APXvYqxij5TFaLPw6sfDkSzhH8BD1KDP4TWRvF10GL4evq0Ql2LxLU+1IBy3atgOf6g7IKRAQmYZ5g==
X-Received: by 2002:a02:65cd:: with SMTP id u196mr5831930jab.3.1569426191113; 
 Wed, 25 Sep 2019 08:43:11 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id c11sm4692723ioi.67.2019.09.25.08.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 08:43:10 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] mtd: onenand: prevent memory leak in onenand_scan
Date: Wed, 25 Sep 2019 10:43:01 -0500
Message-Id: <20190925154302.17708-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_084312_717282_B766E2F3 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 smccaman@umn.edu, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 emamd001@umn.edu, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In onenand_scan if scan_bbt fails the allocated buffers should be
released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/mtd/nand/onenand/onenand_base.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
index 77bd32a683e1..79c01f42925a 100644
--- a/drivers/mtd/nand/onenand/onenand_base.c
+++ b/drivers/mtd/nand/onenand/onenand_base.c
@@ -3977,8 +3977,11 @@ int onenand_scan(struct mtd_info *mtd, int maxchips)
 	this->badblockpos = ONENAND_BADBLOCK_POS;
 
 	ret = this->scan_bbt(mtd);
-	if ((!FLEXONENAND(this)) || ret)
+	if ((!FLEXONENAND(this)) || ret) {
+		kfree(this->page_buf);
+		kfree(this->oob_buf);
 		return ret;
+	}
 
 	/* Change Flex-OneNAND boundaries if required */
 	for (i = 0; i < MAX_DIES; i++)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
