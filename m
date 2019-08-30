Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A3BA336B
	for <lists+linux-mtd@lfdr.de>; Fri, 30 Aug 2019 11:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hJpqXQAItNLk/NOoEMDvlCP6eQ+eMq5Rj0CJeg3sxek=; b=tbBzJYFnf0G4JT
	e2lkyhm60uyn+u/fm7Ovj6byfPvAfA8LIYlS8EL9Hur2lmlacq8p8SYxdgV2w5FQ0tl6791+dlex7
	0ZhpUHrf3uI027ViH4pnKIl7s459uGo3v8hAx1SNLRCGhgRhiDkxvI/88PpRyyQ+8Jt2HklFjqV7A
	SzuxvCptq/ZZdiGrVeuRpjHjgtSuEn6iu+DwQo7rfWpjcxvu88UcVf7f+cNH9Z+2nRRGnBcc1I0Z7
	r8aP5nKicDQVCvxbms2t0/8+j9OQD09eRMQ8W9SPQGQT7Jlq+aOvhOTC7v/mkQFDmB+8tkZBmzRFy
	3oxkupmDwpWf6hqKxJyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cuj-0003ba-Ar; Fri, 30 Aug 2019 09:09:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cub-0003bF-Gj
 for linux-mtd@lists.infradead.org; Fri, 30 Aug 2019 09:09:43 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7U99Zlt059397;
 Fri, 30 Aug 2019 04:09:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567156175;
 bh=WZyRL2qT5yRGrUEqP9p8USZPeH1nQPdueJGuaL7Z+Kc=;
 h=To:CC:From:Subject:Date;
 b=bKw14ZTaXoFivMlkfTevIGp3ISEJDeF90gI3dcGtj4zF+kFaONAFzLc8osI1Yu7Ng
 WVWCmLSm0fxYk5YZF1d8ZB8tct/i4cuL4OSATSiubRuOWW9i1akGKqgZuXh+dik4H5
 e9jDds0N33yyAOnwCBRJcwsXkYjivzAEbSFnNXSQ=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7U99ZdV043475
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 04:09:35 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 04:09:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 04:09:34 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7U99Uvf117391;
 Fri, 30 Aug 2019 04:09:32 -0500
To: Richard Weinberger <richard@nod.at>, Miquel Raynal
 <miquel.raynal@bootlin.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [GIT PULL] mtd: CFI changes for v5.4-rc1
Message-ID: <5b0fbde6-7245-92f9-7336-3d376389e0b7@ti.com>
Date: Fri, 30 Aug 2019 14:40:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_020941_643029_E75991ED 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: MTD Maling List <linux-mtd@lists.infradead.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,

Here is the CFI flash related PR for v5.4-rc1

Regards
Vignesh

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://github.com/r-vignesh/linux.git tags/cfi/for-5.4-rc1

for you to fetch changes up to 557c759036fc3976a5358cef23e65a263853b93f:

  mtd: cfi_cmdset_0002: Disable write buffer functions if FORCE_WORD_WRITE is 1 (2019-08-27 17:55:53 +0530)

----------------------------------------------------------------
CFI core

* Kill useless initializer in mtd_do_chip_probe()
* Fix a rare write failure seen on some cfi_cmdset_0002 compliant
  Parallel NORs
* Bunch of cleanups for cfi_cmdset_0002 driver's write functions by
  Tokunori Ikegami <ikegami.t@gmail.com>

----------------------------------------------------------------
Sergei Shtylyov (1):
      mtd: chips: gen_probe: kill useless initializer in mtd_do_chip_probe()

Tokunori Ikegami (8):
      mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()
      mtd: cfi_cmdset_0002: Remove goto statement from do_write_buffer()
      mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce function size
      mtd: cfi_cmdset_0002: Split do_write_oneword() op_done goto statement
      mtd: cfi_cmdset_0002: Split write-to-buffer-reset sequence
      mtd: cfi_cmdset_0002: Split wait for write buffer completion sequence
      mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce exit paths
      mtd: cfi_cmdset_0002: Disable write buffer functions if FORCE_WORD_WRITE is 1

 drivers/mtd/chips/cfi_cmdset_0002.c | 297 ++++++----
 drivers/mtd/chips/gen_probe.c       |   2 +-
 2 files changed, 186 insertions(+), 113 deletions(-)

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
