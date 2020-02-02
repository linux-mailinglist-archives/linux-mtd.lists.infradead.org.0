Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CF014FF7E
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Feb 2020 22:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9upT+n+dursRBK0Za+gq0naYGLjRt18XKSYN7EsJtc=; b=rpQihg4x3UeJIDoZSlnbMpeVhB
	D9nWJ9ug8LBIPq94DTSzR205y1OcDe7NDzYSbuc6Wf2+uhUWy8J+WvILOqEGhMCh9iBXD9zT55SFX
	Yymvu8xFtgtTZpb6uyLOYx/HajaWz1aBOZSte3m9AijEDuvAKtvt1cmFWCwEBta9Zf7qSAe7sTEUO
	zor2o4d960qHClX4zI6V1fxYB+ohEc7lyxkoGQFg04Ah82p/3dhfsL0f0GlbQM9zibw6hdyvx3Pfb
	6GjlOkXzoccsGv70xrBybVqrfrfO8NT/Gv8BoWW0CpkJo2ye6Sfl5wZb/FjzFWHJ00ya9sRgemjJ1
	ygWXX/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNFy-0000lT-KQ; Sun, 02 Feb 2020 21:58:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNFA-0000Bo-3g
 for linux-mtd@lists.infradead.org; Sun, 02 Feb 2020 21:57:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so14828545wmb.0
 for <linux-mtd@lists.infradead.org>; Sun, 02 Feb 2020 13:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jyEX43ZpUb0u2S3WQ5QnhN2Cyr6EL7YY0DzTdYAAonw=;
 b=oNt7SLDVRwnURZ4zpEhCp8aH3DEqqbet60GVVDBpCE5PqPeaWYaGz5mIiKP60eA9wb
 uXLjq++xtk4tbGNu7nopBBvzX0hpx/aJYE9gI3pSoPHHNrHskJLnh1OB4+BRF6N4chdT
 tX2VVskFUxPTiEfGk0hjsg0fwEaSXJvqJYP/BgIHpYhGqFC6R2Uo9CnxTTBWfuHIw4tN
 kla2u2aUTx7I4tmOxHDjzCuhy1trQiyIb8hGC7duQ5jZqT20OoYvfktAJjOY1rf8aYtg
 yDFcE3J+x1RYOtPZSN+uOEEGDKWvItr4s1Dke6MVqHDD397cQmqFSby5CL7t1YL1dMWZ
 5A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jyEX43ZpUb0u2S3WQ5QnhN2Cyr6EL7YY0DzTdYAAonw=;
 b=U8vD7pzbZVjKFj/c27Wtw2RNnf7uUqIHjam9Tlo+D4oSqKm0C4lHVJlHnMpbADNoUN
 DkfHqcVOWlnuirOGksqS4SQ9Mh/dMVpdQE5C7lNMyxCXpiRQgpBcmrRaHgtdwTz43TI8
 /mgedQrVRVcBN6MJZXLd+WOkLmAe9tNTKsCpRZVe4WX15M7bvp4wytajIKa+Lo30hrO7
 DZIkAyWg2UjmUdJjnmriFWB5LKmsIV3Ccyt0WfjyO03O/vSxhtPKBWYcJkaXFxT+ZB/K
 y3OW6I6fTxTStO8ytlTTyLLJEXLgl90oMGvPHC5fhNshts/DLityRKb9m29s69Wtxzhc
 Bx+A==
X-Gm-Message-State: APjAAAV7vE3WuektHZIRwZdnpf2ibAejVvwLX5Mx6PipFsGnDcU73Au6
 8nYVgElKp3EIdClEM7oyvNo=
X-Google-Smtp-Source: APXvYqxQiUZExxKdeKXdKMyeiKqxAeXS95EnstwHXKrf41XCZLhiC/oDqRYIDtqzVqGXmU5bMdgkTw==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr25548604wml.138.1580680646753; 
 Sun, 02 Feb 2020 13:57:26 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c4sm20612488wml.7.2020.02.02.13.57.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:57:26 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] mtd: spinand: identfiy SPI NAND device with Continuous
 Read mode
Date: Sun,  2 Feb 2020 22:55:06 +0100
Message-Id: <20200202215508.2928-4-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202215508.2928-1-sshivamurthy@micron.com>
References: <20200202215508.2928-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_135728_194885_37DE8AB2 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

Add SPINAND_HAS_CR_FEAT_BIT flag to identify the SPI NAND device with
the Continuous Read mode.

Currently, some of the Micron SPI NAND devices enable this feature by
default, and we need to identify them to disable while probing.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 include/linux/mtd/spinand.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 4ea558bd3c46..333149b2855f 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -270,6 +270,7 @@ struct spinand_ecc_info {
 };
 
 #define SPINAND_HAS_QE_BIT		BIT(0)
+#define SPINAND_HAS_CR_FEAT_BIT		BIT(1)
 
 /**
  * struct spinand_info - Structure used to describe SPI NAND chips
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
