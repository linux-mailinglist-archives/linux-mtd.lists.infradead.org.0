Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E964145E22
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 22:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4yBBFxleoQF9ZA1Kb+pjS8w7A0AjgCeab5h4FzX8Tkc=; b=ooN
	kWoyYkoA9ie2W+NA5UlLEng3J0MY2y/SjoSOFyaIkcnwmpPkkUdkNyR+A/tKUeguuaoEkfNo0ru+S
	782DMe/tM38ccpqnhmOxdWrCSjr+zswulWtyTfoCsV2NkmtW3cwVi1Mn9Bp3y40NdUSt0ItFwHoiK
	klmAmO3oVyNe/hJNrAED1ohwIpysJ6sjbZrjKfTuRc1+xDGAUYDE32znvtaL8FZEwHZik6RKAlR9V
	IBtvbImsmf5K3E7dA4FqrH3T88dHDiIusErTSLRhPWxpWbxXcwCzk+ls8+AuANO0tdndypTDmn59Q
	zE4BO7exD5P5bvWBVP5a/qckvxwgrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuNdR-0004zb-CE; Wed, 22 Jan 2020 21:34:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuNdG-0004zH-5H
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 21:33:51 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so283691wmb.0
 for <linux-mtd@lists.infradead.org>; Wed, 22 Jan 2020 13:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OTrm6LuWBv0/YMwbvKMuzQhWw/6VZQ9ZG3P7VHtMSIM=;
 b=c8tRf39ItktteljlT7FffnkYsvYDcI3IWBP5NTaHeuHGtVSiq0+WtrLuXXwhJ7XO+/
 XrTJS1n2lXBbVf3mqnyU384R7EQ+EEIutQ3xW3jJl5CtSJymUsYpZLwpoA6hg3xcR+7k
 Oiuhc6IlsNrPcXI3E2M2agxAL0pINtAxE+/YR+RqvFQ4m8jJxCuMyV4nI1F2dM9OGMGl
 TZoS/oh/TluL+ktbijLrQUIpv6qoH5xo9fxvPXH/tsaeTWTm/GP3PrnNaEj6Xrk2LGb6
 9FMrjVgKibs/aepnfx2PXy4k1a9c8QsDoFk+gZhis52So9b42QrMAGu6Js9SgmXxHbOg
 kB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OTrm6LuWBv0/YMwbvKMuzQhWw/6VZQ9ZG3P7VHtMSIM=;
 b=hQEf35XZ0fSkV8G9snBVRdU4GT143T3+JaDA+MBAWXbEoQGSt++obvNkhaid/Lpagd
 qPjARK0bJerF0RtRJRDFA3zI0HDkDeldq9vhZk3YtTl/EySo3E5kPFgBgerXGUHYgpfa
 u22SvqRB2lQVT3U3GMF7JVitzDVlr+8O2Mi2ybP7zSUF9L8wGgG6Q7JYShrjeZk8znIV
 t0l1l/dJkqAuHyomNYCivK9qvJSQTnd8dUbRUM6mZedSEwnpcaIE7YJ1h8XmEMf09Jl8
 40phcPDNRDkY1cJpmFn/FSe+8utw+0/Rk6UOqen5Yus3ne3+Us8Q4QSHUQzlKKX2pZO4
 X2fg==
X-Gm-Message-State: APjAAAUfx1iCzYmfSRfNYpOCA38jbTtJHaK+nMwF6wjI06ktBq+DdS68
 jcZnR6zUbPUK4RDcsYJQNCU=
X-Google-Smtp-Source: APXvYqxiiA4W87BxO4EFj0stiKNv0mHUYQt1b7kZwMG05Ed7bQdYgKtENWWyzCRoWwH343smsudGbQ==
X-Received: by 2002:a1c:3906:: with SMTP id g6mr206005wma.49.1579728828617;
 Wed, 22 Jan 2020 13:33:48 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id w8sm6474630wmd.2.2020.01.22.13.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 13:33:48 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH V4 0/3] mtd: rawnand: brcmnand: Add support for flash-edu for
 dma transfers
Date: Wed, 22 Jan 2020 16:33:10 -0500
Message-Id: <20200122213313.35820-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_133350_226302_28E016A3 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 James Hogan <jhogan@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

V2 Changes:
Refactored drivers/mtd/nand/raw/brcmnand/brcmnand.c  based on initial review comments 

V3 Changes :
No change ignore this patch set 

V4 changes :
- Included cover letter to resend the patch set 
 .../devicetree/bindings/mtd/brcm,brcmnand.txt - Added Reviewed-by tag
 arch/mips/boot/dts/brcm/bcm7425.dtsi          - Added Reviwed-by, Acked-by tag
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      - refactored code based on V2 review changes 

Kamal Dasu (3):
  dt: bindings: brcmnand: Add support for flash-edu
  arch: mips: brcm: Add 7425 flash-edu support
  mtd: rawnand: brcmnand: Add support for flash-edu for dma transfers

 .../devicetree/bindings/mtd/brcm,brcmnand.txt |  10 +-
 arch/mips/boot/dts/brcm/bcm7425.dtsi          |   4 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      | 293 +++++++++++++++++-
 3 files changed, 294 insertions(+), 13 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
