Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434562AA7E
	for <lists+linux-mtd@lfdr.de>; Sun, 26 May 2019 17:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tlwXczaZOIInb6SUWIBtDWwkx1ECDlr45aVnDwlRV40=; b=o927rUU4X4I4TXNhDEIBcXRf3V
	50IVu9PtUHQaQIG/aISIgN+sSmCtVokCpo9NJwBQFFM6VQFyFUqgMOzVWdojm2mIw+d/MR4qsbKCs
	jv5z/MFnkbBeD0MLBeqzrdduOX8EL7/iDDIY5J+/HGM8NErWp7cW4E4ysLZcKZn0/zGArhKJczIIb
	c5kbOhmuE369Kr9ugkwPF1Db9uAB5t4O0VAYNWgqMMjJI8EhIQrVYgltMi0CvO9tQt7HV91UykxtS
	gy6GJJ0oaHiwSNNHoXxccgfWVjHiZ9y+PAeuwFw5/Tw+EGYdSy5c9YRL0j5crz0+S9PVR/aQbZiTO
	KnFMGrsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvGs-0002O7-Eu; Sun, 26 May 2019 15:41:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvFK-0007rZ-05
 for linux-mtd@lists.infradead.org; Sun, 26 May 2019 15:39:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id a5so6035456pls.12
 for <linux-mtd@lists.infradead.org>; Sun, 26 May 2019 08:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OcsT+TeLwJHaJWi5Z5XTPHcRNqMSTQZ6xAHA4u5l8OM=;
 b=TQtplcpdwz+raRzzEEL1gVGY4cocQYOc59by4zoIdGdZLwSEbyIfEmIxUBVku38e3w
 PqhyCmTz/flsnEDTB1MIbgBBSxeI9wuavnEhGjmPgQbW7e+lc7rLAD7WLATzBfbtguwQ
 gfhNVb/2TrMlMmWVlA/eoS4Itv0DfBkY6Q5RDg7VjtXd8dzzR1vsR8UC7xhAaUX6N8Cz
 edMwkq0pEXuQaD3ihn5Lmzl6v51cWJfjdPeDDyuoqGVIWSZNGIKU8kIyJFfqDGbUcWYo
 9OTmdbGFYRMGQUFCRRg26CaURzERTaNLM2v5QiV6I2lNkxhzWY/U/i3cI0LZIOplyvBo
 w4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OcsT+TeLwJHaJWi5Z5XTPHcRNqMSTQZ6xAHA4u5l8OM=;
 b=RrRXpG6HeeahDUvwaUtN0QgDz9o/LDjiNii1FbRr9Z3dO1JVMiWSGrf4eYYfI7A2cm
 PzhSaWXYnFR301LYSPJbqYegA7SiSpc4+7bL8t/OZLaJTXNL1+2NRBDvoUxsGgTkT5qK
 fzf6YjcGsby4uEgx7FpBDMIMsqTU/14RpO4/LEPgjW90HiHF0ABgnDTpRVN11f/n3s49
 xmpRaG9I8Cfvp8t93Z+RCxLi/0lTgdcxhy3PwMNeqWZcRWU0EF4tN8cNZMrnyWfiM/C/
 avRGn4Xo69d8sxaOgFtCvFqeSSbhdajknO/f5oZl1dTKxAZju4K1GpofqTwVMmmx7tiY
 EjWQ==
X-Gm-Message-State: APjAAAWDUiX2nrWKBo3EyVgHryGoc9JMWVual+koPGjVtyglZaw+OQkv
 qaVJ3mM0QDuvgdlR5YbzFtM=
X-Google-Smtp-Source: APXvYqylw0ZhMpiqsFJKmZNNjUlU63gHNbfmZi8mdUK6GU1jewCCubiRrvQqJWxGP1nqV2Zv8G+FcQ==
X-Received: by 2002:a17:902:9348:: with SMTP id
 g8mr79156435plp.174.1558885176871; 
 Sun, 26 May 2019 08:39:36 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id o2sm863129pgm.51.2019.05.26.08.39.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 08:39:36 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v6 08/11] mtd: cfi_cmdset_0002: Split write-to-buffer-reset
 sequence
Date: Mon, 27 May 2019 00:39:01 +0900
Message-Id: <20190526153904.28871-9-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190526153904.28871-1-ikegami.t@gmail.com>
References: <20190526153904.28871-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_083938_670812_D2456133 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Co: Koen Vandeputte <koen.vandeputte@ncentric.com>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
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
index 7784be8246cb..a3e57788bc40 100755
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1825,6 +1825,27 @@ static int cfi_amdstd_write_words(struct mtd_info *mtd, loff_t to, size_t len,
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
@@ -1931,22 +1952,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
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
 		printk(KERN_WARNING "MTD %s(): software timeout, address:0x%.8lx.\n",
 		       __func__, adr);
 	}
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
