Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779B9176FDC
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 08:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxQ8zvMcd7+/KhbJO1NAQgZ4RQlrHs/cOe/f0GO4j5o=; b=HBvzSDTRTXwofE
	sjrNAO3VTt/xrCjv231tgBiXyRB86T9ILGQyeX1DXDv5qyeuQfLED+m1Rclme87OEEaDRs9xhh5ld
	I3w10wRMD3V41AVt099hH+OwFavwSH9iFdiXVldk76gOK+ggzpjWDmHjTikM+j6bhBh2Xv076iQ0G
	EgYKTWO7HinFsTSQToT/edgse1jsXXKgekHgaE3VgGqjyOVfCntyUvT2aX4K+SzcIfZ1FY4Xcylci
	/GD6WwioVe6bovp+THkQwpIA2fD5FaxdSfddbCUlRTfFkrPzUxdG6ggmmbaElEWT+2vXo7loRZIKL
	/anRkcN74f76JYr+3ykQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91mR-0005pP-Np; Tue, 03 Mar 2020 07:15:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91mK-0005oY-GS; Tue, 03 Mar 2020 07:15:45 +0000
Received: by mail-qt1-x844.google.com with SMTP id i14so2027678qtv.13;
 Mon, 02 Mar 2020 23:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ypYkPGQ+tuqNht2BOkSbdXQNq89bA72Qai2EXZj0f5o=;
 b=gXPMEWnOC5Cy3ZPGY+FzhF5FeyaaKpTZhjCaytHjaH7R5bIJ+NeoX29usAxajcmFWD
 0osf+xGKl8I1Rk25X70aOLLAx066ylCSu2IiUw76f42PjizbAasiLLQU6eaWVZ08Ecla
 Nphech8ot3kQYbTOsW3KbZ+gn5bvdm8A5nHQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ypYkPGQ+tuqNht2BOkSbdXQNq89bA72Qai2EXZj0f5o=;
 b=ApHfmZAPdr15WJwOsjyJ3r0gA4htjovzcPr/06bdYNNb+1OZzlFxbNuYH+a1k79bNk
 z/Xt0tmIhF9fHqvr4WjhJ//5lqFT+ssBuAQtbiEk9ofs8E0mdFNSIBXkE3IKHw15K23Y
 Uj13H0S45Ou+OH3TqKNF3jk95hnR6iQDixzzORS0zE5fMfCzDIpHX6SbwzEGN9eumIRO
 2154m7AJo5Tsb40IyaFVbSBq7L5NM0Vr0958R8RFFe8F7dZxmWLXskoHnaCzLmwiKNKE
 DA1xr5vtWSitfcdtoCF06bzr31ZYf4i7hgyLG6TIJu8lro93ShUy/Jx8PKjKW4YIq8ua
 OPKQ==
X-Gm-Message-State: ANhLgQ2F1WkpD30mVloCEWiFXErGRZZQJbHkYPsetXYhipunilXMJFqZ
 eLnFT6aV7mMr/5XgWOGLUgppP31KfO6Io8KePGo=
X-Google-Smtp-Source: ADFU+vvpPdIPrOMla3lHMKsvtgOsYhvOly+EDWJuxYHMS9CAj7ketuc9MhtRLZmEt1grmksChe08v/qQPfdfCEzGbUE=
X-Received: by 2002:aed:3841:: with SMTP id j59mr3274883qte.220.1583219742473; 
 Mon, 02 Mar 2020 23:15:42 -0800 (PST)
MIME-Version: 1.0
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 3 Mar 2020 07:15:31 +0000
Message-ID: <CACPK8Xcvf2wSE5Y4E8Lbs6R9mHhztvNsr8vNrYaPX+kMMUhZvA@mail.gmail.com>
Subject: Re: [PATCH 00/23] mtd: spi-nor: Move manufacturer/SFDP code out of
 the core
To: Tudor Ambarus <Tudor.Ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_231544_713427_FFB243E1 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, opensource@jilayne.com,
 Richard Weinberger <richard@nod.at>, Michal Simek <michal.simek@xilinx.com>,
 Ludovic.Desroches@microchip.com, allison@lohutok.net, nishkadg.linux@gmail.com,
 john.garry@huawei.com, Vladimir Zapolskiy <vz@mleia.com>,
 alexander.sverdlin@nokia.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <swboyd@chromium.org>,
 mika.westerberg@linux.intel.com, ludovic.barre@st.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dinguyen@kernel.org,
 Michael Walle <michael@walle.cc>, linux-mediatek@lists.infradead.org,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On Mon, 2 Mar 2020 at 18:07, <Tudor.Ambarus@microchip.com> wrote:
>
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>
> Hello,
>
> This patch series is an attempt at getting all manufacturer specific
> quirks/code out of the core to make the core logic more readable and
> thus ease maintainance.

I tried to apply this to linus' tree (5.6-rc4) but it had a bunch of
conflicts. What did you base this on?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
