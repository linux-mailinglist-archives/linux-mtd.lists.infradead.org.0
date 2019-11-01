Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C5BEC661
	for <lists+linux-mtd@lfdr.de>; Fri,  1 Nov 2019 17:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUdKpo2Mo+0HHOZwSVIlp3ZBt8GL9y5kXpFZX9fzZZI=; b=fCVeqTPF3P+l9Z
	0faEOkrmkLJcDQ0o5/mjoLU2u0GWsR9u97BYZKrlSjVtA/ES/0pATBvqkngBfwTwdqz2zOJxHKFFw
	L8jQe5dH6O9rEgdhuRj5rKQ/77Jqfocy3wDDaDaIqGMqTmRIOMLR01eWJ9cvm+9Eg0902FZaFTtQV
	ZJSuTx1+3e5F3YegYXKvFiR7v4ohxmWrUUtIOuHNI9XuOhaehCvxQyfKhGudn/wot0kZnuGdMnTTd
	jRKo4yuz765OR43pn1+kxEhrYRnmI9frSgnExurvmCmWKoNxmG+GJAwwjV+Vyqxk44ah4s7m40oRk
	csVV0zaIIiOlhAAxZ7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZVB-0000ar-NN; Fri, 01 Nov 2019 16:10:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZUr-0000Yw-Fx
 for linux-mtd@lists.infradead.org; Fri, 01 Nov 2019 16:09:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id q21so4565560plr.13
 for <linux-mtd@lists.infradead.org>; Fri, 01 Nov 2019 09:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
 b=pqgUoVGB+Pvgs7uB4bZCVL9ddF6mUcusJ+t0IwqeiLrX6+prPEqal1X/OHf+0FpvvS
 roWNNTa/wYh05Pj1boCFGl+442kLqX6wsmlUJ6S1tT+v2BWeeavOniuzuLm/u9bCtQYX
 eQ8WBHmX0f1nkWYHj+8QpAIzUMREW7EDyaD9Ge6rO8FGPPMVtJOpLaI9G4fol8KUW/xi
 TuNBxblEwg3XBK0qlvvnA++b8xIgGdtWlnxQW1qYSBIH1R3mI/GHMuJ9rSUTslOTzqCj
 f3/WBWImyw0L4OrCd7MgfCSjXeIqz8kiJ2F16qgmfg/G1j+OBvwAP/1b9nQrUn+z0eYe
 varw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
 b=BF2zMfpe64edfE6BChNf5I/0olmCtKZqgpBIRURNOhUfoZKAgOI0XucFuQvPB8iTk2
 RcPY5+iRKdxHRipN4C8KYJlis0Qt8Qo70gDh487GTZaaBKTOFKAU0Lw5HWsmpZVtrPgI
 bYZmwvnJVM2LKGT6x2HHNe7FL9F1EAOo44q8XqxiAJGJB+RiWXNA2d7EfTIDy0y2osih
 hz7M/6bsfELPDUqACtbVSVYNjVsS6GAmYBXaBEYAAyyLgMssFAk3/6wAwwgNYPgO/3t8
 Wvr8g//oa7pqNpS5G5oihNRe1K+2yt3KFcSgJxibG5n48J+SxOd01BBtGxijDALMPmrz
 kzGg==
X-Gm-Message-State: APjAAAXdIkwQd2+ntA2zxBRtn3TDaOWXyw8SgNsmX3/a9JvmcRPfhALn
 bkKotkBP7AXUZksJHiUGuqFo
X-Google-Smtp-Source: APXvYqzfsLFiVzl52QPqi39geGbcUfS4XiTHJYRx20OJF5w9UUz77wUS+JTwJdlus1wJ1HApS5Y8cA==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr13800479plk.215.1572624596640; 
 Fri, 01 Nov 2019 09:09:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6413:fc8c:9538:d2ea:eab:d2c0])
 by smtp.gmail.com with ESMTPSA id v63sm6705910pfb.181.2019.11.01.09.09.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 09:09:55 -0700 (PDT)
Date: Fri, 1 Nov 2019 21:39:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191101160943.GA20347@Mani-XPS-13-9360>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
 <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090957_567245_6121CE96 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, festevam@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:55:01PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
> >>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> >>> supports dual/quad I/O mode with 512 blocks of memory organized in
> >>> 64KB sectors. In addition to this, there is also small 4KB sectors
> >>> available for flexibility. The device has been validated using Thor96
> >>> board.
> >>>
> >>> Cc: Marek Vasut <marek.vasut@gmail.com>
> >>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>> Cc: David Woodhouse <dwmw2@infradead.org>
> >>> Cc: Brian Norris <computersforpeace@gmail.com>
> >>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> >>> Cc: Richard Weinberger <richard@nod.at>
> >>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> >>> Cc: linux-mtd@lists.infradead.org
> >>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> >>> [Mani: cleaned up for upstream]
> >> Can we keep Darshak's authorship? We usually change the author if we feel that
> >> we made a significant change to what was originally published.
> >>
> >> If it's just about cosmetics, cleaning or rebase, you can specify what you did
> >> after the author's S-o-b tag and then add your S-o-b, as you did above.
> >>
> > I'd suggest to keep Darshak's authorship since he did the actual change in
> > the bsp. I have to clean it up before submitting upstream and I mentioned
> > the same above.
> > 
> 
> Ok, I'll amend the author when applying, it will be Darshak.
> 

Ah no. I was saying we should keep both of ours authorship. It shouldn't
be an issue because we both are involved in the process.

Thanks,
Mani

> Thanks,
> ta

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
