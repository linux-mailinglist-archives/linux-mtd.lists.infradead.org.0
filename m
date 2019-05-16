Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A230A20D41
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 18:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pLmSKqMTb8GbrRUYDjWUG40JsVLxtjBW75LpSQ2IX2k=; b=lA7
	jOixg6GDOWcPSCqpOZSjWtlY/9AIn/+yjDbAdGEGJNEOxvBdhkOLnYDEXCkI2JGA9o0Lx6pe8lI61
	dklc5qpAXE96+CURDi+dTHOCcg/D4CdiJKWktcIYhooaazmnbpuE2AMzozUtbxhMvpEMj0uEQ6b0u
	ZLoAB/pO3v2sJabjLZ2di45LMmUiQvwiDizogcRZrzNPKWsxohO5Q2ArKaOkWAU7TA2vbMLyhTx9f
	g00wWgNwWITBNRo9FW8xaFJWYRZn2IihqHuBQxRF5O+IcWxA9Yek+QczytFPAe2t/xCL6wugWxvZM
	I9eFAvKJw7ND8p4+moDs/J8ivOxy0NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJSQ-0000Lz-4o; Thu, 16 May 2019 16:42:14 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJSH-0000L4-Jl
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 16:42:06 +0000
Received: by mail-ed1-x543.google.com with SMTP id p27so6216764eda.1
 for <linux-mtd@lists.infradead.org>; Thu, 16 May 2019 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7hWW7F3Jq1teN//UiYRY0ce3mS1OHS7jeYFYW15JQuE=;
 b=OtQtTKENS/kDTkzdvta14eqqXLVyFWovn3fbD4Aqk3xTmHOj1RabBgYJ5NfI47wMoZ
 zICB7jy34Amf3NZv2XpTFIOfdsvC2Sbe8lIMZx8e7DkTUFDcpI4J8raTtFoiHiK4P57F
 U3flbJ4xdno3lno40OQQZGqVSGb529186F2GIAzC+x/RBmsc0BGWudxRaAmp5TgtJME7
 4st677zv7t7NT+eo7l7ifjejIUC8zvoYOa3Hk2wGXh6dPMNu4GwCNBeg/MNwH8w6K97f
 TAGNOXLUqL8sK32OoYQN/WMKsoD/nchOyBu2Jgk/PwRoHzhGUwC4sKZGEncwEN/8mDNo
 koEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7hWW7F3Jq1teN//UiYRY0ce3mS1OHS7jeYFYW15JQuE=;
 b=VwmhO3txEOtPnk/JZKsEuxx7mMlwV9JHbTR9fij27YdEghhkNZe4EmNYY21+80Dp+C
 unmfJzjgfWP/AOc5wnhFbiveJTDiU5jJrczlmUb6CkCtKHRs/1GoBpdevpeDcciyoDOa
 Lk3s2PjQlw2FwzD6V5KLUBybjp0D4wCirfD8L2KARUYSzrYUN2yuZEv1YWWoK/sW5y5J
 qcoY3ykYFo78MlkB3kDZ5GvIeR1qEHF3++76hD35QPxf+UK5hsNHZmsYWZhP7aeA/z2z
 krHDk+meBMojXlP0PBlGl+UzS0iygpki0OSZBRtXulyrPZOurQ2njdR9xfouyrbSJmTr
 DLuw==
X-Gm-Message-State: APjAAAW5v65y5VdA8Yw27CgXKmWy9bUM6cmhPAnsyNLsbzJiAqgjyFwU
 kqoZxaNBk6eQr94KIt9Jn49lU3gE
X-Google-Smtp-Source: APXvYqxE5gnOG1GBDEQ/vXEgfSrP1xENIVStPlB1dls6VlS0+mMGiXF1Q9bgkjMyE3ebKtCimXoKMQ==
X-Received: by 2002:a50:8eb6:: with SMTP id w51mr50988410edw.34.1558024923930; 
 Thu, 16 May 2019 09:42:03 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id i45sm2013709eda.67.2019.05.16.09.42.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:42:03 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v3 1/2] mtd: Add flag to indicate panic_write
Date: Thu, 16 May 2019 12:41:46 -0400
Message-Id: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094205_647233_45840ECD 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Added a flag to indicate a panic_write so that low level drivers can
use it to take required action where applicable, to ensure oops data
gets written to assigned mtd device.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/mtdcore.c   | 3 +++
 include/linux/mtd/mtd.h | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 76b4264..a83decd 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -1138,6 +1138,9 @@ int mtd_panic_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 		return -EROFS;
 	if (!len)
 		return 0;
+	if (!mtd->oops_panic_write)
+		mtd->oops_panic_write = true;
+
 	return mtd->_panic_write(mtd, to, len, retlen, buf);
 }
 EXPORT_SYMBOL_GPL(mtd_panic_write);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 677768b..791c34d 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -330,6 +330,12 @@ struct mtd_info {
 	int (*_get_device) (struct mtd_info *mtd);
 	void (*_put_device) (struct mtd_info *mtd);
 
+	/*
+	 * flag indicates a panic write, low level drivers can take appropriate
+	 * action if required to ensure writes go through
+	 */
+	bool oops_panic_write;
+
 	struct notifier_block reboot_notifier;  /* default mode before reboot */
 
 	/* ECC status information */
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
