Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098581C9A15
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 20:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2pxnw3Uf5RTogvlHK1o4eYdsV0D1FzuobqYn2PkMA0=; b=uR5B5OdKjBRWb4
	CGV0fyj53bhE1BbsDCqOHQF2fj5lDmFBGy+ImS+sv931sNYX6W4Akr3SLwues65JQo4VijJlsq4gF
	e44r8eL0rATbJSxGGtE6E0g95Hyix+g1w9inr94keZXBwYM1emP4lGaEoA6p+NP3QNTB/Al7AL/ZE
	cFSmDdV9InRdeWOLMUOqnZr2pDvh0QwD7vdgSR4zr0j/ZzQqTxkGsKvCcLqsEG2VD49XcDUgwqiC/
	9EsN52Cpolol73J100FnEi/+inXJrwvVyBhRQ4GDFU6chqMTi09LAoaBJLMvQSpY6GpTXWjclnEq+
	5o6WgH7/eZza25sbVBwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlgv-0002QB-B1; Thu, 07 May 2020 18:56:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlgm-0002PL-AW
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 18:56:09 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59D6D20575;
 Thu,  7 May 2020 18:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588877766;
 bh=zfyJqFsl52hg8MspTQ7ZLvYaM+kZM5XIzKGPNp9tS0M=;
 h=Date:From:To:Cc:Subject:From;
 b=lUIjDc43mnN3s1tQ3rk7rBVGyC4MQITWAKNnSvlP9Os25A3B2tkhR7fBcPW0JBvHk
 NRIC3bHkeU4TjjB/eGKYGj9P8FFvdPIyHfZUg03GQZIDfJGEAomxShu/5ZWSu5uPvf
 0wXiAARkdO4CTdsE34effG0LjFiwQxu12v4CmONc=
Date: Thu, 7 May 2020 14:00:33 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] mtd: Replace zero-length array with flexible-array
Message-ID: <20200507190033.GA15215@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115608_406966_FCA24B8B 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 include/linux/mtd/cfi.h   |    6 +++---
 include/linux/mtd/qinfo.h |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/mtd/cfi.h b/include/linux/mtd/cfi.h
index c98a21108688..fd1ecb821106 100644
--- a/include/linux/mtd/cfi.h
+++ b/include/linux/mtd/cfi.h
@@ -138,7 +138,7 @@ struct cfi_ident {
 	uint16_t InterfaceDesc;
 	uint16_t MaxBufWriteSize;
 	uint8_t  NumEraseRegions;
-	uint32_t EraseRegionInfo[0]; /* Not host ordered */
+	uint32_t EraseRegionInfo[]; /* Not host ordered */
 } __packed;
 
 /* Extended Query Structure for both PRI and ALT */
@@ -165,7 +165,7 @@ struct cfi_pri_intelext {
 	uint16_t ProtRegAddr;
 	uint8_t  FactProtRegSize;
 	uint8_t  UserProtRegSize;
-	uint8_t  extra[0];
+	uint8_t  extra[];
 } __packed;
 
 struct cfi_intelext_otpinfo {
@@ -286,7 +286,7 @@ struct cfi_private {
 	map_word sector_erase_cmd;
 	unsigned long chipshift; /* Because they're of the same type */
 	const char *im_name;	 /* inter_module name for cmdset_setup */
-	struct flchip chips[0];  /* per-chip data structure for each chip */
+	struct flchip chips[];  /* per-chip data structure for each chip */
 };
 
 uint32_t cfi_build_cmd_addr(uint32_t cmd_ofs,
diff --git a/include/linux/mtd/qinfo.h b/include/linux/mtd/qinfo.h
index df5b9fddea16..2e3f43788d48 100644
--- a/include/linux/mtd/qinfo.h
+++ b/include/linux/mtd/qinfo.h
@@ -24,7 +24,7 @@ struct lpddr_private {
 	struct qinfo_chip *qinfo;
 	int numchips;
 	unsigned long chipshift;
-	struct flchip chips[0];
+	struct flchip chips[];
 };
 
 /* qinfo_query_info structure contains request information for


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
