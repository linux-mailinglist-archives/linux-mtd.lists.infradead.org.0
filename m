Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E012B154C48
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 20:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dWBKElfU7fJk8VtHJbsvtI66hfXmkgu05SHTDSDJx68=; b=FYb
	nsUk5tsL/wFXig1UgzKdoU8zrwBk/kqj68qNPU29CAhUgwO2sOCIDgPMYN/vvl3JfMpM7F9gMx9Oo
	inBOaD6CItliLu5yNit0OPNwNqhs+kekJa3wLl3ZBWnVgYLRxA5kTszIVg7JsfdYjiHrHsR/DTsI7
	7UYlKaynlTuCn0VdvVvUY06yxTUS/EYBAnK7lw3vr6Hi2ZJUaUx0rW6DQNwIj4FTYpV/iZKrBpZwz
	oyF1hu+pWsOaFUuNHkpDtTNDjbZ+3KA8BDfsd2yqybKNgk8RXCaERs3oN33+QEJkjQnh4M9Xq4fUP
	InOuTKdd8GiTDwib3GFEJ2lrKS4QEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmrW-0005Tp-Lm; Thu, 06 Feb 2020 19:30:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmrN-0005T1-7a
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 19:30:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so1260379wmj.5
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 11:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WVXxvdnecOHHPSMEpYhU98LOQNanSGQy7dqix/yCj14=;
 b=rld0aMEN8ENxF6NsO4UBquyzfTqkVnCfO4ttYXcOnQTIiZ2T5BaetOtb+iUxm/digi
 GwXCxFCbf5j7C0+xHtVjg/+qN5LphmxCz9rsPcbNeGphW/jgXiPcz7/K3138J67nxkND
 EIuIdsyJlk+291aRA0ZRZ/5N9If1Qn61r1QrWBc3V4pDnKy8msHD7ha2d/bAk+c4bfho
 hXyIwWkkpmAKSbwU4S4ijV78TN4d5cq0w4L39UqKbj974eX5quRRnA9eRK0H0TNqIBj1
 N2Zusf3OCJYB9fL/YJ7cLFTCgkHzuRC70YInw8O98N6xfPJ+D+NAJ8adRhFlQi2RexSC
 rx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WVXxvdnecOHHPSMEpYhU98LOQNanSGQy7dqix/yCj14=;
 b=UrgPpR1tCCe3rW6qoFNJ3ZjzicBbvYuzIVjCsbPjkdOIY9QHZD9x1X2BdIeG2F5aqF
 ePqDAO1lV5EgAZJxBtbU4zf98T/MHibErohAxCmYpDN6T7kvGniHa/Sw6sFXCwNLCqCd
 QExd22TumyrEfdaTiD4TVLrXP6HcyLM/hkRdeYxEcyWSxv2hcc0fQKCD+QFKmJmVKf9u
 OKMaxOrY46Dxmbdu7SX2U6UYn9Hc0cJmIvMcSKzxjJFZP9aAFtz3OOyqwKmRNewb2HAz
 yRRpiSLjlvAhG2HgXOVDRCcAe4AxZmVcV77Rsbyga8Zz1RAbWUJ5+IvRy0CGxZv2qVK7
 G63Q==
X-Gm-Message-State: APjAAAWYHp+9e9CNEKy+lXvaH4g6PKNm5yQZUXE0H6aaKOcWf6WIZ2Jk
 Z9OXGnRfVlsdIAV/TwIp7+HhtKMSBM0=
X-Google-Smtp-Source: APXvYqyUtf3IIJnos/BEz0mLtu3pt+RIDgoWIXskDhqxOOYrmnTSVr7eGt0o8sCfa5DWMJh0NB1Jvg==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr3249087wrs.365.1581017442402; 
 Thu, 06 Feb 2020 11:30:42 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b128sm537014wmb.25.2020.02.06.11.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 11:30:41 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MIPS: c-r4k: Invalidate BMIPS5000 ZSCM prefetch lines
Date: Thu,  6 Feb 2020 14:30:37 -0500
Message-Id: <20200206193037.32041-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_113045_301818_10425EE6 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Paul Burton <paulburton@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, James Hogan <jhogan@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Zephyr secondary cache is 256KB, 128B lines. 32B sectors. A secondary cache
line can contain two instruction cache lines (64B), or four data cache
lines (32B). Hardware prefetch Cache detects stream access, and prefetches
ahead of processor access. Add support to inavalidate BMIPS5000 cpu zephyr
secondary cache module (ZSCM) on DMA from device so that data returned is
coherent during DMA read operations.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 arch/mips/mm/c-r4k.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
index 5f3d0103b95d..2d8892ba68ab 100644
--- a/arch/mips/mm/c-r4k.c
+++ b/arch/mips/mm/c-r4k.c
@@ -901,6 +901,35 @@ static void r4k_dma_cache_wback_inv(unsigned long addr, unsigned long size)
 	__sync();
 }
 
+static void prefetch_cache_inv(unsigned long addr, unsigned long size)
+{
+	unsigned int linesz = cpu_scache_line_size();
+	unsigned long addr0 = addr, addr1;
+	int cpu_type = current_cpu_type();
+
+	if (cpu_type == CPU_BMIPS5000) {
+		/* invalidate zephyr secondary cache module prefetch lines */
+		addr0 &= ~(linesz - 1);
+		addr1 = (addr0 + size - 1) & ~(linesz - 1);
+
+		protected_writeback_scache_line(addr0);
+		if (likely(addr1 != addr0))
+			protected_writeback_scache_line(addr1);
+		else
+			return;
+
+		addr0 += linesz;
+		if (likely(addr1 != addr0))
+			protected_writeback_scache_line(addr0);
+		else
+			return;
+
+		addr1 -= linesz;
+		if (likely(addr1 > addr0))
+			protected_writeback_scache_line(addr0);
+	}
+}
+
 static void r4k_dma_cache_inv(unsigned long addr, unsigned long size)
 {
 	/* Catch bad driver code */
@@ -908,6 +937,7 @@ static void r4k_dma_cache_inv(unsigned long addr, unsigned long size)
 		return;
 
 	preempt_disable();
+	prefetch_cache_inv(addr, size);
 	if (cpu_has_inclusive_pcaches) {
 		if (size >= scache_size) {
 			if (current_cpu_type() != CPU_LOONGSON64)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
