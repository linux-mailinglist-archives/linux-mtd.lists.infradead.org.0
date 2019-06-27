Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7683588C2
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 19:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5SJ2o9mXHy/yetcYxB+7dgy2964J8PfdWWv02l0l4Eg=; b=b6G
	og/uYaZ1PcWsYUs/f8WdzpE2jwOjLXqV5aljEK1cIKMR+NDIZZBvSSloNoiHlj+werxm0pLkM4T84
	Vdtwm38jZ+FQUlmLRzveziXoArmBQ5FVFeDH+bohmVLTNRSq92pj7GF9sWmwWRvFSvo4jUgMtp29c
	cxkyoGPuQSUeJimr3eC1nx0lRkK70y/HMMsdNfF4Xu5OorDkMNSVPaepfc2zkbLMSBVkqg7oOxtSv
	YdidRdqn1kutrQA3Et+h0bg+Pxx4v8A5NTe1CDbT1dzu0w2h6jVo3S+IcnQ8J9Mvj2l02FFxmOV5U
	TM+ZcF+MG5MgrAgJshzoiAj4h4cgxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYMo-0004Di-R8; Thu, 27 Jun 2019 17:39:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYMc-0004Cp-BQ
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 17:39:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id z75so1342905pgz.5
 for <linux-mtd@lists.infradead.org>; Thu, 27 Jun 2019 10:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cO/EhwNLhEBZIOJaWYP275DFWQtB2l0qegc0KCTXlr4=;
 b=OhEd+Upb76lWIf0OlxsFw/JBvbBQsZ4lM6cn4tqa3owGLsDTVW+5Se/Uk6sZBSYUQ9
 hm5E9vPF1A4sydujUM8mxkGxGEyd5x1n54ziJY+zSHrN9I4mvrr5Zwv3mzKvheBGaHZ1
 OZkvw6VQpxk3SLRzAAs+LTHJ0bzmn8WXYzrpedhtgoC2TKe2ErLVAIPZCtiKhKtHeQRD
 EX79wZjXAEkURAG4UPeaHevFj5OxMI7B2C7GdYmg/YBSm4HxoQrkZCDIMxD5618z4o7W
 O53GJvcR+PKh/GcyO21HY5FnNdv3Jim3+uXYAQNlQTQleoqxelLOWPwKfLMMc089EboC
 vB+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cO/EhwNLhEBZIOJaWYP275DFWQtB2l0qegc0KCTXlr4=;
 b=o5GIGCITIYXCX93dZ7dlDIwB0CYlzJv9OB0z22jxnhCmB9pf49StVy/7WGJ33Rl9WF
 alPykPGaYJ6jVwd/dwS5s/Amelpf/9XuVQMwkWzaUkQAl0CyLoso0GtTlxBjaefH5iwy
 SC1WM02ayCJMmQYcfLOJiWTBAd4JKEGqt5Po+q7g5aDoCrPBv26l4gi6kCr2akalYrjD
 Ys+ItgJEFvbfgo3j69c/ig7LuNT/6IgXI8pfgoqS8A59EBOH/0Szkx4sE6OIfvZCn4J7
 Xid2j5w2UHNNeOoxVtKsWWo18FVxfi/3NIhnykeu6YpPc8gdly8p+Wlw5GkRPh6o/Mkc
 RXtQ==
X-Gm-Message-State: APjAAAUODgETO2Rmv/eKN1wAq+cduzUL7BNUutZiTCO/1tLz5/gF6s1/
 bI1JoyhVWidi+ZO1JWmPzUg=
X-Google-Smtp-Source: APXvYqx1+lqv+Rv9CYPJbjHJvv96N0Pg00kJiUjVmyPJ/ERoLmFfoLDu+geOyscEfSCTTegdydwoNg==
X-Received: by 2002:a17:90a:bb8a:: with SMTP id
 v10mr7556179pjr.78.1561657153468; 
 Thu, 27 Jun 2019 10:39:13 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id 133sm3450478pfa.92.2019.06.27.10.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:39:13 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 35/87] mtd: nand: replace kmalloc and memset with kzalloc in
 nand_bch.c
Date: Fri, 28 Jun 2019 01:39:05 +0800
Message-Id: <20190627173906.3675-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_103914_400838_4052B8CA 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

kmalloc + memset(0) -> kzalloc

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/mtd/nand/raw/nand_bch.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_bch.c b/drivers/mtd/nand/raw/nand_bch.c
index 55aa4c1cd414..17527310c3a1 100644
--- a/drivers/mtd/nand/raw/nand_bch.c
+++ b/drivers/mtd/nand/raw/nand_bch.c
@@ -170,7 +170,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 	}
 
-	nbc->eccmask = kmalloc(eccbytes, GFP_KERNEL);
+	nbc->eccmask = kzalloc(eccbytes, GFP_KERNEL);
 	nbc->errloc = kmalloc_array(t, sizeof(*nbc->errloc), GFP_KERNEL);
 	if (!nbc->eccmask || !nbc->errloc)
 		goto fail;
@@ -182,7 +182,6 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 
 	memset(erased_page, 0xff, eccsize);
-	memset(nbc->eccmask, 0, eccbytes);
 	encode_bch(nbc->bch, erased_page, eccsize, nbc->eccmask);
 	kfree(erased_page);
 
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
