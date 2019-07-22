Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836956F94A
	for <lists+linux-mtd@lfdr.de>; Mon, 22 Jul 2019 08:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuUDmboQOrRHeyJGd4FuhKJGc710IgcCKz3jNU5sSN4=; b=OpSxCYRlxA5/k2
	CVQfXVJ03ExWQT9pQYQHj8xwxn5EXgcn1B8s8YSRHYRicZlrrWJEUwr0mkTS4D3Acq2un+bAleORr
	FEcrH7xMsU9fpCKbbsL427Fj6vRzhDKdjR8un8oz+fCKN41cPhTGAnf/0A+agTFd++fp+6f9dpr8+
	xVU5Y0o0gf/enaVmAOGDtCVrBDJc63UemYnNKqOSkKQxkSPJ6XBDgUm3UsL8c8IgNE4dv/lDchKVC
	jFl8UBNAc0fltnrVhcWjf6xLcIC7HsApNLHQ3BuDQc9sjjTqsf2SIRXN3MNrfi0U/drKOD93DEbmQ
	hVzGq5yIyg6WK/etwNaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRPU-00036W-6c; Mon, 22 Jul 2019 06:02:56 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRK1-0006Gq-C2
 for linux-mtd@lists.infradead.org; Mon, 22 Jul 2019 05:57:18 +0000
Received: by mail-ed1-x542.google.com with SMTP id e3so39499348edr.10
 for <linux-mtd@lists.infradead.org>; Sun, 21 Jul 2019 22:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=JWav04oSOMMfjnrIfRfnbnhq134i7LRODNuQ+JDA4d8=;
 b=iAeg5YAbgEc4aYUgaNNECEsRpX+e9jc1I5YBQtLvCy5UcbJE62lDIR8qMw5Uo0URLB
 OR5S1U843vWDtFQk2NDReGy4Qxb7N98CbYzYs19BsFtoqLD5DWV07b8V1JPSFcBXbjyW
 HWYtON8kw3CBY7KNYNNyGUBHFOA2grIb+ldo42JgaM/4i3ZcSJ6dGqY8b5ov1FKoVBoE
 u87X+cv6T+p3shg/9BvIHVmZMWjV6L+fwDaG0iRgxd82oLNaJqJYY0HpMvnJNy+GF4+3
 1xdSCLtQ22Jf1yyhsfFqpq9MU4Nvy6SLNJPh91tNdAwCOX3JwyfS85HihQlxDN91dRgF
 e32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=JWav04oSOMMfjnrIfRfnbnhq134i7LRODNuQ+JDA4d8=;
 b=F6cDVadVcRi2GHilnt4doTglaoj/AUJ/23qcO04wCruI5NlMFsJjMbVnWGUjDNRRRd
 DPhVw0lPaOmD4L/UDAF4lLZxKNSLqzYIepvfjGMlv1Q+yMwkFux1Cn2F3Wnt3TgMJ1a+
 EjN2CA2VmL3zKTszUrgO1YZVzpmktqSQiW57KL3GDep3TXY0aEdbx6SD5k9PLXgKYWMZ
 cEWFj3XwE7fen0HiViMiteFT4eZWTgEVdr8lBIeu/bhXUky75plHSSvZZQpepY0rfJmq
 Dq5bCf/neEpa7M2qRI4V8qbzhkYcXAXoPoX5YM5Ax13B4lALZiqtnnxfm8BE3LLJPEvt
 /Xgg==
X-Gm-Message-State: APjAAAVkUtOpvSVlcmco3zBAUAWidkDOURkfpn88bsU0CFqd4e3WlD+E
 Vo+zIbbfGyJNKabthCkDgr8=
X-Google-Smtp-Source: APXvYqzUeEvZzXubeuDVswHFU5kKDVfDWDqDmcg24fW79naD2l793eQa7IXung57mhGRdtZ8MAtoew==
X-Received: by 2002:a50:89b4:: with SMTP id g49mr58295914edg.39.1563775036035; 
 Sun, 21 Jul 2019 22:57:16 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id a6sm10351725eds.19.2019.07.21.22.57.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 22:57:15 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Shivamurthy Shastri <sshivamurthy@micron.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jeff Kletsky <git-commits@allycomm.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: [PATCH 8/8] mtd: spinand: micron: Enable micron flashes with multi-die
Date: Mon, 22 Jul 2019 07:56:21 +0200
Message-Id: <20190722055621.23526-9-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722055621.23526-1-sshivamurthy@micron.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225717_549043_82343D06 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shiva.linuxworks[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

Some of the Micron flashes has multi-die, and need to select the die
each time while accessing it.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 1e28ea3d1362..fa2b43caf39d 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -90,6 +90,19 @@ static int micron_ecc_get_status(struct spinand_device *spinand,
 	return -EINVAL;
 }
 
+static int micron_select_target(struct spinand_device *spinand,
+				unsigned int target)
+{
+	struct spi_mem_op op = SPINAND_SET_FEATURE_OP(0xd0,
+						      spinand->scratchbuf);
+
+	if (target == 1)
+		target = 0x40;
+
+	*spinand->scratchbuf = target;
+	return spi_mem_exec_op(spinand->spimem, &op);
+}
+
 static int micron_spinand_detect(struct spinand_device *spinand)
 {
 	const struct spi_mem_op *op;
@@ -105,6 +118,7 @@ static int micron_spinand_detect(struct spinand_device *spinand)
 	spinand->flags = 0;
 	spinand->eccinfo.get_status = micron_ecc_get_status;
 	spinand->eccinfo.ooblayout = &micron_ooblayout_ops;
+	spinand->select_target = micron_select_target;
 
 	op = spinand_select_op_variant(spinand,
 				       &read_cache_variants);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
