Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD14F1D3FDE
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 23:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vLeF7cn3ywgZYZWuqmy/Cud0pUww94NsQ+84O6KbFOk=; b=ZSt
	L1e0Qqlv/3qpudPRfe8RutVJklmIJyMgQljGgFbXA3gsyDGkuXzGyZmH7fysRS2mbTzvnmRMKmrzU
	yTnDbtHyhoBGX9kP9BD8W45slwB6XaBqrmydQMY+/2UjD6en8LrEfiibJ9I3NGQD+B75RQSdLuKEx
	KJE9BawW0iTtRdAt1hhCEKzS5VrVN0mG1NhyiqYQr4T3zCb/MOmn2exEzXXxbKovPC0jTP/MF7b+x
	541xIKf9fq2ZvS0kLTdrovQJUtrpujZb94zFD7piTuT7MsxaL7Wd4u/wkI4OG4GLw9dDLmSVvRIku
	ByFWzzK0H5pAzSFZYesEOAkqXHjerWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZLKj-0007LK-57; Thu, 14 May 2020 21:24:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZLKW-0007Jm-E5
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 21:23:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so20064559wmd.0
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 14:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TW3B/oY6lOWmiNP5IW02zTB9a0DCh41deR1YnQIWdpM=;
 b=BA25v1udkyuZZ5BtwgAxW6Pl4umsfLS9BoSrzmoWWtcH/x1MvJ9WlzogkOm8wfvzfv
 RRvtdQWtBTX6LupAQjebAcDnnizaRSSYr0bP1CVWUE2wJCz8deV8E4vtCod7Jo8mgKoE
 pF6hIoezucYa5IaitD0Lc0tnXYeBP3RQiUEVIMjJmCpi3dEvgMMMmg8fZj6P4BVpVAJY
 +K7NNq8KXvZHtY/gaQFr0wyMELqHIRewKmb1eabDcY1UfaC/Bq7l9Hy4/dpaOUZ3Zeqf
 dq0e+4xHb1wtMSuTD7l7ZKaPgK+bWGZYEvAy3AJp45T6JVovykTHfvcbjJ78294WG3QT
 rQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TW3B/oY6lOWmiNP5IW02zTB9a0DCh41deR1YnQIWdpM=;
 b=WZyP3pzp34Bhe7PMWUsZrsH6jBikCT8NCgIOhZAkVVZK++kKIxD3O+nGlHSZJPaOvH
 9oAPlPCad5zCiBJGemXSafl3kQsdP8p/2R0tQNvV/2MQPQ1S58XsqShmSvZgm1bm0KmG
 wVCB2RJyMWvHx9TaJoRYRpKz8ibQmnxbK6MMo73lt0rH3tE49QGgheI45FnelBjpcRLl
 Rm8f8iDbjgA2jZHhr1N8EZ6mqTtjmugwaNWFMih7luHOcnfKc03L1ObjjuqHIy9qT9SG
 d+MDU5Vt985gd1FRn3n5Sm3tNe3M5DdCxrvG6RwIxLqKoMacGWOTngH7cVLqhdYjxlDj
 6ktg==
X-Gm-Message-State: AOAM5320XEeUKhN3OfYMoF2582PxH6BCMYCSV/lSEOAzJ6+UPEMIVIvO
 KuFkZPEQjnprTBDddwbXTSY=
X-Google-Smtp-Source: ABdhPJwXRFI0vIFI+l5oRrL5aNAk6L9ObEqDlYZ21qs6N7aRGVbNuLFpMICH5zH9O/DN2WqkGQHWqQ==
X-Received: by 2002:a05:600c:22d3:: with SMTP id
 19mr298771wmg.161.1589491426069; 
 Thu, 14 May 2020 14:23:46 -0700 (PDT)
Received: from localhost.localdomain (ip5f5bfcc8.dynamic.kabel-deutschland.de.
 [95.91.252.200])
 by smtp.gmail.com with ESMTPSA id 128sm491210wme.39.2020.05.14.14.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:23:45 -0700 (PDT)
From: huobean@gmail.com
X-Google-Original-From: beanhuo@micron.com
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v3 0/5] Micron SLC NAND filling block
Date: Thu, 14 May 2020 23:23:28 +0200
Message-Id: <20200514212333.28692-1-beanhuo@micron.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_142348_521344_846574DD 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Hi,

on some legacy planar 2D Micron NAND devices when a block erase command is
issued, occasionally even though a block erase operation completes and returns
a pass status, the flash block may not be completely erased. Subsequent
operations to this block on very rare cases can result in subtle failures or
corruption. These extremely rare cases should nevertheless be considered. This
patchset is to address this potential issue.

After submission of patch V1 [1] and V2 [2], we stopped its update since we get
stuck in the solution on how to avoid the power-loss issue in case power-cut
hits the block filling. In the v1 and v2, to avoid this issue, we always damaged
page0, page1, this's based on the hypothesis that NAND FS is UBIFS. This
FS-specifical code is unacceptable in the MTD layer. Also, it cannot cover all
NAND based file system. Based on the current discussion, seems that re-write all
first 15 page from page0 is a satisfactory solution.

Meanwhile, I borrowed one idea from Miquel Raynal patchset [3], in which keeps
a recode of programmed pages, base on it, for most of the cases, we don't need
to read every page to see if current erasing block is a partially programmed
block.

Changelog:

v2 - v3:
    1. Rebase patch to the latest MTD git tree
    2. Add a record that keeps tracking the programmed pages in the first 16 pages
    3. Change from program odd pages, damage page 0 and page 1, to program all
       first 15 pages
    4. Address issues which exist in the V2.

v1 - v2:
    1. Rebased V1 to latest Linux kernel.
    2. Add erase preparation function pointer in nand_manufacturer_ops.

[1] https://www.spinics.net/lists/linux-mtd/msg04112.html
[2] https://www.spinics.net/lists/linux-mtd/msg04450.html
[3] https://www.spinics.net/lists/linux-mtd/msg13083.html

Bean Huo (5):
  mtd: rawnand: group all NAND specific ops into new nand_chip_ops
  mtd: rawnand: Add {pre,post}_erase hooks in nand_chip_ops
  mtd: rawnand: Add write_oob hook in nand_chip_ops
  mtd: rawnand: Introduce a new function nand_check_is_erased_page()
  mtd: rawnand: micron: Micron SLC NAND filling block

 drivers/mtd/nand/raw/internals.h     |   3 +-
 drivers/mtd/nand/raw/nand_base.c     |  96 +++++++++++++++++++++----
 drivers/mtd/nand/raw/nand_hynix.c    |   2 +-
 drivers/mtd/nand/raw/nand_macronix.c |  10 +--
 drivers/mtd/nand/raw/nand_micron.c   | 104 ++++++++++++++++++++++++++-
 include/linux/mtd/rawnand.h          |  40 +++++++----
 6 files changed, 220 insertions(+), 35 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
