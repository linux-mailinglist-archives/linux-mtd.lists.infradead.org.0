Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4345775A08
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 00:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ERePyW6e92RGRd7C8fQXGGsBzVE9H4FK8MMplqISsyI=; b=aHMAEoPH9Mwoh3
	BkKZs2kwdVyKkabUU+7zboIizo1fBLnbpc1FhCbnkaa7AxG4QFFZySZ7Ad7e8xf6UzHlJRp66Q7J3
	Xh/l7BajaQOTZIYcps5D+32R/spBwUVGMmuBNdWP/wTmVZwrQ4E9zmwHm2Asf3HPLr2aaClhNGJiM
	Eu08pms7tthTNBqzTKf0Oqw8h22ofH5Uyl3wg34uCkZ9/N70e2N90bwQty9yc8aWc0LmPQc8w7kG2
	onk5bouPEi2YXYdviOcVw0/qqH/jLBq64rbSEyFZRcj9YurjR68IqRf1tD1Lu16Y4WHcCc6+Q+R65
	BqISoV87qRFlR7x+cPCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlpF-0002Jr-Ly; Thu, 25 Jul 2019 22:03:01 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlov-0002Im-72
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 22:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1564092151; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=heKcREY22PalpQ/9p8Cd9d1zdSepPrb23urjeSbGB5s=;
 b=mFrG2QDIrMMa1N2Z2OVlTuF1yYZ3LchMkFWqDfMspQ9nIQIHt+4ryyS8D1eO043/xYvhbR
 N2FT54nOWkY/RPgX2yiBHDmmzZM/1mmRTn9qpQrY04TflmjGu4/L1JyZ5aAqdEOpvFe+8V
 Dwl76dgF+6zF8aB9BWW/YLBVr0ngLbU=
From: Paul Cercueil <paul@crapouillou.net>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Vinod Koul <vkoul@kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Lee Jones <lee.jones@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Sebastian Reichel <sre@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 00/11] JZ4740 SoC cleanup
Date: Thu, 25 Jul 2019 18:02:04 -0400
Message-Id: <20190725220215.460-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_150241_444668_27438E21 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-fbdev@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-pm@vger.kernel.org, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, od@zcrc.me,
 linux-mtd@lists.infradead.org, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

This patchset converts the Qi LB60 MIPS board to devicetree and makes it
use all the shiny new drivers that have been developed or updated
recently.

All the crappy old drivers and custom code can be dropped since they
have been replaced by better alternatives.

Some of these alternatives are not yet in 5.3-rc1 but have already been
accepted by their respective maintainer for inclusion in 5.4-rc1.

To upstream this patchset, I think that as soon as MIPS maintainers
agree to take patches 01-03/11 and 11/11, the other patches can go
through their respective maintainer's tree.

Note for MIPS maintainers:
Patch 11/11 may conflict with the TCU patchset v15, should this one be
accepted upstream, but the conflict is tiny and easy to fix. Should this
case appear, don't hesitate to bother me about it.

Thanks,
-Paul



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
