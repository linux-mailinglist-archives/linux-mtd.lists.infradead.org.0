Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25279F97
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 05:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTUTGsq4Ty6YdlvYfjGVtf07Imxi9C6+Y3tIVdhDEEg=; b=p/mvaePb6Zeej5
	YSZk/ww1F6wcPYczdxNDBF0j3P31jJd4hcO3Rj1910uJesEf8bQxi775DNBgemi0PTALoNDNcXZLY
	QM0K7BvEiV4ylWimixh9f24q15jqeo9y9XdQ+Sxz+/u1FrQfuUqXBpaJ63s08BwehNalNfMvQxYMq
	h+L8MGWwyS6MLnGgEgRQl0PWAa1/P21dOqbJrwRwzcU/KJwToeeg9Ja724/M1lWeZZT1GCHzF7SQJ
	UeTvmV0YWfpYBVDF3uTYfu+5V82446uCut/mx9N5mejV7cTVuwcrKLTMybyOV9okHCo1ognKiEiOI
	lqBDkVp3+rMcYTVXhgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsJ8M-0001JY-AK; Tue, 30 Jul 2019 03:49:06 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsJ8D-0001JD-Ci
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 03:48:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id v85so43589202lfa.6
 for <linux-mtd@lists.infradead.org>; Mon, 29 Jul 2019 20:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7/jvw7i2YT7HdgsemsDi3vJNrNFzorSxW8DavMto1yk=;
 b=opSsDn+p88WcmziZ3Tz0bdcsSmwX8w7sFZgVBF29nG87Kf8nLNyDSYkz6bkGs3XXFh
 /pH27Bd8RAK15ddY/Ppny6f1z8qA800tvGZSsNfuE4A7KhgjNUyibLE+Hdi3wc2MHQFt
 hgY9Bcp9loJiUm0hPRMol6upbr2iSYdv+WBqqgjAuoTUpIoVBiKC3QElnZWxg05nKLJo
 EjH22ekvH6RsdTXcHo55DtNo2HmstCPeRdetvK/F3Br/4rgdU/Zmpfj2t0yMt0zvIGBn
 Oxgsm5ix6E1mZ/rzX/7lHmjcl7dKragRj03wb7Hw51UVNggaMydMAo/U4mDbfuAg6z2f
 Zxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7/jvw7i2YT7HdgsemsDi3vJNrNFzorSxW8DavMto1yk=;
 b=eeKAfM4mp5VhiRycwXe8S7ZMnjv4SjyaYFLZBHAzlEW4Q6gQ/2ZxO8EaUNs7l8Jplg
 zKSz6ZXIgS+ZZ5xsrfNPi4+cexKbv4e9maxkF3b6zePCi3RPiOnTAZts2oJJk+bKgwrC
 IksR3ZF84x+tKH4BO73Jez71MFmjojWQp5NL7wZe3uZGRoo5dGd1A/z3AVnvs8MysCOt
 Nv6zM2PmupDyUFDdwK68a2MgjXqoHD8uOy9MVBuBCNBvtYJJUbnMEvoc+2Uv+QedIsfn
 L+9kJmQZCkgebAprpf650nUO3UeKRkFeSJYPhiK+cmauaD01fKvBCe+s8aV5M8hrbUmP
 6QXQ==
X-Gm-Message-State: APjAAAVnihKYJggrDv7l6jTsPZq097esQ8Z7UN7UwVDd3M5vGWKArdVf
 4zqPDleKoLR+/P9Y/euaR3G6R202rDqXyzuU7us=
X-Google-Smtp-Source: APXvYqwVQjrci8cjpClyu+N4nmsyUj2tjbZ0ZGQ1/s0fQFapAiFOhKrQIWsu9A84v/jTv8Rl9Lt60SE6kMO00id1T+8=
X-Received: by 2002:a19:cbd3:: with SMTP id
 b202mr54387234lfg.185.1564458535411; 
 Mon, 29 Jul 2019 20:48:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190725001114.0ceff19c@jawa>
 <CAOMZO5CsTPaRSe-VmOwnnYrsMMXa3GhurmsWwzaPo948xs10FA@mail.gmail.com>
 <20190729224326.44aa3057@jawa>
 <CAOMZO5C4UgetHAW6_JqLGZH96_8TyHSzj10DxFe+XMnZR07ASA@mail.gmail.com>
 <20190729235409.222c8880@jawa>
In-Reply-To: <20190729235409.222c8880@jawa>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 00:48:59 -0300
Message-ID: <CAOMZO5BXvMByYX2ixLK+rXoT7ueb0aTmR+L-w6s6-GvFkC1Bcw@mail.gmail.com>
Subject: Re: [imx][vybrid][qspi] Regression notification - vybrid vf610
 QUADSPI - BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_204857_459024_55C4335C 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Suresh Gupta <suresh.gupta@nxp.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Lukasz,

On Mon, Jul 29, 2019 at 6:54 PM Lukasz Majewski <lukma@denx.de> wrote:

> At best it is possible to have both memories working with double SPI
> configuration or single (QSPI0_A with quad SPI [2]).

But according to
Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt if you use one
chip select for bus A and one chip select for bus B, then you should
have your dts changed like this:

diff --git a/arch/arm/boot/dts/vf610-bk4.dts b/arch/arm/boot/dts/vf610-bk4.dts
index 3fa0cbe456db..0f3870d3b099 100644
--- a/arch/arm/boot/dts/vf610-bk4.dts
+++ b/arch/arm/boot/dts/vf610-bk4.dts
@@ -246,13 +246,13 @@
                reg = <0>;
        };

-       n25q128a13_2: flash@1 {
+       n25q128a13_2: flash@2 {
                compatible = "n25q128a13", "jedec,spi-nor";
                #address-cells = <1>;
                #size-cells = <1>;
                spi-max-frequency = <66000000>;
                spi-rx-bus-width = <2>;
-               reg = <1>;
+               reg = <2>;
        };
 };

From the dt-bindings:

"Required SPI slave node properties:
  - reg: There are two buses (A and B) with two chip selects each.
This encodes to which bus and CS the flash is connected:
<0>: Bus A, CS 0
<1>: Bus A, CS 1
<2>: Bus B, CS 0
<3>: Bus B, CS 1"

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
