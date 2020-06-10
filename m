Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98D81F5E71
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jun 2020 00:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6G+s6RJmMFKxPZoNKovDI7WTua5x/h4R2v3Ik4jCdpY=; b=Z6keE0JFOk5JdK
	R/qICPQcUVobofvzfbCKuovzUkjO/3/djXkHjhWiFxtj9nkDa/pQxAn0UY2y1yskTj2lTHmE8trrV
	VQTlbJ/9Y/g1+a6SsNoZ+BsD/N40zKbc/OxkiYp/Lv12/vW9WSgD34RcsegzOnZuR4jMqAUgCxFHp
	vKK0zVWc+3vV6OBwA2dXBEPMH1n/Jv2yhJAKYRSKjzFR7JvFYfir5vCyyKatrsDiQ2umZm34KYivo
	3q8YCEQDSBMvhL94rGGgmGkTsT2/qhhorKBWK7GMU6pnu9Prno0bCxUdSUI96WvEUT70q8XL3MTRU
	ryqCSdctIXs4I4GIzvkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj9V4-0004mQ-Br; Wed, 10 Jun 2020 22:47:14 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj9Ux-0004lS-TY
 for linux-mtd@lists.infradead.org; Wed, 10 Jun 2020 22:47:09 +0000
Received: by mail-qt1-x84a.google.com with SMTP id d2so3245031qtw.4
 for <linux-mtd@lists.infradead.org>; Wed, 10 Jun 2020 15:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=H71MExYm/CGiyWc/B8p0G3A3RqB8QbYwFWDgAbb3BjM=;
 b=H+S9mH+IiwxAwIQTSovuAEu2EFLyte/T9t8Mco9jzx/THTvUBD5wHEtcNNustYp43W
 DSCiCYS6v4m7JHRJfIZxXH7KN7DLgQDTC7B8xDTZtkXral/lxUJISHBSRb+VwVqwXFlP
 WrAssSVfB2Vj+KnFewuA4m02kp+KuEhmWThgB5O25FmeLxTOhRmUXi343gSefNH6/VnI
 lEa9gW/ptqBD336Eh08d2R6P2UzriNj+oHjp3Jvy41xOLoTQVPr6qmarB4wrmH5C1EVw
 r3J3n8+JBAwu1TVkokVBXsfyrDnii+NpaRCsUDlj2a86BHTmfaDngC0oD/cTLxsOVo6B
 TqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=H71MExYm/CGiyWc/B8p0G3A3RqB8QbYwFWDgAbb3BjM=;
 b=d5HvkkPOO/1yR23MneOIi0oBwu6Qeh+BB8JudMWpaVE7FfYpsMjG3yDkNsCN8Mk7sk
 SkZdW0nBLckE+iyas6VT+xGOXqXGMXFnRhaAIxaZ07k20u2p0r63VH2lTXGITSUDe0gu
 AoPmXC/12w7iIL56sfnawhiNfvFzGLTxYiEQKH1dZVe0SthO8EF6n4XQ21iKXalsdOK2
 A6DFTuugbw2pvLKXnGCe5HD9O9ZGHRzI9h2RR9pNS6oJve/NOtp3IUGsJqLXfB85m0fW
 IiVCQhR0bJkiniKTMKr8G6O48RtZkuB5UuBxSZORFADsYvN8S9hkklnRmsS+jSeuoUxU
 CSbQ==
X-Gm-Message-State: AOAM530mpiIjhuuQeDRNQSlaSkOyl45gfF8ykh4hOqOICL8Ss4AEu7Za
 1oRpAard7RQ2+UmDNwp3NMrtT5wY8gIpaE+XZQ==
X-Google-Smtp-Source: ABdhPJzJYz+fyBLjsOWr76YEXLuzWpBMVdATp7e+yVnxro1rX8w4AIJwNDBOxf4Vh5dVRZUj4+RQR/pgQE2zI5rFog==
X-Received: by 2002:a05:6214:10cb:: with SMTP id
 r11mr5342385qvs.203.1591829225669; 
 Wed, 10 Jun 2020 15:47:05 -0700 (PDT)
Date: Wed, 10 Jun 2020 22:46:49 +0000
Message-Id: <20200610224652.64336-1-luisalberto@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH] mtd: revert "spi-nor: intel: provide a range for poll_timout"
From: Luis Alberto Herrera <luisalberto@google.com>
To: tudor.ambarus@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_154707_968379_5616447E 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jethro Beekman <jethro@fortanix.com>, linux-kernel@vger.kernel.org,
 Luis Alberto Herrera <luisalberto@google.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This change reverts aba3a882a178: "mtd: spi-nor: intel: provide a range
for poll_timout". That change introduces a performance regression when
reading sequentially from flash. Logging calls to intel_spi_read without
this change we get:

Start MTD read
[   20.045527] intel_spi_read(from=1800000, len=400000)
[   20.045527] intel_spi_read(from=1800000, len=400000)
[  282.199274] intel_spi_read(from=1c00000, len=400000)
[  282.199274] intel_spi_read(from=1c00000, len=400000)
[  544.351528] intel_spi_read(from=2000000, len=400000)
[  544.351528] intel_spi_read(from=2000000, len=400000)
End MTD read

With this change:

Start MTD read
[   21.942922] intel_spi_read(from=1c00000, len=400000)
[   21.942922] intel_spi_read(from=1c00000, len=400000)
[   23.784058] intel_spi_read(from=2000000, len=400000)
[   23.784058] intel_spi_read(from=2000000, len=400000)
[   25.625006] intel_spi_read(from=2400000, len=400000)
[   25.625006] intel_spi_read(from=2400000, len=400000)
End MTD read

Signed-off-by: Luis Alberto Herrera <luisalberto@google.com>
---
 drivers/mtd/spi-nor/controllers/intel-spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/controllers/intel-spi.c b/drivers/mtd/spi-nor/controllers/intel-spi.c
index 61d2a0ad2131..2b89361a0d3a 100644
--- a/drivers/mtd/spi-nor/controllers/intel-spi.c
+++ b/drivers/mtd/spi-nor/controllers/intel-spi.c
@@ -292,7 +292,7 @@ static int intel_spi_wait_hw_busy(struct intel_spi *ispi)
 	u32 val;
 
 	return readl_poll_timeout(ispi->base + HSFSTS_CTL, val,
-				  !(val & HSFSTS_CTL_SCIP), 40,
+				  !(val & HSFSTS_CTL_SCIP), 0,
 				  INTEL_SPI_TIMEOUT * 1000);
 }
 
@@ -301,7 +301,7 @@ static int intel_spi_wait_sw_busy(struct intel_spi *ispi)
 	u32 val;
 
 	return readl_poll_timeout(ispi->sregs + SSFSTS_CTL, val,
-				  !(val & SSFSTS_CTL_SCIP), 40,
+				  !(val & SSFSTS_CTL_SCIP), 0,
 				  INTEL_SPI_TIMEOUT * 1000);
 }
 
-- 
2.27.0.278.ge193c7cf3a9-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
