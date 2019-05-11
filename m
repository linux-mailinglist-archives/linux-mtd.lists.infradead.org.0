Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7C1A764
	for <lists+linux-mtd@lfdr.de>; Sat, 11 May 2019 12:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7fr/SLiNI7rTTu2PsS+XY/rie/Ic1wEauum5fcfwKtc=; b=asb
	PT2OAFZX2L3Zy4b5L11xws132v93oHnV4wJSIQ9dhh9H3UzpImr59Rt0FVA+wHnn7hzWyKBgRX9Rh
	IGNAWNE0rgRMD9S91qkHXfUJyynZ0tshhEKv3HhKQQX2i35PjckAYE77wSLRrTnysVtKQBIFBY6c+
	2NlHC20i1n8Xi1JLtfR0AAHIGjKvLoIAOAH4a6P9F17RFlI0XmhDAqrC2uMy7fp9hDNqOMoiaUNn2
	AzaSWDxND03Qfi6p4SJaIDg31mJVWRbDWt53sc07kmN23NZlki6qo2zRFaYjnaIQ7iLLUkk7M/L+4
	413dcxcco/7usyDhlIEdiJsUI8wlg+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOvf-0001SR-CH; Sat, 11 May 2019 10:08:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOvV-0001RP-TJ
 for linux-mtd@lists.infradead.org; Sat, 11 May 2019 10:08:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id 13so4545699pfw.9
 for <linux-mtd@lists.infradead.org>; Sat, 11 May 2019 03:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=E5geVYX9r/xsvJ70+OdlPhioxAfQpMPDLT7rfOEjAm8=;
 b=LtxOhFbURtgfMCom19ZCiUacoeYWIn8cJxzwlQharVdF3wmpg5BQQuJgU2AKE3bD9y
 oB1oo/3YjImBtD6YKyU6JEGvVVLjyerFlIoZGngZwv0eWTTldIl2wXbsDaGIg6L983Tc
 x/TeeMqAXUoSn+6nWuTbZ2DkQ5EC6emHROz98kmohi824KJKuwujwozDF3m92yAEZEMH
 fJFNFo97kek7dQ+6ExSm+DYnPbVu59SlVr+o7L1OkplFl6m3qpCWGxGOL4Y2ce4jTEmY
 u+DbGyqPRGL5uzyhLEja+rJQ+pA0f4yoOSIZ7flZnPz/mU/aHc+jD7thzo4p1x83kcOM
 76+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E5geVYX9r/xsvJ70+OdlPhioxAfQpMPDLT7rfOEjAm8=;
 b=E8lzCnQPqaoxzLKEgafgnImxT5MaA3VkuFYh6YtMyzM4Lwm+CnocmV/WC3BY28v3dz
 detNZA+HWVUvML/ZsvP/yvXvdjK8owQr01L14uT+zrcx4c8v2NUNSvY9P3+PXRgnRPxt
 LEJm3g+W4YGO5Cp/4fBSvmmW4rRY2j9w+rgpmfe1vNhmHDjASkdY2l/VQIxNs3gzFNKA
 NOFXtXRRGCLU2uPu48Kts+EoM8AMGah/hd8Gt4jiVL81TGawuJtaJ8BrGa/droISvolF
 fFW2AP31KrbdJ7Q4p++M/m17Eb3Vv59/e/pDOr5xeV+qnaSDCA+51YNnseHH5saF7saG
 kr6Q==
X-Gm-Message-State: APjAAAW656YRXD89WnK4XHe1OSq7PHqgwbdv6gQvMvJI61G06QxVpoA+
 EoLfvBKN4hhy8R6KKfJUrM1WAQ==
X-Google-Smtp-Source: APXvYqzpwuyZCUbxoXTRRlV2LAERUlKeBv3bavf54tfet+HlCK62FtD1WBpOvt13aXglcRjgzEbdNQ==
X-Received: by 2002:a62:6444:: with SMTP id y65mr21031241pfb.148.1557569298344; 
 Sat, 11 May 2019 03:08:18 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c129sm16951836pfg.178.2019.05.11.03.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 11 May 2019 03:08:17 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/3] add support for is25wp256 spi-nor device.
Date: Sat, 11 May 2019 15:38:05 +0530
Message-Id: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_030822_009979_4764E8F7 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The patch set is tested on HiFive Unleashed board and is based on mainline
kernel v5.1. Its intended to add support for 32 MB spi-nor flash
mounted on the board. Memory Device supports 4/32/and 64 KB sectors size.
The device id table is updated accordingly.

Flash parameter table for ISSI device is set to use macronix_quad_enable
procedure to set the QE (quad-enable) bit of Status register.

A unilaterlay block unlocking scheme is added in patch 2.

These patches are based on original work done by Wesley Terpstra and/or Palmer Dabbelt:
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and flash utils (v1.5.2):
1. mtd_debug  	:Options available are : erase/read/write.
2. flashcp	:Single utility that erases flash, writes a file to flash and verifies the data back.
3. flash_unlock: Unlock flash memory blocks.Arguments: are offset and number of blocks.
3. flash_lock: 	 Lock flash memory blocks. Arguments: are offset and number of blocks. 

Unlock scheme clears the protection bits of all blocks in the Status register.

Lock scheme:
A basic implementation based on stm_lock scheme and is validated for different number of blocks passed
to flash_lock. ISSI devices have Top/Bottom area selection in "function register" which is OTP memory.
 

Revision history:
V3<->V4:
-Extracted comman code and renamed few stm functions so that it can be reused for issi lock implementation.
-Added function's to read and write FR register, for selecting Top/Bottom area.

V2<->V3:
-Rebased patch to mainline v5.1 from earlier v5.1-rc5
-Updated commit messages, and cover letter with reference to git URL and author information.
-Deferred flash_lock mechanism and can go as separate patch. 

V1<-> V2:
-Incorporated changes suggested by reviewers regarding patch/cover letter versioning, references of patch.
-Updated cover letter with description for flash operations verified with these changes.
-Add support for unlocking is25xxxxxx device
-Add support for locking is25xxxxxx device.

v1:
-Add support for is25wp256 device.




Sagar Shrikant Kadam (3):
  mtd: spi-nor: add support for is25wp256
  mtd: spi-nor: add support to unlock flash device.
  mtd: spi-nor: add locking support for is25xxxxx device

 drivers/mtd/spi-nor/spi-nor.c | 345 +++++++++++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |   7 +
 2 files changed, 301 insertions(+), 51 deletions(-)

-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
