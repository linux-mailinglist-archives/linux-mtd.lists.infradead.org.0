Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D7DDAC7C
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 14:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A13iM4+o9pOSsrhL7wRyptVhDeEOroS3+j/mXB4QdF0=; b=hiFviwRMZm+pxd
	OqztdxhEP5Qesc3V6fs0XwdIQJXrEm3y/oz/Ctt88g0a9KO066VW+kq/gbWh9p890kZIiPzRW7PYk
	50g7FESz+6NDSiSCmtRqCbSUqdWZYJrzcPRa4AxFBnOFwh7oNTFpMJVMp1sv7YloS7RL9uGBp7vrX
	BAILP5yrMH/ExmLWGrDVXR6au1l+Wala2qBJB0BcEMXkcAdXdwt57NwH0goNXJ+s7PwcoIlzO/M8m
	V3ie09IUN6rT6xzEW6jEbSuzeSoyKHObQR7COV+IOck1tx1c2ju2V7VuZeGez03ROlT+0gyaEsRb4
	JUeq1krHyKOlFTn60BFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL56D-0001Iv-Rh; Thu, 17 Oct 2019 12:41:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL560-0001EY-58
 for linux-mtd@lists.infradead.org; Thu, 17 Oct 2019 12:41:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so2415364ljd.0
 for <linux-mtd@lists.infradead.org>; Thu, 17 Oct 2019 05:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yfx0Qj1rQn2OmtLvzGD+tupqKl0ANiTAmTmE7GtqB/c=;
 b=EBfaTkVU2EzpHfqbCpcWQDH0yBUBKdmrs4HPvzp4DVmP+SghhcWQYcxFTjednqSfei
 CduVfjtcs7s39ZzeyD020vFCQ898l9ZhCGRVIta1Kf9HQSYf5ahiGOjdk0QtjEsBvSQh
 9gJ4qKHrOoUdJ/PYLxWVhgI3VjuRp1lK3kKGw2rH9yWL5cPnGSDsRIoXdg3e/f7z9SYD
 mGsIEP3c6wTAtTuw3+kNL///vVueLLTzGyL2O8vw/1b1/VILsvxv/WnbqBZoqZ3Zrau6
 1BRcVz05/csqRdz+lzmDhGRLk4xWBBt/xzqxWEQSJw1dnUeKt4XuYsoJSRUVmryuhGfW
 jn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yfx0Qj1rQn2OmtLvzGD+tupqKl0ANiTAmTmE7GtqB/c=;
 b=m9GubfeuWWc7WJDUR4pDrIHFYKsuxLz/Q/fi0VVxwCf6Ifg410kqkv9D28yemQS4QN
 WNJjC+MDMTupX8xFLjlUDeEEbATO7JhfIyAVrvVokOyGpSlbDqp7bvXhiuJ1GBtfCrwk
 EjztWwf1ReUoRYTl4B1hctjxbVcsUhf9MU6mFCUYmvg+fzF/YUpZmcwmFAbDA51Coj4f
 WEnblvkF0YFyTLQwl9oTLkHXmvjjqj+lm1jHmoEA2szF4fC2Adegach1FBfMitPcVqN9
 mbWsyETYrFMSWchZNkPkhKQpzNk/izAm3goYW8phrVixiK2CfNqT8GKicZK17zFaHLb5
 N7Ng==
X-Gm-Message-State: APjAAAW+JNHw7/aGzFOfsGknW0dsiZVRMkbWIlLjXvfTZCJ470KDwXZ4
 nJ3XRPyKljp/XU4kMx748OqaY+h4phyGxGx4oAU=
X-Google-Smtp-Source: APXvYqwGMVFYiAIJMausUX0KhxA+9h/75g6z2SFKHL+BGId19M7UCqJE6ESTtzc0A4OLCQYPDr5LqTuCiP1tF7kn0nw=
X-Received: by 2002:a2e:86cd:: with SMTP id n13mr2388800ljj.239.1571316093934; 
 Thu, 17 Oct 2019 05:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAH+2xPB7rbeJnOPU10Ss9BhV_2DJV-ToQ3XNOy97+vrGx+ubcg@mail.gmail.com>
 <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
In-Reply-To: <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 17 Oct 2019 09:41:24 -0300
Message-ID: <CAOMZO5CkxnW_6gj9QoUD9Hj6m-R7LD93ip66+s6x+1CkcXoOjg@mail.gmail.com>
Subject: Re: Regression: dmaengine: imx28 with emmc
To: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054136_206473_0B593901 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>, bth@kamstrup.com,
 Vinod <vkoul@kernel.org>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sascha,

On Mon, Oct 14, 2019 at 11:14 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:

> From 3f7a1097099c9e57e31a86503edc479f9964bc95 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 14 Oct 2019 16:07:31 +0200
> Subject: [PATCH] mmc: mxs: fix flags passed to dmaengine_prep_slave_sg
>
> Since ceeeb99cd821 we no longer abuse the DMA_CTRL_ACK flag for custom
> driver use and introduced the MXS_DMA_CTRL_WAIT4END instead. We have not
> changed all users to this flag though. This patch fixes it for the
> mxs-mmc driver.
>
> Fixes: ceeeb99cd821 ("dmaengine: mxs: rename custom flag")

Please add:

Cc: stable@vger.kernel.org

so that it can be backported to 5.3.x

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This fixes the rootfs mounting issue from SD card on a imx28-evk running 5.3.6:

Tested-by: Fabio Estevam <festevam@gmail.com>

Thanks!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
