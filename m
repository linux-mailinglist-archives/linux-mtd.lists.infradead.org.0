Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC471377F2
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 21:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBlOxGEiF0Hb5lLaLNO8l9SEsGAencyYZDJgPG0Zfk0=; b=cPsGVEl6RHAaO4
	cEuh5uiv0SW6P6N2cOoEkVQxQb7dDLQCSAEuvh317212xqnEiC6eFWGtG4TSlY2o81y+p5ABioWrG
	y4CLclpLTrTm93kesPdsQHOWR39+J1t0TYB76WzH2unXfcV1bb5Fn7mktEeO+vKykuh0nogJQ0q2Q
	f2DWXdUuRi2NX9A+1WXkrVRDxU+s+O8bgdP997lItn9yC1TGzb9prSvVpnuktXSbaI1YH/ETvp2r9
	EJ8MTsNKHlM5CL1/l3mOzLU0HHVF51br9SEpmT8KYrszqlIA+x8af1o4nY93q2qcVsvMf9BDaPuo9
	4LOXg45iTQg1wGaC1vfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq0x8-0003oV-8n; Fri, 10 Jan 2020 20:32:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq0wz-0003n9-S4
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 20:32:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id l2so3433548lja.6
 for <linux-mtd@lists.infradead.org>; Fri, 10 Jan 2020 12:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sJY/k139t+jKR9coVO4oz8lqyEAClB7/i7kGMDvcB1E=;
 b=U8Kl+MGD1543lW5ezWJsO8oq463sERmIzSWDKAZ0apd6rJM0caY/D1COvpgRRh4ogt
 f0LM83WBDcyAgnUvGHNZKwxdRv2C3u5xmjLuY4iFlL+tm7t3iSVOg0qnmO68SsJpMHRG
 cmTIA35ClvhnccnTJ/L6rXx1hGLazRA7WgJpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sJY/k139t+jKR9coVO4oz8lqyEAClB7/i7kGMDvcB1E=;
 b=rA8Oxm0gZT6BeveCVPliukMIrwS6Evcl8WH+vCWjYJI1PqkpRCu3IlBTazxL/OuPN0
 Yf5VD61DEYYz/M/Kp0C9qH2jyvjt9B23ytCDYaIc+C+BALUr7+IbxJqsd4UkSgP/bxJ9
 Yw9ONdFm+OR/Hvw3e7CBOkt3dlF4xLeaP9Agc14Sf5GDFVYPYw6ZDTU3n93BA7dzbiDp
 XYaahgO/wr1qH6/aoNv8s3c/dNPi81fH716LgV/g+21XsYsHYtX8dyNXtn7NVLQEXTQl
 HpUMKXEtrUFAdhyYp+xckSSiBPCd0mbgXRPJxB+aDxmJfdYDpeg2dYOmcVkPCCSyJsRg
 wgKA==
X-Gm-Message-State: APjAAAXQvR8FllmcGV9lxeerRazvC7lB2jjnHKk/zfDkQF1Zsi8WJYu3
 qu2lYd7noaUD5GgD2Dc/cEdCEJJXiaw=
X-Google-Smtp-Source: APXvYqzJmarnKlhgrjtic2LJXPvv1dyp8PNrWdzukW1k8dhkH0mShTjPAo2kVbgDw5lFK9l7JC99OA==
X-Received: by 2002:a2e:8eda:: with SMTP id e26mr3738397ljl.65.1578688326960; 
 Fri, 10 Jan 2020 12:32:06 -0800 (PST)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id x84sm1596864lfa.97.2020.01.10.12.32.06
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 12:32:06 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id n25so2467655lfl.0
 for <linux-mtd@lists.infradead.org>; Fri, 10 Jan 2020 12:32:06 -0800 (PST)
X-Received: by 2002:ac2:58ea:: with SMTP id v10mr1444385lfo.202.1578688325770; 
 Fri, 10 Jan 2020 12:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20200110154218.0b28309f@xps13>
In-Reply-To: <20200110154218.0b28309f@xps13>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Jan 2020 12:31:49 -0800
X-Gmail-Original-Message-ID: <CAHk-=wg=8=nTeOYGoAbJ=VjS47Nh4-_OFK9zKsK3mK4nAi2dNA@mail.gmail.com>
Message-ID: <CAHk-=wg=8=nTeOYGoAbJ=VjS47Nh4-_OFK9zKsK3mK4nAi2dNA@mail.gmail.com>
Subject: Re: [GIT PULL] mtd: Fixes for v5.5-rc6
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_123209_926317_069450DB 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 6:42 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> This is the MTD fixes PR for v5.5-rc6.

Hmm. I've pulled this, I've pushed it out, and I see it on the public
gitweb and I see the email on lore.kernel.org.

But I don't see a pr-tracker-bot reply.

I _did_ get one for Jens' block pull, so pr-tracker-bot is alive. I
can't see why this pull request didn't trigger it, though.

Konstantin, can you see what's wrong?

            Linus

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
