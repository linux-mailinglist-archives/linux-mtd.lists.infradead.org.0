Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70501AA8CF
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 18:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YbVjGxw30KE1Ism4yeh4h3bvliZAyvVhqsPJsH+R5c0=; b=Jr9va/X70/P7FG0LtfN8tk3qCX
	NBEHTVGJARxOZUaAEfPtBBKKNcOZN5U3vLSL45bO0AUb1oaLYKRQPFjzVxyOCFvk7zlM4wizTIi93
	AnUiMg92Wt39JYRYiLMeHZBnNMsGXsqPfpaxnciHrJxGClCTD560SkCav/aHnyrilNFfvT5hEua/Z
	xQt/njRZcygbWlFtH2G0SXaLQU47Z7yI0IvXPHMpiWdzA7v9nXoyYCesEbQMac1c64gYnSGENpHfY
	Ul8Yhv0DtM1zIqa0ItWePEJJJrNf8p+06/HehZErP2ZTpdJRUfODK+KnFmQGPXF381b7plpkcXs34
	JLIp40Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uVd-0005wq-QQ; Thu, 05 Sep 2019 16:21:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uSi-0001CW-5J
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 16:18:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id d1so1686813pgp.4
 for <linux-mtd@lists.infradead.org>; Thu, 05 Sep 2019 09:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k4RSHQziswwPF3IEl7odNlbX/Lq1Hx75YDWK/+CVFu0=;
 b=jZZB1l94YWLd3tFIaGQ47yvMyJb9LlEazs2Ow8RBBjQ4l/r+vNhmddIWpMfHfHXs50
 78rWPPNCOz1OQu1AmHck6xNxXoRE7CFw9P+2slSZQz2Ys6D042/onIrEufTy+6xGnf7G
 /W7VbSFrbc056Zl/UdlRSDhj5hSjjoWsrULBTO1dp2b+2wVkNBYy15jzvUSO7Yol26Pq
 +a0ju3yHvCNmc2ezasYLStXloGX/OXTLGO31IarwZm/OPn8nU0nkbRODmTltiIBUdlzi
 njdrh0EUYg8SUhgdMLrNIUsilQw7WpjaCy9U6aj+BbrkPvrH3K1Yod5NAymx6bhyqYRw
 48AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k4RSHQziswwPF3IEl7odNlbX/Lq1Hx75YDWK/+CVFu0=;
 b=sN0HQ1a175jhUK5qLfVFEcC5BY8lVZrmbmg5oqUnKq/2oFiY5+aHSBei2bTqU0WThB
 Fy0/8BG7T2ro/dG7WMkS8M9EWvFzAS3UiZiV4iTVshMFMibLN5jdJ/lv2JUbTCGj/1Vo
 ji6hL47r8K8yoTUK8oGI+JfDD+eUHNB4uQ2Pa8eHQ7Se5171ToB+kNlrtQtNRWn5G2bv
 mM0ZFDNqIKJVN4wmPSBKYIY9DBC++tAbw+UHS4HbgvgsRmOh8ZzE0gXePmORB7CiJNWz
 xBgQ/Y8zavw/Kz/jouhtIzFe1+380zw2M5sD1qAJZsIoo+hkPybLA2aJteuG/tgw4Ebf
 A5PA==
X-Gm-Message-State: APjAAAXO3Hma0ClsjpXBhRyS+YbLpKEXSn6qEQbReTUe2Cu8Dld9Uwjt
 dCac/6j+ja0Mw9S/yQkZkEJNpw==
X-Google-Smtp-Source: APXvYqylgGgnlf/Z0Orza9qJRrWxcszrwnK+vdVT7tg0cYX2LQXbbeSPDVM6mlYFYgUjBYVURutriw==
X-Received: by 2002:a63:714a:: with SMTP id b10mr4066928pgn.25.1567700299222; 
 Thu, 05 Sep 2019 09:18:19 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m129sm6324005pga.39.2019.09.05.09.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 09:18:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [BACKPORT 4.14.y 15/18] ASoC: davinci: Kill BUG_ON() usage
Date: Thu,  5 Sep 2019 10:17:56 -0600
Message-Id: <20190905161759.28036-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905161759.28036-1-mathieu.poirier@linaro.org>
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_091820_250818_A733D511 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-omap@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Takashi Iwai <tiwai@suse.de>

commit befff4fbc27e19b14b343eb4a65d8f75d38b6230 upstream

Don't use BUG_ON() for a non-critical sanity check on production
systems.  This patch replaces with a softer WARN_ON() and an error
path.

Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/davinci/davinci-mcasp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/davinci/davinci-mcasp.c b/sound/soc/davinci/davinci-mcasp.c
index af6cd8b874f5..b4e6f4a04cb6 100644
--- a/sound/soc/davinci/davinci-mcasp.c
+++ b/sound/soc/davinci/davinci-mcasp.c
@@ -1748,7 +1748,8 @@ static int davinci_mcasp_get_dma_type(struct davinci_mcasp *mcasp)
 				PTR_ERR(chan));
 		return PTR_ERR(chan);
 	}
-	BUG_ON(!chan->device || !chan->device->dev);
+	if (WARN_ON(!chan->device || !chan->device->dev))
+		return -EINVAL;
 
 	if (chan->device->dev->of_node)
 		ret = of_property_read_string(chan->device->dev->of_node,
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
