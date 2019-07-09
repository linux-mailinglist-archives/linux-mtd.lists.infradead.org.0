Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760C5639FD
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 19:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7KSkGpbZtcXZhbcvuN2tM92Dn4tGuJmy72RXa8c6N3A=; b=NdDGJwBE7itZNs
	qXhTdNbYTpSi4e9r10caxeaNRR/2TSu7byKI4bYSZ2df9x88GTE6qbHgaZllxD1U9iAa0n2IDcF8h
	CI0bQmXVOI/OdIs3tvsHmHKo1pWstKtJxM8gnnQW2Fxo0L6p1Hmy+4UP5dQsd+PXwSxIe6IYoMCmw
	mcn/gNNjYH1xiiyArlFAdAKWOCnTkTRx42ckX4n3XgmAQlOnWwd+yR8cmfR0GhynH6k7n2hLzieW2
	yLCazVagVzTHlzqOcHzRvgIIE5MuJZa6mzekSq1Nsn+BqsGDgdlbdqKrpFESJqNWJBQcXkormS/0f
	F2VA+kcSu5ZakjHjzffQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktgR-0007pb-R5; Tue, 09 Jul 2019 17:13:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktgI-0007pG-MH
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 17:13:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so9604018pfg.10
 for <linux-mtd@lists.infradead.org>; Tue, 09 Jul 2019 10:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F4Or0QI3KQHA4FNPnx+FhFQadfE2t1lVdUx9VnhTbKs=;
 b=YbDheObonDQ22dhlbThY2fHOa1Th8cLIfc+GaAfjoyIq9TfqHPSlEI1PfrTGeegEck
 zWr22EllgiHjL0DDeZRUYAZRI538W3NM5MPCQMZqAS9M9UNoB/nxxMNGxjGldJvvISFh
 Vvs/dXSP+kiPskSPXEgUbkH/MpLvkY156IHtVJsF3S4Z98x2S4fuoQeuXBOJxQFRkcOX
 IBgDrHPPjGEKoZtg97sm+SEYtoIU7BrEQvSsTraFCNYQwlJMx4uRNfGJgBBvSJ6NuFT5
 VIgxCowsaxBBLgvQfhdD/TymNU3D7LPw0JJFRYXC3hZnXLVnpqMiUFZeyW7c0tQqRBPl
 B41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F4Or0QI3KQHA4FNPnx+FhFQadfE2t1lVdUx9VnhTbKs=;
 b=UP2n71lnuKwtULRYLumIiIqC1FQNO/eQAi/S4toRxiNrmobnETSPPpUzUOFd+ubHHe
 4ICvdDe0UVktqRALvicVAnZG1v/V+Ki1i2CKD0lNB/ayxNOXVYhaFeeNu6YMSj1qK5t1
 G9Y5doJYyIfOnblWdkV1gH4t4tkRoQYKhK90atKrMKaXvobttKvpemUH/u/xa7MM0xog
 CPMc/i5TMwh/WNRE+0Lw8RGws67OUuTPNQYsXjX75ZFv5PKJG0yZ8iIKZFNg2p+keX1C
 eiuSsKa0/yDQnllK2lcCKE2Mx83hvy369m8GIlERGMa3mIlUvafcCMYmng+mg8m06Yt3
 /biA==
X-Gm-Message-State: APjAAAWgAwXxby9qdui21/eniZCgommOYGHOXz2JClleUsdd7G6hwn7I
 bVQwASEG6H4JvIrIGu2OFvs=
X-Google-Smtp-Source: APXvYqxPEnr9OUa2Ph/eh0Z70v+ZgddeTvSSZW6TdIVakJeeZv5JxWZJDOHMPI6H/mjgehPAZz6jeg==
X-Received: by 2002:a63:221f:: with SMTP id i31mr32607941pgi.251.1562692410228; 
 Tue, 09 Jul 2019 10:13:30 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id q69sm7358054pjb.0.2019.07.09.10.13.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:13:29 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, marc.w.gonzalez@free.fr, mans@mansr.com
Subject: [PATCH] mtd: rawnand: tango: Add of_node_put() before return
Date: Tue,  9 Jul 2019 22:43:16 +0530
Message-Id: <20190709171316.13451-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_101330_730879_0F2C5195 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/mtd/nand/raw/tango_nand.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index b3f2cabcc7c0..9acf2de37ee0 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -659,6 +659,7 @@ static int tango_nand_probe(struct platform_device *pdev)
 		err = chip_init(&pdev->dev, np);
 		if (err) {
 			tango_nand_remove(pdev);
+			of_node_put(np);
 			return err;
 		}
 	}
-- 
2.19.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
