Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4C64BF01
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 18:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=11JZVfao7CAIrUUcwI1BZUaspldtw+MFiPxc+cbliUk=; b=Tg9neraDjbqW/AHFZcd2TGoV+5
	povhlO5YaFL/jMm1t6+IvHWed9MIymQgUzEu8MhaLqESJf807vkpiM9N++yAmZkh5LkMskYVlWgd3
	KN2hcLu2GxAuFNiAlITsgIh1nnblrBkN9cOsiAN+awEvrjmFGVzt3QtO/XwaW9O/WFRG/8VbdS6o4
	3kE6ChWr5eGANDeO55UVmNPYp58zRSd62y77Dky/nKFk12wU3cGFuhp/r81YeuSUdv18iAxKB6CQT
	sBqzZArfXJfDEXj1QljxndpNu1rhYR/buCjg1rUhVt8JHEBZ/YeZo7At37wzIyXWTNQPe8SDnRqsO
	4j4EDe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddoS-0001YZ-7y; Wed, 19 Jun 2019 16:51:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddn2-0000JO-AD
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 16:50:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so10093382pfq.12
 for <linux-mtd@lists.infradead.org>; Wed, 19 Jun 2019 09:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Nh68mqq9xlfhZcLPoLJQp3/d0CBdyCO/+t1VAGUM+gE=;
 b=tlwDDGfFi5VVENXflF/ZyWd2IDY3CyDneH8CerJPNwJPvQz0v41w/L3cD0hX0K5+VZ
 V9Y+jxCQXK6fVsD5I0yKPm8siAlwfrr2q32sR9pdUL9prdRbpXNtAzD5bI9UH/dz7Bsx
 Vx4OJ6K9hMGimGFDZtYkBLBu5i9ju+q7g+dM0vKxegKzKkwihMH89odL762X/7gYqRip
 i8P9h94USTlcTceZjVjlCLCEQu+JdtjvWrLWZt1gveseAYYP9D2TBJCHDzXYjMK5jYqj
 GPr3JfVHKGFpSzF4A22yZyC45cyErbWvg46mNduda5rxTEnGSRHVRE/UDNhNTvZkKgGP
 a4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Nh68mqq9xlfhZcLPoLJQp3/d0CBdyCO/+t1VAGUM+gE=;
 b=m4w6b/xlnZi0aQQafE+p5WH9rlokaGHvemOAqWef8n+GpgkycM8n4Bu/ZmnSPTLOCM
 u/N2iT8d2FLp2Y9xnmcWHRvSjWPNqkCFugh7ECz7kU8Iuw6uDmPkRaghQl5j3G/EoLmk
 ArJIAsRPYdN2GA9y00Fhu61EZFu7gVYBj92SjbVKdoh3xAeilYq21hDrVhQUnfslxzQU
 YC1dih39IKTb3QZmCuNMrBfrXoPvR2XtRjJ829cLSnylFiuBRc0dxUV2ryw5/MFRMhLv
 r4HPHyeDbROrd5GoQbREHhefFVjYz7tkK9vyrGW0BDA47epcv67ZXhYsWSNDTlfehpIl
 tmuw==
X-Gm-Message-State: APjAAAXwj8NS8DPZUHfXn8KmLAcEJ74RO3Loo0+ShST3H5N0z1NeBMbc
 N+wpAG5cLyw68SkBCe/lA4Y=
X-Google-Smtp-Source: APXvYqxT72u2WQNMibVBDV2XgZEl/WueAcwXen+oFlObzoGBntdHpT3+2rgSiXM/qWH4fm3zwcLpHQ==
X-Received: by 2002:a62:ed09:: with SMTP id u9mr11753668pfh.23.1560963027475; 
 Wed, 19 Jun 2019 09:50:27 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id j1sm21344894pfe.101.2019.06.19.09.50.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 09:50:27 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v7 5/9] mtd: cfi_cmdset_0002: Remove op_done goto statement
 from do_write_oneword()
Date: Thu, 20 Jun 2019 01:49:57 +0900
Message-Id: <20190619165001.28410-6-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190619165001.28410-1-ikegami.t@gmail.com>
References: <20190619165001.28410-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_095028_390526_EE05F2CA 
X-CRM114-Status: GOOD (  14.31  )
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

This is just to refactor the function by removing the goto statement.

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
- Rebased on the patch v4 01/11.
- Change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- Just rebased.

Changes since v1:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index d511f70080dd..089df0334270 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1677,7 +1677,8 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	oldd = map_read(map, adr);
 	if (map_word_equal(map, oldd, datum)) {
 		pr_debug("MTD %s(): NOP\n", __func__);
-		goto op_done;
+		do_write_oneword_done(map, chip, adr, mode);
+		return ret;
 	}
 
 	XIP_INVAL_CACHED_RANGE(map, adr, map_bankwidth(map));
@@ -1697,7 +1698,7 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
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
