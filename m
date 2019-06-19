Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620BF4BF02
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 18:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U2s3NNFChFncFiWfrRNNrju540rUmVAKG5OvxbxQ51w=; b=X0bJ7GAmTd6tV6f7BXtbKXqZ66
	W7kfEnxxviYfGff90XY5Oym5OHfi3YqebbQiFqE76Va6XtFnsauk9apTZFBMRhVMWf8pcn7pIBAt6
	BLYyUvIy7lH7RzZ089+qWGZM9nYCbLmTVdR06o5BuQmJiFzXu+IspiGpuIZRup49AsyBKo2uHFkcf
	cCtVreOhEYP+0MucMWbdDFBegQfQB7ohBwRvNKuSVorNqeMIOWIEY6AvNZdhAdx28DTSeusPwB8sH
	7/kWTpDB7rP500N9nvcBwqkb81ZrL1RJZNaSnjPpBp2HaPUWh+QsrwgoexKcToDArD3GDEKKPtG4R
	NR5u3jHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddok-0001ox-JL; Wed, 19 Jun 2019 16:52:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddn4-0000Ll-1k
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 16:50:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so10092674pff.8
 for <linux-mtd@lists.infradead.org>; Wed, 19 Jun 2019 09:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nXyH/V+3gBZTduBSc+ekLftFm2Axnm+c00/OhgwYM5M=;
 b=PzqRBfseYNw7ENlGiyRYjxjYkiNX/MQCWCOVdjHh9xa1QySJgi53qqDZsM7KLoejT+
 R4OvLocQbSNxCzLlDeClXC6zcJJw/yPfJHfSz1PWBn4eYntMfiWecprklwrzj+bnCThd
 3nvH9+IhlRmVuKJm/96ITZ1tN+ihJfJexqP4StcvVgTC/xAYpKIgXBh4gaLhFBCSoYCR
 qrUSTCqdyAnMRZxUIhe+Ma+GGKdseX0RZ/gKf/XYYBGXyOv03xwmQmezlIWJtVfFXn+j
 vECNHfspgvpkwnAeLG1sOnWA4RnEjnh6yvv5JXdGuAfJVpS72/HHDIJriewkE6fcW6RN
 7GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nXyH/V+3gBZTduBSc+ekLftFm2Axnm+c00/OhgwYM5M=;
 b=amXeVu5b0fi48OjM3+pxTaQXQnWmEjs2zvOQHQIPz0K1skBKMf7COqhl1TWc9ei8Eg
 0cKWJCLt3TdATjHZmZPnWrffRgRH1ws2BKlQTzH2B+y0YGr6Lu90Jq3pU+wOTv312fap
 P08VPRqCWNXTjckMDkjqPExmJg7rAKvPszWdzrr50HoAwX+Vx1kGpREktsAp9kLAv9Kj
 Xlxdped9pNwevU+ws7oxMoDxPTOM2274NejyeLUPaTzZk/7qaKAp0CMSiGKHCzQ6xWXJ
 7D10jA1/jeGKZDw5us349haMoHguoIkjUhfViWb1cs45yVA3iWezZC/EoCJb8D4sLTe4
 PNxg==
X-Gm-Message-State: APjAAAUtfIfQe+nzZR8fQTN1t7ZG314I2qCM1BqE94KC+zWRPn9pQaTw
 sb7SDn74/IKflqgl4caCiMI=
X-Google-Smtp-Source: APXvYqwcWd8+6YVHsI0LVDwJkIkdWFxDETv3Vlw7g0eU53BAYXjckqZ9bgOg5JEdomF/EHLyia6MuA==
X-Received: by 2002:a63:195b:: with SMTP id 27mr8628370pgz.223.1560963029417; 
 Wed, 19 Jun 2019 09:50:29 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id j1sm21344894pfe.101.2019.06.19.09.50.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 09:50:29 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v7 6/9] mtd: cfi_cmdset_0002: Split write-to-buffer-reset
 sequence
Date: Thu, 20 Jun 2019 01:49:58 +0900
Message-Id: <20190619165001.28410-7-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190619165001.28410-1-ikegami.t@gmail.com>
References: <20190619165001.28410-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_095030_109151_F7B17EA5 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Fabio Bettoni <fbettoni@gmail.com>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Just refactor to split the sequence from do_write_buffer().

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Fabio Bettoni <fbettoni@gmail.com>
Co: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
Changes since v6:
- Removed the tag of Koen Vandeputte as same with the v7 1/9 patch.

Changes since v5:
- Rebased on top of Liu Jian's fixes in master.
- Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.

Changes since v4:
- None.

Changes since v3:
- Just change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- None.

Changes since v1:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 38 +++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 089df0334270..08b161ccb58c 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1828,6 +1828,27 @@ static int cfi_amdstd_write_words(struct mtd_info *mtd, loff_t to, size_t len,
 	return 0;
 }
 
+static void __xipram do_write_buffer_reset(struct map_info *map,
+					   struct flchip *chip,
+					   struct cfi_private *cfi)
+{
+	/*
+	 * Recovery from write-buffer programming failures requires
+	 * the write-to-buffer-reset sequence.  Since the last part
+	 * of the sequence also works as a normal reset, we can run
+	 * the same commands regardless of why we are here.
+	 * See e.g.
+	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
+	 */
+	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
+			 cfi->device_type, NULL);
+	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
+			 cfi->device_type, NULL);
+	cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
+			 cfi->device_type, NULL);
+
+	/* FIXME - should have reset delay before continuing */
+}
 
 /*
  * FIXME: interleaved mode not tested, and probably not supported!
@@ -1934,22 +1955,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 	}
 
 	if (ret) {
-		/*
-		 * Recovery from write-buffer programming failures requires
-		 * the write-to-buffer-reset sequence.  Since the last part
-		 * of the sequence also works as a normal reset, we can run
-		 * the same commands regardless of why we are here.
-		 * See e.g.
-		 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
-		 */
-		cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
-				 cfi->device_type, NULL);
-		cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
-				 cfi->device_type, NULL);
-		cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
-				 cfi->device_type, NULL);
-		/* FIXME - should have reset delay before continuing */
-
+		do_write_buffer_reset(map, chip, cfi);
 		pr_err("MTD %s(): software timeout, address:0x%.8lx.\n",
 		       __func__, adr);
 	}
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
