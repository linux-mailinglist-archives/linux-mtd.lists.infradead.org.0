Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FE7DA64B
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 09:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4raPivCcqkWXWwVHHQprtrF+lm4tP7pFaT2Y4PnyJ3E=; b=Q45
	TDqrg/LflIghrGnhS9EuFBnLUIA+/uKeXj5hvMzj7IgWSb1jnGZT2W/Hci6vSvLbtHyg5z8QcNwIb
	bUdJt+vXZKJgl+JVHX2gPOZIQ2lPQQ3owt1zgU+zI1sbRGeO2cOLPRuLgocxgM9u679sEZLU9imk3
	fwQODUthOtcYkixrIfk+kyZweof8ZQECEz6oF21McU4f6xF0q95idcXTGre4ctXtdyQSRpjCSoyQi
	NXgxGuaWobuG2nkNoTfrafDUJuya6AzvUKndhWyR8ZN1S71dorGgZrNmIzujfR0WZVypuupmS0u5O
	kCR69L5bpbNPYux+9FA0Nbvzu7NkufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL056-0003fR-Ao; Thu, 17 Oct 2019 07:20:20 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL04v-0003AD-Q0
 for linux-mtd@lists.infradead.org; Thu, 17 Oct 2019 07:20:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="200304826"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga006.jf.intel.com with ESMTP; 17 Oct 2019 00:20:04 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v4 0/2] mtd: spi-nor: cadence-quadspi: Disable the DAC and
 Autopoll for Intel LGM SoC
Date: Thu, 17 Oct 2019 15:19:58 +0800
Message-Id: <20191017072000.48860-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_002009_892775_357AA194 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.7 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 richard@nod.at, qi-ming.wu@intel.com, linux-kernel@vger.kernel.org,
 david.oberhollenzer@sigma-star.at, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 miquel.raynal@bootlin.com, jwboyer@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, cyrille.pitchen@atmel.com, andriy.shevchenko@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Intel Lightning Mountain SoCs QSPI controller do not use auto-poll
and Direct Access Controller (DAC).

Thanks vignesh for your time to review the patch.
The following comments are addressed..
changes from v3:
- commit messages are updated in both the patches
- moved cqspi_disable_auto_poll() in cqspi_controller_init()
- moved the check <if (ddata && (ddata->quirks & CQSPI_DISABLE_DAC_MODE))> in cqspi_setup_flash()
- introduced cqspi->auto_poll variable instead of f_pdata->use_direct_mode for auto_poll patch 
  
Ramuthevar Vadivel Murugan (2):
  mtd: spi-nor: cadence-quadspi: Disable the DAC for Intel LGM SoC
  - This patch adds a quirk to disable the Direct Access Controller
    for data transfer instead it uses indirect data transfer.    	

  mtd: spi-nor: cadence-quadspi: Disable the auto-poll for Intel LGM SoC
  - This patch disables auto polling when direct access mode is disabled

 drivers/mtd/spi-nor/Kconfig           |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c | 55 +++++++++++++++++++++++++++++++----
 2 files changed, 50 insertions(+), 7 deletions(-)

-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
