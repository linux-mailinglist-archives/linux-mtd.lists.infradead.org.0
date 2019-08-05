Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE898254A
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 21:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BKxnigp2RL+ZulFGP1mIa3wSyGQBqhkLEp33G0wNWpU=; b=Cxm11UO1zyIZimwEJ71ZhG9LZZ
	pp1kbG2HlPHX8rK7SPQLf/xe3YnHXeDJ0QRlEWIUMTtnWE3Gh2awndgqDOLuoQve2PXRDJOhEzj1F
	QmV3S3aKFUwD976cYjmiTt4gw9FTjJdhKO3qAEdWb9AwP7xuqeml11gcPNwscUBTvhH6u7ifz0WE5
	09MjOOtYysQgs1pdZ3D5CwyIqSc0k5jIXs6WNozelDxnrr5OVPRRSZqsdCiPRyW155RXKIAocZ6S0
	crSTXtZPy9WcAniEzoaHPkDHgIxFtxL4mU3QAnqIc9kni1SIGNOOx6M3BSwdWBEzZ3RroqO/RjCzc
	vml5lTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiIY-0006Mn-Cx; Mon, 05 Aug 2019 19:05:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiH0-0003aa-Vr
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 19:04:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so40102857pfp.7
 for <linux-mtd@lists.infradead.org>; Mon, 05 Aug 2019 12:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rwjSh4UJV7o6IOD9O/CYhsAsc4lkWf0ef2M/FK7fG8k=;
 b=aO2YGOHfw23k795KB3DjSWM4Ws0Thw9Kv7A7z/iqQ5Tnk8sx4nZUZxVHrb0KejzyP+
 5RaNc7WHd/fc+BblGgUWvYpLM3ruYWLO/eB9g+M/dGbGywwxafdPYyh0GNUWZeUE6ghK
 P8O1slleMN/G+NtXZXgAdG/mnvLpvyTmZP+fuHbjEe1zsXYHTD9Rv9Q7grbOlMJ7Fhay
 t3x7HOWXkessYWMU+q+5Z/If1qEmVyVR2EmR2n2tZBiOTTx/UcUvnR0OGkIdt+iH6GW9
 TzAD0/hDvm8wM8RZzBiI+m1BZsTqopWUID+KnEvZ86OLjqqiIUn0vEddci+yOP3zIvTi
 syKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rwjSh4UJV7o6IOD9O/CYhsAsc4lkWf0ef2M/FK7fG8k=;
 b=QiyvNc9TzOj1zqLJrWSttzgBStNNLECUkiijMYwR1N3mUkJ+GBmYQYx/jncgA2w5Wv
 AA7w9mw8smXVTVEXfLPpXHaEdLwKWSbKddFgflMbBIHqkGHniALu/Z6uhOB93GOEwnPb
 pXx1bPiAVZ4YgYc5JI8OddHXidKu4UUsJiOI/dQF+nAgoRpwULokjkaUYdR5oyI4su0g
 VCRCncUjzEfVROROuF13dPeA5QAfC2vX0VGmhMOpj+RHTcseHFnn9YuVl3Sx+fxPfHam
 1uO3UDzRL2AS8sH+GYu1KmVpTODaqUVuUbu6M3An7oWRNxgrfZJrgTYX8YROuEHkJ7Gc
 48cg==
X-Gm-Message-State: APjAAAVurnSrB0APqB/JdRUiwMx3DxB6cz2MRoWEphggimqheQ+t8JsO
 pMY5JixdzKwyhAMmzdus3vY=
X-Google-Smtp-Source: APXvYqx+HFHoRvaOZiiT3QDWUidl5zfzQ2UKt7vmSgKffm9B0TBMpt4QSFh12fPMMK2Gfk4G095hQQ==
X-Received: by 2002:a63:fe17:: with SMTP id p23mr6163713pgh.103.1565031838081; 
 Mon, 05 Aug 2019 12:03:58 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id q198sm88045579pfq.155.2019.08.05.12.03.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:03:57 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v8 8/9] mtd: cfi_cmdset_0002: Split do_write_oneword() to
 reduce exit paths
Date: Tue,  6 Aug 2019 04:03:25 +0900
Message-Id: <20190805190326.28772-9-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190805190326.28772-1-ikegami.t@gmail.com>
References: <20190805190326.28772-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_120359_178796_5E90327A 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The do_write_oneword_done() is called twice at the exit paths.
By splitting the retry functionality it can be reduced to call once.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Fabio Bettoni <fbettoni@gmail.com>
Co: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
Changes since v7:
- None.

Changes since v6:
- Removed the tag of Koen Vandeputte as same with the v7 1/9 patch.
- Address the ./scripts/checkpatch.pl issue.

Changes since v5:
- Rebased on top of Liu Jian's fixes in master.
- Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.

Changes since v4:
- None.

Changes since v3:
- Just change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 38 +++++++++++++++++++++++--------------
 1 file changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 2ab0dd0b11be..6f6fadb54e5e 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1738,25 +1738,16 @@ static void __xipram do_write_oneword_done(struct map_info *map,
 	mutex_unlock(&chip->mutex);
 }
 
-static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
-				     unsigned long adr, map_word datum,
-				     int mode)
+static int __xipram do_write_oneword_retry(struct map_info *map,
+					   struct flchip *chip,
+					   unsigned long adr, map_word datum,
+					   int mode)
 {
 	struct cfi_private *cfi = map->fldrv_priv;
 	int ret = 0;
 	map_word oldd;
 	int retry_cnt = 0;
 
-	adr += chip->start;
-
-	pr_debug("MTD %s(): WRITE 0x%.8lx(0x%.8lx)\n", __func__, adr,
-		 datum.x[0]);
-
-	ret = do_write_oneword_start(map, chip, adr, mode);
-	if (ret) {
-		return ret;
-	}
-
 	/*
 	 * Check for a NOP for the case when the datum to write is already
 	 * present - it saves time and works around buggy chips that corrupt
@@ -1766,7 +1757,6 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	oldd = map_read(map, adr);
 	if (map_word_equal(map, oldd, datum)) {
 		pr_debug("MTD %s(): NOP\n", __func__);
-		do_write_oneword_done(map, chip, adr, mode);
 		return ret;
 	}
 
@@ -1789,6 +1779,26 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	}
 	xip_enable(map, chip, adr);
 
+	return ret;
+}
+
+static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
+				     unsigned long adr, map_word datum,
+				     int mode)
+{
+	int ret = 0;
+
+	adr += chip->start;
+
+	pr_debug("MTD %s(): WRITE 0x%.8lx(0x%.8lx)\n", __func__, adr,
+		 datum.x[0]);
+
+	ret = do_write_oneword_start(map, chip, adr, mode);
+	if (ret)
+		return ret;
+
+	ret = do_write_oneword_retry(map, chip, adr, datum, mode);
+
 	do_write_oneword_done(map, chip, adr, mode);
 
 	return ret;
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
