Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B338C1E1DD3
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 11:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MIRvSdWtPQkbbOOQBaseDYo05PgI7pXroIA6BqZsQWE=; b=u9MDiwVDrih5YU
	+xo/1PMsiFos3hMzTHQRnhLs8H7uk6l7MTCYEN5AXn6uQBn6Khz8UlJzJX7LWyrqe6uPiqS952U3X
	vFKrwXIbcL59D95ZZMHMtsrmhLXr54EON7x4a78EhIQ0dMUe8wj0QIsp2W46qu4ZoVl2HQ3hmJ4IN
	4vDnAMPyUyUR6nM+hXuzoWSTscI/pXT6ksdLzObtqPLh60gALDr7R4mUJr0OvOjC0RbWCdceDxTYe
	3FGiG8Xwjcq5AjFg3WxsdSMDjh3bluFkER+gYi/xZj3ANOlPruq5yEESQedZb+g492qR2Eaen66/6
	D5Fe+dztTccr5qVnKQUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVXz-0007QW-Vj; Tue, 26 May 2020 09:06:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVXr-0007PX-MD
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 09:06:49 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04Q96esY060792;
 Tue, 26 May 2020 04:06:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590484000;
 bh=4GAVjbfEfYPvvTOwdGts8giK9Q+AnREXRCYDxEQSBko=;
 h=To:CC:From:Subject:Date;
 b=Sg6BhFrVudacHR4y6eRh2clYSCYryoAKnN6EEjoanCcRmyvK/vyBrC45OWOG8ix3F
 SBA4UbUWJgR3P4yHl8KYZs4mUzFRt+J7GfsYFDJwbXsFwm9SyWE/3PgI+akcKNuRgp
 hii091qYFZKnHsazHxl1pUNdpWITGRB8t6qottRo=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04Q96eAQ038160
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 04:06:40 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 26
 May 2020 04:06:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 26 May 2020 04:06:39 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04Q96bjg100595;
 Tue, 26 May 2020 04:06:38 -0500
To: Miquel Raynal <miquel.raynal@bootlin.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [GIT PULL] CFI and HyperFlash changes for v5.8-rc1
Message-ID: <e9009e03-f1ee-57db-0b1f-6678fd4f499f@ti.com>
Date: Tue, 26 May 2020 14:36:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_020647_768484_B2793DA4 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi  Miquel, Richard,

Here is the CFI and HyperFlash related PR for v5.8-rc1

Regards
Vignesh


The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git@gitolite.kernel.org:pub/scm/linux/kernel/git/mtd/linux.git tags/cfi/for-5.8

for you to fetch changes up to 11399346ac39a26ade2a90303d38ad318163c665:

  mtd: Replace zero-length array with flexible-array (2020-05-26 13:30:06 +0530)

----------------------------------------------------------------
CFI changes:

* Support the absence of protection registers for Intel CFI flashes
* Replace zero-length array with flexible-arrays

----------------------------------------------------------------
Gustavo A. R. Silva (1):
      mtd: Replace zero-length array with flexible-array

Jean-Philippe Brucker (1):
      mtd: cfi_cmdset_0001: Support the absence of protection registers

 drivers/mtd/chips/cfi_cmdset_0001.c | 13 ++++++----
 include/linux/mtd/cfi.h             |  6 ++---
 include/linux/mtd/qinfo.h           |  2 +-
 3 files changed, 12 insertions(+), 9 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
