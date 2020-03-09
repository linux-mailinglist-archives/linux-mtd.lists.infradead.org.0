Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F5C17DF1F
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 12:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v/r1oByQcZcWCnOqSosJ59uIOVT3Mui/z7DZ69ECe8o=; b=oMCFneY1PxSZNlpp/uF5LZA/Ye
	8HtAnMt9HVfSx4tUI8Q4mmfcZTwwo6/71ncJm2zqeOHGqC+Src5VtkXGSEVXZC5L/DLlwtnWjRPpO
	m3SGgm07zQR+YAuwyseWbXC9tOPcLAoujLVQuLZCedsqXIxvgSdQ6QAjVBgkF5qm5bBKgWQRES3hX
	l3J/DI409G0B6IvpP/gbpILTwzxROrdvOzZhhMIkqUL84nxH/AdNgCouzEK2zQjSzgNyRB0FyHHOf
	+rF9tNuqnn43zjUKsT/yA6oAD5GD/eUZcGcDclFvO5UGEa3zJPvl3XkCsTa45t2RHmPobLS5Ztssi
	KrJHIt+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH15-0007uP-Af; Mon, 09 Mar 2020 11:56:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH0U-0007SY-3W
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 11:55:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id p2so9893759wrw.7
 for <linux-mtd@lists.infradead.org>; Mon, 09 Mar 2020 04:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wl7h7MB0G2BXUvEqAv+8JB5mpSUGz57zUw9UrFnUC+Q=;
 b=QAI8LH89pXw1rDMEbEXXEcRXUEImMLQVXZY1W0zBN20emFSI2ilsE7szWqbgadPbFF
 zZ7o4ceBNEq7fm/z6JCd0ZEtNMfI/0SpWxRODezMGMZuD2/eLZTDLMCtGcYiLBrWT4sQ
 EZNO4yevAAKLj7kOk7igoenaPub6zzspcU/bnS1yfXucqYY/PZ3GCoE5zWML3QbdpTwV
 ezH3zT3oi0kz8xRZ2XtzwylCmOSM0mM6ewTWjvXCixLEkjgeFwT5NlRTy8AA2NKBlvxe
 YJwd4HeirCatJpAF1tO6x8KP80XrYmZ/SwYVnmo+ZSeosUlgD8xnF6UtNxu4zpLANq39
 aIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wl7h7MB0G2BXUvEqAv+8JB5mpSUGz57zUw9UrFnUC+Q=;
 b=uX66L+RNZ/YfVrNxQUSuDwvVywILqQ9vgXNdjJcFiZoa4IyITNQe2ShMOUOt6JAzjG
 Bin/Wyem/1rdkW5KD0JDSPs+Blc6hrm2wueorI5hkWTzLBZIX1+Avv9i6A7sLXuB3Wfq
 z9oLMdvEPKzFs1hm0pjHRgtjSM5/JFYRoLuDzgQlcwYLPruxUps78TwdE6rK2aIR7BKE
 aVKgAwXWtZGIEe3NM7Ump+qRUNF1gmlRW7moi6HqjzSxk+yzhfvCPY318IkSbP9koauL
 YJ4K2+WjG4vWWxHMmMu8HEuQPjbjzXrVr9wg6ZyYvrRxWZjT1yt67PZH45h0RJsEurcC
 IoTg==
X-Gm-Message-State: ANhLgQ3T7yLPJ6YovyAFLvbI1A8KaJf19wVKeLJFYcldC9j3jtiNFNOy
 DcNQgWHyVgSX2cC4CwAZZps=
X-Google-Smtp-Source: ADFU+vskomjONPUto2Y90h1MwspfEtgonwvN9Uo7fg/xvCJd2O7UYZYYu7VoXJhLP+apOx0VDVmbRw==
X-Received: by 2002:a5d:5681:: with SMTP id f1mr8425237wrv.137.1583754936503; 
 Mon, 09 Mar 2020 04:55:36 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m21sm25035226wmi.27.2020.03.09.04.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 04:55:35 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/6] mtd: spinand: micron: Describe the SPI NAND device
 MT29F2G01ABAGD
Date: Mon,  9 Mar 2020 12:52:26 +0100
Message-Id: <20200309115230.7207-3-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309115230.7207-1-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045538_146238_0EFFD243 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

Add the SPI NAND device MT29F2G01ABAGD series number, size and voltage
details as a comment.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index c028d0d7e236..e4aeafc56f4e 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct spinand_device *spinand,
 }
 
 static const struct spinand_info micron_spinand_table[] = {
+	/* M79A 2Gb 3.3V */
 	SPINAND_INFO("MT29F2G01ABAGD", 0x24,
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
 		     NAND_ECCREQ(8, 512),
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
