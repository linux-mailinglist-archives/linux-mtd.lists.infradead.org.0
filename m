Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0BA10C91F
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 14:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vPWwFnvsNtBcI0PO7sPQz3gfpGtWd3ttKQ2HpQZlKH4=; b=KZ9R1oC9Z3Na06ppLhGL2R+5UH
	78ZjcvwwPLLw0odyHID6/64A335nspQPwRJK7xMouWngWjsnbIfsyIyTv8sqS7fZ1aOuwwHL2liD4
	4G80afJBnyoJTpYiItoQHWWMj2rU39f5Uj7gLI7FNaibj5zBZmSniDxXTepPaYAANAt8SU6nvGDd3
	1Oi8tdrJ92PGwDRJqGJRPTO+03fDbkzN1zAkxN9kXZuQJDlaL+vgHWF9SBIWS7C30Wqax1vHUl3TM
	/cPurB0zewmym2YyEL7hEfpvEZzHSJCC6RzjKDKAQslulvL3zJVD5Etf7/cFMANvJwpTWmdOAYvLQ
	dOonGANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJPV-0006oU-Tk; Thu, 28 Nov 2019 13:00:41 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJPM-0006o0-W2
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 13:00:34 +0000
Received: from orion.localdomain ([95.117.37.214]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MKKER-1iEWnt3SjH-00LkPB; Thu, 28 Nov 2019 13:54:34 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] mtd: maps: amd76xrom: use pci_get_device_by_id()
Date: Thu, 28 Nov 2019 13:54:03 +0100
Message-Id: <20191128125406.10417-3-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191128125406.10417-1-info@metux.net>
References: <20191128125406.10417-1-info@metux.net>
X-Provags-ID: V03:K1:kHHWDalUVUqjlafRyIBDsEVrMDclpS6WFOcs2fJqalWicwdQghg
 xuEXtV526bjd5k4WcJfvLri5gHj3mTA2elZo05psIN/BL0IYjbsFx73zY7qOePNgjzjErsa
 kephRy+9U7L17Fjl1nNwmeDO5WtgjG4pSkuT9CawtD2JlPNhZQi26P0EcKRYUshBzobhF/h
 zCsfwx4mIUAImOjsQ+atw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HVNFLXUI8no=:Nc0GdKIXzMS7m180256uDy
 jCFDBRie3blvAsXX+pcsXjmc479xIx8f5/lZCyg8xMQZwTcIOZWWhVvaXcrSQvuRmCkDJD+yz
 xi13CUwqIUGbCnxDx4HwD1DwXt3UW1QH0SwM0mtzNFbWBVXXoUZTl7S1YyTqwCZZG/QqFEql/
 KXGfoEv7z711cgxYbuynC1dj5W0vcc0n1QSZSdcCUrm/7nnrD70V9hEa3FdmyJYpX+EA7FqaE
 NE4sdcvhdg/EW6OQOv2QINUEofKv0d/g9h9H/POzWr8oQ8WPf0iXEMfQOFFWr3mk76Nia1l/x
 GeKYo2M7k3h+Q11m34NEcm6hmwAqotrk7gGSW8ICDHj36cDjFYY3wB2QknwRAGp3ONoC9x44J
 2o3HnIhGKChll6830UJPp1xuG7bZZNiJO5apnFTK8lmlEgjSMPV/ynWGb0YGEATxI8bYUtSw8
 tD0Aycmup8cAkUGNFI3TrHtlg4sgYSRXHRcOCnbVqaBWmNwRmuXS4Q/fVvW0ayNZKcy8X274k
 GVDTQ8qX8E8RR5r8xEWtaFlh29j0UPWsJr1Afix5Yp/s2DiXQ/56GVkEDfp4nY7jx5dR9VP3C
 DdHyD7FXgrW5pPgGulBP5FOdKqCiTLdmlH+YcsrZY/6yh1MPvJWx9BLp5DaXAWdcQhj2vs3wf
 Cm5rWh57LhE43A/XHN6SSJGP0L7+u7PdHLWtYH36k/NFeXbeaTzR5e3311LdUauXeSht7/fNw
 lAJPgZfup5MeWPNT7Hq1tRVoC2apQG+jn70abCWQg/ybgXsLXerEWsCieft9hca8+V3btu1IW
 uu+dfpMkilp/WPQK1n86856jiB1m+wC896dZy8GvAM3YEA6yU3s9PHEIN7KIHE0+QKbKIaq8N
 SY+iucKAdtRbwvbTWAQw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_050033_324654_F83C2E97 
X-CRM114-Status: GOOD (  11.96  )
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
 drivers/mtd/maps/amd76xrom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/maps/amd76xrom.c b/drivers/mtd/maps/amd76xrom.c
index 462fadb56bdb..07a402dbdf44 100644
--- a/drivers/mtd/maps/amd76xrom.c
+++ b/drivers/mtd/maps/amd76xrom.c
@@ -323,7 +323,7 @@ static int __init init_amd76xrom(void)
 	const struct pci_device_id *id;
 	pdev = NULL;
 	for(id = amd76xrom_pci_tbl; id->vendor; id++) {
-		pdev = pci_get_device(id->vendor, id->device, NULL);
+		pdev = pci_get_device_by_id(id);
 		if (pdev) {
 			break;
 		}
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
