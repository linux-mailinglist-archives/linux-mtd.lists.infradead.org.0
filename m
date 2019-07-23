Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4708B7188D
	for <lists+linux-mtd@lfdr.de>; Tue, 23 Jul 2019 14:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62FpZi07RCoBlOA2LU4R0i5PIldlj3e01UiAQ+7iepo=; b=c2lfa9el/kXLdP
	1xp5UwKbTsx0COeQRzT8JNMhLkufAA0JVqGet6XDeZVw+hsn7Us6Lp3x54mI9S4mR+lMIi0iKwKcO
	6BEsLKBdemEe+bKV6oP+vlhl2wLAR8KI4dqK+EC4FXFcsj5mXbpgicm/GWU+vQtLtX+gXoPQx1KDM
	NNvc/aI1KixmkW7D1WSHodNOzvugeC8F/YNiTnUuKD6l2VZc68TJYtkNv+5101T4SIbH409PV8egu
	Wo0CM1mGxa0zEfTbG+v3NrL3DlZ8HWYQwEBT3q0Qfw/cSZIl5HtrnLxvS9UfwvPBnPsOlmvH7TMWO
	LNbCyc8YDMX4I30/453w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuCx-0007PK-1V; Tue, 23 Jul 2019 12:47:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuCb-0007Oe-HI
 for linux-mtd@lists.infradead.org; Tue, 23 Jul 2019 12:47:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so19388127pgm.3
 for <linux-mtd@lists.infradead.org>; Tue, 23 Jul 2019 05:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m3CjjylHJDgM8UoL8N43slI27v5A02DOYCpC+keeaAg=;
 b=jQONPhnsbtkqI89cDYc0XbTjhAMYlmACChJwcksDP4iNqLLEGtOGc7Fr3jqrf3A4E4
 8vydhwcufcKFSWeWVQHbGNRUTtSjaH/38/CNHUB4cO90CwWzRaFb2wscf53npIPO7N8A
 WYw10FlPHd0Y+ni458dxI/F0AaqkeHDzq7Sb6FVdfq6LvS+DMWVIyMi4rnyKWyA4JseN
 gqKSrKiPuVbEe40l6AMUHKl/OXQdds55rfkwnu/SmY+fuayu436lyMxv5yQzqPqH48xB
 3300c2zsFmkgMP3NNxJdbiFKKGRde2g+/mujOPOdS1WIzhkLMSK3b3GMTJSEhQ4Zgyt4
 U0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m3CjjylHJDgM8UoL8N43slI27v5A02DOYCpC+keeaAg=;
 b=bxvPYce6ZH6yMJIL5RmJLNa/K3EotK1fAm90HK3A4hVpJXcGtA1fDuy+qO1y0is1Rh
 ed4Ov2ymFoIOKVtbzYnuGETZpMcFEH3kBvasYvS9rHn/xwHIfoIVYYtyG7AMNpR04X4Z
 wznMVXd7c0J/3gHs3NGfkKyFdAvKrYkCjP8/NZ75ChoYzlV/btx72T8BsLh5OFuCDaML
 tbCHsjJTNvM+9ULI8hee95Wb7BaxQhEoJcW4JQgf7CgH+T4qou6hDCHR26x5Mjxrxe/6
 SudAtwaMT3FiTBg/uWdujY5wCfqmhow39r2epzL//Y/8QzICrD/NVqJ/7A+uBbOz3plH
 aVOw==
X-Gm-Message-State: APjAAAUTYaeuKrUmHCKNg74r32NdJZHA+mkIO5ZddARL2b5KxHYH7StT
 moizZxlJdukwszKdVluS94k=
X-Google-Smtp-Source: APXvYqwdkAzmhJXxPf+K5KhZ/iibjQIPyH8wy433dDDgalWcZ5KwuUtYD7Lv6DLARviwoKhMNZKbNw==
X-Received: by 2002:a17:90a:2562:: with SMTP id
 j89mr82421377pje.123.1563886052811; 
 Tue, 23 Jul 2019 05:47:32 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id g2sm72335839pfq.88.2019.07.23.05.47.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 05:47:32 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] mtd: rawnand: r852: Use dev_get_drvdata
Date: Tue, 23 Jul 2019 20:47:27 +0800
Message-Id: <20190723124727.24851-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_054733_577073_21491153 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Maxim Levitsky <maximlevitsky@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Instead of using to_pci_dev + pci_get_drvdata,
use dev_get_drvdata to make code simpler.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/mtd/nand/raw/r852.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index dae0d235bb17..77774250fb11 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -998,7 +998,7 @@ static void r852_shutdown(struct pci_dev *pci_dev)
 #ifdef CONFIG_PM_SLEEP
 static int r852_suspend(struct device *device)
 {
-	struct r852_device *dev = pci_get_drvdata(to_pci_dev(device));
+	struct r852_device *dev = dev_get_drvdata(device);
 
 	if (dev->ctlreg & R852_CTL_CARDENABLE)
 		return -EBUSY;
@@ -1019,7 +1019,7 @@ static int r852_suspend(struct device *device)
 
 static int r852_resume(struct device *device)
 {
-	struct r852_device *dev = pci_get_drvdata(to_pci_dev(device));
+	struct r852_device *dev = dev_get_drvdata(device);
 
 	r852_disable_irqs(dev);
 	r852_card_update_present(dev);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
