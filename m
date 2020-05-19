Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E983F1D931D
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 11:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAATDhym3kbWYzjsRcATgcYIs8hX+MW+G9xTQoornuc=; b=KgcuC1gVNt5uyO
	djjfupfoHSFeuIdd99bLiaBkIrtS//KZ7f2CibefzhaU9XBPwfC+plcatrJEUttHc2mrEMAJV7CV0
	ytNbP8wDa6ICqLV+VHrvjKKQBPf5/7PCiU9WnEmVqebgyAyYsccYJLcbzmG2x4TlbqQG/mQrC9km2
	DLz+IGkjtVinAndz003MV2OO6Nv3j8aC31XhBV23HwMhC/lFvSXQdiJZ+C8U2zlUVlhJAPowOCdvO
	JKwGk3ah8iUJ7XnH/6BnEyVd75AGtHpSegbf8EofnK+hk0HzhWFGdSbWvgMRV6i8i7XihcwDOkHFU
	AEr/9DlD72NMqSkFkPOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayMb-0004AY-EK; Tue, 19 May 2020 09:16:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayMS-0004A4-GI
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 09:16:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so15016693wrn.6
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 02:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fvsA9hOlkYDHUBf93/zCtkYfj1yjexkczlakdR3k0gs=;
 b=UNbDK0sm2tqypIANAN/jPZp6rzoJ1aQh6eVSontFFtPNh4rh9zSRomjDjybQIlfNXf
 VPVvRYiTH9FHLyZS5+H1DxyRRa8PUfhzAkQc285OlIDNChHIvhRTEMa3iFG5+YHUt+mz
 E0c8VItID5EdHN6KBfncxV+fRWTUhjgQBD4HNUqxIbGdJ3MsP+Q33rqsi7NEfN6palg2
 fP6aC5P7XG7256vHfpZVT4mNYvGDAv2+hj9/7DZUVWKrBECnEFHMy8XjHBHCVzyUZ+tG
 Lb/N2DbOk+GPuhcY/UDyfzbuUf4i0z3JgGEUOvHo4kEYaegR9RA0rBemIO6lTlPoIR8g
 wIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fvsA9hOlkYDHUBf93/zCtkYfj1yjexkczlakdR3k0gs=;
 b=aRnk+LJ9lqSn0LVIjqnjt1dcDG5/hfKIPDVu24uB0z6rOiINwzQYAEUfLMwsr9r3MW
 RTpj06qhnDCOaRUAnyCEbwpgqHBSTW4YEupEMIvtSNSHvzjF4zdm2z6Jh3Ag0m/nIeLx
 bF7rABhvdhI86DRnFkCC7nooKKb1u4YiVAfOZdm721CLm2hOcCRMQaxykP+7w9LycKdd
 7O+61X8cwRALZVjqeISn7y8piXyHR5Kc3lxMTtE73QqPd0I1MXXhb+rVIBI9ZFXrgkNy
 Tu92RGVUb+zA5JziKErYisInxXzSdULnJb6loON1WTDI/S08ytsR55E1ba6gnJVoRmH5
 p7wQ==
X-Gm-Message-State: AOAM530ySbT6KENSE7gV687kqwepdkhaSf2NYj7qHwMm9sWlpQOZRCKc
 QJcTijZTDmh+28PJLVIUwFY=
X-Google-Smtp-Source: ABdhPJxJ2gDZDn3hvEwAhiB7igo/FQL/uK0t2STq4tAiEqmOU2jl/hNQwcMPOW7xg9lyilYt/j5xBA==
X-Received: by 2002:adf:806e:: with SMTP id 101mr25062695wrk.225.1589879790599; 
 Tue, 19 May 2020 02:16:30 -0700 (PDT)
Received: from ubuntu-g3.micron.com ([165.225.86.140])
 by smtp.googlemail.com with ESMTPSA id d126sm3238159wmd.32.2020.05.19.02.16.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 May 2020 02:16:30 -0700 (PDT)
Message-ID: <a9529da36e73116a65a9bc8bd40b5ef54661e3d1.camel@gmail.com>
Subject: Re: [PATCH v4 5/5] mtd: rawnand: micron: Micron SLC NAND filling block
From: Bean Huo <huobean@gmail.com>
To: Steve deRosier <derosier@gmail.com>
Date: Tue, 19 May 2020 11:16:25 +0200
In-Reply-To: <CALLGbR+MWz82hcC6jrv+MrH6Rhj5McW5vt9V+x4UhiZdsoqkRg@mail.gmail.com>
References: <20200518135943.11749-1-huobean@gmail.com>
 <20200518135943.11749-6-huobean@gmail.com>
 <CALLGbR+MWz82hcC6jrv+MrH6Rhj5McW5vt9V+x4UhiZdsoqkRg@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_021632_541396_236FA07C 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 s.hauer@pengutronix.de, LKML <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2020-05-18 at 11:32 -0700, Steve deRosier wrote:
> On Mon, May 18, 2020 at 7:00 AM Bean Huo <huobean@gmail.com> wrote:
> > 
> > From: Bean Huo <beanhuo@micron.com>
> > 
> > On some legacy planar 2D Micron NAND devices when a block erase
> > command
> 
> I object the use of the qualifications you're putting in this
> sentence. By saying "some legacy...." you're implying that there's a
> set that does and a set that doesn't require this. Which then leads
> the reader of this commit message to #1 look for which ones this
> applies to vs not, and #2 want to remove/exclude the feature when
> they're using a "current" device. The wiggle-word wording is
> confusing
> and dishonest.
> 
> I've followed this discussion now intently and it seems like Micron
> is
> either unable or unwilling to determine which specific devices this
> does or doesn't apply to. If you are unable to identify and restrict
> this functionality to a specific subset of devices, then the fact is
> it's "all."  Let's just say that and eliminate the confusion. And
> please also update your datasheets to indicate that this is the
> correct algorithm for working with these devices. Better would be to
> issue an errata on the chips and notify your customers. I feel for
> those customers who aren't using Linux and don't know the reliability
> problem they've been tracking down for the last couple of years is
> already known but they don't have any way of knowing about it.
> 
> In your commit message, rewording to "On planar 2D Micron NAND
> devices
> when a block erase command..." is sufficient.
> 
> - Steve
> 
ok, you are native English speaker, I will take this suggestion in the
next version.

thanks.
Bean

> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
