Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A91B15561
	for <lists+linux-mtd@lfdr.de>; Mon,  6 May 2019 23:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UyRfyi9wsL/tvf9mgn7SO7cruo51Lrxf5xIQX5FTpYo=; b=rtZ
	Kw43UiMCyPd2MV08F3Mvar7Mc996uCSe5wDBYPcF++4FPzALTIX6QnPkPUneozmfVDF/qMM323/ZF
	ts97JvQ79owjW0oCjQ7ruRxU0Nwpw9qxgLWhzbSJkLRssq/u8c6nvpBqLcyj0ysPKBGGpSGFdoIXL
	6RntrDyfrZvTcapYgNN+1bjQp6TJoPuqWFAF2YUwkPKeV31YHS2E9jpLmV2vSg2fEQZf12c7wiaWl
	ohCet4kN+i5ElybmngFl9y6Y2wrKuE7Miov4UFg1KTSuy4odJnHNdm3twm92crGALL9EN39XMTj75
	h3jbByUeZD2TkiSADwuxxnwlB55qJcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNl5v-0001Nl-93; Mon, 06 May 2019 21:24:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNl5n-0001N1-Ln
 for linux-mtd@lists.infradead.org; Mon, 06 May 2019 21:24:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so7081900pgi.12
 for <linux-mtd@lists.infradead.org>; Mon, 06 May 2019 14:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mcgpr1EbDMecE7rZGD6vwsoGUZztxKYeNBa1TJHRsqc=;
 b=jjTo7E7PRELtaKbiax6Ts7rsh4/BvAeWg+3CSjtwVD9iBAJ5XvpgEH5NkCZCHMMaYq
 pUxfABpU2w9NWVo+vpDZ90SSjhA8Ppgno5KHHcECq5uBILhrrLmSd4t6K31u8KyB4fQm
 wzisp6v64m7vFxMV5Pmzu2pxyrjHMcvv3rIJwdqGtHPO4LxsLYZ140eoE630Pqh9pwsS
 Mk1sb6eoWLIKJaIs0RweXo+S2/d/dd+hylIvqAb/dTIAuHJ6FtiRlwoFaGVNPq+BsWQU
 h0Hg6yy49zhC34CeWCIpu1KhQ9yNil47dDHAAxA3bveeoqDit2AOh/rMHXZHivMz1xIy
 Yigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mcgpr1EbDMecE7rZGD6vwsoGUZztxKYeNBa1TJHRsqc=;
 b=TBPhfDSdXRXHh2WP+bvFsdhbR/6r9twU2qOAvIixGWDkZqyLQL/cpQImp9qFVV+0kP
 10XbsdsY1g90giehkv9GXQXiEcq/vSLtVHTThZA8C/h55i5CP3aAneYWLSscWzYU+22/
 VJj6HVQvDXFsFUt8GzEk9IjtRay5sS4L5AfBqvYZTyOnXqYr2ZWEF01apRM08Buhc6EM
 iBNITMgn8rzfeahkzstpgiQnqLgOmL9DMQyfQNyjJV4vv8x4Bk3EKMSThN/986tNmBSq
 HkRoJ7JndhXCLHfrdt93c9w8KK0S++cZLAqRVsZabXkNZ67y842ryG+H135XtM77Z8Yn
 WO2g==
X-Gm-Message-State: APjAAAUrvbPZUcDFtplH0KAdcjB3sjmThqVLPi1DWVR1tmfg95HEyJM6
 eeKKHc3WOn1iXElA3PyTaTWqs+lXNCc=
X-Google-Smtp-Source: APXvYqyNXdy0gck+QiSXiwWgqIvLja5eUnY9VM/YdDEVYWyMtWhJNQcNz1nChR29KIyWIeWTWQeWlA==
X-Received: by 2002:a62:a513:: with SMTP id v19mr36199277pfm.212.1557177848733; 
 Mon, 06 May 2019 14:24:08 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([61.1.213.72])
 by smtp.gmail.com with ESMTPSA id v14sm14378469pfm.95.2019.05.06.14.24.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 14:24:07 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: richard@nod.at, dedekind1@gmail.com, adrian.hunter@intel.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] fs: ubifs: Resolve sparse warning for using plain integer as
 NULL pointer
Date: Tue,  7 May 2019 02:53:27 +0530
Message-Id: <20190506212327.6480-1-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_142411_739240_6AB36DB3 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bnvandana[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vandana BN <bnvandana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

fs/ubifs/xattr.c:615:58: warning: Using plain integer as NULL pointer

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 fs/ubifs/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/xattr.c b/fs/ubifs/xattr.c
index f5ad1ede7990..066a5666c50f 100644
--- a/fs/ubifs/xattr.c
+++ b/fs/ubifs/xattr.c
@@ -612,7 +612,7 @@ int ubifs_init_security(struct inode *dentry, struct inode *inode,
 	int err;
 
 	err = security_inode_init_security(inode, dentry, qstr,
-					   &init_xattrs, 0);
+					   &init_xattrs, NULL);
 	if (err) {
 		struct ubifs_info *c = dentry->i_sb->s_fs_info;
 		ubifs_err(c, "cannot initialize security for inode %lu, error %d",
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
