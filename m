Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0853041A
	for <lists+linux-mtd@lfdr.de>; Thu, 30 May 2019 23:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tsWjDliLVVuJKk929MRaJ4E69CQez7gUp5GiPbi++WI=; b=P/9bPcFnR+Vc95SI6lgSDeRH6V
	dwp3q1laMvNbDeeKSNnRBUkDYEmRMUY4ItW/NrJ3+onrpFtXYkOOiXs6BXTex9SogBQ6qqXBk/ihg
	3ZvdCDBKgjPm/yI3UxVBL+XGvTE9COPMd/ZQhgo5unOLC7EkhITSUXrarH8tNSS3Ys021D6RhbF+c
	FykHvXRtF4Z9twc/B2BvZrUQBFVQaikviHGwJ07x+LDOlXIzNO3YBDNKJMLQug0CR+CvXW1OZq+1b
	e3ElSbu+JmAjKFU8a/3OT3FmyxCBAVCPQFQ8gLm0wVW+XcY+A4ulpnCGmogy2HMkInxRc9P01gI3Z
	FnNOYSJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSUX-0003hb-3v; Thu, 30 May 2019 21:21:41 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSUI-0003Wz-R4
 for linux-mtd@lists.infradead.org; Thu, 30 May 2019 21:21:32 +0000
Received: by mail-ed1-x543.google.com with SMTP id y15so5161264edo.8
 for <linux-mtd@lists.infradead.org>; Thu, 30 May 2019 14:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qzbfu0dliCkkEmJ1UFnYukQdP9RWNNavonlb+Fp2x7g=;
 b=N6vjmWjy73gJGAwNl3ai5Uybv0PFyuyvJaAPxAibzRxqUVjyvhUg2NhHoega74+C8c
 B1nVuyy3hJ9/oHxD9EMRLQ9Rp3o0aMiKODRU3frOrC616DVBH9SAaW6w8NX37vRyhW/O
 L2G7hByWBQr2BCsqkm+KpOmOLAZmcS7FobnGSvlGeKWLpUriE8ZAZZ3zQeMFdS7WUH5b
 vWS+n+5SATB6kCzCtSLQrCdtIdVYsHxiBmWZugnMX0mNrpziiDRxpy4VVfo4mUzNLCN1
 T9DKSmHlkGChdIlLj1LoCb3UqZXMPTjyLxBtlNKx1ue7I6z8bdFeI8LyEZnTrKLt6D5i
 lrAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qzbfu0dliCkkEmJ1UFnYukQdP9RWNNavonlb+Fp2x7g=;
 b=TDI+y/R0R8hpN6XYvYNiP4/kloQVkjqOPo27B9gItXF6YlOEhGZI1+chsTfi0Alwvw
 XlMkheu7yg+R6/xooOkAsx9vAuL9vg6UUZsyAlfyd/cwuwUdodSTldjifxwGIlREic37
 mBYhPRzQtYsBSFXGYacXR5ZrKDu2NB4s/mrb6eoIGAqJYSCULgdvnqb+l+vBUvOBRkt5
 SpTXqAsRDCGmA2EzuftgoZ4XVHCe//M1FAxv/2BIH0nWN7k5TxnKPJnZx01JPvscwW4d
 dkpjc59kf+UCSxHBVZkQSmrBEaSnqPjCTMnV4HKJiHukogw3/hyBqZQqvQx9q57ZLEuB
 3WkQ==
X-Gm-Message-State: APjAAAWVV+My/P/puDPDHhy7NpX1qalW0wClxtQPGfssToZYqUcXjO+7
 OoKP5ZsaKkFITyKkrnpwdxYiFPWd
X-Google-Smtp-Source: APXvYqzRR8gKNI+QpfK/2N0R8st5YfVLx33/T/e2b+X2T7vDp5V2dfBvEgtcUFXa4rQ2gOUlOrnsNw==
X-Received: by 2002:a17:906:3b8f:: with SMTP id
 u15mr5624827ejf.6.1559251284636; 
 Thu, 30 May 2019 14:21:24 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id h25sm597082ejz.10.2019.05.30.14.21.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 14:21:24 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 3/3] dt: bindings: mtd: brcmand: Add brcmnand,
 brcmnand-v7.3 support
Date: Thu, 30 May 2019 17:20:37 -0400
Message-Id: <1559251257-12383-3-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
References: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_142127_495020_1286E806 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Added brcm,brcmnand-v7.3 as possible compatible string to support
brcmnand controller v7.3.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
index 0b7c373..ad4cd30 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
@@ -28,6 +28,7 @@ Required properties:
                          brcm,brcmnand-v7.0
                          brcm,brcmnand-v7.1
                          brcm,brcmnand-v7.2
+                         brcm,brcmnand-v7.3
                          brcm,brcmnand
 - reg              : the register start and length for NAND register region.
                      (optional) Flash DMA register range (if present)
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
