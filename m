Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9171D9433
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 12:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xfOpUHalt/uWCucBY9pPZLouihvqfMmYZyuc0vNtkaQ=; b=sKQIxUrJpnSpuv53wQUB6wpyq6
	EdLRlwYvG+i87CKUXIU3bF6M48RfiDT6aNWiAvGohUayySi3XVYqm5fADGTAEFFagoFvXQCVE+Z7S
	O4fzkQDy+RiwDUDhXOKeU61rDfziy4zetWRpbv4JjuMwYRa4DSajSVcqnEGQ5xTndeOpC2AbkxcjT
	E/lGMK1HdNFEMI7k6clZvbTACUZZpCxw3wd4ZYmVAjyUEiEIrxoh+EmvnQLo5GXhtL85dqZjTi9xp
	/cYmVSqZvMsRgWB/PcUlCgAIWLB8DGYnihmOb2rWcOyECY3qLicRHzE/VOLeZMK9Kv2Ws2nYMaOyf
	zRWE6Xlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazL5-0001a9-8e; Tue, 19 May 2020 10:19:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazJs-0000aa-SW
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 10:17:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id m185so2842436wme.3
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 03:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fw6/rheGBigvdKbfBBLuoQxU/TmSkSKuizeWdRgiMEo=;
 b=bhUgcoRlGk/CHPSzeBIJuBbFMldNRehsCtiaScsoniU5k9tnwiteBislmiXObQiYrv
 uAdTee/MMmxgHGVBLuWOk4YbgN6/63XwirRvw/ImqZrXUmqDpBv3ERl7ns1y9iAw9KvZ
 GEohowe7+glTPaGPExzxgS8LvsUU5wbkEb1PZfzJyjOFeou80TtEkT8mAsPtSn2dKhsX
 vNE57xFz+6uSzQM6w8YI4wVwmwdUc4NI91fVTk4lgREygGaeBRP8tOcKzOt3P3Su1Po8
 N3B0GqOkvpDZexOsP9+UXB2tYRUijMYjQgyTZSJDY4mcZWUDFyi2GL6+JfPIqe92lRp2
 c+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fw6/rheGBigvdKbfBBLuoQxU/TmSkSKuizeWdRgiMEo=;
 b=O/CiWRP0vuSszUxoPzmCO0QRzDuSH3iD4zmLQgw2U9WcNfD/6961J63vsweHneEDXy
 cMHuUiNk+5Gd415QpMe38mXX2WmUJl73gagi7pixkW1pObJihULBRgyC54bSuCkPtwJK
 g0d5mdEwCiCzY8pmRYs6belG/mZiBtzyi/csPLDYot1fBPJtMB2qrk5sFi2SF6ldzUOk
 ntMUSoUCc6G+1d88axBVyo/8yJFaP5hAyLeBFjWXyrm3MsVE41OjTxXgjjiRYw3s7Of8
 3q73LbV/znT5vMFVd9vRwL+DrGCvaAkIKwCH02U1ymBP99qqTWkeLdFihgLd/F530F7S
 bxmw==
X-Gm-Message-State: AOAM533sVFCQe7jAWPSmrM8gnzaZQP0ortEMLABAQyn2a1jYA/DDpxGy
 8nyml82bY7lI5gjtS12TfYE=
X-Google-Smtp-Source: ABdhPJwar6JPscVQ2VJ4NDhUmfxW/yUbFSMSjlV8YwyjbE5MVOzrG9NvLQj9pGAw8yEaxzQG9uUWog==
X-Received: by 2002:a7b:cf15:: with SMTP id l21mr4579351wmg.172.1589883475326; 
 Tue, 19 May 2020 03:17:55 -0700 (PDT)
Received: from ubuntu-G3.micron.com ([165.225.86.140])
 by smtp.gmail.com with ESMTPSA id w15sm3062488wmi.35.2020.05.19.03.17.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 03:17:54 -0700 (PDT)
From: Bean Huo <huobean@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [RESET PATCH v5 4/5] mtd: rawnand: Introduce a new function
 nand_check_is_erased_page()
Date: Tue, 19 May 2020 12:17:33 +0200
Message-Id: <20200519101734.19927-5-huobean@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519101734.19927-1-huobean@gmail.com>
References: <20200519101734.19927-1-huobean@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_031756_945297_4C452A30 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huobean@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Add a new function nand_check_is_erased_page() in nand_base.c, which is
used to check whether one programmable page is empty or already programmed.

Signed-off-by: Bean Huo <beanhuo@micron.com>
---
 drivers/mtd/nand/raw/nand_base.c | 40 ++++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h      |  2 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 09ee490c08a9..932a8cae4e84 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2646,6 +2646,46 @@ int nand_check_erased_ecc_chunk(void *data, int datalen,
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
+	int ret, i;
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
+
+	for (i = 0; i < chip->ecc.steps; i++) {
+		ret = nand_check_erased_ecc_chunk(databuf, datasize,
+						  eccbuf, eccbytes,
+						  NULL, 0, chip->ecc.strength);
+		if (ret < 0)
+			return false;
+
+		databuf += chip->ecc.size;
+		eccbuf += chip->ecc.bytes;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL(nand_check_is_erased_page);
+
 /**
  * nand_read_page_raw_notsupp - dummy read raw page function
  * @chip: nand chip info structure
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 3d75e50e5b75..718ce81eb111 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1337,6 +1337,8 @@ int nand_check_erased_ecc_chunk(void *data, int datalen,
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
