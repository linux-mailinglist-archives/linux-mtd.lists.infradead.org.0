Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94385172F32
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 04:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=81MWalQlY8nMFMzgu3BLY47m4o+s7jdEo+QR1UihSO8=; b=qF+
	q96GM4S23jTqxNbgjEGz5VSe3xa9tdXIOGlUqgkv+rphvgV3viC0xkkweVtTfo3kEPKf6tUWurIMO
	cGVZQg8kLBIPQaa4F6dSgIKsoSXDVhDOF97ds9cMttovs0/0mTv8HH9YRExcUZvhzKEcB3rO1mQwO
	01FtjkNwUwmI48FOncpRO/KcYSi3Ar7vcv5KVLdeqr3F9/Elzr4P1Ghosc19mO/8FKO2YE0KxJpmD
	wqhzTIAZfLmX24BViRQhwwlpbRHFXgo5Rv9zxIx1YzD5E5EIgX//gnuAuOJddhKBG3HqR740OBgtE
	EWyRUI/OKICmsUzKvrKeTnjOX69cgcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7W4G-00053P-Ii; Fri, 28 Feb 2020 03:12:00 +0000
Received: from mo-csw1116.securemx.jp ([210.130.202.158]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7W47-00052x-D9
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 03:11:53 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 01S3BV4k025720;
 Fri, 28 Feb 2020 12:11:31 +0900
X-Iguazu-Qid: 2wGrMQpE3AjzZXqGSe
X-Iguazu-QSIG: v=2; s=0; t=1582859491; q=2wGrMQpE3AjzZXqGSe;
 m=Gg9jScaW+L64ARWnrv/fIo0JxfoLbuRupyJP9N2Y6Rs=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1113) id 01S3BTJA006170;
 Fri, 28 Feb 2020 12:11:30 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 01S3BTNk017041;
 Fri, 28 Feb 2020 12:11:29 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 01S3BT1P005672;
 Fri, 28 Feb 2020 12:11:29 +0900
From: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
To: miquel.raynal@bootlin.com, vigneshr@ti.com
Subject: [PATCH v2 0/2] mtd: spinand: toshiba: Support for new Kioxia Serial
 NAND
Date: Fri, 28 Feb 2020 12:11:27 +0900
X-TSB-HOP: ON
Message-Id: <cover.1582603241.git.ytc-mb-yfuruyama7@kioxia.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_191151_718138_7116AF38 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.158 listed in list.dnswl.org]
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

 drivers/mtd/nand/spi/toshiba.c | 173 +++++++++++++++++++++++++++++++----------
 1 file changed, 130 insertions(+), 43 deletions(-)

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
