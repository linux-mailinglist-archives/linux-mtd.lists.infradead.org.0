Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B2F11B81
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 16:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWyAfF+ARACNCNglXLQZFObMilSOE+gUwD02cNO7xzE=; b=P1NDwXRnZAoWlc
	L4N18Df42q58+uBSrfEY3a2X/Qn6J3tTOifRb4/puxAhGCneSNi8OafXiweUUcctMKnDtlRdARP2b
	0QxMBERbsKpKtnUKqywXfHN9Oh9kEqcNwc7dV12mKWUdssUbX4ZnxDfSvYo9q+iYaYAhLJJhegJPw
	MZtQRnd/tkmfSzld82682V6/5anhrzwarDzRTtzQ2TrCc1JycaQqw7r3SAcABTZD36yLUdVD58bRs
	M4oahbmtVOgkOji3mmn17LjEJapirZjTCXIBOvrUGUcjJ7EIZ1U+AXehCC+jXwUvJDwV+PydJFjVw
	5D+kDKOD9NOhQBVr3FKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCmC-0001H6-Bq; Thu, 02 May 2019 14:33:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCln-0000tA-Ht
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 14:33:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id v1so2060364lfg.5
 for <linux-mtd@lists.infradead.org>; Thu, 02 May 2019 07:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gewc66hFqAnao5dd8IKaoQ3SMy6KoSmYwlwea0wjupY=;
 b=SXUDLULiWdxE0S3I9fVX/PmlB772WLAgbkjKLXjiC/sBWUhpfclGdXt89Vl1ptM0Iw
 9it1U0ddZ6+dxphHai+eIN/YT/OUwII18qI6GL3Kbw91cLm+aewWGQSZUUu5ekSRPzLw
 sA+KL2iKt7qN3vr73/KFhJ+S4EmJ5prhKKrYVXGFpb2DtFlS7a1dcPEUW1+/uNpT6vf0
 W/PZ7vmo0n06TMYLblC6cXBVPYglQTQADRQ2g5mCHykf8d5f1y1kwq30boWSxSms2elx
 iGd5iRZh/IJdFxaE0RSmRYNevAEEbFyCRn6jzQVmyNoz+Xt0pwdOYlpC4k6t5cLjYFsw
 Y3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gewc66hFqAnao5dd8IKaoQ3SMy6KoSmYwlwea0wjupY=;
 b=BKS6aNNRH155XRJs4QI0oECYUdHwuA2rUke1LFyuYKP0eTx/J03MXHj8vzp7dER+bK
 p5gvz+sDZgFqO4GtcGDjKd2zcwMVggtejimk53NF4jPxYUYAMz1+IpjxEXymBDt8PoBc
 jQGKgzZH7O8xlgAHJQxWdokuVKz+NWZudBptJ5/VU+QQER18B4i2CHrpF3SPRaGvurNI
 4hyUx7cNtaxJk15jMqETSaENKaYwLfotpxJZ4nFzU5csynnVF4V3hvHM0NxQLHcEC5C0
 S6qML2B+L5KEk30+Vj+ub5NGsQpYBllUO11JZ5kZ3dNzjUGHjYmuobFc0cNyQwiKeEze
 V+yw==
X-Gm-Message-State: APjAAAX9QJ8bJxX1r1KZxILPWBqtHaSiyPVqzOIn+bMqbPtJeQXftYpQ
 Mz7DsMD6vl6JuYRuhdK3WqtLQw==
X-Google-Smtp-Source: APXvYqxwml6B1o8TeE+T0leAFxwqT3J1PbHjxw2GP0YVF1mMJxY+ssvaGY3vSytMWDxh+DH3uj7THQ==
X-Received: by 2002:a19:a417:: with SMTP id q23mr2174757lfc.110.1556807585462; 
 Thu, 02 May 2019 07:33:05 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id l79sm9430625lfe.92.2019.05.02.07.33.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 07:33:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 3/9 RESEND 2] mtd: partitions: Add OF support to AFS partitions
Date: Thu,  2 May 2019 16:30:28 +0200
Message-Id: <20190502143034.16781-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502143034.16781-1-linus.walleij@linaro.org>
References: <20190502143034.16781-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_073308_117523_13ADDCD2 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This adds device tree support for AFS partitioning.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/mtd/parsers/afs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mtd/parsers/afs.c b/drivers/mtd/parsers/afs.c
index d61b7edfc938..3679e1d22595 100644
--- a/drivers/mtd/parsers/afs.c
+++ b/drivers/mtd/parsers/afs.c
@@ -255,9 +255,16 @@ static int parse_afs_partitions(struct mtd_info *mtd,
 	return idx ? idx : ret;
 }
 
+static const struct of_device_id mtd_parser_afs_of_match_table[] = {
+	{ .compatible = "arm,arm-firmware-suite" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mtd_parser_afs_of_match_table);
+
 static struct mtd_part_parser afs_parser = {
 	.parse_fn = parse_afs_partitions,
 	.name = "afs",
+	.of_match_table = mtd_parser_afs_of_match_table,
 };
 module_mtd_part_parser(afs_parser);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
