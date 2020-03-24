Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA41905E9
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 07:50:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4FmzI6k0/GJr6ndgrs8k2IMvU8ytoz8VGxXaIgrd14E=; b=dh8
	eIyCt0br/P1WHmhc2pH150k1XhJCmyUIWeZgPa8NQfcOgWg14VeOoggqydxwky+C0EfmegfTO0mVT
	0WXBlg4JsCTbG+IeNfGh2JOCclJTtY7LHgPmSPpiMXD1kY3gUa2kCOf0k1NvvSZN6RmAX+6o5vnRr
	u5QUyLmy05sRre/iR7PyaRN6MJsm5tSWFcOU6zzDbA8mNt1Rp9ZaR+ZWRBQ29LyeJYKmpQmBNPC9P
	kzMUsPnFj/0ZwGRWhlzq4H797sqWRRG2yEAAVVcHF7x/jmBaAxP5HgoqYKltr6s91DunYe2n5MF5l
	iMKt0NHclqRvKM0hoDGLNdYCqbMYZ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGdNo-0004HO-Ch; Tue, 24 Mar 2020 06:49:52 +0000
Received: from mo-csw1516.securemx.jp ([210.130.202.155]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGdNh-0004Gp-GL
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 06:49:47 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1516) id 02O6nVTs010867;
 Tue, 24 Mar 2020 15:49:32 +0900
X-Iguazu-Qid: 34trWq5avtnaVNYr0i
X-Iguazu-QSIG: v=2; s=0; t=1585032571; q=34trWq5avtnaVNYr0i;
 m=wsPGRAhtXjyFu7PbYsoh/2Lf9/c1dyQ1oLRf9Vcu8UA=
Received: from imx2.toshiba.co.jp (imx2.toshiba.co.jp [106.186.93.51])
 by relay.securemx.jp (mx-mr1513) id 02O6nUIk008719;
 Tue, 24 Mar 2020 15:49:31 +0900
Received: from enc01.localdomain ([106.186.93.100])
 by imx2.toshiba.co.jp  with ESMTP id 02O75mV7025945;
 Tue, 24 Mar 2020 16:05:48 +0900 (JST)
Received: from hop001.toshiba.co.jp ([133.199.164.63])
 by enc01.localdomain  with ESMTP id 02O6nTiC009914;
 Tue, 24 Mar 2020 15:49:30 +0900
From: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
To: miquel.raynal@bootlin.com, vigneshr@ti.com
Subject: [PATCH v5 0/2] mtd: spinand: toshiba: Support for new Kioxia Serial
 NAND
Date: Tue, 24 Mar 2020 15:49:27 +0900
X-TSB-HOP: ON
Message-Id: <cover.1584949601.git.ytc-mb-yfuruyama7@kioxia.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_234945_752747_1130D190 
X-CRM114-Status: UNSURE (   4.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

First patch is to rename function name becase of add new device.
Second patch is to supprot for new device.

Yoshio Furuyama (2):
  mtd: spinand: toshiba: Rename function name to change suffix and
    prefix (8Gbit)
  mtd: spinand: toshiba: Support for new Kioxia Serial NAND

 drivers/mtd/nand/spi/toshiba.c | 182 +++++++++++++++++++++++++++++++----------
 1 file changed, 138 insertions(+), 44 deletions(-)

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
