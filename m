Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F62AA7B
	for <lists+linux-mtd@lfdr.de>; Sun, 26 May 2019 17:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r1+T88GVr7xfNc8NBvP7MptE1fLjFO0z1TY/OC7jlVQ=; b=WRQ1sKsF4T5MP0YGpWgDbF3lxn
	apha0ynt9a62suClMNbxQYyErPcnadE+5AXsri+i9Ki6cco5NNYCxw0j4XZH6Z+7J2bx7h7vzUPw1
	OYRtVGEUsb1/8FCszKgOQGtQyovilTxNtAQCjdaC8Dhlr/dKlHsTkkNrydJgAfppBcQo4oKBSdN42
	ijl0IR4jUqOK/oGEmPMrR4wmVu4uHDLWE8eoRuydNEMGFYh+kumM29+xfMlgOEW5Z3qP4l1WmuApG
	tgWEW6uUFZxJFsO5+qBUY9D3IyKKjsRDPYBHExrcjJ3+p4xGvZCFKpWq7p/8bG2oS+G9J6iFeAzYV
	q18TVp/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvGN-0001jL-W8; Sun, 26 May 2019 15:40:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvFF-0007mC-Ve
 for linux-mtd@lists.infradead.org; Sun, 26 May 2019 15:39:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id 33so4700056pgv.9
 for <linux-mtd@lists.infradead.org>; Sun, 26 May 2019 08:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Oxr73n0oP2CfR0u/L2SlnyxV9hGwDeF+U1wWskdhzMA=;
 b=J2z3MJ4k3/ZH2i+BW4kQDHJ9yrof6AK9zFSl9NL/fAOWKgRzli3UIBdTVgXNv8hCiz
 5657QIQYKIq42TukkHoDR+fSpke8luqSkFFzzjmsEJFxeGukhYeQgt/a4MDOCFc9U89T
 Et+YoEYhqi5M0m0ZPY39ydDxx4SZcMIIpeS0FBjBqsZS084Adsp85IcciCw/3AfD9ygy
 OCiRexTCqvG10u9m2FJgG15nUgTC5PXmBxmOL3wTP9L3cvJEg2LVpAV9hEC09jBZwod2
 Mweet4xN5VFf+/nOrFpbyjjHBz1QXI5ooMjtaSnmz4EPStWaFtycHjaoH+EhJKMzcOR3
 JwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Oxr73n0oP2CfR0u/L2SlnyxV9hGwDeF+U1wWskdhzMA=;
 b=DelGHV481pCJZyc7BMy3694tTanQlriZuIgF4cQNc0AKD1a/XfphpJWEl/2KCxbsb5
 0xRYk48yucKh8qadEC4xprKT9LWxa7E3+tONTjrMm9O/QpDM0/vEL3RDmCgT/72eNHc3
 jxhn3OwwHWPLI/MjIBqYBp4h+kovOypSSP4ZuYZAHKqRymiC9l11X/5FR7tfVHCjYvS+
 oOD9jR55bVSrnlbLhyiLYZtoZQqKM6wZy5v22g31npa/QLoAy7qX0PxNzrik8rdhsyIM
 JgTjWd4WqQVWT2D6oF01y5IIGaZH16xk05jAfv+x1xZ+MXP0R+zKi80k7AT6DEKXWU88
 7Tvg==
X-Gm-Message-State: APjAAAVZMw0CiPhUQzLhQdSArkUKUu0JWFB1hLc8O0XjeF0TRgmcvXyC
 35oj0dxXMidRlDieULlT0xQ=
X-Google-Smtp-Source: APXvYqzl22YC04lN8+njwMOVN5nABosA0RTnymc+nRnDD3wBKHhLpXbLZ0fEtpFe5MOqlWL5mtohhQ==
X-Received: by 2002:a63:ed16:: with SMTP id d22mr119720399pgi.35.1558885172877; 
 Sun, 26 May 2019 08:39:32 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id o2sm863129pgm.51.2019.05.26.08.39.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 08:39:32 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v6 06/11] mtd: cfi_cmdset_0002: Remove op_done goto statement
 from do_write_oneword()
Date: Mon, 27 May 2019 00:38:59 +0900
Message-Id: <20190526153904.28871-7-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190526153904.28871-1-ikegami.t@gmail.com>
References: <20190526153904.28871-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_083934_305779_025C4227 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

This is just to refactor the function by removing the goto statement.

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
- Rebased on the patch v4 01/11.
- Change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- Just rebased.

Changes since v1:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index ae4d1649d47c..597b0f18269f 100755
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1676,7 +1676,8 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	oldd = map_read(map, adr);
 	if (map_word_equal(map, oldd, datum)) {
 		pr_debug("MTD %s(): NOP\n", __func__);
-		goto op_done;
+		do_write_oneword_done(map, chip, adr, mode);
+		return ret;
 	}
 
 	XIP_INVAL_CACHED_RANGE(map, adr, map_bankwidth(map));
@@ -1696,7 +1697,7 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 		}
 	}
 	xip_enable(map, chip, adr);
- op_done:
+
 	do_write_oneword_done(map, chip, adr, mode);
 
 	return ret;
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
