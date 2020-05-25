Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652C21E0E37
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 14:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fwQFMM1RIccH6wKwpmZ6Ee21hKJ3fNRTpNYTbIkBEeY=; b=Fxl
	V2suH/WVKQzlosluZ+b+lCTEshFuitmnts4A/6hlKSOvwtPj7OYkYdpy5i8eVTm3/sMzn08yVI6Dl
	BI6wil2O+qh78vOt2z9ZAm0rDsTGOo0Tip9F8p2B4rvMJCkeIL2IKl5g52EHheceKFvIMQb8kAyI4
	2qnLRCX+08VGAJrBv1lGhj+x73i1ZVlcXTgW0osianPWy7EHXa4gdxGUvjja4S2fb3TayvNG04Bgq
	FzDgPNolUtoFwXCtJNJL/5n2I/8EzXE9o4r/CHTezmA39jz6QwV3d5RxFH8WyBsjqiXGDMSUYRAaM
	fdDPfbkUpCOY34+u2mKqZUUng1pysdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdC41-0001Ih-Mu; Mon, 25 May 2020 12:18:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdC3u-0001HS-29
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 12:18:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so16472479wmd.0
 for <linux-mtd@lists.infradead.org>; Mon, 25 May 2020 05:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7o+lBWeHtPJY1L0YtKPVz2MqPUZpsoWKhePxIs0CqiI=;
 b=MbVfr7MrXvBV5N80SFzd2eQYB/pkfICrxxEfMysOmJN67ykUDmZ6bpSUaHadGpBbdO
 19xNFQkfG0F/EriJO6/ry3wDRO5Ap5Y6AlmXAG49iNxedgS0Iz1+3gK8CY2XX/ppZUSz
 RgREvlnYzbQo/y6b4EK91m8RuTc1d80aTclU0sJfS0xmu200uSFXnCXciS7YUP9qtTbg
 Z/rQXJ3TTcY7vYWMLzf4jbHWssPTSJSD34O/YTrzTEEGNGE6ltH/aO6Ba6Vb6bO+eF/B
 A99tsG5gYs/zjqxc8rchS2FlbucZ2tdlwVQewQo970NtCn3QLWJ4xnrQbBaEzoIacWR1
 jaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7o+lBWeHtPJY1L0YtKPVz2MqPUZpsoWKhePxIs0CqiI=;
 b=uZ48La/cNbZmIw747dJlyJoaNolOOE2wD7b7Nm49gKHd1AQKeJc7WO3Go/0XaEMMF0
 mD/OQ1Lam6aWaObkg/dlndcrWD3kXQlyLnOT62KHjpGZtyK8fnDY+WrHFO7oNdHuxXz8
 RH7tSsfDmcLPAjc455sccFmWV89RbWFYTrwpSibyc4EUlvDrPbT1OnZ1/IRdN+eNXsPF
 mNmmn6hjZ57EBibVQj5tUxo8+MxD/CYnHd3vmUCm77LGnvb1Q3PuoFJHhuyZVJotdVzR
 nzBK2cyuN45UdtUr+/Po2FW6NIbcgwUVWhsQT2kdttbKIVZrs3pVnSfLAXZwZ0yhdzq/
 uEcg==
X-Gm-Message-State: AOAM531JTvUSF+NC/TKINPXem1URZXWLdiczEj3CrVtmFAs9lVkPOlMo
 63ZTe5xb26sxckLyadgbm6M=
X-Google-Smtp-Source: ABdhPJy7pbFO73FzMiOp6qJbFO6JT0WJYrjBOJQOBGLomMGz8xNQri52lKtcpDMPk8VFljekvgxxIw==
X-Received: by 2002:a05:600c:48e:: with SMTP id
 d14mr8876912wme.133.1590409107994; 
 Mon, 25 May 2020 05:18:27 -0700 (PDT)
Received: from ubuntu-G3.micron.com ([165.225.203.62])
 by smtp.gmail.com with ESMTPSA id 10sm18136635wmw.26.2020.05.25.05.18.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 05:18:27 -0700 (PDT)
From: Bean Huo <huobean@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v6 0/5] Micron SLC NAND filling block
Date: Mon, 25 May 2020 14:18:08 +0200
Message-Id: <20200525121814.31934-1-huobean@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_051834_105666_7ADC2598 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
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
Cc: huobean@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Hi,
On planar 2D Micron NAND devices when a block erase command is issued,
occasionally even though a block erase operation completes and returns a pass
status, the flash block may not be completely erased. Subsequent operations to
this block on very rare cases can result in subtle failures or corruption. These
extremely rare cases should nevertheless be considered. This patchset is to
address this potential issue.

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

v5 - v6:
    1. Fix a misleading-indentation in patch 5/5
       (Reported-by: kbuild test robot <lkp@intel.com>)
    2. Rebase patch to
       git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next
v4 - v5:
    1. Add Miquel Raynal Authorship and SoB in 4/5 and 5/5 (Miquel Raynal)
    2. Change  commit message in 5/5. (Steve deRosier)
    3. delete unused variable max_bitflips in 4/5
v3 - v4:
    1. In the patch 4/5, change to directly use ecc.strength to judge the page
       is a empty page or not, rather than max_bitflips < mtd->bitflip_threshold
    2. In the patch 5/5, for the powerloss case, from the next time boot up,
       lots of page will be programmed from >page15 address, if still using
       first_p as GENMASK() bitmask starting position, writtenp will be always 0.
       fix it by changing its bitmask starting at bit position 0.
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

Bean Huo (3):
  mtd: rawnand: group all NAND specific ops into new nand_chip_ops
  mtd: rawnand: Add {pre,post}_erase hooks in nand_chip_ops
  mtd: rawnand: Introduce a new function nand_check_is_erased_page()

Miquel Raynal (2):
  mtd: rawnand: Add write_oob hook in nand_chip_ops
  mtd: rawnand: micron: Micron SLC NAND filling block

 drivers/mtd/nand/raw/internals.h     |   3 +-
 drivers/mtd/nand/raw/nand_base.c     |  87 ++++++++++++++++++----
 drivers/mtd/nand/raw/nand_hynix.c    |   2 +-
 drivers/mtd/nand/raw/nand_macronix.c |  10 +--
 drivers/mtd/nand/raw/nand_micron.c   | 104 ++++++++++++++++++++++++++-
 include/linux/mtd/rawnand.h          |  40 +++++++----
 6 files changed, 211 insertions(+), 35 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
