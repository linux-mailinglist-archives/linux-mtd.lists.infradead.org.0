Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6071F9C54
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 17:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+IIv2R4mSQzlJt0PPIUWz3+TrUhSMtloIPM1jhclSdM=; b=KFt
	Ug/IemrLA2bnivCDpbb1vEDDAsrqYT9f1RzqxA6e9tXzDt1qrb9hHgkCO/AcKe3YbtSBGHO6pnW9y
	rOKxHNl8E0PnpDj1KPuObVcBrFe1f6hEoUkqkdLREKS/UK2eNbQLbQZD7AjHSGfTJV7isP310MqNU
	jPJU3pd5ovEWNxdJzbAPUbm3YRAUXqBiKpi3L4tUBraEolbiiL9BB3WP+QI81AxX1sepAXYh75xBN
	KSR0cvkLY51N14FeBZlH6JXSWEXhLW0t/EyFQ0QJT7a3ZpBMGAwfPr55NGzIYVwUD0+6PKCYwP8hw
	xSWTpBLRWrr6SYNUHXFQpq7tlDXoOCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrPl-0000Zp-Ec; Mon, 15 Jun 2020 15:52:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrPe-0000Yu-Q1
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 15:52:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id d66so7992652pfd.6
 for <linux-mtd@lists.infradead.org>; Mon, 15 Jun 2020 08:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LDHKdOZuiHjwBF8MzXf4mUCeCAxqrzvnu0BpkW8c2/A=;
 b=D22WaNKyfpwiAppT1rpTwc2nkOKxkj+LseD69tnh617QcI87ziRuuj1J2n0n7UGW56
 GejOTMaUeICzHB8zdGaeK4wYrOVxwSgz8DUs/MDtvV/vZZjqnEg8n2bi/RzyA43XyllT
 DzLAphx3ihjWpLBI/cM79a+WXWN0Wtp8n4U5+tVzp0iE8fcqfz+ERvP1W12O9piwhSE1
 vojtdOOvH/6cslx/7hxCV38TdpmVieZX935BN7xbovOBP6Qo913OX33qOF/5rvJp9ksz
 HZdvw+gCK6zcFdpgVxYlpiNNLMZLKrEIsNE359W5h/LQgfKG7Ddlfe2PK8Bnigh561S9
 kQyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LDHKdOZuiHjwBF8MzXf4mUCeCAxqrzvnu0BpkW8c2/A=;
 b=sAqqKzG93R8mxwgHIQ4sRdkRIU1hDUZDdikCeRMQPNBd8zIjwa18+4iHrWLWWrgPG9
 Lnih79bpaqPD3UOeKSx4S/gIcNIWVH4JQJmJFJ/HmpV6eupukl+Awm4qtRe3Ca9rwrLj
 EGEuhfS2cJpXVPjoJCXaYWhGFmAlUiWAeA/V+hr/aIpU7hjo/V1mJKZWEOAerUfjXE4Q
 ILv4uLum+oxoexdABZku09SFWnCDKsu4g8RmEveqqcGJbDuL6aYdoYSuCB5eNLYZCit2
 X1fn5spzXoTmaKOiwysuWW8kR4GylBJoUju3wkjmqux2K04TfERLzhtrMnXpFgQsJryU
 Drgg==
X-Gm-Message-State: AOAM533d+YcdDMtIwdKcTQwZuQyYTh6ZZgnLd87WfxWSIc+YhdX7WHb/
 2sEKuRwDEecDexejpTy1UF8=
X-Google-Smtp-Source: ABdhPJzprVyOh1KvX42FIMxyj8jg/sBLjwI2ds3N275fc0gWEeY9avgnUYQstck4eEI5Mn+th7QXmw==
X-Received: by 2002:a65:6715:: with SMTP id u21mr22749853pgf.365.1592236362124; 
 Mon, 15 Jun 2020 08:52:42 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s30sm9394387pgn.34.2020.06.15.08.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:52:41 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>
Subject: [PATCH v2] mtd: set master partition panic write flag
Date: Mon, 15 Jun 2020 11:51:34 -0400
Message-Id: <20200615155134.32007-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_085242_839181_52A9E311 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Check and set master panic write flag so that low level drivers
can use it to take required action to ensure oops data gets written
to assigned mtdoops device partition.

Fixes: 9f897bfdd89f ("mtd: Add flag to indicate panic_write")
Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/mtdcore.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index b47691e1b81c..6efca96dc110 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -1235,8 +1235,8 @@ int mtd_panic_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 		return -EROFS;
 	if (!len)
 		return 0;
-	if (!mtd->oops_panic_write)
-		mtd->oops_panic_write = true;
+	if (!master->oops_panic_write)
+		master->oops_panic_write = true;
 
 	return master->_panic_write(master, mtd_get_master_ofs(mtd, to), len,
 				    retlen, buf);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
