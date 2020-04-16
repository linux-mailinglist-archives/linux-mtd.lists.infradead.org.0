Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AD41ABD4E
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Apr 2020 11:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hDmeioEL/UQBS6Ybg1YQtu7Uytwmf4IgIKoWcnzsTg=; b=kjfnIjyurPmWmv
	UB5vFrrQUYzB5D1pA8/NFsPBw6uxBpJXqa6WcU2P6gugAu1q7eEj8/UVc1L+z6lZhkLdSkr+x8HpP
	tEug3S5HvTRCOywetNIr6QawthDT5kTiL1BP22/0KN+l13SpONJkd6/508auc7YjgogRFwiBAjA3g
	1hj8vHMoKBhpHhczHc7kcTYzT/fsdqc8YJH38kTi0Hw6+8gYmITCdotMRZBUEjuDTiUyuPn3JSV2K
	t+9orktMdSCrJ4hSYaTE6pNhvaaivTQXVBLwT2BZSxpg0cbt5ZQl6F4LXfWPEUre6ZJcfW6bwcXYa
	HQlk+wH62H0En4dKRXOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1Be-0000U4-L1; Thu, 16 Apr 2020 09:51:58 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1BX-0000SB-Aa
 for linux-mtd@lists.infradead.org; Thu, 16 Apr 2020 09:51:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id 198so5106692lfo.7
 for <linux-mtd@lists.infradead.org>; Thu, 16 Apr 2020 02:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=paRo5UDnOEg7qB4hHSdBgPIcs6LdtLmC5yNkL7Ll0CA=;
 b=emw+j18jwjwelvCaDl9OIoc00snNDkHMEg3SXQYKMmCQE8QeCaRjaWItbj118CrGKd
 Q3wu2BjhEOoJmsb3xVTGfQyUaIMlfRWf6u4AStboFovGsr5VA6SQqdkLT712SB5nBYpI
 2CPA8ALmU9t43tc3pp2TWDfo3ZwzWNho918zPcG3W3SeqAnox1dbYlkjJTnJsmXJLZxq
 9zHi22Od8Xv5w4Q6BhzAOO20ZzW6ahmgTk9CHh3K9OA+8KZC+c0VFwMpPl2tg/CuS4zl
 /Og7doXYQjPOVy0m7uOJfbCmrch/C6KJl2bYJ3fo+N0SEh/n5mSmrvb5czViS/wpPFs3
 Uf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=paRo5UDnOEg7qB4hHSdBgPIcs6LdtLmC5yNkL7Ll0CA=;
 b=ac5fOObAgzNI+JeImrScvGKQkGw4RUr+PpkXyNX3Wpv38wh85ShCx7hWpm8x0/roe1
 XdRMAlO03cKys3lc4Wjx+ieBALg5LhswVjE/pgnJ6r/36QrMx6E2t895jIR1dEebllkC
 6UHSrneoCtNnIHOJXzj9AwDKzGTQVoakOVgDSvqNACxXrp9JgsqOSG0vcRoD0eDRl44b
 Y/R7CdTt0QbN/80v6yY4Js6NmkhxV0tGfXB5hU7PK2IdnaVw+5Pzw7qFiwE0PXLLEayo
 8lw+m84iDsB5ycFwEcoRfgLoam9/BkP866WgsOhoFwZVz4+L7GiZtjEOmNlJ1qgqX74P
 VtRQ==
X-Gm-Message-State: AGi0PuYshPcmKOx4Hth/dv4twZEslzkO/7ge2ZPv/JSq6hYAyFIymKAp
 R5HEXn1X2jSwAF92lyIv2J5XGpjX4L7UwCpljV6tdQ==
X-Google-Smtp-Source: APiQypKKiyFtcyG49CuIMjXwPUlmjO8yWBg30XZ6TNDLdtPi+jH4lYkPRe9MwqKLwhMwG2r9RcsdRpSpO8JCJTCwiMY=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr5643988lfp.77.1587030709790; 
 Thu, 16 Apr 2020 02:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200406160914.14698-1-rminnich@google.com>
In-Reply-To: <20200406160914.14698-1-rminnich@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:51:38 +0200
Message-ID: <CACRpkdYVwFiCf5MJGLEyhxL8omxr9Tav=8Le_zEX-D89SXjV1Q@mail.gmail.com>
Subject: Re: [PATCH] mtd: parsers: Support '[]' for id in mtdparts
To: "Ronald G. Minnich" <rminnich@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_025151_881862_F6E96D2B 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh R <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, rminnich@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 6:10 PM Ronald G. Minnich <rminnich@gmail.com> wrote:

> The MTD subsystem can support command-line defined partitions
> for one or more MTD devices.
>
> The format is:
>  * mtdparts=<mtddef>[;<mtddef]
>  * <mtddef>  := <mtd-id>:<partdef>[,<partdef>]
>
> The ':' separates the id from the partdef.
>
> On PCI MTD devices, the name can be the PCI slot name,
> e.g. 0000:00:1f.5. There are two ':' in the name alone.
>
> Change the definition of <mtd-id> so it can be bracketed
> with '[]' and hence contain any number of ':'.
> An opening '[' must be matched with a closing ']'.
> The ':' continues to separate the mtd-id from the <partdef>.
>
> Signed-off-by: Ronald G. Minnich <rminnich@google.com>

It's a reasonable approach, I was a bit confused for a while
because [] is both used as literals and as meta-characters in the
syntax description which becomes a bit terse.

But it's no big deal so:
Reviewed- by: Linus Walleij <linus.walleij@linaro.org>

> Change-Id: I17a757e65f532b11606c7bb104f08837bcd444b9

Upstream don't like Gerrit IDs but surely the maintainer can drop
this when applying.

I suppose the use case is using PCI-based MTD devices for testing
something android images on desktops? I'm surprised it didn't
come up earlier.

Yours,
Linus Walleij

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
