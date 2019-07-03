Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941CA5ED77
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jul 2019 22:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ck/f6GVOaKQF33FwtcnZ3Sb97Z/J8YByho8i9w03wEs=; b=CON9LqNzx7VOdmK3wWjOJ7irNB
	8xICS/rOOFhvK5YQw7MamM+eSMvpmNu8GNtVH3KarM22dC8M4i2MTEoY01UBoM/rTINbO4QZDB19q
	1Wpf1DiNmwruGd7uxoUlsSBdtW/QcOPe/5K/IW1zXj04FqsQhtYuzl6NRxjOBFHb6lkgakw6PiPFB
	BbFd/zZhCjCITIUf5DofjnvypQMQh1WO/pEkH7sgy5nETszqkQF8+xHcnC9F/yRpTh0K9N9biykrW
	GKUf+G0In8/7UrkJbBv+J10H6QMvYlwLeZmdt+4jG1f7A7uoqTudnPk/fNJcfoTNa40xnpft6o0OP
	1CzcA0pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilpz-0003Lc-Cj; Wed, 03 Jul 2019 20:26:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilpq-0003L1-0F
 for linux-mtd@lists.infradead.org; Wed, 03 Jul 2019 20:26:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so3840322ljg.5
 for <linux-mtd@lists.infradead.org>; Wed, 03 Jul 2019 13:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:references:organization:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6hQ+uUcGqnCXzeWn29NAX4RHmZEnXUshUGoOylXm658=;
 b=kTxPig08Hk+pfVeDnFHKdy2x275jOPm9iDv9V3AF8Sx+gOmQMEDqA70lDw97sPgooG
 zBZTGNe0A4sRGEspbclWH64vrc+VZc+xLtIBpUG7fDemSefcu/YqbwAJQA2yPLzQ8RBJ
 nd2PEQ4pgu7yPROD89xNymUB4DBavdngvXFlRtfenyFF2xfcSXr0WlEs0iUIGsRZ8+mS
 4v0WzU45yhIkOkKwY61EvzfDuNwx837swKBswLjFYjYSvjuS9EZIZA3mehfIlI18SDs7
 Mppm0Tyn1JT6HeNvn3r6Y+jNP0sG/oyEAuzEbFAD/w8QhHYKPGuGNLP7ByVx/wVZ6lkC
 0hyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6hQ+uUcGqnCXzeWn29NAX4RHmZEnXUshUGoOylXm658=;
 b=YF2Q1d0gavemdLsY1Z7n4tuZUfN30AvEi0xjbAWc7Nx21UoxJ7WgcKWxBFmVDoDXIv
 tcjAkoozNJmIgMqCpE1lPS0M8+0GawWfBpH3poIR0YJYcHz8nkXhFjZLatR19dTc8zx0
 P/T8BzD5WcZjLp0DEbPaGN6bg9n4yRdOKxY8J4qinadBA2IDkSYivUQTx7MOM2Gf2Y+h
 v5x3CSdln0oiEn7tI1RzK8VDQ2Zi7sSMis23Md6iZ059HZXVr7NPvd+TUhj+iXP1L/np
 TxbmaHKx+HJqbpnn1Ii1W68n8mrp5GmqkjeNrpRGVmZ4O02Y4a9Upmwt/Gh9gfFDhnz0
 qpwA==
X-Gm-Message-State: APjAAAUVgCiY2F67ELWi3/K/++V8ivVXQaaB9ONwECflFvyyE9kkINle
 Cqp8s/jXzGKbamUPFAGLlOY3aQ==
X-Google-Smtp-Source: APXvYqzbHfkJ1wjWnXJZnhk0r0T7j2oDhh0oBs2ulp6cheT2DpLR5JLk2SwcETOPJYPSsAb6tAiHnA==
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr22721857lji.139.1562185589458; 
 Wed, 03 Jul 2019 13:26:29 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4463:651e:e5a9:49e2:7053:81e9])
 by smtp.gmail.com with ESMTPSA id w1sm749397ljm.81.2019.07.03.13.26.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 13:26:28 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH] mtd: chips: gen_probe: kill useless initializer in
 mtd_do_chip_probe()
To: Marek Vasut <marek.vasut@gmail.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <e17f9477-19b4-0572-9df6-86a06695111a@cogentembedded.com>
Date: Wed, 3 Jul 2019 23:26:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_132634_185737_EF2263D4 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The 'mtd' local variable is initialized but this value is never used,
thus kill that initializer.

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
Thi patch is atop of the 'mtd/next' branch of the MTD 'linux.git' repo.

 drivers/mtd/chips/gen_probe.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: linux/drivers/mtd/chips/gen_probe.c
===================================================================
--- linux.orig/drivers/mtd/chips/gen_probe.c
+++ linux/drivers/mtd/chips/gen_probe.c
@@ -20,7 +20,7 @@ static int genprobe_new_chip(struct map_
 
 struct mtd_info *mtd_do_chip_probe(struct map_info *map, struct chip_probe *cp)
 {
-	struct mtd_info *mtd = NULL;
+	struct mtd_info *mtd;
 	struct cfi_private *cfi;
 
 	/* First probe the map to see if we have CFI stuff there. */

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
