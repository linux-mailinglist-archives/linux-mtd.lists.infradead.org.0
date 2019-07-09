Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9EA63A0D
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 19:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lvINqI+1PRH3NJVfc0kyWi/VKMRs58/iwlTC/IyCij4=; b=dvx5YwgNV80N81
	zUrtpzZiBzPHIrx+wZjc2JmZ3DE33v24KqyQYcRT0a2C38t1XsB1MIMQTpqelwkOKjQ9CDsFvaVWz
	swVByy0RXavf6pWAdx+8XEm+Z4XW/EiduBjbNKIK2wDa2eOCmo1saKvrf9GnwVDIGnTZT2poZVHhs
	Ie0z/IXjr2MdcOd7KOdJC91W3dhZ/zN3i6n5hekB7g3z8lv1Y1ttDxy53tHRqY2DzOzK1a/aczJwS
	HbgRMq++qwflCwMHxP+AUB504dfb5rvomISjpb+UgYjuCBJkpBF1IH1qV/Vw7Dplx6oqrElu1zet3
	hv55z+N+zsuGiivfiXCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktnS-00037v-Fi; Tue, 09 Jul 2019 17:20:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktnJ-00037H-El
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 17:20:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so9768658pgp.12
 for <linux-mtd@lists.infradead.org>; Tue, 09 Jul 2019 10:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2jwKlaDa3o/M8o865rN6UppbDUhfZfERAbVMcXJv9+M=;
 b=uUstvd4nTXrHG1PJRnuLzasKvFGHJuTA1VBg63W4rVmKsV7d2+lB7C3m2XWYIqS9SB
 x2+8EGDiI7h2ZpxMr91lNkwvoPjrja/2n8mCBLYY7KEyTKqWX4DXcH/WCqr8OcsS5q0O
 hKILFA+e1gdDOHN9BVaJa+J0STUi4uCjz3QcYw6gqpVzTPKxVG7dm6pZ2d48sON/qd+J
 rIE4Q6gs+9FXYBV/cMZIuj8lOnAgPVyK1IFScTqSqHpZkqahiDj/ZlQgQi2l78Bp0L9I
 k0ffX5TwWIqdbRQHlLhgaJl7CXNwolOrSkxQ3WTbsndysxMK5m2airg7CV3hR2Q1VKgc
 rSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2jwKlaDa3o/M8o865rN6UppbDUhfZfERAbVMcXJv9+M=;
 b=K9a4ctlqg8yp7vZd53fZMLXE3locKSABqYA4M5gXhkX0zqAY1ji7ISdGnINunRUhHh
 vpdpKyLjwDhBDhem6T1kmrOIlmSjUewxsGY+rnC8l0ueTZiQzh8jGyv5Rr2MB97LcauM
 nBBiAd1QZeqUBsRvof7ViGIxzoh0pfn97pkdOhNtGwtxyQJXiffY3YuvyBqgIhikYVpr
 xTKk8cF3YRU4aO1aSwdQGHUtBvABGUMVfFGYzJkBIPq5L4+iQJtpaqvC5C+oPhi6sGQR
 293kH629AX/NY2pd3U9NYC4XamR6ISH5iyzYgmPcWMl9Lz5VDiHZfUHyABwHbKflRBG3
 swNg==
X-Gm-Message-State: APjAAAXg07QO3DadgfkVY3EmxTRFqBCSw7fJhDSfH40o8280WaxuJvPS
 VTN2wSPAZYbtYD3UXNz/srM=
X-Google-Smtp-Source: APXvYqxUYB3bVscQLKpwp3HJINKJwYQXN1X1EJq6MeAeaiardWSuEwDABRPKbO1U7JRKbKJfjBnLEA==
X-Received: by 2002:a17:90a:1904:: with SMTP id
 4mr1353522pjg.116.1562692844746; 
 Tue, 09 Jul 2019 10:20:44 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id n98sm3218979pjc.26.2019.07.09.10.20.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:20:43 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: ingenic: ingenic_nand: Add of_node_put() before
 return
Date: Tue,  9 Jul 2019 22:50:30 +0530
Message-Id: <20190709172030.13581-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_102045_513980_3569A4B2 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/mtd/nand/raw/ingenic/ingenic_nand.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand.c
index d7b7c0f13909..df214e7ddec8 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand.c
@@ -418,6 +418,7 @@ static int ingenic_nand_init_chips(struct ingenic_nfc *nfc,
 		ret = ingenic_nand_init_chip(pdev, nfc, np, i);
 		if (ret) {
 			ingenic_nand_cleanup_chips(nfc);
+			of_node_put(np);
 			return ret;
 		}
 
-- 
2.19.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
