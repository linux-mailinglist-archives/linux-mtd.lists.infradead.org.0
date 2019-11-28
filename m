Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B1D10C907
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 13:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p+zgA833tU8zbcOK57cifIiznLdmY1TwfyHZEGNsEe8=; b=ZB/svY2lEu4L5v1EsWGj6uM2w1
	tEMPiaIu/ccbjZjVcCFkpQ4yvV5Fqol/YeJKRfL+rwuAxiaKb4CYizibo5WJr2OqVGsPNHbcdKePp
	QolUvXlBXh3btaI1tQ+tTsHSkDrAcEg1oYaLRlayWbv6ye89aLhsYu8JTI6stZvoHk8y7kg28mKm4
	gYTNEx0beEI8Eqztvm9sFQhwXAnCZh2W4pjQxDdqhugapDelCpMniO9i48J73fqwILi1W2NvZHgq+
	4ZDcltTbXJndLPWh3t6Pj6jVSVHWriYwEbxVMDNHgeYG/0J0LUTI3Uynt0PqYUSGUHsFkErUHo124
	91QBtHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJM7-00043A-MI; Thu, 28 Nov 2019 12:57:11 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJLl-0003sM-PR
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 12:56:51 +0000
Received: from orion.localdomain ([95.117.37.214]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MyK1E-1hbdcU0isO-00ydb8; Thu, 28 Nov 2019 13:54:34 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] mtd: maps: esb2rom: use pci_get_device_by_id()
Date: Thu, 28 Nov 2019 13:54:02 +0100
Message-Id: <20191128125406.10417-2-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191128125406.10417-1-info@metux.net>
References: <20191128125406.10417-1-info@metux.net>
X-Provags-ID: V03:K1:LJ4XD4Q1I99644y7Yi8gy5ObuDirUwTeYOjL2svDYQFbmIEiqVd
 vGqICSXk5rQO+LpL8caYsCfU5mx3d3HH5lM+2lZ2CEC58FUd5oY6TspsspPuQyR8euODIMZ
 n1i2gE8epRjsRuicdy7dtKZt2dS7q4Yan+TOCBWn6G9TyYJU4ClCXJ6c0GAieG84hIBeQbF
 5BlvrLn6Hpt6J17cgNARA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:huBOBxAjfPw=:zTo6XDhnLLzzv4ltg2BFi1
 nF2A00B8dy/VI82VW2OR01ds3tNc3tlEoJbXB2DTIR8n8UfO5/gexNjvuMhroiSHZIXOd3kvx
 jGNfa5bnxm1dbSM0gMs+w/D6WU8b9vg55rfVAqAY/gh3PLZFnRjlVbKILDLKsKA8gMEllJIWa
 MKleovtQv0maEKfs6ZGBCqYa3JoG2XmXP7pY2rA46EZyHg4HuDgtVhMa9RFQ5FvPR/TZHgTkX
 eAWmw44grNDI5c1aHxTSzw6XrY2hq5gKGxCHeKlqP2G+UKnfunIU5Wiop4A4T3eoxBh+qUliP
 /hmcVhTWAHRRqb1kyliqjsonMyZVmpIIXrfntkaJD577lHx7deq4OB+vCqt0VlBItzHd/aQMk
 4n/WY/6SI3nFbPxXamY6/F31fegGPmno9Si3NvXd/tZbtgJEPpVvD9vZynF6/fD6SvOhFMWYW
 xNkgPUQQ2QCSIDdIyfUtLtcKRSTqn93H2r00mAUcQ3IYbM/VOcoivlgbOeMehDgxA3tBIdMtx
 7nltM8Qh54ZJir0i84C1ziLMX13ZP0oD+y3hYBv283tLfALIGCDDje1bxzCJFfuuj8FgcD8jh
 cpPACtaPhZCZT2Zb27kDXOFvd6O1ePurAbNrIaRckJOmdoz6HXkDWtPJ+dhKPn2YB3Ch4CRT9
 qGB05QuHTPE+MoD+Tu3H6EMjm+BOtddiG72X5hMDgKwZx/m+6AGzFjiLFMAtd1uavzPqCPrGr
 hTttJv+ul5QcjQNcqwdBDyCFqhITSMjI/0bb9Neas+U0GwS2Z+ZPC2aHk/bvb0+wJAssQ8IyH
 G+Mh+rLaqXVLNlC8EaSnZ++5+T2u8tT4WxyfiGko+FA50gM9mKPmEl9OHzpHqWghgcpPBwTUz
 oi7mN497nCPqXxEoMqNw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_045650_132482_3406487C 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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

From: Enrico Weigelt <info@metux.net>

Use the new pci_get_device_by_id() helper in order to reduce
a bit of boilerplate.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/mtd/maps/esb2rom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/maps/esb2rom.c b/drivers/mtd/maps/esb2rom.c
index 5c27c6994896..0c638ac6ad82 100644
--- a/drivers/mtd/maps/esb2rom.c
+++ b/drivers/mtd/maps/esb2rom.c
@@ -421,7 +421,7 @@ static int __init init_esb2rom(void)
 	pdev = NULL;
 	for (id = esb2rom_pci_tbl; id->vendor; id++) {
 		printk(KERN_DEBUG "device id = %x\n", id->device);
-		pdev = pci_get_device(id->vendor, id->device, NULL);
+		pdev = pci_get_device_by_id(id);
 		if (pdev) {
 			printk(KERN_DEBUG "matched device = %x\n", id->device);
 			break;
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
