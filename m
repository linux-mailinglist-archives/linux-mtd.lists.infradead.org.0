Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0033172FE2
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 05:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oo5RCPuEJEUQRpGDB6IgRirPvV0GcEywMleZPDwvrTY=; b=RjlEye17mZDPBc
	KLBYvAB4kBT8EQo67/93Dp+ukrOU1rZnxfQ1kp9ZpVChg3gNKDOgay2woSh98uxbvrhUH2ngV6xfB
	+siydIk8H1Xpoz5HVnZMair7F7m6qZzXSdIYKFj41YlQ5CNmAPfIxCGGfplRDRUbhd1rIfWNZCqNd
	VBf6Hk6UST63XsEnEp1Uv/xzP35BhHbrs9NgweYVvQv6QiOZ2sqU9/KdFhDLssXBw4wFauoxd3H6w
	qbITEYss4/4sdy9DlkcoBKg+O1Pq/QV85f2aMBXQYn1CnLN3SMqvmwuiiQFJ6wuT9wYfjk/3wt3k8
	gFgNKzghzp2wziEn6T4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XQ5-00005n-Vm; Fri, 28 Feb 2020 04:38:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7XPt-0008Vx-Kz; Fri, 28 Feb 2020 04:38:27 +0000
Received: by mail-pl1-x644.google.com with SMTP id j7so738707plt.1;
 Thu, 27 Feb 2020 20:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=srFQTDpYVngqG0eYKY8zeXeTxEow1+Q6Yy9to892+K8=;
 b=OGuISWEli9eLWMchX3FyKGExfAxWPgMbRqfnKQ71+WgTo0dAEu2wLJuIhrKoGocX7C
 NgR5sxtUyB2qc+ar05E0dailbAMsC/Kwdrk8MOBfQ4vYqgtPKQVDCZtupwPoBDBSJaHY
 5N3TV62amf+JgPDxaRZ8kRVzgFexamdDBZnLMUd4UHpeSeFtwRVdcFnfvP7jDC5JxKXB
 GprPn9waSFKdqTuaDbE50CEKUjlPN4vQKSkRzh1HrfX0oIkzMyIVOEFMVnYflBo8FWGe
 ldlX01IUa/AEq4++DIRco4fmEed+VmzvnXwDP4sNJG4uEuNpeZa3AdkdoTFZjyMu7OSo
 lYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=srFQTDpYVngqG0eYKY8zeXeTxEow1+Q6Yy9to892+K8=;
 b=hvZhZDM+/ATAXIcC5go1kyTFqfZOzWK3kBtIt5Vzh54NUd2oNLEHJYPvmi90GZe9lX
 5YKFTYqTcyenudYi5KXVcvL83AGUKWtvClTuCVRhgZdBViF6rUUjNN3nfFThc0QjX7Vo
 5iOZypwGCzprm8uvPJi/0HMkvTlAnAwVyMbPmk4CtzZ0NFaL2YvzUCuZSUFteUl2MB7F
 LHzeor+uXxxFctuZi0MDmyX6gyOgo7Lp3OIaVl9sJ+dbsCR8x7ih2KZU1f+ayOUnsRRC
 ct3cogeDp1SZW1IkG4NnvAMmzN5dOYWtIfivOsiez6spIx3j0LRZNLBdoFIx0qYEWgkt
 28pQ==
X-Gm-Message-State: APjAAAW6rwbbmp4Tdse6nzx1630fm51Q0o/U7jlZH+JbZhjpeLpFMKVa
 k4Jb2FgYCGtCQ6I9ozejIhRKbvrzJpa+TQ==
X-Google-Smtp-Source: APXvYqyvibBkO+TV6UPsBt0A3f9XT3QV3cG3heDfSZwLqQ1gjV5l3PPpcjCz6rPkJXCg+y5fzWLizA==
X-Received: by 2002:a17:90a:aa83:: with SMTP id l3mr2715072pjq.5.1582864703657; 
 Thu, 27 Feb 2020 20:38:23 -0800 (PST)
Received: from localhost.localdomain ([240e:379:962:6595:7b84:9990:1a82:371c])
 by smtp.gmail.com with ESMTPSA id
 196sm9069047pfy.86.2020.02.27.20.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 20:38:22 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] rewrite mtk-quadspi spi-nor driver with spi-mem
Date: Fri, 28 Feb 2020 12:36:32 +0800
Message-Id: <20200228043636.559915-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_203825_713136_C677D2ED 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patchset adds a spi-mem driver for Mediatek SPI-NOR controller,
which already has limited support by mtk-quadspi. This new driver can
make use of full quadspi capability of this controller.

1st new commit makes spi-max-frequency optional to match current
binding doc and make this new driver compatible with old driver dt
bindings.

Changes since v1:
 two new commits.

Chuanhong Guo (4):
  spi: make spi-max-frequency optional
  spi: add support for mediatek spi-nor controller
  dt-bindings: convert mtk-quadspi binding doc for spi-mtk-nor
  mtd: spi-nor: remove mtk-quadspi driver

 .../mtk-quadspi.txt => spi/spi-mtk-nor.txt}   |  34 +-
 drivers/mtd/spi-nor/Kconfig                   |   8 -
 drivers/mtd/spi-nor/Makefile                  |   1 -
 drivers/mtd/spi-nor/mtk-quadspi.c             | 565 --------------
 drivers/spi/Kconfig                           |  10 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-mtk-nor.c                     | 689 ++++++++++++++++++
 drivers/spi/spi.c                             |   9 +-
 8 files changed, 717 insertions(+), 600 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (62%)
 delete mode 100644 drivers/mtd/spi-nor/mtk-quadspi.c
 create mode 100644 drivers/spi/spi-mtk-nor.c

-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
