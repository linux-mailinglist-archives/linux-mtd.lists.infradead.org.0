Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E47190A04
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 10:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qjSu9Y1wfZOY/liU903qoXKc54CyX3fkiFDLUu9SeJA=; b=doSywvycZcskwG
	J2diGPRVIl8SJu4kG0NkAfiL/8XMBr6Wc9Wta84Dvd37ntoc8UcmVXFDmAonTy51s6VYBaWLvRiNV
	WGrc1SAZ/MmE5wIOFXXrw9aBA4gsvcrCSBbFTHQ5t2ekxsjdkgE7TV/YXpYyZTaTTNfkJ1xMNfUCB
	yla0wegP2/PSlgI5jeJgIzvH/R/udYyq/onDh31djNO7HwkAulXq76SfGCgx38JOn69aZCeuYd+jM
	/d9l/KYGgH7SCmzpxYwYZnN4SBafJhIGSW6KbdDP+O4QB4LZrXxpeeVu2/76yuQECgGkLXhvPlscq
	ze0o+WG6O8OYvaywG7ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgHQ-0000tZ-7n; Tue, 24 Mar 2020 09:55:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgHI-0000sz-Ua
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 09:55:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02O9tFiZ016240;
 Tue, 24 Mar 2020 04:55:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585043715;
 bh=fzPKUUZmm2sb5yxlF09F6LYdwQupBQrV0dqPylZjbSA=;
 h=To:CC:From:Subject:Date;
 b=rZXtaeq1OWbrF3cUEBGwg3YgBXREvXiM3ikPfriUuy+QhGlMbwKda38cENcv8eqhI
 Uf3RBqcSEZS+C2EIMHLrDQPHKBgS26s1bOG4qfZaE3K4np2UKnAZoRZRWXARG20HiS
 DJUhLODgBsavnDyzyRGprT1Ro17QmGVP6lmrPxWI=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02O9tF1p028649
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 24 Mar 2020 04:55:15 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 24
 Mar 2020 04:55:14 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 24 Mar 2020 04:55:14 -0500
Received: from [10.250.132.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02O9tCuV055734;
 Tue, 24 Mar 2020 04:55:13 -0500
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [GIT PULL] CFI and HyperFlash changes for v5.7-rc1
Message-ID: <9f7fe986-bba8-e7d8-889b-2fff4a2e9a76@ti.com>
Date: Tue, 24 Mar 2020 15:25:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_025521_026124_35735DB5 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel Richard,

Here is the CFI and HyperFlash related PR for v5.7-rc1

Regards
Vignesh


The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  git@gitolite.kernel.org:pub/scm/linux/kernel/git/mtd/linux.git tags/cfi/for-5.7

for you to fetch changes up to b6fe8bc67d2d33a9eff1b0785482bccd14979115:

  mtd: hyperbus: move direct mapping setup to AM654 HBMC driver (2020-03-03 10:13:11 +0530)

----------------------------------------------------------------
HyperBus changes

* Print err msg when compatible is wrong or missing
* Move mapping of direct access window from core to individual drivers

----------------------------------------------------------------
Dirk Behme (1):
      mtd: hyperbus: Add proper error message for missing compatible

Sergei Shtylyov (1):
      mtd: hyperbus: move direct mapping setup to AM654 HBMC driver

 drivers/mtd/hyperbus/hbmc-am654.c    | 12 ++++++++
 drivers/mtd/hyperbus/hyperbus-core.c | 15 ++--------
 2 files changed, 15 insertions(+), 12 deletions(-)
	

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
