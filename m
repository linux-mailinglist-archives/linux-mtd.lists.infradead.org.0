Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91947C0C93
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Sep 2019 22:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wmHI3fU0yU3oSZKdCZ8N2Y1bmwXDHjgzaVk59oTCt5Q=; b=BdsbGNO1uu90y0
	3cXdFZ9vDKjsNFoFx4Q86cvvuayRCf0YIZt8ZHvYT9M6L7eNGuaIumBzQEopUhIebWqaOahbOapZf
	Y4MYHO/C6iIcBZgjybWcBJ8wrzzHQ4scoRgEkY69TxO8/anmx5rtCUx/sQM17YkyAFL0GUe5tra6Z
	u21eE3IV46KE182wcxnU0FR3d6Hyp398K5DHmQCR/KVQJ46VYXylDpNBiplI+vKX2hmYAi20EMTwb
	E/p02GI94Dflk08Y4JhW50ijrD0JKgffQcPAzz1wq34wNNR+TphVF+4Al+QDp2nJ3TqC7yTnAxlhQ
	ri/DaaZibgntVenszeWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDwlH-0000Fj-Pq; Fri, 27 Sep 2019 20:22:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDwlA-0000FF-Ao
 for linux-mtd@lists.infradead.org; Fri, 27 Sep 2019 20:22:37 +0000
Received: by mail-lj1-x241.google.com with SMTP id n14so3684198ljj.10
 for <linux-mtd@lists.infradead.org>; Fri, 27 Sep 2019 13:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=QGgmN39I+pintmnnUfPbWaBNZ33ibn5Bj66b6tPEMNQ=;
 b=zakYlkNEYBjyYBSsN1ZwvxQ1drnoYLieGYoq4jGJuZkUl3Ifk7d4Cbjf97S2EQDigj
 /29Ps9nvdg7HXAHtx8wQ7jV+5zFkMQ57rJL9WWyozSM4KkOFwmY+fDst2zrFCZEF7Auz
 9gMvoTtZ/iCxQkRwWaq5VB0L8id3qjqVDL/j4eD/EC1Hx8GFtxfUDRNufOjv2E2r+EQF
 KjZatrXVJxO/gUODYCu5ssGBJPWbOHjnxcoqvKoixTo0lry1120ZqzjTPzqBuJeEG3Bj
 1YVWT573KjF74r7WBvRhVdftUg3a2+W/i/2qMotPvFlATaQQxXSyCCEgodF+vaKvoIGL
 gwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=QGgmN39I+pintmnnUfPbWaBNZ33ibn5Bj66b6tPEMNQ=;
 b=phlV7ZmaU38RZQ+gqASANZkzsxMoDfdTIDSDh/Kn46sifZW+vd9Fo5PcME+oWxz/Rb
 l7eSlWnyxZqmsJCrwRs8XitJii0ul0cB0RDkq0kD0Qp4148EEYIk6yr/70nipmMBB2D2
 B+/EYRUDcxmgJKGNaaKv+hLn+uIFmlZjmKfDkDx3y2TFznePOoO1b/4wItFi6aUURlh0
 ankDF7debka9FO2F0yQqdJhiuD63iAQSy/Od9f2xDsveKXsB7g/o/rDE38pTv1H57A9S
 1KkrLJ1WBnHGmbGgF0/7g4Cox5isQh56dPKgOtrWZle0A2KAt9v1F9jT5RFv41DSKhez
 UHiQ==
X-Gm-Message-State: APjAAAX3D2OpfPynahUio9MT9g9j/AC8WFGrLdd3FSvlTDOd3IxA2VtM
 wTs7O39gPvqEyOdikCIJ780mKnRldwM=
X-Google-Smtp-Source: APXvYqzP6FEDgSLlT2/tVOrSscwgyMBtrvJYRJT9EwIWBlmKhiYANlnUE6hXsWvel1LfkVlccU5/2Q==
X-Received: by 2002:a2e:878c:: with SMTP id n12mr4251363lji.175.1569615754545; 
 Fri, 27 Sep 2019 13:22:34 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:8df:57d9:464d:c6f1:f498:da95])
 by smtp.gmail.com with ESMTPSA id s7sm638668ljs.16.2019.09.27.13.22.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 13:22:33 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v2] mtd: cfi_util: use DIV_ROUND_UP() in cfi_udelay()
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Organization: Cogent Embedded
Message-ID: <9d73c7ba-b60c-c46e-21c6-b3201ba90625@cogentembedded.com>
Date: Fri, 27 Sep 2019 23:22:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_132236_373247_A55C0A99 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use DIV_ROUND_UP() in cfi_udelay() instead of open-coding it...

Doing this also helpfully gets rid of two complaints from
'scripts/checkpatch.pl --strict':

CHECK: spaces preferred around that '+' (ctx:VxV)
#29: FILE: drivers/mtd/chips/cfi_util.c:29:
+		msleep((us+999)/1000);
 		          ^

CHECK: spaces preferred around that '/' (ctx:VxV)
#29: FILE: drivers/mtd/chips/cfi_util.c:29:
+		msleep((us+999)/1000);
			       ^

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
This patch is atop of the 'mtd/next' branch of the MTD 'linux.git' repo.

Changes in version 2:
- rewrote the patch description.

 drivers/mtd/chips/cfi_util.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: linux/drivers/mtd/chips/cfi_util.c
===================================================================
--- linux.orig/drivers/mtd/chips/cfi_util.c
+++ linux/drivers/mtd/chips/cfi_util.c
@@ -26,7 +26,7 @@
 void cfi_udelay(int us)
 {
 	if (us >= 1000) {
-		msleep((us+999)/1000);
+		msleep(DIV_ROUND_UP(us, 1000));
 	} else {
 		udelay(us);
 		cond_resched();

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
