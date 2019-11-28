Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C9C10C8FF
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 13:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZITrsJ3x40D4dlkJF7mLHC6TSZYVp40V8ukqSCu1xTI=; b=oO0Rl/gPY1p5npYGlvosg74abY
	KEXnnOwCzUR0ZJvSWn+Wt9yICFayR2v22Rr6sIU2fiZS+/B6NoT+6YZbewahS4ahYJFlhy0PSDLb9
	HH8Eev36e00P/a+nEadkjJ34MzqaXcZ46peU/qClD0MFbUagwC8dfyD6wejY40JE795uIagkLC6EX
	GYmFiZ/mnq+quhKbqB60VDmLXEauBl2TLeR68HbY7/eRtQ84RlHdQr+znNpQUY/NsLj06mW/XSsq4
	op9cALFvJpepJ+k/nWnfjG6tYSJcDubZ1DLu4oelK6ZVIkbli6YXT4zNgyewCpwGK+HGToZDZPnf/
	R0gieujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJLs-0003sJ-7O; Thu, 28 Nov 2019 12:56:56 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJLh-0003rw-3e
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 12:56:46 +0000
Received: from orion.localdomain ([95.117.37.214]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mj8Vx-1hvDjy246X-00fC0B; Thu, 28 Nov 2019 13:54:35 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] edac: i82443bxgx_edac: use pci_get_device_by_id()
Date: Thu, 28 Nov 2019 13:54:04 +0100
Message-Id: <20191128125406.10417-4-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191128125406.10417-1-info@metux.net>
References: <20191128125406.10417-1-info@metux.net>
X-Provags-ID: V03:K1:9EUuGTPFx9yVqpEoKdlnLYODqk9fzt9TtUcFLxUJNQuCt8Dur2J
 ACsPPHh76A4wFy8Z88Uwcih8Gh0dLZpBgM8CFlKvY0QA8CbpcQLiyPn2pyQvfVC0LvrKJga
 Cc1aJBxlcwchVkCPVIP3TXc8IMtS9wGQaNQjzGegaEmSeVHuId1bQ7trzN6njcAQpcGXqw0
 CyUuKxSGvW13czLk3/woA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/fn+U6evcp8=:mG00zLE+KR2h6oHqb9009C
 L0fikJ9nBQgS+pmDUpSajRT4HUgHowXnOvY7nwciAUil9VzSSq5nS6YUn9wUiEJbCmBNMLBBi
 9GNdhWPS1tyZZwSwlZKHW8wKz+wikAN8xUu6xrk4YFNN23kXZplI4zmNLc+Lm5NyhRAcNdTIn
 zy59HI05sybYGVBCSLYg7ZHBT8R1zeYbZwKMqGNW4KS58cEhkWwLinI5jCexhRJ84HZZ+BoN1
 G3gCzTOfZgWRYOZCs88AkG/lhETTv0KlMQYhKgL7ekvBt7psZVSXZ/8i3OBWs8nO/GhCTTNyJ
 zoZAY24hx+Pi36uQKrn26DyHbKnFkAWh/JhYMI+8XYHj3RMrXDJmLGAADEQ8R7udrni5VDqRQ
 lIUeB02b37i4SJS82xbox6wwsVxwI4Y0yKU7hg41FJkk0yO59QBugIBSQMqoMuC8LwGZhF5Tt
 ChOYleEqTKERFMWYdnAQpTtmOUQYPTKU/6K02ai1cOGFMYV2JbZk1eMDM/7homG2m5rb9bIIl
 FtwTTsakh/VyDO4Xv+1wDFd/Ikjme1b8mbIQclCY8siGvzx4CZh0wrQpHYOLhR6tJC17XL3mK
 IaVxXZbWmn5zjH4JoffpYxppi9setLwa8TImMh23Np222al9COuJD16fmAPMYIbRxoHwrk4HP
 8Sd3yluxx5TCu/GorU/8vmVsRwGuRqEDm9KjAC2Cnn94lyTRGo1dVG/xfH+/xJGUfQgeab/lE
 IAshHFivK66H3YugaZnI3Fi5fIl4E0cFBdikOvm05PGkuNcE6Jv9wBeexKJo7o3NB+eECt7hu
 99QB4XBE7inceZX+WISbvRB+ohIstws4Entssak1jqg2wR4RN1TBTWYp/wY0m2rLoAKQCa+x/
 B6FZ1HHlOMjNBYVsVT/A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_045645_443382_C00DDEE2 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, jdelvare@suse.com, vigneshr@ti.com,
 richard@nod.at, linux-pci@vger.kernel.org, rrichter@marvell.com,
 james.morse@arm.com, linux-crypto@vger.kernel.org, miquel.raynal@bootlin.com,
 linux-mtd@lists.infradead.org, linux-edac@vger.kernel.org, linux@roeck-us.net,
 tim@buttersideup.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use the new pci_get_device_by_id() helper in order to reduce
a bit of boilerplate.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/edac/i82443bxgx_edac.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/edac/i82443bxgx_edac.c b/drivers/edac/i82443bxgx_edac.c
index a2ca929e2168..c01f51a4848c 100644
--- a/drivers/edac/i82443bxgx_edac.c
+++ b/drivers/edac/i82443bxgx_edac.c
@@ -407,15 +407,13 @@ static int __init i82443bxgx_edacmc_init(void)
 		goto fail0;
 
 	if (mci_pdev == NULL) {
-		const struct pci_device_id *id = &i82443bxgx_pci_tbl[0];
 		int i = 0;
 		i82443bxgx_registered = 0;
 
-		while (mci_pdev == NULL && id->vendor != 0) {
-			mci_pdev = pci_get_device(id->vendor,
-					id->device, NULL);
+		while (mci_pdev == NULL && i82443bxgx_pci_tbl[i].vendor) {
+			mci_pdev = pci_get_device_by_id(
+				&i82443bxgx_pci_tbl[i]);
 			i++;
-			id = &i82443bxgx_pci_tbl[i];
 		}
 		if (!mci_pdev) {
 			edac_dbg(0, "i82443bxgx pci_get_device fail\n");
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
