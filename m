Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA2CB5295
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 18:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tjYPWmXhBFK2S/Z8EzV1OYe0j43KBcJfq433sUgKxd4=; b=HZoosQ6Cdxahmf
	tF1zbnM6WAluGTx217WUBHqPVL5cSjUYBrKU7rGwxn5vxfk4/Oj6EcA+OzamrqjmN04Ef60DqYMAh
	s473jDXNydjfEkvwLKpFYjElReTS3Q2qbh9aEJoexgFkH4/worSBRXe0kLO5dziAEZericdaLQZZh
	dy5bvR1fa5zY3Zf6aw3R0oDQIel5KtYHC14+ogbxA39scRjevlYCJYaMtrJkkWmW0xzbWz0NJABdy
	kOElVjaBtCTr3guLk6kMwDx0DcSCRdy2pW4hEo4RJxWYKkYSy5dPp9nEVW8hmKPtXNJG52csBnJOu
	uh0/Ljwr0MiY9vEs093Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG59-0000Wh-8N; Tue, 17 Sep 2019 16:11:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFyB-0008B8-Uw
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 16:04:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id o184so3834014wme.3
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 09:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LlUPnqjBrvprJFHzr3OcCaPAuWWBXc3O5Za7lZ20tSo=;
 b=KyYGGJ5MaL8lJXZQf/TLjz+YAPeIizkmcO93fCrjwW0JLpcXQbIIy1wCRmjuUoBFuq
 R/0KapqJJmkWaXdfd9icdMEKljA/IsY7C3lLUTrFIIWkm6Xjk87aYxshqqA86ODcyMkr
 Ic9SIJeBpFfb0rY9KG560p3/aiE5P4W/OY5lAgETjaqJmfrUnGNew5L2X44KN1zaKz/M
 B8YWhdBUwabUlmf+Ivvg2doX1VUh48wOpmrMJYAO0BUdCUt/aFwNx2xZpIovEO7i8iYC
 D3xfIwFHzqJajUcrsY8goz5tVoob7chT5D7UqBpT73bTkKNO/dfdq6/OUmSij42cemsL
 SKow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LlUPnqjBrvprJFHzr3OcCaPAuWWBXc3O5Za7lZ20tSo=;
 b=agK6jvYF1uAdvrwQyywa4M042CA0FMPLF8fSXM7qgdg/1yAoH6Culxl2Kn1aVO4vyP
 psilnW39WpvEIwEX6s5h8rFA+PJ9A6WFUElKaSz5uAreMX4EKsHy0Q9ihK0lH5/Uy+mv
 NX/FV9m9IAxER6Ev4oQOXsecP+TGvhhhHbblk1SYBqB64KtQCCakPP7hlG4YgB5/s+Tp
 jarYA+MwWgE+CE8boMtvptQeLTskWxQnROrVWJKtN5+2eWLHLQd3f3uvpL/+3oqlTwC4
 DcZ926B2Eg2I+DxV1fDT62yfYYvoSu9+thZP5umETDZNEgaCC8gd0vg759/wxRRao1C6
 /l+A==
X-Gm-Message-State: APjAAAWpAMS/xUBxbAVU6FtwBETfaxIxk79Rmgb+aDeBLtWAcK/XcxVn
 u4QQVq9sldxI53pjeEOvRg3E0Ve3
X-Google-Smtp-Source: APXvYqx30LjONZMtv8nIBPjki45P6fLnhcUdP1L3tcTIuviC/KQy+X9TL1A1QKO0Vf/YXHAuInBoIQ==
X-Received: by 2002:a1c:a558:: with SMTP id o85mr4183112wme.30.1568736285146; 
 Tue, 17 Sep 2019 09:04:45 -0700 (PDT)
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id g73sm3815071wme.10.2019.09.17.09.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 09:04:44 -0700 (PDT)
From: marek.vasut@gmail.com
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: Remove myself from MAINTAINERS
Date: Tue, 17 Sep 2019 18:04:32 +0200
Message-Id: <20190917160432.6602-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_090448_005953_9E190CB7 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut@gmail.com>

I was not active for a very long time, remove myself from the maintainers file.

Signed-off-by: Marek Vasut <marek.vasut@gmail.com>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
To: linux-mtd@lists.infradead.org
---
 MAINTAINERS | 2 --
 1 file changed, 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index ee4e873c0f9a..dd55ef1fb709 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10515,7 +10515,6 @@ F:	mm/
 MEMORY TECHNOLOGY DEVICES (MTD)
 M:	David Woodhouse <dwmw2@infradead.org>
 M:	Brian Norris <computersforpeace@gmail.com>
-M:	Marek Vasut <marek.vasut@gmail.com>
 M:	Miquel Raynal <miquel.raynal@bootlin.com>
 M:	Richard Weinberger <richard@nod.at>
 M:	Vignesh Raghavendra <vigneshr@ti.com>
@@ -15246,7 +15245,6 @@ F:	arch/arm/boot/dts/spear*
 F:	arch/arm/mach-spear/
 
 SPI NOR SUBSYSTEM
-M:	Marek Vasut <marek.vasut@gmail.com>
 M:	Tudor Ambarus <tudor.ambarus@microchip.com>
 L:	linux-mtd@lists.infradead.org
 W:	http://www.linux-mtd.infradead.org/
-- 
2.23.0.rc1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
