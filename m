Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22D31D3FF0
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 23:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OO8HnQSBWqMLY30HmfIJFDv4776v/Qkd4nFfPuyezWI=; b=Xrhg9OCqIufH9JHhpzLy12AnzD
	r4hiEvFKZuKSka64ZiRuo9Jk/ENR422UbjntBFdDpYL2DPL79hNDh9E6EXGg8FpX8LbIsRMZ2lmUv
	8N+qu5LyN9gpRMTpp01kVzMeHX8677fEFN5wrKnLwEQObsKX/GY+5EHdutLE3rXvW67HA0zAbLhl4
	Su7aYGz3ZwqCRzSfNRpmffqEoxbwRLmQ/sZzF37VuZOTDSdancEqR3YqzYLYxpcib0vbfLHKDBNUO
	Px1CbqSTyvJgHPbqLK8hTKa37tBFlDPvRqJjV/OnUwYy+Gn61RnXgt81K8fNqx3GrzWYvcdgNRZ8e
	hptX/XEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZLLw-0008Eg-3R; Thu, 14 May 2020 21:25:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZLKe-0007Mk-RX
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 21:23:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id y3so681687wrt.1
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 14:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lEf87Wr/V1F+OPpc1tEBH5YE7A4qvblf+IVSWacua8w=;
 b=Ysospds43Xh0QFZ2lbtrrrAKV1QECg+AWCmc5NsD79uveASjy2zyTD9fq1PSHYHxhN
 wPata0MzJ2+vVCAriWRYFb86pAxVONPdb5cCJFKRQXsTJHcdYXsW4bpmkJ0sMwT6Fo4g
 uJYGk8mSt+NWiyqSba+rPRZTXjl6s8irE2X4DOA35ROfe98LZgRurHyg8CSyOG7vTzu6
 zeqmE0Dmef/EvAiLJ+JX9Z0Vk6+c9lc4FXp1sGTwMQ8k6GZRn6AONq5zbIaZZwcB6HPT
 ERz8t1ZTS7EWXAF2iLZ1WYrGXUWbGm1qOOLq9NqcgShqtTO5w9r3BOTEFhut0l2WQdbR
 A6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lEf87Wr/V1F+OPpc1tEBH5YE7A4qvblf+IVSWacua8w=;
 b=f+FMuqqpSJwNGl9njBGntXAONToBgxjvGRbdN32nQ/kT5p61/pTL4kgkkTqgrSHKCO
 VJhQGA/iLTi91AazAiW4a2tBF8VoAhCS1E3+RPB9KCdfWlvP3TM6cv1tc3pv8iRggpKc
 FqQKweir1BN8EGQiu8Barwy3whTYZHVCYuBOENJkDYAl9+jIIS03pDBax5aVX7+GW04j
 3ghdbKdkgCvT+UUKCqabXbYntJUM3LJ/hu4FGMSH/DyF/0c9OQZDGGnVXXHB/gApQmzJ
 w3Ju3tFeaJhWEEINB84yuL/fg9sb9JBqDhYRGVev+rswaYBBrH/RW+3gmc2dBVf2CXa5
 k30Q==
X-Gm-Message-State: AOAM53180t4MAjfL4xlRlHgdzko+MedugH9PNs8ayNwnsK5Qf9fZb5mN
 maHc0U8aXEOBnU8V4iL0uuU=
X-Google-Smtp-Source: ABdhPJwhEuXRhgtqSfq/CKImJE72MohMis9XhR8MhMsNEujmDHNY6z1wbmdQ3+IVC+6XFalnjsztVg==
X-Received: by 2002:adf:f386:: with SMTP id m6mr434002wro.88.1589491435071;
 Thu, 14 May 2020 14:23:55 -0700 (PDT)
Received: from localhost.localdomain (ip5f5bfcc8.dynamic.kabel-deutschland.de.
 [95.91.252.200])
 by smtp.gmail.com with ESMTPSA id 128sm491210wme.39.2020.05.14.14.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:23:54 -0700 (PDT)
From: huobean@gmail.com
X-Google-Original-From: beanhuo@micron.com
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v3 4/5] mtd: rawnand: Introduce a new function
 nand_check_is_erased_page()
Date: Thu, 14 May 2020 23:23:32 +0200
Message-Id: <20200514212333.28692-5-beanhuo@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514212333.28692-1-beanhuo@micron.com>
References: <20200514212333.28692-1-beanhuo@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_142356_931090_7915798C 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Add a new function nand_check_is_erased_page() in nand_base.c, which is
used to check whether one programmable page is empty or already programmed

Signed-off-by: Bean Huo <beanhuo@micron.com>
---
 drivers/mtd/nand/raw/nand_base.c | 49 ++++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h      |  2 ++
 2 files changed, 51 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b630f7f6a651..2bc9be745bc1 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2584,6 +2584,55 @@ int nand_check_erased_ecc_chunk(void *data, int datalen,
 }
 EXPORT_SYMBOL(nand_check_erased_ecc_chunk);
 
+/**
+ * nand_check_is_erased_page - check if this page is a empty page
+ * @chip: nand chip info structure
+ * @page_data: data buffer containing the data in the page being checked
+ * @oob: indicate if chip->oob_poi points to oob date of the page
+ *
+ * Returns true if this is an un-programmed page, false otherwise.
+ */
+int nand_check_is_erased_page(struct nand_chip *chip, u8 *page_data, bool oob)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret, i, max_bitflips;
+	u8 *databuf, *eccbuf = NULL;
+	struct mtd_oob_region oobregion;
+	int datasize, eccbytes = 0;
+
+	databuf = page_data;
+	datasize = chip->ecc.size;
+
+	if (oob) {
+		mtd_ooblayout_ecc(mtd, 0, &oobregion);
+		eccbuf = chip->oob_poi + oobregion.offset;
+		eccbytes = chip->ecc.bytes;
+	}
+	max_bitflips = 0;
+
+	for (i = 0; i < chip->ecc.steps; i++) {
+		ret = nand_check_erased_ecc_chunk(databuf, datasize,
+						  eccbuf, eccbytes,
+						  NULL, 0, chip->ecc.strength);
+		if (ret < 0)
+			return false;
+
+		max_bitflips = max(ret, max_bitflips);
+
+		databuf += chip->ecc.size;
+		eccbuf += chip->ecc.bytes;
+	}
+
+	/*
+	 * As for the empty/erased page, bitflips number should be zero or at
+	 * least less than the bitflip_threshold.
+	 */
+	ret =  max_bitflips < mtd->bitflip_threshold;
+
+	return ret;
+}
+EXPORT_SYMBOL(nand_check_is_erased_page);
+
 /**
  * nand_read_page_raw_notsupp - dummy read raw page function
  * @chip: nand chip info structure
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index a1bb2acfaf6a..bb97b48859f9 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1322,6 +1322,8 @@ int nand_check_erased_ecc_chunk(void *data, int datalen,
 				void *extraoob, int extraooblen,
 				int threshold);
 
+int nand_check_is_erased_page(struct nand_chip *chip, u8 *page_data, bool oob);
+
 int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail);
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
