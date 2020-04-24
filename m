Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0101B70AA
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 11:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Igmoo4lxHMHtljv8bq+A/aaUUswfXHTNquXm5OGAAgk=; b=HMgS0TIusg5Y0P
	X+PZQgkcvcieuUtWC3U4cNAhRxkIa3h7V+8JwpzE1C91L8DO0SQcOxJir8MO+LLBWJ7wnxDF3qpy8
	GPEqKExJevTvTQ5HHORQ19DtHn02M8cwgqM3I+vjwSsrDelO41kTMfZ0bNIUOCL+GZ99FrD+SgDrW
	QowqlbhQ7hRZgq2aOaabyHAnL8iv5x+ZIddsUuOtEt02881zaJQ9HDu6HR7a3T84KRqO1Y3S/391p
	VdfhyZXW2FH1kKU3WnXqrOdS1QekxHtsTzCbq/zvJBToKewrYXfCLrxL9rs0cFrVYC8DfqnjjogJ2
	J8Jt/azeq6QAlfK+h7XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuWR-00087D-PG; Fri, 24 Apr 2020 09:21:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuWJ-000865-39
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 09:21:16 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0A8F5BCBE27B7F30B578;
 Fri, 24 Apr 2020 17:21:08 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Fri, 24 Apr 2020 17:20:48 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
Subject: [RFC PATCH 0/2] Add support to Disable the flash quad mode
Date: Fri, 24 Apr 2020 17:20:42 +0800
Message-ID: <1587720044-49172-1-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_022115_318832_A224D0DA 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com, richard@nod.at,
 john.garry@huawei.com, linuxarm@huawei.com, yangyicong@hisilicon.com,
 alexander.sverdlin@nokia.com, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Previously we didn't disable the flash's quad mode when it's removed
Then comes the problem that if we next time load the flash
in SPI/Dual mode, it will not be correctly enabled as the quad enable
bits has not been cleared. I validated the condition on Cypress s25fs128s1.

This series adds the capability to disable the flash's quad mode. And
restore the flash when it's removed in spi_nor_restore().

RFC:
- I cleared quad mode bit in spi_nor_restore() when flash removed or
shutdown, follow what reset 4byte address does. But I don't know if
there is a situation that the flash is in quad mode by default, then
we should disable it in probe stage.
- The issue occurs when the user switch the spi mode of the flash.
Not sure whether a situation exists.

Yicong Yang (2):
  mtd: spi-nor: Add capability to disable flash quad mode
  mtd: spi-nor: Disable the flash quad mode in spi_nor_restore()

 drivers/mtd/spi-nor/core.c | 43 +++++++++++++++++++++++++++++++++----------
 drivers/mtd/spi-nor/core.h |  8 ++++----
 2 files changed, 37 insertions(+), 14 deletions(-)

--
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
