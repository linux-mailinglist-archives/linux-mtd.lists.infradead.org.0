Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AD8240DB
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 21:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rjV2di1YzZwUFPG+LZC9HMc+6ltKstAU6s9E1S++t3A=; b=bbg
	Pv0caCt5WJP5VbDLAIsKOEmGrSMLF3HILrWcWaLnYLJ5rxj+Alk8Gjv9DH03/MCOkjIyMwMlxYxss
	lnahzKX6dYZ6Em8F23gDqHhrcRLwgCiIITSbpbjeghW/VYWp/VRnLRX8QmtRRyCIKdDLNYu9laNe+
	RqlmJcXNrgdpfwqUkuMyXU/e+izSDZZRl5mG5ZPMfYztEYK5PYSh6xzaBMwaplqphO9U3XFxoM2/u
	JBDEs/C2dNfOL7fhtK4Q9ZH6gYKFKkTq68IqLwAi+YF85C/hebGsTb6TZyeTiRML+7uARKtohPZzB
	pI9c3A8pHoNaYChTnd8OtWgbOf5MfuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnbv-0004da-Ad; Mon, 20 May 2019 19:06:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnbn-0004dC-AY
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 19:06:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id f37so25355735edb.13
 for <linux-mtd@lists.infradead.org>; Mon, 20 May 2019 12:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QLcESIrpuKvmGLuYzNttnrvxoFbU5Wzb2EEq5RaQWcI=;
 b=bvEQWMOcSw18XS8JoBz0bG4i2ezv+hVW585GGY5YJPSTvmuCLYqn1fNBPYsb8Ymg4B
 NhpnWTr2rwIvjX0dw1cwM408YbXHiQVGgwh8XbKzbd3prPdn4OQhGfNSeBB5GnR/F3XT
 64vcExWjTl5djcEgJWho45n+pRl4xeVRK580K6LPTelNw/5aac4JLR2kiUTdGb6wWot8
 139YRlWWFt8Jg9ySuN8k99GoOKa1SvtYa+MCgMC+9nlfIaCnS9sjFQgdxgEJiQoI8OSp
 RfiJfH8HZlSqKLfBa+1AiZn+cvrErjtV98LAqy62N580ls1EbNj6xgc5PUOBPrxm79ar
 yn6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QLcESIrpuKvmGLuYzNttnrvxoFbU5Wzb2EEq5RaQWcI=;
 b=N4GLKpf0Nw+XKY9SIWMYy6xZgItA/ys0jr0ESHMEgiHnQonlTGauz6LoZcux8JJgQy
 3Qfauc9/KfmDGZS9BCV8VhsG3DguMAXRy3kqFrZlE+BepsIvYueRymyIxOB/yagt0F2Y
 QyuXb6jrPtk7rR3aMmNUT2VlUirGRROz6zJek05T+nK6E1sQJVBwVRpBYRiR+jGfz54G
 5wMvKwzsoBX6lH1eMUQF8Mes+DXGDqG3iEpsynOFbn5H0hD+6qsNwEer1KEYqrv9Gu2+
 JPcgZSmIfn4vnFWMftz29fdAJLTyMvf8A6kJ7TilnktdYRjXPxHFRzxWT7TYhRgDgDyW
 +k+Q==
X-Gm-Message-State: APjAAAX+YwJPkR8WsXE39kyoB59dvru/FwDp13xXCPsGxmhfuJp4ZGNR
 49Ftzdno9jupvEhnUqNF4d4zqfud
X-Google-Smtp-Source: APXvYqy1cvBYRYvUUPBq3x7QnOhRgMyNfx+sQ7tJyAHNBw0AcvHwtSZToEfucyN4dWcRcWP70hRsnA==
X-Received: by 2002:a50:b487:: with SMTP id w7mr79029009edd.45.1558379161539; 
 Mon, 20 May 2019 12:06:01 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id 11sm3201967ejv.64.2019.05.20.12.05.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:06:00 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: mtd: brcmnand: Make nand-ecc-strength and
 nand-ecc-step-size optional
Date: Mon, 20 May 2019 15:05:11 -0400
Message-Id: <1558379144-28283-1-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_120603_529560_4A33731F 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

nand-ecc-strength and nand-ecc-step-size can be made optional as
brcmnand driver can support using raw NAND layer detected values.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
index bcda1df..29feaba 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
@@ -101,10 +101,10 @@ Required properties:
                               number (e.g., 0, 1, 2, etc.)
 - #address-cells            : see partition.txt
 - #size-cells               : see partition.txt
-- nand-ecc-strength         : see nand.txt
-- nand-ecc-step-size        : must be 512 or 1024. See nand.txt
 
 Optional properties:
+- nand-ecc-strength         : see nand.txt
+- nand-ecc-step-size        : must be 512 or 1024. See nand.txt
 - nand-on-flash-bbt         : boolean, to enable the on-flash BBT for this
                               chip-select. See nand.txt
 - brcm,nand-oob-sector-size : integer, to denote the spare area sector size
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
