Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35DDA045D
	for <lists+linux-mtd@lfdr.de>; Wed, 28 Aug 2019 16:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAfC/nMyhKU7czhWGrrxZExCV4/BsKeqKOmrONk2Kkg=; b=oqdK36UktXyihx
	Mg9vwss9PMda0IFywQWV+i7wd0ti0qcw+P2l7UhRY6LSBm21QZN0YGoktLPKLNHQKJ0qA2h6wWbX4
	DHofILd3QMVaBKAy9/+ICEE4vIE9EmIQ0guPBzO8G9XBlLR9CA4NLIplHlV496vqtLl/pCYcdvCox
	NfTYjOnLfaefuLA8eRXRqqjhDQwdxTeZUFr9igrXSItJidqH8Pi/GCL42oI6jzjOtgwMis4Ko+HCM
	nbcYVg2Cz9yMI4FXWdhL8QB5shDUHkOL1tVCDuqrzDA4wdQdXyvTF5hGtKoVFCqJk7pvzyhcwBJe+
	Xpl+WlWD4a2iSvV5I27Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yhY-0000B9-N0; Wed, 28 Aug 2019 14:13:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yhN-0000AY-Na
 for linux-mtd@lists.infradead.org; Wed, 28 Aug 2019 14:13:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id e8so4960916wme.1
 for <linux-mtd@lists.infradead.org>; Wed, 28 Aug 2019 07:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LvKL8oM2dFRz8MOhsFKkkZ5Q0ogVFLxMguJHTZTcGFo=;
 b=HCg8+ADEEAXAHKVLD7WtG8LCIH38iHklp34b1Mqq7kp5uvhKELjNP7zbVJFH+AaLsH
 JLJ4SmReTRP72ZuY7xYdkN94EgqUV/5OVyaRRrhfGZuCD9e9IGVxdkVzKlWLTCUkFIcl
 xkCTxN1GMOsgi04oTdFStm842tT5QoofEgynSOP5on/X57+1eyLsuhE3qanf7w9P6eTQ
 tOUdzvQeC1KaeX900fQ1KsxEPd+vWtnqmF4pUcWUbHQCb9dLowkxBVopqSDbo6X2SUvM
 gXMom9lqigZTvBaByoc5YY2yy8DeYqzxlVQCmWVRXeA5huPNTr3MgZX28WguREZ/Uu9B
 CQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LvKL8oM2dFRz8MOhsFKkkZ5Q0ogVFLxMguJHTZTcGFo=;
 b=qT9X02KvIV2OLZVn6dxI7JZTD0+D4dWHRpNBRu/E/nnzD/kugcPzN5Pqol9PGenwaW
 l8xJlrjwUWjGDSwFJVCbUa/X4Ult4XTGsNByGmBaoyJepepu698m6jg68jzllzH7u67a
 22butmVd/LBQFjv6ZmbD4HKpNg1K/EntFQwAbfq3NWoIE+i0ih/7kbXk5o8YthNmfp4l
 asuTSZpoTPcsaeawr26sIg5ZxRoHAbVkRZ0ItLJKIdw2ozt3RWXC5J8ILlMdbTsKV4NH
 AC9gTmNw+hh8Gup4iAyg6GEIxbP+5R/b4X5cpJwUKnOYl+XhhYKXMM8mYcTAhAsGYjmO
 1oWQ==
X-Gm-Message-State: APjAAAWR56VehBbO/XNXugkVkwlabIN3j2rHQvCmWwl0aHl6ED8h4osG
 CftJ/XjS4CA4y3cQdRRjfG5411hSq5pvKMfgaJgzAjv3
X-Google-Smtp-Source: APXvYqyytt0O6cgaBfK3f5r9NLHUm+waGy64QGju2a2Km48TPCyi6L2oLTIazNAqGhCnpwkC7H0BixRCUdZR1UrMjCc=
X-Received: by 2002:a7b:c155:: with SMTP id z21mr5163419wmi.137.1567001599970; 
 Wed, 28 Aug 2019 07:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJA2DFr3Vgk5ie=V5YitZr8HaiXWuQ+SKsHzzmLBFnhyeg@mail.gmail.com>
 <23922253.ayd0uQntjt@blindfold>
 <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
 <CAFLxGvxoR2kWoEz38QfO2sZDh4=4KXHBm9OrzXAQJWAR8Shmew@mail.gmail.com>
 <CAO1O6sdEw2xjmKQFEA6YXE5vLAtd90ew4t_zynRUvK_ZztDp0w@mail.gmail.com>
In-Reply-To: <CAO1O6sdEw2xjmKQFEA6YXE5vLAtd90ew4t_zynRUvK_ZztDp0w@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 28 Aug 2019 16:13:08 +0200
Message-ID: <CAFLxGvxT3qDJT+7T4DQOq2j45OPV1AuvErEaYfpLP6SH7LX0OQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] ubi: Allow ubiblock devices nodes to be created by
 volume name instead of volume ID.
To: Emil Lenngren <emil.lenngren@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_071321_788676_B77A098D 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>, Patrick Doyle <wpdster@gmail.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 3:39 PM Emil Lenngren <emil.lenngren@gmail.com> wrote:
> Will this really work when passing the rootfs to the kernel command
> line like "root=/dev/ubiblock0_rootfs"? If the udev rules that set up
> the symbolic link /dev/ubiblock0_rootfs are stored in a file on the
> rootfs itself, I guess that symlink can't be made available before the
> rootfs is mounted...

No, this will not work directly from the kernel command line.
For any kind non-trivial root you need an initramfs,
that's the whole point of initramfs. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
