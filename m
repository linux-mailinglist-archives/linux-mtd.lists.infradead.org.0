Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB2B1373AC
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 17:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yhtAvQCkiFQeBcJk3fhB22mLIhKkMKlZed1y616sCmY=; b=dud
	jKMTj5H0cH4fvx4Syjh2TJvq6g50/p2VoZMxlaXhD9yYHb3EfSsUTmqc9auNJClA1DeVQVH51DkNX
	ifG0ZZMqBocpWAOEQ+nWfZERUGc3893AtkgANRbwTySAnCY00lFtBapVyhkZhuNYfvXmjm11Mub1r
	MSqkJk+phv0AUSKWNDqlNlFkk8JbQspKgAto+ELKheposdpXugr2Kgha78vppn7NizPDTDRm4Vynz
	1JcYHw4PO8n44zycjGyJmmgiBDuhZ8k3UvGSWqgH+/tvIqtXxq7hFj8rLxgVjtmGO17Z1SLHrYvuY
	OVPAEXwztwHmZmt5viT89+3VjY0Ch0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxBM-0001vt-4M; Fri, 10 Jan 2020 16:30:44 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipx5v-0003Bk-CS
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 16:25:09 +0000
Received: by mail-yb1-xb41.google.com with SMTP id k128so892124ybc.13
 for <linux-mtd@lists.infradead.org>; Fri, 10 Jan 2020 08:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fywdVa/UePIbtxiPU29/D3V4nZg1ZmpQqMJh0490dJU=;
 b=c/gKHOj8Lg8wERQLbPfmM2sXWMxQsVAGVkUd4Zqo14cZtbkoCbt0NfnSSbkw7yi/Dy
 D6BFWPQVipEUW8DJITjotQC+I8CMFhk7alF3rAup8PXMVuR1sOBmm9ZJ38DjM3ZMuy0l
 Lkl2wlkzroeqiXjpPGups/IdRBzRvhpKWvhB0bFmdfR/6kedQGB5W0nJZo3IhY+aFtiU
 EgfDc5jTSWsDsO2uVVD8IMZVr46uYPUZVcUgcY5hpy57jAtYckXxT3Ot3bpLDZQW2kcT
 Aa+yqefuDQFkDRu1ZCaJySaobmvXGZD7bt/wdpO/BDrGje0KI70aoxvhABqTYUyyOZnI
 2Rzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fywdVa/UePIbtxiPU29/D3V4nZg1ZmpQqMJh0490dJU=;
 b=r5O+/6knaLkZiZ8t3/aZrzkhQprMT/D/OZJ4vYQ+8Gk3TmhoTSMKKEkxcbq54r5vAS
 wH7vi9uy0Cdi2fRxZQnclRhGQTf3aFm5U006PPR29PoZG9HWptEukRGnfZQvbg4lT9c8
 956WI/TpR3G+TtcopD9pY5bYU0du0ReT69zuhyM4+PCkshA3RfAC69wcD20j5VQxhtdN
 4epnWnRG7qR7Lkf22bs3BaOhUtHLRdNDjVlTT4FTGprThZueq6b4gJ49DkPK/yJO/314
 x0eNhs8jpdZdTKyV21EBVAhoTORxgDx/SwAf4iFKVx97G6l9NgHg80RuMxmzXIS84W95
 zLeg==
X-Gm-Message-State: APjAAAWk/afWBdVYbXX2BCvDm/yy7erBBBUOiYN+PkLhXW5Nx/yrZuhs
 jp4Leq1di4+x4Y9LJD/cfzA=
X-Google-Smtp-Source: APXvYqwBT9ugL5Mh7ahlKnNhNiPtP1u0I02Dxik/BsiORNkhTP71g2EvV14PcFRuRVpDJ7/RvYwegg==
X-Received: by 2002:a25:f209:: with SMTP id i9mr3235523ybe.93.1578673504726;
 Fri, 10 Jan 2020 08:25:04 -0800 (PST)
Received: from borg007.lpdev.prtdev.lexmark.com ([192.146.101.90])
 by smtp.gmail.com with ESMTPSA id f138sm1168780ywb.99.2020.01.10.08.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 08:25:03 -0800 (PST)
From: zdhays@gmail.com
To: 
Subject: [PATCH v1] mtd: rawnand: micron: don't error out if internal ECC is
 set
Date: Fri, 10 Jan 2020 11:25:01 -0500
Message-Id: <20200110162503.7185-1-zdhays@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_082507_549546_29F61E21 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zdhays[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 zhays@lexmark.com, Zak Hays <zdhays@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Piotr Sroka <piotrs@cadence.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Zak Hays <zdhays@gmail.com>

Recent changes to the driver require use of on-die correction if
the internal ECC enable bit is set. On some Micron parts, this bit
is enabled by default and there is no method for disabling it.

This is a false assumption though as that bit being enabled does not
necessarily mean that the on-die ECC *has* to be used. It has been
verified with a Micron FAE that other methods of error correction are
still valid even if this bit is set.

HW ECC offers generally higher performance than on-die so it is
preferred in some situations. This also allows multiple NAND parts to
be supported on the same PCB as some parts may not support on-die
error correction.

With that in mind, only throw a warning that the on-die bit is set
and allow the init to continue.

Signed-off-by: Zak Hays <zdhays@gmail.com>
---
 drivers/mtd/nand/raw/nand_micron.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 56654030ec7f..ec40c76443be 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -455,9 +455,7 @@ static int micron_nand_init(struct nand_chip *chip)
 
 	if (ondie == MICRON_ON_DIE_MANDATORY &&
 	    chip->ecc.mode != NAND_ECC_ON_DIE) {
-		pr_err("On-die ECC forcefully enabled, not supported\n");
-		ret = -EINVAL;
-		goto err_free_manuf_data;
+		pr_warn("WARNING: On-die ECC forcefully enabled, use caution with other methods\n");
 	}
 
 	if (chip->ecc.mode == NAND_ECC_ON_DIE) {
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
