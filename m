Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC71180DC4
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 02:47:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=81MWalQlY8nMFMzgu3BLY47m4o+s7jdEo+QR1UihSO8=; b=sZl
	02qIOG/dizKIzHp/Cb6VM1YQ8OksqB1UpYhJLU++ACMMDkSP8v09SU4op1+bzCmzxBkiyGkMOMoB8
	fLmPDgDNu3TlqjYl6E5XtWq5PUK0ETXCWGr4serO84TbA4XvGi2dIHGCXLg8PqzNvkoUsXm6q/6Hl
	htMFx9fDXrFWBZwNTyIqEccZxIAf3MU7TWezsqOn2NyuIJ3N28MOpFQb7KBhiBmN9teVPn6TlC0a8
	7WSBoMmkuYsVsK9KD9nHDfhMXDEQgsKxgJDvut9VoG0bUkD5e+BG5GRZZYcti/WEHb//wuLRVmzjq
	jUGGW2Lv4eURv252wInhnGf1jd6pI7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBqT5-0006tO-7Q; Wed, 11 Mar 2020 01:47:31 +0000
Received: from mo-csw1516.securemx.jp ([210.130.202.155]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBqSw-0006sz-W9
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 01:47:24 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1516) id 02B1l9uk002491;
 Wed, 11 Mar 2020 10:47:09 +0900
X-Iguazu-Qid: 34triqBKPQ0PGTNQU4
X-Iguazu-QSIG: v=2; s=0; t=1583891228; q=34triqBKPQ0PGTNQU4;
 m=BJbfuCHSBkFwoHEZqBUYMdwQP41o/mM0L9KuOOruQf8=
Received: from imx2.toshiba.co.jp (imx2.toshiba.co.jp [106.186.93.51])
 by relay.securemx.jp (mx-mr1510) id 02B1l7Qa003838;
 Wed, 11 Mar 2020 10:47:08 +0900
Received: from enc01.localdomain ([106.186.93.100])
 by imx2.toshiba.co.jp  with ESMTP id 02B1l6db020674;
 Wed, 11 Mar 2020 10:47:06 +0900 (JST)
Received: from hop001.toshiba.co.jp ([133.199.164.63])
 by enc01.localdomain  with ESMTP id 02B1l6Aw016080;
 Wed, 11 Mar 2020 10:47:06 +0900
From: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
To: miquel.raynal@bootlin.com, vigneshr@ti.com
Subject: [PATCH v4 0/2] mtd: spinand: toshiba: Support for new Kioxia Serial
 NAND
Date: Wed, 11 Mar 2020 10:47:04 +0900
X-TSB-HOP: ON
Message-Id: <cover.1583834323.git.ytc-mb-yfuruyama7@kioxia.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_184723_244220_663F6203 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.155 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
