Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D361616AE
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Feb 2020 16:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jhKfOm+SCU/HE0M/h/c5mZxbLHME0No2obHrxSiti4c=; b=dJtsaT7aRrWBZC
	Zy6KHFObR5ygbIdLlGHZeisiZp8Bav3KNDC119fLA+LwjqoyZDj1G49NNcaZ80Q832XdjORfF32SC
	NfLDAxQK+34yiIeekJTPfp+KlIlslRlWIqIjjauh00+tewGlJORSfczNkDh6ywDrnB261C9O0zqqS
	Ym10eFYEBvSyDGnFwSuCK4AAlcGK/L/BOIkfqFuQVQMPISB/fi4obXP+j99Tcyx8vSg8L18Pl2ioM
	idyHpHuzOQLMw3QFu59ee/LCbgOcFpRORcbqgNklqOrKSagRpRVOBgHqxY9zBmPP8fomVPSHK2aBQ
	T1d4nYuuDtd+j1Ukixpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iiZ-0006sH-NZ; Mon, 17 Feb 2020 15:53:55 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iiS-0006qv-4m
 for linux-mtd@lists.infradead.org; Mon, 17 Feb 2020 15:53:49 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 6CB0A67A7D3;
 Mon, 17 Feb 2020 16:53:43 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 17 Feb
 2020 16:53:43 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Mon, 17 Feb 2020 16:53:43 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <bbrezillon@kernel.org>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Jeff Kletsky <git-commits@allycomm.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: [PATCH v2 0/3] mtd: spinand: Fix reading and writing of bad block
 markers
Thread-Topic: [PATCH v2 0/3] mtd: spinand: Fix reading and writing of bad
 block markers
Thread-Index: AQHV5apt9QxyjsUEOEmjBs5W5pZDtA==
Date: Mon, 17 Feb 2020 15:53:43 +0000
Message-ID: <20200217155213.5594-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 6CB0A67A7D3.A10BF
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, git-commits@allycomm.com,
 liaoweixiong@allwinnertech.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 richard@nod.at
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_075348_348412_96106289 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

We were pointed to the issue of bad block markers not being saved to flash on
one of our boards with SPI NAND flash. After a bit of investigation it seems
like there are two overlapping bugs in the original framework that cause silent
failure when writing a bad block marker.

This set contains fixes for both of these issues and one more fix (patch 2) that
should not affect the actual behavior of the driver.

Changes in v2:
 * Patch 1: Incorporate small improvements proposed by Boris
 * Patch 1: Add Boris' R-b tag
 * Patch 2: Add Boris' R-b tag
 * Patch 3: Instead of waiting for the erase operation to finish,
            just don't do an erase at all, as it is not needed.

Frieder Schrempf (3):
  mtd: spinand: Stop using spinand->oobbuf for buffering bad block
    markers
  mtd: spinand: Explicitly use MTD_OPS_RAW to write the bad block marker
    to OOB
  mtd: spinand: Don not erase the block before writing a bad block
    marker

 drivers/mtd/nand/spi/core.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

-- 
2.17.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
