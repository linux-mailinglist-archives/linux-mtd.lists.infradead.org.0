Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614014D28C
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 17:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XlGmcO6pW2+IEL+0H67vDeXPjDUG4oMZuPK3su0iD1g=; b=j+AXJmML/EqVnl
	XW7JJ3OLx1Rx2DZedKG1l7eWUwanTpXEDd9WYEQzsyqSYuGIJQU8qmwaQ3ky+FeE+Wh2cDoJ9EVoA
	6ils1xSh/zFq0EeXM35a85gFg0b3vicXlxIDSDpPb62QvOdmsu4h+duQUupiv1C12opcnIxZyrmKT
	dgLV0/E8qvjZLefzU59gXSccFdGElUdcq8ed5bMsnWpcydL9yFDYUP6g3vCXPMuvuTiJtCCo18oLx
	y+dVMgOAaqcfiI7V1Pth0i6oWx8Mo54AVAShdB1BJw7EvBVEVVWxaWCgQ6y0vbIjvzh2nS/dU/a35
	viD2mGybs2GTdok2SHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzPk-00072H-0H; Thu, 20 Jun 2019 15:55:52 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzPQ-00071t-Uf
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 15:55:34 +0000
Received: by mail-ed1-x542.google.com with SMTP id r12so5425597edo.5
 for <linux-mtd@lists.infradead.org>; Thu, 20 Jun 2019 08:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QjDX78oa2BASe824yEdzyyp19vd/Tsv5hqMbtNpObe4=;
 b=f7LwkGDE3agnu24mUX5JVPd6RwdOwcxLMc6CrExAaC56PNgJumDvFtKLuZCqkggLhU
 t8E89s0UTz8grNKBlWz2HfeSe8d8w4aTcEBQto0AB23DrdPJ7rz0BAP07hj/dlB+8iyQ
 hrQ51Oa895B0yypME4heZ7eRVDYSNCq9gY9sLNqsu4kW14z1h838WhPzq/r3fFE//ulF
 VKj6fzb252U/GEsVnFEzyba/2O7FrXxggXRcOnJvofuDqt1U1xf6DuMd/hukWjbJBiy1
 0JfH7/hSL14G5lubzX1OcG5oQEJ0SxpumifnSBrYazZswBVPV4odVkZy+Zb0VYBJuLgR
 rZsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QjDX78oa2BASe824yEdzyyp19vd/Tsv5hqMbtNpObe4=;
 b=s886hlO/POJfMy4hOQfqWAPJ1EZbY2YOHJUjlSi0l9N4c2a/4pPWRXX3gMH94k/m5U
 7Ko0D2Zsfu3+4eh8iWB2r2KwrU4WFokZ5HH3EPZCLzpHkXnuPYHeUQ79vu1VXaLq3MEQ
 xZ7V1hsEV7m0IwWcxKbBnIOEZM13/wtRi1XNNLbl8zs2daSea5C7r3I2QawgZ92meaC+
 aSA0nncEZehwYr6r2NHQXu2v9S2f5TuNJc1+Et1GyOCODelk31hpL9YHfkEmqRv2R2ph
 HXNvpqXUVxuqlVPXSOl8NYuFuNApLDSdkoAeuHbShiThUE8DUBLSM6yDm9NVTTtyj3NQ
 7Hpg==
X-Gm-Message-State: APjAAAXTC0NMWPuhOa/5bin1aTvOsFY/HfaWfnAQ+t/AU3tzRiQfE/9o
 crYOhx5m35L7mNsA2ZBmYw0=
X-Google-Smtp-Source: APXvYqwKOulu/OmTBdIVTL5icCcMvO934j9hkpRe+73gTBgRLZXhe2K020ZrGLd3DjkvWhXw6oIsqw==
X-Received: by 2002:a50:86b7:: with SMTP id
 r52mr113818579eda.100.1561046130902; 
 Thu, 20 Jun 2019 08:55:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id w6sm3874084ejf.0.2019.06.20.08.55.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 08:55:30 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] mtd: mtd-abi: Don't use C++ comments
Date: Thu, 20 Jun 2019 08:55:05 -0700
Message-Id: <20190620155505.27036-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_085532_989008_1B478BE9 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

When compiled standalone after commit b91976b7c0e3 ("kbuild:
compile-test UAPI headers to ensure they are self-contained"),
a warning about the C++ comments appears:

  In file included from usr/include/mtd/mtd-user.hdrtest.c:1:
  In file included from ./usr/include/mtd/mtd-user.h:25:
  ./usr/include/mtd/mtd-abi.h:116:28: warning: // comments are not
  allowed in this language [-Wcomment]
  #define MTD_NANDECC_OFF         0       // Switch off ECC (Not recommended)
                                          ^
  1 warning generated.

Replace them with standard C comments so this warning no longer occurs.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/uapi/mtd/mtd-abi.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/uapi/mtd/mtd-abi.h b/include/uapi/mtd/mtd-abi.h
index aff5b5e59845..3fe9237f723a 100644
--- a/include/uapi/mtd/mtd-abi.h
+++ b/include/uapi/mtd/mtd-abi.h
@@ -113,11 +113,11 @@ struct mtd_write_req {
 #define MTD_CAP_NVRAM		(MTD_WRITEABLE | MTD_BIT_WRITEABLE | MTD_NO_ERASE)
 
 /* Obsolete ECC byte placement modes (used with obsolete MEMGETOOBSEL) */
-#define MTD_NANDECC_OFF		0	// Switch off ECC (Not recommended)
-#define MTD_NANDECC_PLACE	1	// Use the given placement in the structure (YAFFS1 legacy mode)
-#define MTD_NANDECC_AUTOPLACE	2	// Use the default placement scheme
-#define MTD_NANDECC_PLACEONLY	3	// Use the given placement in the structure (Do not store ecc result on read)
-#define MTD_NANDECC_AUTOPL_USR 	4	// Use the given autoplacement scheme rather than using the default
+#define MTD_NANDECC_OFF		0	/* Switch off ECC (Not recommended) */
+#define MTD_NANDECC_PLACE	1	/* Use the given placement in the structure (YAFFS1 legacy mode) */
+#define MTD_NANDECC_AUTOPLACE	2	/* Use the default placement scheme */
+#define MTD_NANDECC_PLACEONLY	3	/* Use the given placement in the structure (Do not store ecc result on read) */
+#define MTD_NANDECC_AUTOPL_USR	4	/* Use the given autoplacement scheme rather than using the default */
 
 /* OTP mode selection */
 #define MTD_OTP_OFF		0
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
